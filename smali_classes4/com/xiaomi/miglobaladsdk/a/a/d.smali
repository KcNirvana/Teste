.class Lcom/xiaomi/miglobaladsdk/a/a/d;
.super Ljava/lang/Object;
.source "MiAdBlackListDiskCache.java"


# static fields
.field public static final a:Ljava/lang/Long;


# instance fields
.field private b:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/32 v0, 0x2932e00

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/miglobaladsdk/a/a/d;->a:Ljava/lang/Long;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/miglobaladsdk/a/a/d;->b:Landroid/content/Context;

    return-void
.end method

.method private e()Lcom/xiaomi/utils/i;
    .locals 2

    new-instance v0, Lcom/xiaomi/utils/i;

    const-string v1, "MiAdBlacklistConfig"

    invoke-direct {v0, v1}, Lcom/xiaomi/utils/i;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private f()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/xiaomi/miglobaladsdk/a/a/d;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "MiAdBlacklistConfig"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method a()J
    .locals 4

    invoke-direct {p0}, Lcom/xiaomi/miglobaladsdk/a/a/d;->e()Lcom/xiaomi/utils/i;

    move-result-object v0

    const-string v1, "version"

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaomi/utils/i;->b(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method a(J)V
    .locals 2

    invoke-direct {p0}, Lcom/xiaomi/miglobaladsdk/a/a/d;->e()Lcom/xiaomi/utils/i;

    move-result-object v0

    const-string v1, "version"

    invoke-virtual {v0, v1, p1, p2}, Lcom/xiaomi/utils/i;->a(Ljava/lang/String;J)V

    return-void
.end method

.method a(Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {p0}, Lcom/xiaomi/miglobaladsdk/a/a/d;->f()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    invoke-static {v0, v1}, Lcom/xiaomi/utils/FileUtil;->saveInputStreamToFile(Ljava/io/InputStream;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method b()J
    .locals 4

    invoke-direct {p0}, Lcom/xiaomi/miglobaladsdk/a/a/d;->e()Lcom/xiaomi/utils/i;

    move-result-object v0

    const-string v1, "lastmodified"

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaomi/utils/i;->b(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method b(J)V
    .locals 2

    invoke-direct {p0}, Lcom/xiaomi/miglobaladsdk/a/a/d;->e()Lcom/xiaomi/utils/i;

    move-result-object v0

    const-string v1, "lastmodified"

    invoke-virtual {v0, v1, p1, p2}, Lcom/xiaomi/utils/i;->a(Ljava/lang/String;J)V

    return-void
.end method

.method c()J
    .locals 4

    invoke-direct {p0}, Lcom/xiaomi/miglobaladsdk/a/a/d;->e()Lcom/xiaomi/utils/i;

    move-result-object v0

    const-string v1, "cacheTime"

    sget-object v2, Lcom/xiaomi/miglobaladsdk/a/a/d;->a:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaomi/utils/i;->b(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method c(J)V
    .locals 2

    invoke-direct {p0}, Lcom/xiaomi/miglobaladsdk/a/a/d;->e()Lcom/xiaomi/utils/i;

    move-result-object v0

    const-string v1, "cacheTime"

    invoke-virtual {v0, v1, p1, p2}, Lcom/xiaomi/utils/i;->a(Ljava/lang/String;J)V

    return-void
.end method

.method d()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/io/File;

    invoke-direct {p0}, Lcom/xiaomi/miglobaladsdk/a/a/d;->f()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/xiaomi/utils/FileUtil;->readStringFromFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
