.class Lcom/amap/api/col/bi;
.super Lcom/amap/api/col/aw;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amap/api/col/aw",
        "<",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/amap/api/col/bd;",
        ">;",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/amap/api/col/bd;",
        ">;>;"
    }
.end annotation


# instance fields
.field private b:Landroid/content/Context;

.field private c:Lcom/amap/api/col/u;

.field private d:Lcom/amap/api/maps2d/a/o;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Lcom/amap/api/maps2d/a/o;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/col/bd;",
            ">;",
            "Lcom/amap/api/maps2d/a/o;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p2}, Lcom/amap/api/col/aw;-><init>(Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/bi;->c:Lcom/amap/api/col/u;

    iput-object p1, p0, Lcom/amap/api/col/bi;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/amap/api/col/bi;->d:Lcom/amap/api/maps2d/a/o;

    iget-object v0, p0, Lcom/amap/api/col/bi;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/col/dc;->a(Landroid/content/Context;)Ljava/net/Proxy;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amap/api/col/bi;->a(Ljava/net/Proxy;)V

    const/16 v0, 0x1388

    invoke-virtual {p0, v0}, Lcom/amap/api/col/bi;->a(I)V

    const v0, 0xc350

    invoke-virtual {p0, v0}, Lcom/amap/api/col/bi;->b(I)V

    return-void
.end method

