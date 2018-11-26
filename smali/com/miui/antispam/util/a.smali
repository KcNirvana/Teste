.class public Lcom/miui/antispam/util/a;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static volatile YQ:Lcom/miui/antispam/util/a;

.field private static YR:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static YS:Ljava/util/concurrent/atomic/AtomicBoolean;


# instance fields
.field private YT:Ljava/util/concurrent/ThreadPoolExecutor;

.field private YU:Landroid/os/Handler;

.field private YV:Ljava/util/concurrent/ConcurrentHashMap;

.field private mContext:Landroid/content/Context;


# direct methods
.method static synthetic -get1()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    sget-object v0, Lcom/miui/antispam/util/a;->YR:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/miui/antispam/util/a;->YS:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/miui/antispam/util/a;->YR:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/antispam/util/a;->YV:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v0, 0x5

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ThreadPoolExecutor;

    iput-object v0, p0, Lcom/miui/antispam/util/a;->YT:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v0, Lcom/miui/antispam/util/k;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/miui/antispam/util/k;-><init>(Lcom/miui/antispam/util/a;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/miui/antispam/util/a;->YU:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antispam/util/a;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic Xs(Lcom/miui/antispam/util/a;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/miui/antispam/util/a;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic Xt()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    sget-object v0, Lcom/miui/antispam/util/a;->YS:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic Xu(Lcom/miui/antispam/util/a;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/miui/antispam/util/a;->YU:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic Xv(Lcom/miui/antispam/util/a;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    iget-object v0, p0, Lcom/miui/antispam/util/a;->YV:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/miui/antispam/util/a;
    .locals 2

    sget-object v0, Lcom/miui/antispam/util/a;->YQ:Lcom/miui/antispam/util/a;

    if-nez v0, :cond_1

    const-class v1, Lcom/miui/antispam/util/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/miui/antispam/util/a;->YQ:Lcom/miui/antispam/util/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/antispam/util/a;

    invoke-direct {v0, p0}, Lcom/miui/antispam/util/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/miui/antispam/util/a;->YQ:Lcom/miui/antispam/util/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    :cond_1
    sget-object v0, Lcom/miui/antispam/util/a;->YQ:Lcom/miui/antispam/util/a;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public Xp()Z
    .locals 1

    sget-object v0, Lcom/miui/antispam/util/a;->YS:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public Xq()V
    .locals 3

    sget-object v0, Lcom/miui/antispam/util/a;->YR:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/antispam/util/a;->YT:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/miui/antispam/util/e;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/miui/antispam/util/e;-><init>(Lcom/miui/antispam/util/a;Lcom/miui/antispam/util/e;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public Xr(Ljava/lang/String;Lcom/miui/antispam/util/b;)Landroid/util/Pair;
    .locals 3

    const/4 v2, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object v2

    :cond_0
    iget-object v0, p0, Lcom/miui/antispam/util/a;->YV:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/antispam/util/a;->YV:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/miui/antispam/util/a;->YT:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/miui/antispam/util/c;

    invoke-direct {v1, p0, p1, p2}, Lcom/miui/antispam/util/c;-><init>(Lcom/miui/antispam/util/a;Ljava/lang/String;Lcom/miui/antispam/util/b;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-object v2
.end method
