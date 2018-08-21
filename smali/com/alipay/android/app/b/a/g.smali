.class public Lcom/alipay/android/app/b/a/g;
.super Ljava/lang/Object;
.source "MessageHandleHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/android/app/b/a/g$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/Object;

.field private b:Ljava/lang/Object;

.field private c:Z

.field private d:Lcom/alipay/android/app/b/a/d;

.field private e:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Lcom/alipay/android/app/b/a/j;",
            ">;"
        }
    .end annotation
.end field

.field private f:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/alipay/android/app/b/a/j;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/alipay/android/app/b/a/g$a;

.field private h:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/alipay/android/app/b/a/d;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/b/a/g;->a:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/b/a/g;->b:Ljava/lang/Object;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/app/b/a/g;->c:Z

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/b/a/g;->e:Ljava/util/concurrent/LinkedBlockingQueue;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/b/a/g;->f:Landroid/util/SparseArray;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/b/a/g;->h:Ljava/lang/Object;

    iput-object p1, p0, Lcom/alipay/android/app/b/a/g;->d:Lcom/alipay/android/app/b/a/d;

    iget-object v0, p0, Lcom/alipay/android/app/b/a/g;->g:Lcom/alipay/android/app/b/a/g$a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/alipay/android/app/b/a/g$a;

    invoke-direct {v0, p0}, Lcom/alipay/android/app/b/a/g$a;-><init>(Lcom/alipay/android/app/b/a/g;)V

    iput-object v0, p0, Lcom/alipay/android/app/b/a/g;->g:Lcom/alipay/android/app/b/a/g$a;

    iget-object v0, p0, Lcom/alipay/android/app/b/a/g;->g:Lcom/alipay/android/app/b/a/g$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "- thread"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/b/a/g$a;->setName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/app/b/a/g;->g:Lcom/alipay/android/app/b/a/g$a;

    invoke-virtual {v0}, Lcom/alipay/android/app/b/a/g$a;->start()V

    iget-object v1, p0, Lcom/alipay/android/app/b/a/g;->h:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/b/a/g;->h:Ljava/lang/Object;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    :try_start_1
    monitor-exit v1

    :cond_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic a(Lcom/alipay/android/app/b/a/g;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/b/a/g;->h:Ljava/lang/Object;

    return-object v0
.end method

.method private a(II)V
    .locals 7

    const/16 v0, 0x7d6

    if-eq p2, v0, :cond_0

    const/16 v0, 0x7d7

    if-ne p2, v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/b/a/g;->e:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    if-eqz v1, :cond_2

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/b/a/j;

    iget v2, v0, Lcom/alipay/android/app/b/a/j;->a:I

    if-ne v2, p1, :cond_1

    iget-object v2, p0, Lcom/alipay/android/app/b/a/g;->e:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/LinkedBlockingQueue;->remove(Ljava/lang/Object;)Z

    const/4 v2, 0x1

    const-string/jumbo v3, "phonecashiermsp"

    const-string/jumbo v4, "MessageHandleHelper.handleExitMsg"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " handleExitMsg  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/alipay/android/app/b/a/j;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v4, v0}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method static synthetic a(Lcom/alipay/android/app/b/a/g;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/alipay/android/app/b/a/g;->a(II)V

    return-void
.end method

.method private a()Z
    .locals 2

    iget-object v1, p0, Lcom/alipay/android/app/b/a/g;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/b/a/g;->e:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->isEmpty()Z

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic b(Lcom/alipay/android/app/b/a/g;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/android/app/b/a/g;->c:Z

    return v0
.end method

.method static synthetic c(Lcom/alipay/android/app/b/a/g;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/b/a/g;->a:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic d(Lcom/alipay/android/app/b/a/g;)Lcom/alipay/android/app/b/a/d;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/b/a/g;->d:Lcom/alipay/android/app/b/a/d;

    return-object v0
.end method

.method static synthetic e(Lcom/alipay/android/app/b/a/g;)Z
    .locals 1

    invoke-direct {p0}, Lcom/alipay/android/app/b/a/g;->a()Z

    move-result v0

    return v0
.end method

.method static synthetic f(Lcom/alipay/android/app/b/a/g;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/b/a/g;->b:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic g(Lcom/alipay/android/app/b/a/g;)Ljava/util/concurrent/LinkedBlockingQueue;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/b/a/g;->e:Ljava/util/concurrent/LinkedBlockingQueue;

    return-object v0
.end method

.method static synthetic h(Lcom/alipay/android/app/b/a/g;)Landroid/util/SparseArray;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/b/a/g;->f:Landroid/util/SparseArray;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/alipay/android/app/b/a/j;)V
    .locals 3

    iget-object v1, p0, Lcom/alipay/android/app/b/a/g;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v0, p1, Lcom/alipay/android/app/b/a/j;->c:I

    const/16 v2, 0x3ea

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/alipay/android/app/b/a/g;->f:Landroid/util/SparseArray;

    iget v2, p1, Lcom/alipay/android/app/b/a/j;->a:I

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/b/a/j;

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/alipay/android/app/b/a/g;->e:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/alipay/android/app/b/a/g;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    iget-object v0, p0, Lcom/alipay/android/app/b/a/g;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/alipay/android/app/b/a/g;->e:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method
