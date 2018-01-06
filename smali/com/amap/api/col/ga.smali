.class public Lcom/amap/api/col/ga;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Ljava/lang/Runnable;

.field private b:Landroid/content/Context;

.field private c:Ljava/lang/String;

.field private d:Lcom/amap/api/col/hd;

.field private e:Lcom/amap/api/col/hd;

.field private f:Lcom/amap/api/col/dy;

.field private g:Ljava/util/concurrent/ExecutorService;

.field private h:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/ga;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/amap/api/col/ga;->d:Lcom/amap/api/col/hd;

    iput-object v0, p0, Lcom/amap/api/col/ga;->e:Lcom/amap/api/col/hd;

    iput-object v0, p0, Lcom/amap/api/col/ga;->f:Lcom/amap/api/col/dy;

    iput-object v0, p0, Lcom/amap/api/col/ga;->g:Ljava/util/concurrent/ExecutorService;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/amap/api/col/ga;->h:J

    new-instance v0, Lcom/amap/api/col/gb;

    invoke-direct {v0, p0}, Lcom/amap/api/col/gb;-><init>(Lcom/amap/api/col/ga;)V

    iput-object v0, p0, Lcom/amap/api/col/ga;->a:Ljava/lang/Runnable;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/ga;->b:Landroid/content/Context;

    :try_start_0
    const-string v0, "MD5"

    iget-object v1, p0, Lcom/amap/api/col/ga;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/amap/api/col/cz;->q(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amap/api/col/gy;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/ga;->c:Ljava/lang/String;

    const-class v0, Lcom/amap/api/col/he;

    invoke-static {v0}, Lcom/amap/api/col/dy;->a(Ljava/lang/Class;)Lcom/amap/api/col/dx;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/amap/api/col/dy;

    invoke-static {}, Lcom/amap/api/col/hu;->k()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p1, v0, v2}, Lcom/amap/api/col/dy;-><init>(Landroid/content/Context;Lcom/amap/api/col/dx;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/amap/api/col/ga;->f:Lcom/amap/api/col/dy;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "LastLocationManager"

    const-string v2, "<init>:DBOperation"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/dh;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/amap/api/col/ga;)V
    .locals 0

    invoke-direct {p0}, Lcom/amap/api/col/ga;->c()V

    return-void
.end method

