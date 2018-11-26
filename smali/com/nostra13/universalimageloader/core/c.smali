.class Lcom/nostra13/universalimageloader/core/c;
.super Ljava/lang/Object;
.source ""


# instance fields
.field final bjN:Lcom/nostra13/universalimageloader/core/d;

.field private final bjO:Ljava/util/Map;

.field private final bjP:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final bjQ:Ljava/lang/Object;

.field private final bjR:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final bjS:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private bjT:Ljava/util/concurrent/Executor;

.field private bjU:Ljava/util/concurrent/Executor;

.field private bjV:Ljava/util/concurrent/Executor;

.field private final bjW:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/nostra13/universalimageloader/core/d;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/c;->bjO:Ljava/util/Map;

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/c;->bjW:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/c;->bjR:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/c;->bjP:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/c;->bjS:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/c;->bjQ:Ljava/lang/Object;

    iput-object p1, p0, Lcom/nostra13/universalimageloader/core/c;->bjN:Lcom/nostra13/universalimageloader/core/d;

    iget-object v0, p1, Lcom/nostra13/universalimageloader/core/d;->bkg:Ljava/util/concurrent/Executor;

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/c;->bjU:Ljava/util/concurrent/Executor;

    iget-object v0, p1, Lcom/nostra13/universalimageloader/core/d;->bkh:Ljava/util/concurrent/Executor;

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/c;->bjV:Ljava/util/concurrent/Executor;

    invoke-static {}, Lcom/nostra13/universalimageloader/core/i;->bHn()Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/c;->bjT:Ljava/util/concurrent/Executor;

    return-void
.end method

.method private bGC()Ljava/util/concurrent/Executor;
    .locals 3

    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/c;->bjN:Lcom/nostra13/universalimageloader/core/d;

    iget v0, v0, Lcom/nostra13/universalimageloader/core/d;->bkk:I

    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/c;->bjN:Lcom/nostra13/universalimageloader/core/d;

    iget v1, v1, Lcom/nostra13/universalimageloader/core/d;->bkl:I

    iget-object v2, p0, Lcom/nostra13/universalimageloader/core/c;->bjN:Lcom/nostra13/universalimageloader/core/d;

    iget-object v2, v2, Lcom/nostra13/universalimageloader/core/d;->bkm:Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;

    invoke-static {v0, v1, v2}, Lcom/nostra13/universalimageloader/core/i;->bHo(IILcom/nostra13/universalimageloader/core/assist/QueueProcessingType;)Ljava/util/concurrent/Executor;

    move-result-object v0

    return-object v0
.end method

.method private bGE()V
    .locals 1

    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/c;->bjN:Lcom/nostra13/universalimageloader/core/d;

    iget-boolean v0, v0, Lcom/nostra13/universalimageloader/core/d;->bki:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/c;->bjU:Ljava/util/concurrent/Executor;

    check-cast v0, Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/c;->bGC()Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/c;->bjU:Ljava/util/concurrent/Executor;

    :cond_0
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/c;->bjN:Lcom/nostra13/universalimageloader/core/d;

    iget-boolean v0, v0, Lcom/nostra13/universalimageloader/core/d;->bkj:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/c;->bjV:Ljava/util/concurrent/Executor;

    check-cast v0, Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/c;->bGC()Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/c;->bjV:Ljava/util/concurrent/Executor;

    :cond_1
    return-void
.end method

.method static synthetic bGJ(Lcom/nostra13/universalimageloader/core/c;)Ljava/util/concurrent/Executor;
    .locals 1

    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/c;->bjU:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method static synthetic bGK(Lcom/nostra13/universalimageloader/core/c;)Ljava/util/concurrent/Executor;
    .locals 1

    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/c;->bjV:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method static synthetic bGL(Lcom/nostra13/universalimageloader/core/c;)V
    .locals 0

    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/c;->bGE()V

    return-void
.end method


# virtual methods
.method bGA(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/c;->bjT:Ljava/util/concurrent/Executor;

    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method bGB(Lcom/nostra13/universalimageloader/core/e/d;)V
    .locals 2

    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/c;->bjO:Ljava/util/Map;

    invoke-interface {p1}, Lcom/nostra13/universalimageloader/core/e/d;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method bGD(Ljava/lang/String;)Ljava/util/concurrent/locks/ReentrantLock;
    .locals 2

    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/c;->bjW:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/locks/ReentrantLock;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/c;->bjW:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method bGF(Lcom/nostra13/universalimageloader/core/e/d;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/c;->bjO:Ljava/util/Map;

    invoke-interface {p1}, Lcom/nostra13/universalimageloader/core/e/d;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method bGG()V
    .locals 2

    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/c;->bjR:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/c;->bjQ:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/c;->bjQ:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method bGH(Lcom/nostra13/universalimageloader/core/a;)V
    .locals 2

    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/c;->bjT:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/nostra13/universalimageloader/core/s;

    invoke-direct {v1, p0, p1}, Lcom/nostra13/universalimageloader/core/s;-><init>(Lcom/nostra13/universalimageloader/core/c;Lcom/nostra13/universalimageloader/core/a;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method bGI(Lcom/nostra13/universalimageloader/core/k;)V
    .locals 1

    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/c;->bGE()V

    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/c;->bjV:Ljava/util/concurrent/Executor;

    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method bGv()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/c;->bjR:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method bGw()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/c;->bjQ:Ljava/lang/Object;

    return-object v0
.end method

.method bGx()Z
    .locals 1

    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/c;->bjP:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method bGy()Z
    .locals 1

    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/c;->bjS:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method bGz(Lcom/nostra13/universalimageloader/core/e/d;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/c;->bjO:Ljava/util/Map;

    invoke-interface {p1}, Lcom/nostra13/universalimageloader/core/e/d;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method pause()V
    .locals 2

    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/c;->bjR:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method
