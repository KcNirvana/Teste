.class public abstract Lcom/amap/api/col/ca;
.super Lcom/amap/api/col/ft;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/amap/api/col/ft;"
    }
.end annotation


# instance fields
.field protected a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field protected b:I

.field protected c:Ljava/lang/String;

.field protected d:Landroid/content/Context;

.field private h:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "TT;)V"
        }
    .end annotation

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/amap/api/col/ft;-><init>()V

    iput v1, p0, Lcom/amap/api/col/ca;->b:I

    const-string v0, ""

    iput-object v0, p0, Lcom/amap/api/col/ca;->c:Ljava/lang/String;

    iput v1, p0, Lcom/amap/api/col/ca;->h:I

    invoke-direct {p0, p1, p2}, Lcom/amap/api/col/ca;->a(Landroid/content/Context;Ljava/lang/Object;)V

    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "TT;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/amap/api/col/ca;->d:Landroid/content/Context;

    iput-object p2, p0, Lcom/amap/api/col/ca;->a:Ljava/lang/Object;

    const/4 v0, 0x1

    iput v0, p0, Lcom/amap/api/col/ca;->b:I

    invoke-static {}, Lcom/amap/api/b/c/f;->c()Lcom/amap/api/b/c/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/b/c/f;->b()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/amap/api/col/ca;->b(I)V

    invoke-static {}, Lcom/amap/api/b/c/f;->c()Lcom/amap/api/b/c/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/b/c/f;->a()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/amap/api/col/ca;->a(I)V

    return-void
.end method

.method private b([B)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/b/c/a;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/amap/api/col/ca;->a([B)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private c()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/b/c/a;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    iget v2, p0, Lcom/amap/api/col/ca;->b:I

    if-ge v0, v2, :cond_6

    :try_start_0
    invoke-static {}, Lcom/amap/api/b/c/f;->c()Lcom/amap/api/b/c/f;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amap/api/b/c/f;->e()I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v3}, Lcom/amap/api/col/fr;->a(Z)Lcom/amap/api/col/fr;

    move-result-object v3

    iget-object v4, p0, Lcom/amap/api/col/ca;->d:Landroid/content/Context;

    invoke-static {v4}, Lcom/amap/api/col/dc;->a(Landroid/content/Context;)Ljava/net/Proxy;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/amap/api/col/ca;->a(Ljava/net/Proxy;)V

    invoke-virtual {p0, v2, v3, p0}, Lcom/amap/api/col/ca;->a(ILcom/amap/api/col/fr;Lcom/amap/api/col/ft;)[B

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/amap/api/col/ca;->b([B)Ljava/lang/Object;

    move-result-object v1

    iget v0, p0, Lcom/amap/api/col/ca;->b:I
    :try_end_0
    .catch Lcom/amap/api/col/ct; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/amap/api/b/c/a; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_0

    :catch_0
    move-exception v2

    add-int/lit8 v0, v0, 0x1

    iget v3, p0, Lcom/amap/api/col/ca;->b:I

    if-ge v0, v3, :cond_3

    :try_start_1
    iget v3, p0, Lcom/amap/api/col/ca;->h:I

    mul-int/lit16 v3, v3, 0x3e8

    int-to-long v4, v3

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v0, "http\u8fde\u63a5\u5931\u8d25 - ConnectionException"

    invoke-virtual {v2}, Lcom/amap/api/col/ct;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "socket \u8fde\u63a5\u5f02\u5e38 - SocketException"

    invoke-virtual {v2}, Lcom/amap/api/col/ct;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "\u670d\u52a1\u5668\u8fde\u63a5\u5931\u8d25 - UnknownServiceException"

    invoke-virtual {v2}, Lcom/amap/api/col/ct;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    new-instance v0, Lcom/amap/api/b/c/a;

    const-string v1, "http\u6216socket\u8fde\u63a5\u5931\u8d25 - ConnectionException"

    invoke-direct {v0, v1}, Lcom/amap/api/b/c/a;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Lcom/amap/api/b/c/a;

    invoke-virtual {v2}, Lcom/amap/api/col/ct;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amap/api/b/c/a;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    invoke-virtual {p0}, Lcom/amap/api/col/ca;->b()Ljava/lang/Object;

    const-string v0, "http\u8fde\u63a5\u5931\u8d25 - ConnectionException"

    invoke-virtual {v2}, Lcom/amap/api/col/ct;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "socket \u8fde\u63a5\u5f02\u5e38 - SocketException"

    invoke-virtual {v2}, Lcom/amap/api/col/ct;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "\u672a\u77e5\u7684\u9519\u8bef"

    invoke-virtual {v2}, Lcom/amap/api/col/ct;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "\u670d\u52a1\u5668\u8fde\u63a5\u5931\u8d25 - UnknownServiceException"

    invoke-virtual {v2}, Lcom/amap/api/col/ct;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    new-instance v0, Lcom/amap/api/b/c/a;

    const-string v1, "http\u6216socket\u8fde\u63a5\u5931\u8d25 - ConnectionException"

    invoke-direct {v0, v1}, Lcom/amap/api/b/c/a;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v0, Lcom/amap/api/b/c/a;

    invoke-virtual {v2}, Lcom/amap/api/col/ct;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amap/api/b/c/a;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_2
    move-exception v2

    add-int/lit8 v0, v0, 0x1

    iget v3, p0, Lcom/amap/api/col/ca;->b:I

    if-lt v0, v3, :cond_0

    new-instance v0, Lcom/amap/api/b/c/a;

    invoke-virtual {v2}, Lcom/amap/api/b/c/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amap/api/b/c/a;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_3
    move-exception v0

    new-instance v0, Lcom/amap/api/b/c/a;

    const-string v1, "\u672a\u77e5\u9519\u8bef"

    invoke-direct {v0, v1}, Lcom/amap/api/b/c/a;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    return-object v1
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/b/c/a;
        }
    .end annotation

    iget-object v0, p0, Lcom/amap/api/col/ca;->a:Ljava/lang/Object;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/amap/api/col/ca;->c()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract a(Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/b/c/a;
        }
    .end annotation
.end method

.method protected a([B)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/b/c/a;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string v2, "utf-8"

    invoke-direct {v1, p1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    if-eqz v1, :cond_0

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_1
    return-object v0

    :catch_0
    move-exception v1

    const-string v2, "ProtocalHandler"

    const-string v3, "loadData"

    invoke-static {v1, v2, v3}, Lcom/amap/api/col/ci;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v0

    goto :goto_0

    :cond_1
    invoke-static {v1}, Lcom/amap/api/col/ci;->a(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/amap/api/col/ca;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1
.end method

.method protected a(ILcom/amap/api/col/fr;Lcom/amap/api/col/ft;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/col/ct;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    invoke-virtual {p2, p3}, Lcom/amap/api/col/fr;->b(Lcom/amap/api/col/ft;)[B

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    invoke-virtual {p2, p3}, Lcom/amap/api/col/fr;->a(Lcom/amap/api/col/ft;)[B

    move-result-object v0

    goto :goto_0
.end method

.method protected b()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public e()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public f()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method
