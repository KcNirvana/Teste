.class public Lcom/miui/antivirus/utils/e;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static DEBUG:Z

.field public static aok:Ljava/lang/String;

.field public static aol:Z

.field public static aom:Ljava/lang/String;

.field public static aon:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "/storage/sdcard0/installer/debug"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    sput-boolean v0, Lcom/miui/antivirus/utils/e;->DEBUG:Z

    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "/storage/sdcard0/installer/staging"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    sput-boolean v0, Lcom/miui/antivirus/utils/e;->aon:Z

    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "/storage/sdcard0/installer/dev_staging"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    sput-boolean v0, Lcom/miui/antivirus/utils/e;->aol:Z

    sget-boolean v0, Lcom/miui/antivirus/utils/e;->aon:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "http://staging.miuisystem.n.xiaomi.com/pi/"

    sput-object v0, Lcom/miui/antivirus/utils/e;->aom:Ljava/lang/String;

    :goto_0
    invoke-static {}, Lcom/miui/antivirus/utils/e;->auC()V

    return-void

    :cond_0
    sget-boolean v0, Lcom/miui/antivirus/utils/e;->aol:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "https://dev.staging.pinstaller.pt.xiaomi.com/"

    sput-object v0, Lcom/miui/antivirus/utils/e;->aom:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "https://a0.app.xiaomi.com/pi/"

    sput-object v0, Lcom/miui/antivirus/utils/e;->aom:Ljava/lang/String;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static auC()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/miui/antivirus/utils/e;->aom:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "pinstaller/apkinfos"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/antivirus/utils/e;->aok:Ljava/lang/String;

    return-void
.end method
