.class public Lcom/nostra13/universalimageloader/core/i;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bHn()Ljava/util/concurrent/Executor;
    .locals 2

    const-string/jumbo v0, "uil-pool-d-"

    const/4 v1, 0x5

    invoke-static {v1, v0}, Lcom/nostra13/universalimageloader/core/i;->bHw(ILjava/lang/String;)Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newCachedThreadPool(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method

.method public static bHo(IILcom/nostra13/universalimageloader/core/assist/QueueProcessingType;)Ljava/util/concurrent/Executor;
    .locals 9

    sget-object v0, Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;->bih:Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;

    if-ne p2, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_1

    new-instance v7, Lcom/nostra13/universalimageloader/core/assist/deque/LIFOLinkedBlockingDeque;

    invoke-direct {v7}, Lcom/nostra13/universalimageloader/core/assist/deque/LIFOLinkedBlockingDeque;-><init>()V

    :goto_1
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-string/jumbo v0, "uil-pool-"

    invoke-static {p1, v0}, Lcom/nostra13/universalimageloader/core/i;->bHw(ILjava/lang/String;)Ljava/util/concurrent/ThreadFactory;

    move-result-object v8

    const-wide/16 v4, 0x0

    move v2, p0

    move v3, p0

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    return-object v1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    goto :goto_1
.end method

.method public static bHp()Lcom/nostra13/universalimageloader/b/a/a/b;
    .locals 1

    new-instance v0, Lcom/nostra13/universalimageloader/b/a/a/c;

    invoke-direct {v0}, Lcom/nostra13/universalimageloader/b/a/a/c;-><init>()V

    return-object v0
.end method

.method public static bHq(Landroid/content/Context;Lcom/nostra13/universalimageloader/b/a/a/b;JI)Lcom/nostra13/universalimageloader/b/a/a;
    .locals 8

    invoke-static {p0}, Lcom/nostra13/universalimageloader/core/i;->bHv(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gtz v0, :cond_0

    if-lez p4, :cond_2

    :cond_0
    invoke-static {p0}, Lcom/nostra13/universalimageloader/a/e;->bEh(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    new-instance v7, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    const-string/jumbo v3, "imgloader"

    invoke-direct {v7, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v7}, Ljava/io/File;->mkdirs()Z

    :cond_1
    :try_start_0
    new-instance v0, Lcom/nostra13/universalimageloader/b/a/b/a/a;

    move-object v3, p1

    move-wide v4, p2

    move v6, p4

    invoke-direct/range {v0 .. v7}, Lcom/nostra13/universalimageloader/b/a/b/a/a;-><init>(Ljava/io/File;Ljava/io/File;Lcom/nostra13/universalimageloader/b/a/a/b;JILjava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/nostra13/universalimageloader/a/a;->bDP(Ljava/lang/Throwable;)V

    :cond_2
    invoke-static {p0}, Lcom/nostra13/universalimageloader/a/e;->bEi(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    new-instance v1, Lcom/nostra13/universalimageloader/b/a/b/a;

    invoke-direct {v1, v0, v2, p1}, Lcom/nostra13/universalimageloader/b/a/b/a;-><init>(Ljava/io/File;Ljava/io/File;Lcom/nostra13/universalimageloader/b/a/a/b;)V

    return-object v1
.end method

.method public static bHr(Landroid/content/Context;I)Lcom/nostra13/universalimageloader/b/b/a;
    .locals 3

    if-nez p1, :cond_0

    const-string/jumbo v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v1

    invoke-static {}, Lcom/nostra13/universalimageloader/core/i;->bHy()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p0}, Lcom/nostra13/universalimageloader/core/i;->bHz(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v0}, Lcom/nostra13/universalimageloader/core/i;->bHx(Landroid/app/ActivityManager;)I

    move-result v0

    :goto_0
    const/high16 v1, 0x100000

    mul-int/2addr v0, v1

    div-int/lit8 p1, v0, 0x8

    :cond_0
    new-instance v0, Lcom/nostra13/universalimageloader/b/b/a/b;

    invoke-direct {v0, p1}, Lcom/nostra13/universalimageloader/b/b/a/b;-><init>(I)V

    return-object v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public static bHs(Landroid/content/Context;)Lcom/nostra13/universalimageloader/core/download/c;
    .locals 1

    new-instance v0, Lcom/nostra13/universalimageloader/core/download/a;

    invoke-direct {v0, p0}, Lcom/nostra13/universalimageloader/core/download/a;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static bHt(Z)Lcom/nostra13/universalimageloader/core/a/a;
    .locals 1

    new-instance v0, Lcom/nostra13/universalimageloader/core/a/c;

    invoke-direct {v0, p0}, Lcom/nostra13/universalimageloader/core/a/c;-><init>(Z)V

    return-object v0
.end method

.method public static bHu()Lcom/nostra13/universalimageloader/core/c/a;
    .locals 1

    new-instance v0, Lcom/nostra13/universalimageloader/core/c/b;

    invoke-direct {v0}, Lcom/nostra13/universalimageloader/core/c/b;-><init>()V

    return-object v0
.end method

.method private static bHv(Landroid/content/Context;)Ljava/io/File;
    .locals 3

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/nostra13/universalimageloader/a/e;->bEj(Landroid/content/Context;Z)Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "uil-images"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move-object v0, v1

    :cond_1
    return-object v0
.end method

.method private static bHw(ILjava/lang/String;)Ljava/util/concurrent/ThreadFactory;
    .locals 1

    new-instance v0, Lcom/nostra13/universalimageloader/core/j;

    invoke-direct {v0, p0, p1}, Lcom/nostra13/universalimageloader/core/j;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method private static bHx(Landroid/app/ActivityManager;)I
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    invoke-virtual {p0}, Landroid/app/ActivityManager;->getLargeMemoryClass()I

    move-result v0

    return v0
.end method

.method private static bHy()Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static bHz(Landroid/content/Context;)Z
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v2, 0x100000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method
