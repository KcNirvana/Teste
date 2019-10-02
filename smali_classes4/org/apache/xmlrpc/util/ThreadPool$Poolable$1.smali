.class Lorg/apache/xmlrpc/util/ThreadPool$Poolable$1;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/xmlrpc/util/ThreadPool$Poolable;-><init>(Lorg/apache/xmlrpc/util/ThreadPool;Ljava/lang/ThreadGroup;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/apache/xmlrpc/util/ThreadPool$Poolable;

.field final synthetic val$this$0:Lorg/apache/xmlrpc/util/ThreadPool;


# direct methods
.method constructor <init>(Lorg/apache/xmlrpc/util/ThreadPool$Poolable;Ljava/lang/ThreadGroup;Ljava/lang/String;Lorg/apache/xmlrpc/util/ThreadPool;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xmlrpc/util/ThreadPool$Poolable$1;->this$1:Lorg/apache/xmlrpc/util/ThreadPool$Poolable;

    iput-object p4, p0, Lorg/apache/xmlrpc/util/ThreadPool$Poolable$1;->val$this$0:Lorg/apache/xmlrpc/util/ThreadPool;

    invoke-direct {p0, p2, p3}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :catch_0
    :goto_0
    iget-object v0, p0, Lorg/apache/xmlrpc/util/ThreadPool$Poolable$1;->this$1:Lorg/apache/xmlrpc/util/ThreadPool$Poolable;

    invoke-static {v0}, Lorg/apache/xmlrpc/util/ThreadPool$Poolable;->access$000(Lorg/apache/xmlrpc/util/ThreadPool$Poolable;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/apache/xmlrpc/util/ThreadPool$Poolable$1;->this$1:Lorg/apache/xmlrpc/util/ThreadPool$Poolable;

    invoke-static {v0}, Lorg/apache/xmlrpc/util/ThreadPool$Poolable;->access$100(Lorg/apache/xmlrpc/util/ThreadPool$Poolable;)Lorg/apache/xmlrpc/util/ThreadPool$Task;

    move-result-object v0

    if-nez v0, :cond_1

    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, Lorg/apache/xmlrpc/util/ThreadPool$Poolable$1;->this$1:Lorg/apache/xmlrpc/util/ThreadPool$Poolable;

    invoke-static {v0}, Lorg/apache/xmlrpc/util/ThreadPool$Poolable;->access$000(Lorg/apache/xmlrpc/util/ThreadPool$Poolable;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/xmlrpc/util/ThreadPool$Poolable$1;->this$1:Lorg/apache/xmlrpc/util/ThreadPool$Poolable;

    invoke-static {v0}, Lorg/apache/xmlrpc/util/ThreadPool$Poolable;->access$100(Lorg/apache/xmlrpc/util/ThreadPool$Poolable;)Lorg/apache/xmlrpc/util/ThreadPool$Task;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    :try_start_3
    invoke-interface {v0}, Lorg/apache/xmlrpc/util/ThreadPool$Task;->run()V

    iget-object v0, p0, Lorg/apache/xmlrpc/util/ThreadPool$Poolable$1;->this$1:Lorg/apache/xmlrpc/util/ThreadPool$Poolable;

    invoke-static {v0}, Lorg/apache/xmlrpc/util/ThreadPool$Poolable;->access$200(Lorg/apache/xmlrpc/util/ThreadPool$Poolable;)V

    iget-object v0, p0, Lorg/apache/xmlrpc/util/ThreadPool$Poolable$1;->this$1:Lorg/apache/xmlrpc/util/ThreadPool$Poolable;

    iget-object v0, v0, Lorg/apache/xmlrpc/util/ThreadPool$Poolable;->this$0:Lorg/apache/xmlrpc/util/ThreadPool;

    iget-object v1, p0, Lorg/apache/xmlrpc/util/ThreadPool$Poolable$1;->this$1:Lorg/apache/xmlrpc/util/ThreadPool$Poolable;

    invoke-virtual {v0, v1}, Lorg/apache/xmlrpc/util/ThreadPool;->repool(Lorg/apache/xmlrpc/util/ThreadPool$Poolable;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_1
    iget-object v0, p0, Lorg/apache/xmlrpc/util/ThreadPool$Poolable$1;->this$1:Lorg/apache/xmlrpc/util/ThreadPool$Poolable;

    iget-object v0, v0, Lorg/apache/xmlrpc/util/ThreadPool$Poolable;->this$0:Lorg/apache/xmlrpc/util/ThreadPool;

    iget-object v1, p0, Lorg/apache/xmlrpc/util/ThreadPool$Poolable$1;->this$1:Lorg/apache/xmlrpc/util/ThreadPool$Poolable;

    invoke-static {v0, v1}, Lorg/apache/xmlrpc/util/ThreadPool;->access$300(Lorg/apache/xmlrpc/util/ThreadPool;Lorg/apache/xmlrpc/util/ThreadPool$Poolable;)V

    iget-object v0, p0, Lorg/apache/xmlrpc/util/ThreadPool$Poolable$1;->this$1:Lorg/apache/xmlrpc/util/ThreadPool$Poolable;

    invoke-virtual {v0}, Lorg/apache/xmlrpc/util/ThreadPool$Poolable;->shutdown()V

    iget-object v0, p0, Lorg/apache/xmlrpc/util/ThreadPool$Poolable$1;->this$1:Lorg/apache/xmlrpc/util/ThreadPool$Poolable;

    invoke-static {v0}, Lorg/apache/xmlrpc/util/ThreadPool$Poolable;->access$200(Lorg/apache/xmlrpc/util/ThreadPool$Poolable;)V

    goto :goto_0

    :cond_2
    return-void
.end method