.method private declared-synchronized c()V
    .locals 6

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/amap/api/col/ga;->d:Lcom/amap/api/col/hd;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amap/api/col/ga;->d:Lcom/amap/api/col/hd;

    invoke-virtual {v1}, Lcom/amap/api/col/hd;->a()Lcom/amap/api/location/AMapLocation;

    move-result-object v1

    invoke-static {v1}, Lcom/amap/api/col/hu;->a(Lcom/amap/api/location/AMapLocation;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amap/api/col/ga;->f:Lcom/amap/api/col/dy;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amap/api/col/ga;->d:Lcom/amap/api/col/hd;

    iget-object v2, p0, Lcom/amap/api/col/ga;->e:Lcom/amap/api/col/hd;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/amap/api/col/ga;->d:Lcom/amap/api/col/hd;

    invoke-virtual {v1}, Lcom/amap/api/col/hd;->a()Lcom/amap/api/location/AMapLocation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amap/api/location/AMapLocation;->toStr()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/amap/api/col/ga;->d:Lcom/amap/api/col/hd;

    invoke-virtual {v2}, Lcom/amap/api/col/hd;->b()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/amap/api/col/ga;->d:Lcom/amap/api/col/hd;

    iput-object v3, p0, Lcom/amap/api/col/ga;->e:Lcom/amap/api/col/hd;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "UTF-8"

    invoke-virtual {v1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    iget-object v3, p0, Lcom/amap/api/col/ga;->c:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/amap/api/col/gy;->c([BLjava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/amap/api/col/da;->a([B)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v0, "UTF-8"

    invoke-virtual {v2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    iget-object v2, p0, Lcom/amap/api/col/ga;->c:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/amap/api/col/gy;->c([BLjava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/col/da;->a([B)Ljava/lang/String;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Lcom/amap/api/col/hd;

    invoke-direct {v2}, Lcom/amap/api/col/hd;-><init>()V

    invoke-virtual {v2, v1}, Lcom/amap/api/col/hd;->b(Ljava/lang/String;)V

    invoke-static {}, Lcom/amap/api/col/hu;->b()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/amap/api/col/hd;->a(J)V

    invoke-virtual {v2, v0}, Lcom/amap/api/col/hd;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/amap/api/col/ga;->f:Lcom/amap/api/col/dy;

    const-string v1, "_id=1"

    invoke-virtual {v0, v2, v1}, Lcom/amap/api/col/dy;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/amap/api/col/hu;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amap/api/col/ga;->h:J
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "LastLocationManager"

    const-string v2, "saveLastFix"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/dh;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3
    move-object v1, v0

    goto :goto_1
.end method

.method private d()Lcom/amap/api/col/hd;
    .locals 6

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/amap/api/col/ga;->b:Landroid/content/Context;

    if-nez v0, :cond_1

    move-object v0, v1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/ga;->f:Lcom/amap/api/col/dy;

    if-nez v0, :cond_2

    move-object v0, v1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/amap/api/col/ga;->f:Lcom/amap/api/col/dy;

    const-string v2, "_id=1"

    const-class v3, Lcom/amap/api/col/hd;

    invoke-virtual {v0, v2, v3}, Lcom/amap/api/col/dy;->b(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_5

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/col/hd;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {v0}, Lcom/amap/api/col/hd;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/amap/api/col/da;->b(Ljava/lang/String;)[B

    move-result-object v2

    if-eqz v2, :cond_4

    array-length v3, v2

    if-lez v3, :cond_4

    iget-object v3, p0, Lcom/amap/api/col/ga;->c:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/amap/api/col/gy;->d([BLjava/lang/String;)[B

    move-result-object v3

    if-eqz v3, :cond_4

    array-length v2, v3

    if-lez v2, :cond_4

    new-instance v2, Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-direct {v2, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    :goto_1
    invoke-virtual {v0}, Lcom/amap/api/col/hd;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/amap/api/col/da;->b(Ljava/lang/String;)[B

    move-result-object v3

    if-eqz v3, :cond_3

    array-length v4, v3

    if-lez v4, :cond_3

    iget-object v4, p0, Lcom/amap/api/col/ga;->c:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/amap/api/col/gy;->d([BLjava/lang/String;)[B

    move-result-object v3

    if-eqz v3, :cond_3

    array-length v4, v3

    if-lez v4, :cond_3

    new-instance v1, Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-direct {v1, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    :cond_3
    invoke-virtual {v0, v1}, Lcom/amap/api/col/hd;->a(Ljava/lang/String;)V

    move-object v1, v2

    :goto_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Lcom/amap/api/location/AMapLocation;

    const-string v3, ""

    invoke-direct {v2, v3}, Lcom/amap/api/location/AMapLocation;-><init>(Ljava/lang/String;)V

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v3}, Lcom/amap/api/col/dh;->a(Lcom/amap/api/location/AMapLocation;Lorg/json/JSONObject;)V

    invoke-static {v2}, Lcom/amap/api/col/hu;->b(Lcom/amap/api/location/AMapLocation;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v2}, Lcom/amap/api/col/hd;->a(Lcom/amap/api/location/AMapLocation;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    :goto_3
    const-string v2, "LastLocationManager"

    const-string v3, "readLastFix"

    invoke-static {v1, v2, v3}, Lcom/amap/api/col/dh;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_1
    move-exception v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    goto :goto_3

    :cond_4
    move-object v2, v1

    goto :goto_1

    :cond_5
    move-object v0, v1

    goto :goto_2
.end method


# virtual methods
.method public a()Lcom/amap/api/location/AMapLocation;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/amap/api/col/ga;->d:Lcom/amap/api/col/hd;

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/amap/api/col/ga;->d()Lcom/amap/api/col/hd;

    move-result-object v1

    iput-object v1, p0, Lcom/amap/api/col/ga;->d:Lcom/amap/api/col/hd;

    :cond_0
    iget-object v1, p0, Lcom/amap/api/col/ga;->d:Lcom/amap/api/col/hd;

    if-nez v1, :cond_2

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    iget-object v1, p0, Lcom/amap/api/col/ga;->d:Lcom/amap/api/col/hd;

    invoke-virtual {v1}, Lcom/amap/api/col/hd;->a()Lcom/amap/api/location/AMapLocation;

    move-result-object v1

    invoke-static {v1}, Lcom/amap/api/col/hu;->a(Lcom/amap/api/location/AMapLocation;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/ga;->d:Lcom/amap/api/col/hd;

    invoke-virtual {v0}, Lcom/amap/api/col/hd;->a()Lcom/amap/api/location/AMapLocation;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)Lcom/amap/api/location/AMapLocation;
    .locals 7

    const/4 v0, 0x0

    const/4 v6, 0x4

    iget-object v1, p0, Lcom/amap/api/col/ga;->d:Lcom/amap/api/col/hd;

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/amap/api/col/ga;->d()Lcom/amap/api/col/hd;

    move-result-object v1

    iput-object v1, p0, Lcom/amap/api/col/ga;->d:Lcom/amap/api/col/hd;

    :cond_0
    iget-object v1, p0, Lcom/amap/api/col/ga;->d:Lcom/amap/api/col/hd;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/amap/api/col/ga;->d:Lcom/amap/api/col/hd;

    invoke-virtual {v1}, Lcom/amap/api/col/hd;->a()Lcom/amap/api/location/AMapLocation;

    move-result-object v1

    if-nez v1, :cond_2

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/amap/api/col/hu;->b()J

    move-result-wide v2

    iget-object v1, p0, Lcom/amap/api/col/ga;->d:Lcom/amap/api/col/hd;

    invoke-virtual {v1}, Lcom/amap/api/col/hd;->d()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x7530

    cmp-long v1, v2, v4

    if-gtz v1, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/ga;->d:Lcom/amap/api/col/hd;

    invoke-virtual {v0}, Lcom/amap/api/col/hd;->a()Lcom/amap/api/location/AMapLocation;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/amap/api/location/AMapLocation;->setLocationType(I)V

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/amap/api/col/gz;->a()Lcom/amap/api/col/gz;

    move-result-object v1

    iget-object v2, p0, Lcom/amap/api/col/ga;->d:Lcom/amap/api/col/hd;

    invoke-virtual {v2}, Lcom/amap/api/col/hd;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lcom/amap/api/col/gz;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/ga;->d:Lcom/amap/api/col/hd;

    invoke-virtual {v0}, Lcom/amap/api/col/hd;->a()Lcom/amap/api/location/AMapLocation;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/amap/api/location/AMapLocation;->setLocationType(I)V

    goto :goto_0
.end method

.method public a(Lcom/amap/api/col/hd;)V
    .locals 4

    iget-object v0, p0, Lcom/amap/api/col/ga;->b:Landroid/content/Context;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/amap/api/col/hd;->a()Lcom/amap/api/location/AMapLocation;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/col/hu;->a(Lcom/amap/api/location/AMapLocation;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/amap/api/col/hd;->a()Lcom/amap/api/location/AMapLocation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocation;->getLocationType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    iput-object p1, p0, Lcom/amap/api/col/ga;->d:Lcom/amap/api/col/hd;

    iget-object v0, p0, Lcom/amap/api/col/ga;->e:Lcom/amap/api/col/hd;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/col/ga;->e:Lcom/amap/api/col/hd;

    invoke-virtual {v0}, Lcom/amap/api/col/hd;->a()Lcom/amap/api/location/AMapLocation;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amap/api/col/hd;->a()Lcom/amap/api/location/AMapLocation;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amap/api/col/hu;->a(Lcom/amap/api/location/AMapLocation;Lcom/amap/api/location/AMapLocation;)F

    move-result v0

    const/high16 v1, 0x42480000    # 50.0f

    cmpg-float v0, v0, v1

    if-lez v0, :cond_0

    :cond_2
    invoke-static {}, Lcom/amap/api/col/hu;->b()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/amap/api/col/ga;->h:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7530

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/ga;->g:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_3

    invoke-static {}, Lcom/amap/api/col/dq;->c()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/ga;->g:Ljava/util/concurrent/ExecutorService;

    :cond_3
    iget-object v0, p0, Lcom/amap/api/col/ga;->g:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/ga;->g:Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, Lcom/amap/api/col/ga;->a:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "LastLocationManager"

    const-string v2, "setLastFix"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/dh;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public declared-synchronized b()V
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/col/ga;->c()V

    iget-object v0, p0, Lcom/amap/api/col/ga;->g:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/ga;->g:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/ga;->g:Ljava/util/concurrent/ExecutorService;

    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/amap/api/col/ga;->h:J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "LastLocationManager"

    const-string v2, "destroy"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/dh;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
