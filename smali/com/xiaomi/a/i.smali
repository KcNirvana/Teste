.class public Lcom/xiaomi/a/i;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private bqD:Lcom/xiaomi/a/c/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/xiaomi/a/i;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/a/i;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bOL(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/a/i;->bqD:Lcom/xiaomi/a/c/b;

    invoke-virtual {v0, p1}, Lcom/xiaomi/a/c/b;->bOa(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bOM(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/a/i;->bqD:Lcom/xiaomi/a/c/b;

    invoke-virtual {v0, p1}, Lcom/xiaomi/a/c/b;->bOg(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public bON()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/a/i;->bqD:Lcom/xiaomi/a/c/b;

    return-void
.end method

.method public init(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Lcom/xiaomi/a/c/b;

    invoke-direct {v0}, Lcom/xiaomi/a/c/b;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/a/i;->bqD:Lcom/xiaomi/a/c/b;

    :try_start_0
    const-string/jumbo v0, "dict"

    invoke-static {p1, v0}, Lcom/xiaomi/a/c;->bOs(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/a/i;->bqD:Lcom/xiaomi/a/c/b;

    invoke-virtual {v1, v0}, Lcom/xiaomi/a/c/b;->bOb(Ljava/io/InputStream;)Z

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v0, Lcom/xiaomi/a/i;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "init failed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
