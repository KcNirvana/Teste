.class Lcom/amap/api/col/ap;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/col/ap$a;
    }
.end annotation


# instance fields
.field protected final a:[Lcom/amap/api/col/ap$a;

.field protected final b:I

.field protected final c:I

.field protected final d:[Lcom/amap/api/col/ap$a;

.field private e:Z

.field private f:J

.field private g:Lcom/amap/api/col/u;

.field private h:Landroid/graphics/Paint;

.field private i:Landroid/graphics/Path;


# direct methods
.method public constructor <init>(IIZJLcom/amap/api/col/u;)V
    .locals 4

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/col/ap;->e:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/amap/api/col/ap;->f:J

    iput-object v2, p0, Lcom/amap/api/col/ap;->h:Landroid/graphics/Paint;

    iput-object v2, p0, Lcom/amap/api/col/ap;->i:Landroid/graphics/Path;

    iput p1, p0, Lcom/amap/api/col/ap;->b:I

    iput p2, p0, Lcom/amap/api/col/ap;->c:I

    iput-object p6, p0, Lcom/amap/api/col/ap;->g:Lcom/amap/api/col/u;

    iput-boolean p3, p0, Lcom/amap/api/col/ap;->e:Z

    const-wide/32 v0, 0xf4240

    mul-long/2addr v0, p4

    iput-wide v0, p0, Lcom/amap/api/col/ap;->f:J

    iget v0, p0, Lcom/amap/api/col/ap;->b:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/amap/api/col/ap;->b:I

    new-array v0, v0, [Lcom/amap/api/col/ap$a;

    iput-object v0, p0, Lcom/amap/api/col/ap;->a:[Lcom/amap/api/col/ap$a;

    iget v0, p0, Lcom/amap/api/col/ap;->c:I

    new-array v0, v0, [Lcom/amap/api/col/ap$a;

    iput-object v0, p0, Lcom/amap/api/col/ap;->d:[Lcom/amap/api/col/ap$a;

    :goto_0
    return-void

    :cond_0
    iput-object v2, p0, Lcom/amap/api/col/ap;->a:[Lcom/amap/api/col/ap$a;

    iput-object v2, p0, Lcom/amap/api/col/ap;->d:[Lcom/amap/api/col/ap$a;

    goto :goto_0
.end method

.method static synthetic a(Lcom/amap/api/col/ap;)Landroid/graphics/Paint;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/ap;->h:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic a(Lcom/amap/api/col/ap;Landroid/graphics/Paint;)Landroid/graphics/Paint;
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/ap;->h:Landroid/graphics/Paint;

    return-object p1
.end method

.method static synthetic a(Lcom/amap/api/col/ap;Landroid/graphics/Path;)Landroid/graphics/Path;
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/ap;->i:Landroid/graphics/Path;

    return-object p1
.end method

.method private a(Landroid/graphics/Bitmap;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/col/bj;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/amap/api/col/aq;

    invoke-direct {v0, p0, p2}, Lcom/amap/api/col/aq;-><init>(Lcom/amap/api/col/ap;Ljava/util/List;)V

    new-instance v1, Lcom/amap/api/col/ij;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/amap/api/col/ij;-><init>(Landroid/graphics/Bitmap$Config;)V

    invoke-virtual {v1, p1}, Lcom/amap/api/col/ij;->a(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v0}, Lcom/amap/api/col/ij;->a(Lcom/amap/api/col/ik;)V

    return-void
.end method

.method static synthetic b(Lcom/amap/api/col/ap;)Landroid/graphics/Path;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/ap;->i:Landroid/graphics/Path;

    return-object v0
.end method

.method private d()J
    .locals 2

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method protected a()I
    .locals 10

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    iget v2, p0, Lcom/amap/api/col/ap;->c:I

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/amap/api/col/ap;->d:[Lcom/amap/api/col/ap$a;

    const/4 v3, 0x0

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v4, v1

    :goto_1
    iget v0, p0, Lcom/amap/api/col/ap;->b:I

    if-ge v4, v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/col/ap;->a:[Lcom/amap/api/col/ap$a;

    aget-object v2, v0, v4

    move v3, v1

    :goto_2
    iget v0, p0, Lcom/amap/api/col/ap;->c:I

    if-ge v3, v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/ap;->d:[Lcom/amap/api/col/ap$a;

    aget-object v0, v0, v3

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/col/ap;->d:[Lcom/amap/api/col/ap$a;

    aput-object v2, v0, v3

    :cond_1
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/amap/api/col/ap;->d:[Lcom/amap/api/col/ap$a;

    aget-object v0, v0, v3

    iget-wide v6, v0, Lcom/amap/api/col/ap$a;->d:J

    iget-wide v8, v2, Lcom/amap/api/col/ap$a;->d:J

    cmp-long v0, v6, v8

    if-lez v0, :cond_6

    iget-object v0, p0, Lcom/amap/api/col/ap;->d:[Lcom/amap/api/col/ap$a;

    aget-object v0, v0, v3

    iget-object v5, p0, Lcom/amap/api/col/ap;->d:[Lcom/amap/api/col/ap$a;

    aput-object v2, v5, v3

    :goto_3
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move-object v2, v0

    goto :goto_2

    :cond_3
    const/4 v0, -0x1

    move v2, v0

    move v0, v1

    :goto_4
    iget v3, p0, Lcom/amap/api/col/ap;->c:I

    if-ge v0, v3, :cond_5

    iget-object v3, p0, Lcom/amap/api/col/ap;->d:[Lcom/amap/api/col/ap$a;

    aget-object v3, v3, v0

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/amap/api/col/ap;->d:[Lcom/amap/api/col/ap$a;

    aget-object v3, v3, v0

    iput-boolean v1, v3, Lcom/amap/api/col/ap$a;->c:Z

    if-gez v2, :cond_4

    iget-object v2, p0, Lcom/amap/api/col/ap;->d:[Lcom/amap/api/col/ap$a;

    aget-object v2, v2, v0

    iget v2, v2, Lcom/amap/api/col/ap$a;->e:I

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_5
    return v2

    :cond_6
    move-object v0, v2

    goto :goto_3
.end method

.method protected a(Ljava/lang/String;)I
    .locals 8

    const/4 v4, 0x1

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v4, :cond_1

    :cond_0
    move v0, v2

    :goto_0
    return v0

    :cond_1
    move v0, v1

    :goto_1
    iget v3, p0, Lcom/amap/api/col/ap;->b:I

    if-ge v0, v3, :cond_7

    iget-object v3, p0, Lcom/amap/api/col/ap;->a:[Lcom/amap/api/col/ap$a;

    aget-object v3, v3, v0

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/amap/api/col/ap;->a:[Lcom/amap/api/col/ap$a;

    aget-object v3, v3, v0

    iget-object v3, v3, Lcom/amap/api/col/ap$a;->b:Ljava/lang/String;

    if-nez v3, :cond_3

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/amap/api/col/ap;->a:[Lcom/amap/api/col/ap$a;

    aget-object v3, v3, v0

    iget-object v3, v3, Lcom/amap/api/col/ap$a;->b:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/amap/api/col/ap;->a:[Lcom/amap/api/col/ap$a;

    aget-object v3, v3, v0

    iget-boolean v3, v3, Lcom/amap/api/col/ap$a;->c:Z

    if-nez v3, :cond_4

    move v0, v2

    goto :goto_0

    :cond_4
    iget-boolean v3, p0, Lcom/amap/api/col/ap;->e:Z

    if-ne v3, v4, :cond_5

    invoke-direct {p0}, Lcom/amap/api/col/ap;->d()J

    move-result-wide v4

    iget-object v3, p0, Lcom/amap/api/col/ap;->a:[Lcom/amap/api/col/ap$a;

    aget-object v3, v3, v0

    iget-wide v6, v3, Lcom/amap/api/col/ap$a;->f:J

    sub-long/2addr v4, v6

    iget-wide v6, p0, Lcom/amap/api/col/ap;->f:J

    cmp-long v3, v4, v6

    if-lez v3, :cond_5

    iget-object v3, p0, Lcom/amap/api/col/ap;->a:[Lcom/amap/api/col/ap$a;

    aget-object v0, v3, v0

    iput-boolean v1, v0, Lcom/amap/api/col/ap$a;->c:Z

    move v0, v2

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/amap/api/col/ap;->a:[Lcom/amap/api/col/ap$a;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/amap/api/col/ap$a;->a:Landroid/graphics/Bitmap;

    if-nez v1, :cond_6

    move v0, v2

    goto :goto_0

    :cond_6
    iget-object v1, p0, Lcom/amap/api/col/ap;->a:[Lcom/amap/api/col/ap$a;

    aget-object v1, v1, v0

    invoke-direct {p0}, Lcom/amap/api/col/ap;->d()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/amap/api/col/ap$a;->d:J

    goto :goto_0

    :cond_7
    move v0, v2

    goto :goto_0
.end method

.method protected declared-synchronized a([B[BZLjava/util/List;Ljava/lang/String;)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[BZ",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/col/bj;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    const/4 v6, 0x1

    const/4 v1, -0x1

    monitor-enter p0

    if-nez p1, :cond_1

    if-nez p2, :cond_1

    if-nez p4, :cond_1

    move v0, v1

    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/col/ap;->b()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-gez v2, :cond_a

    :try_start_1
    invoke-virtual {p0}, Lcom/amap/api/col/ap;->a()I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    :goto_1
    if-gez v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    :try_start_2
    iget-object v2, p0, Lcom/amap/api/col/ap;->a:[Lcom/amap/api/col/ap$a;

    if-nez v2, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/amap/api/col/ap;->a:[Lcom/amap/api/col/ap$a;

    aget-object v2, v2, v0

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/amap/api/col/ap;->a:[Lcom/amap/api/col/ap$a;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/amap/api/col/ap$a;->a:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/amap/api/col/ap;->a:[Lcom/amap/api/col/ap$a;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/amap/api/col/ap$a;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/amap/api/col/ap;->a:[Lcom/amap/api/col/ap$a;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/amap/api/col/ap$a;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    iget-object v2, p0, Lcom/amap/api/col/ap;->a:[Lcom/amap/api/col/ap$a;

    aget-object v2, v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/amap/api/col/ap$a;->a:Landroid/graphics/Bitmap;

    :cond_4
    iget-object v2, p0, Lcom/amap/api/col/ap;->a:[Lcom/amap/api/col/ap$a;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/amap/api/col/ap$a;->g:Ljava/util/List;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/amap/api/col/ap;->a:[Lcom/amap/api/col/ap$a;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/amap/api/col/ap$a;->g:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    iget-object v2, p0, Lcom/amap/api/col/ap;->a:[Lcom/amap/api/col/ap$a;

    aget-object v2, v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/amap/api/col/ap$a;->g:Ljava/util/List;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_5
    if-ne p3, v6, :cond_8

    if-eqz p1, :cond_8

    :try_start_3
    iget-object v2, p0, Lcom/amap/api/col/ap;->a:[Lcom/amap/api/col/ap$a;

    aget-object v2, v2, v0

    const/4 v3, 0x0

    array-length v4, p1

    invoke-static {p1, v3, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, v2, Lcom/amap/api/col/ap$a;->a:Landroid/graphics/Bitmap;
    :try_end_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_6
    :goto_2
    if-eqz p4, :cond_7

    :try_start_4
    iget-object v2, p0, Lcom/amap/api/col/ap;->a:[Lcom/amap/api/col/ap$a;

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/amap/api/col/ap;->g:Lcom/amap/api/col/u;

    iget-object v3, v3, Lcom/amap/api/col/u;->a:Lcom/amap/api/col/ah;

    iget v3, v3, Lcom/amap/api/col/ah;->a:I

    iget-object v4, p0, Lcom/amap/api/col/ap;->g:Lcom/amap/api/col/u;

    iget-object v4, v4, Lcom/amap/api/col/u;->a:Lcom/amap/api/col/ah;

    iget v4, v4, Lcom/amap/api/col/ah;->a:I

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, v2, Lcom/amap/api/col/ap$a;->a:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/amap/api/col/ap;->a:[Lcom/amap/api/col/ap$a;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/amap/api/col/ap$a;->a:Landroid/graphics/Bitmap;

    invoke-direct {p0, v2, p4}, Lcom/amap/api/col/ap;->a(Landroid/graphics/Bitmap;Ljava/util/List;)V

    :cond_7
    iget-object v2, p0, Lcom/amap/api/col/ap;->a:[Lcom/amap/api/col/ap$a;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/amap/api/col/ap$a;->a:Landroid/graphics/Bitmap;

    if-nez v2, :cond_9

    iget-object v2, p0, Lcom/amap/api/col/ap;->a:[Lcom/amap/api/col/ap$a;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/amap/api/col/ap$a;->g:Ljava/util/List;

    if-nez v2, :cond_9

    move v0, v1

    goto/16 :goto_0

    :catch_0
    move-exception v2

    const-string v3, "BitmapManager"

    const-string v4, "setBitmapData"

    invoke-static {v2, v3, v4}, Lcom/amap/api/col/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    :catch_1
    move-exception v1

    :goto_3
    :try_start_5
    const-string v2, "BitmapManager"

    const-string v3, "setBitmapData"

    invoke-static {v1, v2, v3}, Lcom/amap/api/col/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_8
    if-eqz p2, :cond_6

    :try_start_6
    iget-object v2, p0, Lcom/amap/api/col/ap;->a:[Lcom/amap/api/col/ap$a;

    aget-object v2, v2, v0

    const/4 v3, 0x0

    array-length v4, p2

    invoke-static {p2, v3, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, v2, Lcom/amap/api/col/ap$a;->a:Landroid/graphics/Bitmap;
    :try_end_6
    .catch Ljava/lang/OutOfMemoryError; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    :catch_2
    move-exception v2

    goto :goto_2

    :catch_3
    move-exception v2

    :try_start_7
    const-string v3, "BitmapManager"

    const-string v4, "setBitmapData"

    invoke-static {v2, v3, v4}, Lcom/amap/api/col/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_9
    iget-object v1, p0, Lcom/amap/api/col/ap;->a:[Lcom/amap/api/col/ap$a;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amap/api/col/ap;->a:[Lcom/amap/api/col/ap$a;

    aget-object v1, v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/amap/api/col/ap$a;->c:Z

    iget-object v1, p0, Lcom/amap/api/col/ap;->a:[Lcom/amap/api/col/ap$a;

    aget-object v1, v1, v0

    iput-object p5, v1, Lcom/amap/api/col/ap$a;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/amap/api/col/ap;->a:[Lcom/amap/api/col/ap$a;

    aget-object v1, v1, v0

    invoke-direct {p0}, Lcom/amap/api/col/ap;->d()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/amap/api/col/ap$a;->d:J

    iget-boolean v1, p0, Lcom/amap/api/col/ap;->e:Z

    if-ne v1, v6, :cond_0

    iget-object v1, p0, Lcom/amap/api/col/ap;->a:[Lcom/amap/api/col/ap$a;

    aget-object v1, v1, v0

    invoke-direct {p0}, Lcom/amap/api/col/ap;->d()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/amap/api/col/ap$a;->f:J
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_0

    :catch_4
    move-exception v0

    move-object v7, v0

    move v0, v1

    move-object v1, v7

    goto :goto_3

    :catch_5
    move-exception v0

    move-object v1, v0

    move v0, v2

    goto :goto_3

    :catch_6
    move-exception v2

    goto/16 :goto_2

    :cond_a
    move v0, v2

    goto/16 :goto_1
.end method

.method protected a(I)Landroid/graphics/Bitmap;
    .locals 2

    const/4 v0, 0x0

    if-ltz p1, :cond_0

    iget v1, p0, Lcom/amap/api/col/ap;->b:I

    if-lt p1, v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/amap/api/col/ap;->a:[Lcom/amap/api/col/ap$a;

    aget-object v1, v1, p1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/ap;->a:[Lcom/amap/api/col/ap$a;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/amap/api/col/ap$a;->a:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method protected b()I
    .locals 3

    const/4 v1, -0x1

    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Lcom/amap/api/col/ap;->b:I

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lcom/amap/api/col/ap;->a:[Lcom/amap/api/col/ap$a;

    aget-object v2, v2, v0

    if-nez v2, :cond_0

    iget-object v1, p0, Lcom/amap/api/col/ap;->a:[Lcom/amap/api/col/ap$a;

    new-instance v2, Lcom/amap/api/col/ap$a;

    invoke-direct {v2, p0}, Lcom/amap/api/col/ap$a;-><init>(Lcom/amap/api/col/ap;)V

    aput-object v2, v1, v0

    iget-object v1, p0, Lcom/amap/api/col/ap;->a:[Lcom/amap/api/col/ap$a;

    aget-object v1, v1, v0

    iput v0, v1, Lcom/amap/api/col/ap$a;->e:I

    :goto_1
    return v0

    :cond_0
    iget-object v2, p0, Lcom/amap/api/col/ap;->a:[Lcom/amap/api/col/ap$a;

    aget-object v2, v2, v0

    iget-boolean v2, v2, Lcom/amap/api/col/ap$a;->c:Z

    if-nez v2, :cond_1

    if-gez v1, :cond_1

    move v1, v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method protected c()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/amap/api/col/ap;->b:I

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/amap/api/col/ap;->a:[Lcom/amap/api/col/ap$a;

    aget-object v1, v1, v0

    if-nez v1, :cond_0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/amap/api/col/ap;->a:[Lcom/amap/api/col/ap$a;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/amap/api/col/ap$a;->a:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/amap/api/col/ap;->a:[Lcom/amap/api/col/ap$a;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/amap/api/col/ap$a;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/amap/api/col/ap;->a:[Lcom/amap/api/col/ap$a;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/amap/api/col/ap$a;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    iget-object v1, p0, Lcom/amap/api/col/ap;->a:[Lcom/amap/api/col/ap$a;

    aget-object v1, v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/amap/api/col/ap$a;->a:Landroid/graphics/Bitmap;

    goto :goto_1

    :cond_2
    return-void
.end method
