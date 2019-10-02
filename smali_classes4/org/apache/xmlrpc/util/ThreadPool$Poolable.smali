.class Lorg/apache/xmlrpc/util/ThreadPool$Poolable;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xmlrpc/util/ThreadPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Poolable"
.end annotation


# instance fields
.field private volatile shuttingDown:Z

.field private task:Lorg/apache/xmlrpc/util/ThreadPool$Task;

.field final synthetic this$0:Lorg/apache/xmlrpc/util/ThreadPool;

.field private thread:Ljava/lang/Thread;


# direct methods
.method constructor <init>(Lorg/apache/xmlrpc/util/ThreadPool;Ljava/lang/ThreadGroup;I)V
    .locals 3

    iput-object p1, p0, Lorg/apache/xmlrpc/util/ThreadPool$Poolable;->this$0:Lorg/apache/xmlrpc/util/ThreadPool;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/apache/xmlrpc/util/ThreadPool$Poolable$1;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/lang/ThreadGroup;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {v0, p0, p2, p3, p1}, Lorg/apache/xmlrpc/util/ThreadPool$Poolable$1;-><init>(Lorg/apache/xmlrpc/util/ThreadPool$Poolable;Ljava/lang/ThreadGroup;Ljava/lang/String;Lorg/apache/xmlrpc/util/ThreadPool;)V

    iput-object v0, p0, Lorg/apache/xmlrpc/util/ThreadPool$Poolable;->thread:Ljava/lang/Thread;

    iget-object p1, p0, Lorg/apache/xmlrpc/util/ThreadPool$Poolable;->thread:Ljava/lang/Thread;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static synthetic access$000(Lorg/apache/xmlrpc/util/ThreadPool$Poolable;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/xmlrpc/util/ThreadPool$Poolable;->shuttingDown:Z

    return p0
.end method

.method static synthetic access$100(Lorg/apache/xmlrpc/util/ThreadPool$Poolable;)Lorg/apache/xmlrpc/util/ThreadPool$Task;
    .locals 0

    invoke-direct {p0}, Lorg/apache/xmlrpc/util/ThreadPool$Poolable;->getTask()Lorg/apache/xmlrpc/util/ThreadPool$Task;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lorg/apache/xmlrpc/util/ThreadPool$Poolable;)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/xmlrpc/util/ThreadPool$Poolable;->resetTask()V

    return-void
.end method

.method private getTask()Lorg/apache/xmlrpc/util/ThreadPool$Task;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlrpc/util/ThreadPool$Poolable;->task:Lorg/apache/xmlrpc/util/ThreadPool$Task;

    return-object v0
.end method

.method private resetTask()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xmlrpc/util/ThreadPool$Poolable;->task:Lorg/apache/xmlrpc/util/ThreadPool$Task;

    return-void
.end method


# virtual methods
.method declared-synchronized shutdown()V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lorg/apache/xmlrpc/util/ThreadPool$Poolable;->shuttingDown:Z

    invoke-direct {p0}, Lorg/apache/xmlrpc/util/ThreadPool$Poolable;->getTask()Lorg/apache/xmlrpc/util/ThreadPool$Task;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Lorg/apache/xmlrpc/util/ThreadPool$InterruptableTask;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_0

    :try_start_1
    check-cast v0, Lorg/apache/xmlrpc/util/ThreadPool$InterruptableTask;

    invoke-interface {v0}, Lorg/apache/xmlrpc/util/ThreadPool$InterruptableTask;->shutdown()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catch_0
    :cond_0
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lorg/apache/xmlrpc/util/ThreadPool$Poolable;->task:Lorg/apache/xmlrpc/util/ThreadPool$Task;

    iget-object v0, p0, Lorg/apache/xmlrpc/util/ThreadPool$Poolable;->thread:Ljava/lang/Thread;

    monitor-enter v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    iget-object v1, p0, Lorg/apache/xmlrpc/util/ThreadPool$Poolable;->thread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method start(Lorg/apache/xmlrpc/util/ThreadPool$Task;)V
    .locals 1

    iput-object p1, p0, Lorg/apache/xmlrpc/util/ThreadPool$Poolable;->task:Lorg/apache/xmlrpc/util/ThreadPool$Task;

    iget-object p1, p0, Lorg/apache/xmlrpc/util/ThreadPool$Poolable;->thread:Ljava/lang/Thread;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lorg/apache/xmlrpc/util/ThreadPool$Poolable;->thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