.method private a(Lcom/amap/api/col/bd;I)V
    .locals 6

    if-eqz p1, :cond_0

    if-gez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/bi;->c:Lcom/amap/api/col/u;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/bi;->c:Lcom/amap/api/col/u;

    iget-object v0, v0, Lcom/amap/api/col/u;->p:Lcom/amap/api/col/az;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/bi;->c:Lcom/amap/api/col/u;

    iget-object v2, v0, Lcom/amap/api/col/u;->p:Lcom/amap/api/col/az;

    iget-object v3, p0, Lcom/amap/api/col/bi;->c:Lcom/amap/api/col/u;

    monitor-enter v3

    :try_start_0
    invoke-virtual {v2}, Lcom/amap/api/col/az;->size()I

    move-result v4

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    if-ge v1, v4, :cond_4

    invoke-virtual {v2}, Lcom/amap/api/col/az;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    invoke-virtual {v2, v1}, Lcom/amap/api/col/az;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/col/bd;

    if-nez v0, :cond_3

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_3
    invoke-virtual {v0, p1}, Lcom/amap/api/col/bd;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    iput p2, v0, Lcom/amap/api/col/bd;->h:I

    :cond_4
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private a(Landroid/graphics/Bitmap;)[B
    .locals 4

    const-string v1, "Bitmap2Bytes"

    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {p1, v2, v3, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v2, "TileServerHandler"

    invoke-static {v0, v2, v1}, Lcom/amap/api/col/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a([BLcom/amap/api/col/bd;)I
    .locals 7

    const/4 v6, -0x1

    if-eqz p2, :cond_0

    if-nez p1, :cond_2

    :cond_0
    move v0, v6

    :cond_1
    :goto_0
    return v0

    :cond_2
    iget-object v0, p0, Lcom/amap/api/col/bi;->c:Lcom/amap/api/col/u;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/col/bi;->c:Lcom/amap/api/col/u;

    iget-object v0, v0, Lcom/amap/api/col/u;->n:Lcom/amap/api/col/ap;

    if-nez v0, :cond_4

    :cond_3
    move v0, v6

    goto :goto_0

    :cond_4
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/bi;->c:Lcom/amap/api/col/u;

    iget-object v0, v0, Lcom/amap/api/col/u;->n:Lcom/amap/api/col/ap;

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p2}, Lcom/amap/api/col/bd;->c()Ljava/lang/String;

    move-result-object v5

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/amap/api/col/ap;->a([B[BZLjava/util/List;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    if-gez v0, :cond_5

    move v0, v6

    goto :goto_0

    :cond_5
    :try_start_1
    invoke-direct {p0, p2, v0}, Lcom/amap/api/col/bi;->a(Lcom/amap/api/col/bd;I)V

    iget-object v1, p0, Lcom/amap/api/col/bi;->c:Lcom/amap/api/col/u;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/amap/api/col/bi;->c:Lcom/amap/api/col/u;

    iget-boolean v1, v1, Lcom/amap/api/col/u;->f:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/amap/api/col/bi;->c:Lcom/amap/api/col/u;

    iget-object v1, v1, Lcom/amap/api/col/u;->n:Lcom/amap/api/col/ap;

    invoke-virtual {v1, v0}, Lcom/amap/api/col/ap;->a(I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/amap/api/col/bi;->a(Landroid/graphics/Bitmap;)[B

    move-result-object v1

    iget-object v2, p0, Lcom/amap/api/col/bi;->c:Lcom/amap/api/col/u;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/amap/api/col/bi;->c:Lcom/amap/api/col/u;

    iget-object v2, v2, Lcom/amap/api/col/u;->o:Lcom/amap/api/col/c;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/amap/api/col/bi;->c:Lcom/amap/api/col/u;

    iget-object v2, v2, Lcom/amap/api/col/u;->o:Lcom/amap/api/col/c;

    invoke-virtual {v2, v1, p2}, Lcom/amap/api/col/c;->a([BLcom/amap/api/col/bd;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    :goto_1
    const-string v2, "TileServerHandler"

    const-string v3, "saveImgToMemory"

    invoke-static {v1, v2, v3}, Lcom/amap/api/col/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v1, v0

    move v0, v6

    goto :goto_1
.end method

.method protected synthetic a([B)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/maps2d/b;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/amap/api/col/bi;->b([B)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/amap/api/col/u;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/bi;->c:Lcom/amap/api/col/u;

    return-void
.end method

.method protected b([B)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/col/bd;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/maps2d/b;
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/amap/api/col/bi;->a:Ljava/lang/Object;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/bi;->a:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v0, 0x0

    move v3, v0

    :goto_1
    if-ge v3, v4, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/bi;->a:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/col/bd;

    invoke-virtual {p0, p1, v0}, Lcom/amap/api/col/bi;->a([BLcom/amap/api/col/bd;)I

    move-result v2

    if-gez v2, :cond_4

    if-nez v1, :cond_2

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v2

    :cond_2
    new-instance v2, Lcom/amap/api/col/bd;

    invoke-direct {v2, v0}, Lcom/amap/api/col/bd;-><init>(Lcom/amap/api/col/bd;)V

    iget-object v0, p0, Lcom/amap/api/col/bi;->c:Lcom/amap/api/col/u;

    iget-boolean v0, v0, Lcom/amap/api/col/u;->h:Z

    if-eqz v0, :cond_3

    iget v0, v2, Lcom/amap/api/col/bd;->d:I

    const/16 v5, 0x9

    if-le v0, v5, :cond_3

    iget v0, v2, Lcom/amap/api/col/bd;->b:I

    iget v5, v2, Lcom/amap/api/col/bd;->c:I

    iget v6, v2, Lcom/amap/api/col/bd;->d:I

    invoke-static {v0, v5, v6}, Lcom/amap/api/col/by;->a(III)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    iput-boolean v0, v2, Lcom/amap/api/col/bd;->i:Z

    :cond_3
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    move-object v0, v1

    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move-object v1, v0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected b()[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/maps2d/b;
        }
    .end annotation

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/amap/api/col/bi;->d:Lcom/amap/api/maps2d/a/o;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/amap/api/col/bi;->d:Lcom/amap/api/maps2d/a/o;

    iget-object v0, p0, Lcom/amap/api/col/bi;->a:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/col/bd;

    iget v2, v0, Lcom/amap/api/col/bd;->b:I

    iget-object v0, p0, Lcom/amap/api/col/bi;->a:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/col/bd;

    iget v3, v0, Lcom/amap/api/col/bd;->c:I

    iget-object v0, p0, Lcom/amap/api/col/bi;->a:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/col/bd;

    iget v0, v0, Lcom/amap/api/col/bd;->d:I

    invoke-interface {v1, v2, v3, v0}, Lcom/amap/api/maps2d/a/o;->a(III)Lcom/amap/api/maps2d/a/n;

    move-result-object v0

    iget-object v0, v0, Lcom/amap/api/maps2d/a/n;->a:[B

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/amap/api/col/aw;->b()[B

    move-result-object v0

    goto :goto_0
.end method

.method protected synthetic c()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/amap/api/col/bi;->d()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected d()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/col/bd;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/amap/api/col/bi;->a:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/col/bd;

    new-instance v3, Lcom/amap/api/col/bd;

    invoke-direct {v3, v0}, Lcom/amap/api/col/bd;-><init>(Lcom/amap/api/col/bd;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public e()Ljava/util/Map;
    .locals 7
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

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "User-Agent"

    const-string v2, "AMAP_SDK_Android_2DMap_4.2.0"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Accept-Encoding"

    const-string v2, "gzip"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "platinfo"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "platform=Android&sdkversion=%s&product=%s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "4.2.0"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "2dmap"

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "X-INFO"

    iget-object v2, p0, Lcom/amap/api/col/bi;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/amap/api/col/cx;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "key"

    iget-object v2, p0, Lcom/amap/api/col/bi;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/amap/api/col/cu;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "logversion"

    const-string v2, "2.1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

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

.method public g()Ljava/lang/String;
    .locals 7

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/amap/api/col/bi;->a:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/col/bd;

    iget v1, v0, Lcom/amap/api/col/bd;->b:I

    iget-object v0, p0, Lcom/amap/api/col/bi;->a:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/col/bd;

    iget v2, v0, Lcom/amap/api/col/bd;->c:I

    iget-object v0, p0, Lcom/amap/api/col/bi;->a:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/col/bd;

    iget v3, v0, Lcom/amap/api/col/bd;->d:I

    sget v0, Lcom/amap/api/col/it;->j:I

    if-nez v0, :cond_0

    const/16 v0, 0x9

    if-le v3, v0, :cond_0

    invoke-static {v1, v2, v3}, Lcom/amap/api/col/by;->a(III)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {}, Lcom/amap/api/col/aj;->a()Lcom/amap/api/col/aj;

    move-result-object v4

    invoke-virtual {v4}, Lcom/amap/api/col/aj;->c()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, v6

    const/4 v3, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v3

    const/4 v1, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v1

    invoke-static {v0, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    iget-object v0, p0, Lcom/amap/api/col/bi;->a:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/col/bd;

    iget v0, v0, Lcom/amap/api/col/bd;->d:I

    int-to-double v0, v0

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-int v1, v0

    iget-object v0, p0, Lcom/amap/api/col/bi;->a:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/col/bd;

    iget v0, v0, Lcom/amap/api/col/bd;->b:I

    if-lt v0, v1, :cond_2

    sub-int/2addr v0, v1

    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/amap/api/col/bi;->c:Lcom/amap/api/col/u;

    iget-object v1, v1, Lcom/amap/api/col/u;->j:Lcom/amap/api/col/bo;

    invoke-virtual {v1, v0, v2, v3}, Lcom/amap/api/col/bo;->a(III)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/amap/api/col/bi;->a:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/col/bd;

    invoke-virtual {v0}, Lcom/amap/api/col/bd;->b()V

    move-object v0, v1

    goto :goto_0

    :cond_2
    if-gez v0, :cond_1

    add-int/2addr v0, v1

    goto :goto_1
.end method
