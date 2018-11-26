.class public Lcom/miui/antispam/a;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static DEBUG:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/miui/securitycenter/Application;->getInstance()Lcom/miui/securitycenter/Application;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/securitycenter/Application;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "debug.log"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    sput-boolean v0, Lcom/miui/antispam/a;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
