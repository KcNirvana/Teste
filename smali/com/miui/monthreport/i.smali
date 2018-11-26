.class public Lcom/miui/monthreport/i;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final aZi:Ljava/util/concurrent/Executor;

.field private static aZn:Lcom/miui/monthreport/i;


# instance fields
.field private aZj:Lcom/miui/monthreport/f;

.field private aZk:Ljava/lang/Exception;

.field private aZl:Ljava/util/List;

.field private volatile aZm:Z

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/miui/monthreport/i;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1()Ljava/util/concurrent/Executor;
    .locals 1

    sget-object v0, Lcom/miui/monthreport/i;->aZi:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/miui/monthreport/i;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/monthreport/i;->TAG:Ljava/lang/String;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/miui/monthreport/i;->aZi:Ljava/util/concurrent/Executor;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/miui/monthreport/i;->aZk:Ljava/lang/Exception;

    iput-object v0, p0, Lcom/miui/monthreport/i;->aZl:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/monthreport/i;->aZm:Z

    new-instance v0, Lcom/miui/monthreport/r;

    invoke-direct {v0, p0}, Lcom/miui/monthreport/r;-><init>(Lcom/miui/monthreport/i;)V

    iput-object v0, p0, Lcom/miui/monthreport/i;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/monthreport/i;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/miui/monthreport/f;->getInstance()Lcom/miui/monthreport/f;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/monthreport/i;->aZj:Lcom/miui/monthreport/f;

    return-void
.end method

.method private bvc(Ljava/lang/String;Lcom/miui/monthreport/o;)V
    .locals 4

    iget-object v0, p0, Lcom/miui/monthreport/i;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/miui/monthreport/i;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    new-instance v0, Lcom/miui/monthreport/l;

    invoke-direct {v0, p0, p2}, Lcom/miui/monthreport/l;-><init>(Lcom/miui/monthreport/i;Lcom/miui/monthreport/o;)V

    sget-object v1, Lcom/miui/monthreport/i;->aZi:Ljava/util/concurrent/Executor;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/miui/monthreport/l;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private bvf()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/miui/monthreport/i;->aZl:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/monthreport/i;->aZl:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/monthreport/i;->aZl:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/monthreport/i;->aZl:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-direct {p0, v0, v3}, Lcom/miui/monthreport/i;->bvc(Ljava/lang/String;Lcom/miui/monthreport/o;)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/miui/monthreport/i;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Module is null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v2, p0, Lcom/miui/monthreport/i;->aZm:Z

    goto :goto_0
.end method

.method static synthetic bvg(Lcom/miui/monthreport/i;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/miui/monthreport/i;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic bvh(Lcom/miui/monthreport/i;)Lcom/miui/monthreport/f;
    .locals 1

    iget-object v0, p0, Lcom/miui/monthreport/i;->aZj:Lcom/miui/monthreport/f;

    return-object v0
.end method

.method static synthetic bvi(Lcom/miui/monthreport/i;)Ljava/lang/Exception;
    .locals 1

    iget-object v0, p0, Lcom/miui/monthreport/i;->aZk:Ljava/lang/Exception;

    return-object v0
.end method

.method static synthetic bvj(Lcom/miui/monthreport/i;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/miui/monthreport/i;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic bvk(Lcom/miui/monthreport/i;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/monthreport/i;->aZm:Z

    return v0
.end method

.method static synthetic bvl(Lcom/miui/monthreport/i;Ljava/lang/Exception;)Ljava/lang/Exception;
    .locals 0

    iput-object p1, p0, Lcom/miui/monthreport/i;->aZk:Ljava/lang/Exception;

    return-object p1
.end method

.method static synthetic bvm(Lcom/miui/monthreport/i;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/miui/monthreport/i;->aZl:Ljava/util/List;

    return-object p1
.end method

.method static synthetic bvn(Lcom/miui/monthreport/i;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/monthreport/i;->aZm:Z

    return p1
.end method

.method static synthetic bvo(Lcom/miui/monthreport/i;Ljava/lang/String;Lcom/miui/monthreport/o;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/monthreport/i;->bvc(Ljava/lang/String;Lcom/miui/monthreport/o;)V

    return-void
.end method

.method static synthetic bvp(Lcom/miui/monthreport/i;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/monthreport/i;->bvf()V

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/miui/monthreport/i;
    .locals 2

    const-class v1, Lcom/miui/monthreport/i;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/miui/monthreport/i;->aZn:Lcom/miui/monthreport/i;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/monthreport/i;

    invoke-direct {v0, p0}, Lcom/miui/monthreport/i;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/miui/monthreport/i;->aZn:Lcom/miui/monthreport/i;

    :cond_0
    sget-object v0, Lcom/miui/monthreport/i;->aZn:Lcom/miui/monthreport/i;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public bvd()V
    .locals 2

    iget-object v0, p0, Lcom/miui/monthreport/i;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/miui/monthreport/t;

    invoke-direct {v1, p0}, Lcom/miui/monthreport/t;-><init>(Lcom/miui/monthreport/i;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public bve()V
    .locals 6

    const/4 v5, 0x0

    invoke-static {}, Lcom/miui/monthreport/m;->bvz()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    invoke-static {v0, v1}, Lcom/miui/common/b/g;->getFromNowDayInterval(J)I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/miui/monthreport/i;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/monthreport/b;->getInstance(Landroid/content/Context;)Lcom/miui/monthreport/b;

    move-result-object v0

    new-instance v1, Lcom/miui/monthreport/s;

    invoke-direct {v1, p0}, Lcom/miui/monthreport/s;-><init>(Lcom/miui/monthreport/i;)V

    const/4 v2, 0x2

    new-array v2, v2, [Lcom/miui/monthreport/LocationGetterManager$LocateType;

    sget-object v3, Lcom/miui/monthreport/LocationGetterManager$LocateType;->aYP:Lcom/miui/monthreport/LocationGetterManager$LocateType;

    aput-object v3, v2, v5

    sget-object v3, Lcom/miui/monthreport/LocationGetterManager$LocateType;->aYQ:Lcom/miui/monthreport/LocationGetterManager$LocateType;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-virtual {v0, v5, v1, v2}, Lcom/miui/monthreport/b;->buE(ZLcom/miui/monthreport/e;[Lcom/miui/monthreport/LocationGetterManager$LocateType;)V

    :cond_1
    iget-object v0, p0, Lcom/miui/monthreport/i;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/monthreport/i;->getInstance(Landroid/content/Context;)Lcom/miui/monthreport/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/monthreport/i;->bvd()V

    return-void
.end method
