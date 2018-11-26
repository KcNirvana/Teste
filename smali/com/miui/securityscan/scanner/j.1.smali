.class public Lcom/miui/securityscan/scanner/j;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static Dc:Lcom/miui/securityscan/scanner/j;

.field private static final synthetic Dd:[I

.field private static final synthetic De:[I


# instance fields
.field private CN:Lcom/miui/common/h/b;

.field private CO:Lcom/miui/common/f/a;

.field private CP:Lcom/miui/securityscan/scanner/s;

.field private volatile CQ:Z

.field private CR:Lcom/miui/securityscan/scanner/o;

.field private CS:Lcom/miui/securityscan/scanner/o;

.field private CT:Lcom/miui/securityscan/scanner/u;

.field private CU:Lcom/miui/securityscan/scanner/p;

.field private CV:Lcom/miui/securityscan/scanner/i;

.field private CW:Ljava/util/Queue;

.field private CX:Lcom/miui/securityscan/scanner/y;

.field private CY:Lcom/miui/securityscan/scanner/f;

.field private CZ:Ljava/util/Queue;

.field private Da:Lcom/miui/securityscan/scanner/B;

.field private Db:Lcom/miui/securityscan/scanner/z;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/securityscan/scanner/j;->CQ:Z

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/miui/securityscan/scanner/j;->CZ:Ljava/util/Queue;

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/miui/securityscan/scanner/j;->CW:Ljava/util/Queue;

    iput-object p1, p0, Lcom/miui/securityscan/scanner/j;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/miui/securityscan/scanner/j;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/miui/securityscan/scanner/f;

    invoke-direct {v0}, Lcom/miui/securityscan/scanner/f;-><init>()V

    iput-object v0, p0, Lcom/miui/securityscan/scanner/j;->CY:Lcom/miui/securityscan/scanner/f;

    new-instance v0, Lcom/miui/securityscan/scanner/i;

    invoke-direct {v0}, Lcom/miui/securityscan/scanner/i;-><init>()V

    iput-object v0, p0, Lcom/miui/securityscan/scanner/j;->CV:Lcom/miui/securityscan/scanner/i;

    invoke-static {}, Lcom/miui/securityscan/scanner/B;->getInstance()Lcom/miui/securityscan/scanner/B;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/securityscan/scanner/j;->Da:Lcom/miui/securityscan/scanner/B;

    invoke-static {p1}, Lcom/miui/securityscan/scanner/p;->getInstance(Landroid/content/Context;)Lcom/miui/securityscan/scanner/p;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/securityscan/scanner/j;->CU:Lcom/miui/securityscan/scanner/p;

    invoke-static {p1}, Lcom/miui/securityscan/scanner/z;->getInstance(Landroid/content/Context;)Lcom/miui/securityscan/scanner/z;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/securityscan/scanner/j;->Db:Lcom/miui/securityscan/scanner/z;

    invoke-static {p1}, Lcom/miui/securityscan/scanner/s;->getInstance(Landroid/content/Context;)Lcom/miui/securityscan/scanner/s;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/securityscan/scanner/j;->CP:Lcom/miui/securityscan/scanner/s;

    invoke-static {p1}, Lcom/miui/securityscan/scanner/u;->getInstance(Landroid/content/Context;)Lcom/miui/securityscan/scanner/u;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/securityscan/scanner/j;->CT:Lcom/miui/securityscan/scanner/u;

    invoke-static {p1}, Lcom/miui/common/h/b;->getInstance(Landroid/content/Context;)Lcom/miui/common/h/b;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/securityscan/scanner/j;->CN:Lcom/miui/common/h/b;

    invoke-static {p1}, Lcom/miui/common/f/a;->getInstance(Landroid/content/Context;)Lcom/miui/common/f/a;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/securityscan/scanner/j;->CO:Lcom/miui/common/f/a;

    invoke-static {}, Lcom/miui/securityscan/scanner/y;->getInstance()Lcom/miui/securityscan/scanner/y;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/securityscan/scanner/j;->CX:Lcom/miui/securityscan/scanner/y;

    return-void
.end method

.method private Eb(Lcom/miui/securityscan/c/d;Ljava/util/List;)V
    .locals 2

    const-string/jumbo v0, "SecurityManager"

    const-string/jumbo v1, "startOptimizeMemoryAfterScanMemory"

    invoke-static {v0, v1}, Lmiui/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/securityscan/scanner/j;->CU:Lcom/miui/securityscan/scanner/p;

    new-instance v1, Lcom/miui/securityscan/scanner/S;

    invoke-direct {v1, p0, p1, p2}, Lcom/miui/securityscan/scanner/S;-><init>(Lcom/miui/securityscan/scanner/j;Lcom/miui/securityscan/c/d;Ljava/util/List;)V

    invoke-virtual {v0, p2, v1}, Lcom/miui/securityscan/scanner/p;->ED(Ljava/util/List;Lcom/miui/securitycenter/memory/c;)V

    return-void
.end method

.method private Ec(Lcom/miui/securityscan/c/d;Ljava/util/List;Lcom/miui/securityscan/scanner/m;)V
    .locals 2

    const-string/jumbo v0, "SecurityManager"

    const-string/jumbo v1, "startOptimizeSystemAppAfterScanSystem"

    invoke-static {v0, v1}, Lmiui/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/securityscan/scanner/j;->Db:Lcom/miui/securityscan/scanner/z;

    new-instance v1, Lcom/miui/securityscan/scanner/Q;

    invoke-direct {v1, p0, p1}, Lcom/miui/securityscan/scanner/Q;-><init>(Lcom/miui/securityscan/scanner/j;Lcom/miui/securityscan/c/d;)V

    invoke-virtual {v0, p2, p3, v1}, Lcom/miui/securityscan/scanner/z;->Fj(Ljava/util/List;Lcom/miui/securityscan/scanner/m;Lcom/miui/securityscan/c/f;)V

    return-void
.end method

.method private Ed(ZLcom/miui/securityscan/scanner/l;)V
    .locals 2

    const-string/jumbo v0, "SecurityManager startScanAutoItem(2)"

    invoke-static {v0}, Lcom/miui/common/b/h;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/securityscan/scanner/j;->Db:Lcom/miui/securityscan/scanner/z;

    new-instance v1, Lcom/miui/securityscan/scanner/G;

    invoke-direct {v1, p0, p1, p2}, Lcom/miui/securityscan/scanner/G;-><init>(Lcom/miui/securityscan/scanner/j;ZLcom/miui/securityscan/scanner/l;)V

    invoke-virtual {v0, v1}, Lcom/miui/securityscan/scanner/z;->Fh(Lcom/miui/securityscan/c/e;)V

    return-void
.end method

.method private Ee(Lcom/miui/securityscan/scanner/l;)V
    .locals 2

    const-string/jumbo v0, "SecurityManager startScanCacheItem(5)"

    invoke-static {v0}, Lcom/miui/common/b/h;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/securityscan/scanner/j;->CP:Lcom/miui/securityscan/scanner/s;

    new-instance v1, Lcom/miui/securityscan/scanner/M;

    invoke-direct {v1, p0}, Lcom/miui/securityscan/scanner/M;-><init>(Lcom/miui/securityscan/scanner/j;)V

    invoke-virtual {v0, p1, v1}, Lcom/miui/securityscan/scanner/s;->ET(Lcom/miui/securityscan/scanner/l;Lcom/miui/optimizecenter/garbagecheck/IGarbageScanCallback;)V

    return-void
.end method

.method private Ef(ZLcom/miui/securityscan/c/a;)V
    .locals 2

    const-string/jumbo v0, "SecurityManager startScanManualItem(1)"

    invoke-static {v0}, Lcom/miui/common/b/h;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/securityscan/scanner/j;->CT:Lcom/miui/securityscan/scanner/u;

    new-instance v1, Lcom/miui/securityscan/scanner/P;

    invoke-direct {v1, p0, p2, p1}, Lcom/miui/securityscan/scanner/P;-><init>(Lcom/miui/securityscan/scanner/j;Lcom/miui/securityscan/c/a;Z)V

    invoke-virtual {v0, v1}, Lcom/miui/securityscan/scanner/u;->EY(Lcom/miui/securityscan/c/e;)V

    return-void
.end method

.method private Eg(ZLcom/miui/securityscan/c/d;Lcom/miui/securityscan/scanner/l;)V
    .locals 2

    const-string/jumbo v0, "SecurityManager startScanMemoryItem(4)"

    invoke-static {v0}, Lcom/miui/common/b/h;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/securityscan/scanner/j;->CU:Lcom/miui/securityscan/scanner/p;

    new-instance v1, Lcom/miui/securityscan/scanner/K;

    invoke-direct {v1, p0, p1, p3, p2}, Lcom/miui/securityscan/scanner/K;-><init>(Lcom/miui/securityscan/scanner/j;ZLcom/miui/securityscan/scanner/l;Lcom/miui/securityscan/c/d;)V

    invoke-virtual {v0, v1}, Lcom/miui/securityscan/scanner/p;->EC(Lcom/miui/securitycenter/memory/e;)V

    return-void
.end method

.method private Eh(ZLcom/miui/securityscan/c/d;Lcom/miui/securityscan/scanner/l;Lcom/miui/securityscan/scanner/m;)V
    .locals 7

    const-string/jumbo v0, "SecurityManager startScanSystemApps(3)"

    invoke-static {v0}, Lcom/miui/common/b/h;->d(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/miui/securityscan/scanner/j;->Db:Lcom/miui/securityscan/scanner/z;

    new-instance v0, Lcom/miui/securityscan/scanner/I;

    move-object v1, p0

    move v2, p1

    move-object v3, p3

    move-object v4, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/miui/securityscan/scanner/I;-><init>(Lcom/miui/securityscan/scanner/j;ZLcom/miui/securityscan/scanner/l;Lcom/miui/securityscan/c/d;Lcom/miui/securityscan/scanner/m;)V

    invoke-virtual {v6, p1, v0}, Lcom/miui/securityscan/scanner/z;->Fi(ZLcom/miui/securityscan/c/e;)V

    return-void
.end method

.method static synthetic Ei(Lcom/miui/securityscan/scanner/j;)Lcom/miui/common/h/b;
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/scanner/j;->CN:Lcom/miui/common/h/b;

    return-object v0
.end method

.method static synthetic Ej(Lcom/miui/securityscan/scanner/j;)Lcom/miui/common/f/a;
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/scanner/j;->CO:Lcom/miui/common/f/a;

    return-object v0
.end method

.method static synthetic Ek(Lcom/miui/securityscan/scanner/j;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/securityscan/scanner/j;->CQ:Z

    return v0
.end method

.method static synthetic El(Lcom/miui/securityscan/scanner/j;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/scanner/j;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic Em(Lcom/miui/securityscan/scanner/j;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/scanner/j;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic En(Lcom/miui/securityscan/scanner/j;)Lcom/miui/securityscan/scanner/i;
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/scanner/j;->CV:Lcom/miui/securityscan/scanner/i;

    return-object v0
.end method

.method static synthetic Eo(Lcom/miui/securityscan/scanner/j;)Lcom/miui/securityscan/scanner/f;
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/scanner/j;->CY:Lcom/miui/securityscan/scanner/f;

    return-object v0
.end method

.method static synthetic Ep(Lcom/miui/securityscan/scanner/j;)Lcom/miui/securityscan/scanner/B;
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/scanner/j;->Da:Lcom/miui/securityscan/scanner/B;

    return-object v0
.end method

.method static synthetic Eq(Lcom/miui/securityscan/scanner/j;)Lcom/miui/securityscan/scanner/z;
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/scanner/j;->Db:Lcom/miui/securityscan/scanner/z;

    return-object v0
.end method

.method static synthetic Er(Lcom/miui/securityscan/scanner/j;Lcom/miui/securityscan/c/d;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/securityscan/scanner/j;->Eb(Lcom/miui/securityscan/c/d;Ljava/util/List;)V

    return-void
.end method

.method static synthetic Es(Lcom/miui/securityscan/scanner/j;Lcom/miui/securityscan/c/d;Ljava/util/List;Lcom/miui/securityscan/scanner/m;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/securityscan/scanner/j;->Ec(Lcom/miui/securityscan/c/d;Ljava/util/List;Lcom/miui/securityscan/scanner/m;)V

    return-void
.end method

.method private static synthetic Et()[I
    .locals 3

    sget-object v0, Lcom/miui/securityscan/scanner/j;->Dd:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/miui/securityscan/scanner/j;->Dd:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/miui/securityscan/scanner/PredictScanItem;->values()[Lcom/miui/securityscan/scanner/PredictScanItem;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/miui/securityscan/scanner/PredictScanItem;->CJ:Lcom/miui/securityscan/scanner/PredictScanItem;

    invoke-virtual {v1}, Lcom/miui/securityscan/scanner/PredictScanItem;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    :try_start_1
    sget-object v1, Lcom/miui/securityscan/scanner/PredictScanItem;->CK:Lcom/miui/securityscan/scanner/PredictScanItem;

    invoke-virtual {v1}, Lcom/miui/securityscan/scanner/PredictScanItem;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    :try_start_2
    sget-object v1, Lcom/miui/securityscan/scanner/PredictScanItem;->CL:Lcom/miui/securityscan/scanner/PredictScanItem;

    invoke-virtual {v1}, Lcom/miui/securityscan/scanner/PredictScanItem;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    :try_start_3
    sget-object v1, Lcom/miui/securityscan/scanner/PredictScanItem;->CM:Lcom/miui/securityscan/scanner/PredictScanItem;

    invoke-virtual {v1}, Lcom/miui/securityscan/scanner/PredictScanItem;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    sput-object v0, Lcom/miui/securityscan/scanner/j;->Dd:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1

    :catch_3
    move-exception v1

    goto :goto_0
.end method

.method private static synthetic Eu()[I
    .locals 3

    sget-object v0, Lcom/miui/securityscan/scanner/j;->De:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/miui/securityscan/scanner/j;->De:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/miui/securityscan/scanner/OptimizeItem;->values()[Lcom/miui/securityscan/scanner/OptimizeItem;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/miui/securityscan/scanner/OptimizeItem;->CD:Lcom/miui/securityscan/scanner/OptimizeItem;

    invoke-virtual {v1}, Lcom/miui/securityscan/scanner/OptimizeItem;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    :try_start_1
    sget-object v1, Lcom/miui/securityscan/scanner/OptimizeItem;->CE:Lcom/miui/securityscan/scanner/OptimizeItem;

    invoke-virtual {v1}, Lcom/miui/securityscan/scanner/OptimizeItem;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    sget-object v1, Lcom/miui/securityscan/scanner/OptimizeItem;->CF:Lcom/miui/securityscan/scanner/OptimizeItem;

    invoke-virtual {v1}, Lcom/miui/securityscan/scanner/OptimizeItem;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    sput-object v0, Lcom/miui/securityscan/scanner/j;->De:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/miui/securityscan/scanner/j;
    .locals 3

    const-class v1, Lcom/miui/securityscan/scanner/j;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/miui/securityscan/scanner/j;->Dc:Lcom/miui/securityscan/scanner/j;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/securityscan/scanner/j;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/miui/securityscan/scanner/j;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/miui/securityscan/scanner/j;->Dc:Lcom/miui/securityscan/scanner/j;

    :cond_0
    sget-object v0, Lcom/miui/securityscan/scanner/j;->Dc:Lcom/miui/securityscan/scanner/j;
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
.method public DT(Lcom/miui/securityscan/c/a;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/securityscan/scanner/j;->CT:Lcom/miui/securityscan/scanner/u;

    new-instance v1, Lcom/miui/securityscan/scanner/O;

    invoke-direct {v1, p0, p1}, Lcom/miui/securityscan/scanner/O;-><init>(Lcom/miui/securityscan/scanner/j;Lcom/miui/securityscan/c/a;)V

    invoke-virtual {v0, v1}, Lcom/miui/securityscan/scanner/u;->EY(Lcom/miui/securityscan/c/e;)V

    return-void
.end method

.method public DU(Lcom/miui/securityscan/c/a;Lcom/miui/securityscan/scanner/l;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    const-string/jumbo v0, "SecurityManager startPredictScan:---------------------------------"

    invoke-static {v0}, Lcom/miui/common/b/h;->d(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/securityscan/scanner/j;->CQ:Z

    iget-object v0, p0, Lcom/miui/securityscan/scanner/j;->CZ:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    iget-object v0, p0, Lcom/miui/securityscan/scanner/j;->CZ:Ljava/util/Queue;

    invoke-static {}, Lcom/miui/securityscan/scanner/PredictScanItem;->values()[Lcom/miui/securityscan/scanner/PredictScanItem;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Queue;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/miui/securityscan/scanner/j;->CY:Lcom/miui/securityscan/scanner/f;

    invoke-virtual {v0}, Lcom/miui/securityscan/scanner/f;->DK()V

    iget-object v0, p0, Lcom/miui/securityscan/scanner/j;->Da:Lcom/miui/securityscan/scanner/B;

    invoke-virtual {v0}, Lcom/miui/securityscan/scanner/B;->FL()V

    invoke-direct {p0, v2, p1}, Lcom/miui/securityscan/scanner/j;->Ef(ZLcom/miui/securityscan/c/a;)V

    invoke-direct {p0, v2, p2}, Lcom/miui/securityscan/scanner/j;->Ed(ZLcom/miui/securityscan/scanner/l;)V

    invoke-direct {p0, v2, v3, p2, v3}, Lcom/miui/securityscan/scanner/j;->Eh(ZLcom/miui/securityscan/c/d;Lcom/miui/securityscan/scanner/l;Lcom/miui/securityscan/scanner/m;)V

    invoke-direct {p0, v2, v3, p2}, Lcom/miui/securityscan/scanner/j;->Eg(ZLcom/miui/securityscan/c/d;Lcom/miui/securityscan/scanner/l;)V

    return-void
.end method

.method public DV()Lcom/miui/securityscan/scanner/PredictScanItem;
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/scanner/j;->CZ:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/securityscan/scanner/PredictScanItem;

    return-object v0
.end method

.method public DW(Lcom/miui/securityscan/scanner/PredictScanItem;Lcom/miui/securityscan/scanner/k;)V
    .locals 3

    const-string/jumbo v0, "SecurityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "popEntry : item = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmiui/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, ""

    invoke-static {}, Lcom/miui/securityscan/scanner/j;->Et()[I

    move-result-object v1

    invoke-virtual {p1}, Lcom/miui/securityscan/scanner/PredictScanItem;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :goto_0
    new-instance v1, Lcom/miui/securityscan/scanner/o;

    iget-object v2, p0, Lcom/miui/securityscan/scanner/j;->CY:Lcom/miui/securityscan/scanner/f;

    invoke-virtual {v2, p1}, Lcom/miui/securityscan/scanner/f;->DL(Lcom/miui/securityscan/scanner/PredictScanItem;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v2

    invoke-direct {v1, p0, v0, p2, v2}, Lcom/miui/securityscan/scanner/o;-><init>(Lcom/miui/securityscan/scanner/j;Ljava/lang/String;Lcom/miui/securityscan/scanner/k;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v1, p0, Lcom/miui/securityscan/scanner/j;->CR:Lcom/miui/securityscan/scanner/o;

    iget-object v0, p0, Lcom/miui/securityscan/scanner/j;->CR:Lcom/miui/securityscan/scanner/o;

    invoke-virtual {v0}, Lcom/miui/securityscan/scanner/o;->start()V

    return-void

    :pswitch_0
    const-string/jumbo v0, "com.miui.guardprovider.action.antivirusservice"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public DX(Lcom/miui/securityscan/scanner/m;Lcom/miui/securityscan/c/a;Lcom/miui/securityscan/c/d;Lcom/miui/securityscan/scanner/l;)V
    .locals 3

    const/4 v2, 0x0

    const-string/jumbo v0, "SecurityManager startScanAndOptimize:---------------------------------"

    invoke-static {v0}, Lcom/miui/common/b/h;->d(Ljava/lang/String;)V

    iput-boolean v2, p0, Lcom/miui/securityscan/scanner/j;->CQ:Z

    iget-object v0, p0, Lcom/miui/securityscan/scanner/j;->CX:Lcom/miui/securityscan/scanner/y;

    invoke-virtual {v0}, Lcom/miui/securityscan/scanner/y;->Fg()V

    iget-object v0, p0, Lcom/miui/securityscan/scanner/j;->CW:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    iget-object v0, p0, Lcom/miui/securityscan/scanner/j;->CV:Lcom/miui/securityscan/scanner/i;

    invoke-virtual {v0}, Lcom/miui/securityscan/scanner/i;->DQ()V

    iget-object v0, p0, Lcom/miui/securityscan/scanner/j;->CW:Ljava/util/Queue;

    invoke-static {}, Lcom/miui/securityscan/scanner/OptimizeItem;->values()[Lcom/miui/securityscan/scanner/OptimizeItem;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Queue;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/miui/securityscan/scanner/j;->Da:Lcom/miui/securityscan/scanner/B;

    invoke-virtual {v0}, Lcom/miui/securityscan/scanner/B;->FL()V

    invoke-direct {p0, v2, p2}, Lcom/miui/securityscan/scanner/j;->Ef(ZLcom/miui/securityscan/c/a;)V

    invoke-direct {p0, v2, p4}, Lcom/miui/securityscan/scanner/j;->Ed(ZLcom/miui/securityscan/scanner/l;)V

    invoke-direct {p0, v2, p3, p4, p1}, Lcom/miui/securityscan/scanner/j;->Eh(ZLcom/miui/securityscan/c/d;Lcom/miui/securityscan/scanner/l;Lcom/miui/securityscan/scanner/m;)V

    invoke-direct {p0, v2, p3, p4}, Lcom/miui/securityscan/scanner/j;->Eg(ZLcom/miui/securityscan/c/d;Lcom/miui/securityscan/scanner/l;)V

    invoke-direct {p0, p4}, Lcom/miui/securityscan/scanner/j;->Ee(Lcom/miui/securityscan/scanner/l;)V

    return-void
.end method

.method public DY(Ljava/util/List;)V
    .locals 3

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/antivirus/model/VirusModel;

    iget-object v2, p0, Lcom/miui/securityscan/scanner/j;->Da:Lcom/miui/securityscan/scanner/B;

    invoke-virtual {v0}, Lcom/miui/antivirus/model/VirusModel;->ars()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/miui/securityscan/scanner/B;->FZ(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/miui/securityscan/scanner/U;

    invoke-direct {v0, p0, p1}, Lcom/miui/securityscan/scanner/U;-><init>(Lcom/miui/securityscan/scanner/j;Ljava/util/List;)V

    invoke-static {v0}, Lcom/miui/common/b/s;->aJp(Ljava/lang/Runnable;)V

    return-void
.end method

.method public DZ()Lcom/miui/securityscan/scanner/OptimizeItem;
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/scanner/j;->CW:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/securityscan/scanner/OptimizeItem;

    return-object v0
.end method

.method public Ea(Lcom/miui/securityscan/scanner/OptimizeItem;Lcom/miui/securityscan/scanner/k;)V
    .locals 6

    const-string/jumbo v0, "SecurityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "popOptimizeEntry : item = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmiui/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, ""

    invoke-static {}, Lcom/miui/securityscan/scanner/j;->Eu()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/securityscan/scanner/OptimizeItem;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    new-instance v0, Lcom/miui/securityscan/scanner/o;

    iget-object v1, p0, Lcom/miui/securityscan/scanner/j;->CV:Lcom/miui/securityscan/scanner/i;

    invoke-virtual {v1, p1}, Lcom/miui/securityscan/scanner/i;->DR(Lcom/miui/securityscan/scanner/OptimizeItem;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v4

    const/4 v5, 0x1

    move-object v1, p0

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/miui/securityscan/scanner/o;-><init>(Lcom/miui/securityscan/scanner/j;Ljava/lang/String;Lcom/miui/securityscan/scanner/k;Ljava/util/concurrent/BlockingQueue;Z)V

    iput-object v0, p0, Lcom/miui/securityscan/scanner/j;->CS:Lcom/miui/securityscan/scanner/o;

    iget-object v0, p0, Lcom/miui/securityscan/scanner/j;->CS:Lcom/miui/securityscan/scanner/o;

    invoke-virtual {v0, p1}, Lcom/miui/securityscan/scanner/o;->EB(Lcom/miui/securityscan/scanner/OptimizeItem;)V

    iget-object v0, p0, Lcom/miui/securityscan/scanner/j;->CS:Lcom/miui/securityscan/scanner/o;

    invoke-virtual {v0}, Lcom/miui/securityscan/scanner/o;->start()V

    return-void

    :pswitch_0
    const-string/jumbo v2, "com.miui.guardprovider.action.antivirusservice"

    goto :goto_0

    :pswitch_1
    const-string/jumbo v2, ""

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public cancel()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/securityscan/scanner/j;->CQ:Z

    iget-object v0, p0, Lcom/miui/securityscan/scanner/j;->CR:Lcom/miui/securityscan/scanner/o;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/securityscan/scanner/j;->CR:Lcom/miui/securityscan/scanner/o;

    invoke-virtual {v0}, Lcom/miui/securityscan/scanner/o;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/securityscan/scanner/j;->CR:Lcom/miui/securityscan/scanner/o;

    invoke-virtual {v0}, Lcom/miui/securityscan/scanner/o;->interrupt()V

    iput-object v1, p0, Lcom/miui/securityscan/scanner/j;->CR:Lcom/miui/securityscan/scanner/o;

    :cond_0
    iget-object v0, p0, Lcom/miui/securityscan/scanner/j;->CS:Lcom/miui/securityscan/scanner/o;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/securityscan/scanner/j;->CS:Lcom/miui/securityscan/scanner/o;

    invoke-virtual {v0}, Lcom/miui/securityscan/scanner/o;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/securityscan/scanner/j;->CS:Lcom/miui/securityscan/scanner/o;

    invoke-virtual {v0}, Lcom/miui/securityscan/scanner/o;->interrupt()V

    iput-object v1, p0, Lcom/miui/securityscan/scanner/j;->CS:Lcom/miui/securityscan/scanner/o;

    :cond_1
    iget-object v0, p0, Lcom/miui/securityscan/scanner/j;->CO:Lcom/miui/common/f/a;

    const-string/jumbo v1, "com.miui.cleanmaster.action.CHECK_GARBAGE_CHECK"

    invoke-virtual {v0, v1}, Lcom/miui/common/f/a;->aMr(Ljava/lang/String;)V

    return-void
.end method
