.class Lcom/miui/home/launcher/assistant/util/SingleThreadNamedTaskExecutor$Worker;
.super Ljava/lang/Object;
.source "SingleThreadNamedTaskExecutor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/assistant/util/SingleThreadNamedTaskExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Worker"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/assistant/util/SingleThreadNamedTaskExecutor;


# direct methods
.method private constructor <init>(Lcom/miui/home/launcher/assistant/util/SingleThreadNamedTaskExecutor;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/util/SingleThreadNamedTaskExecutor$Worker;->this$0:Lcom/miui/home/launcher/assistant/util/SingleThreadNamedTaskExecutor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/home/launcher/assistant/util/SingleThreadNamedTaskExecutor;Lcom/miui/home/launcher/assistant/util/SingleThreadNamedTaskExecutor$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/assistant/util/SingleThreadNamedTaskExecutor$Worker;-><init>(Lcom/miui/home/launcher/assistant/util/SingleThreadNamedTaskExecutor;)V

    return-void
.end method

.method private loop()V
    .locals 7

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    :goto_0
    iget-object v4, p0, Lcom/miui/home/launcher/assistant/util/SingleThreadNamedTaskExecutor$Worker;->this$0:Lcom/miui/home/launcher/assistant/util/SingleThreadNamedTaskExecutor;

    invoke-static {v4}, Lcom/miui/home/launcher/assistant/util/SingleThreadNamedTaskExecutor;->access$100(Lcom/miui/home/launcher/assistant/util/SingleThreadNamedTaskExecutor;)Z

    move-result v4

    if-nez v4, :cond_0

    :try_start_0
    iget-object v4, p0, Lcom/miui/home/launcher/assistant/util/SingleThreadNamedTaskExecutor$Worker;->this$0:Lcom/miui/home/launcher/assistant/util/SingleThreadNamedTaskExecutor;

    invoke-static {v4}, Lcom/miui/home/launcher/assistant/util/SingleThreadNamedTaskExecutor;->access$200(Lcom/miui/home/launcher/assistant/util/SingleThreadNamedTaskExecutor;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/assistant/util/NamedTask;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v2}, Lcom/miui/home/launcher/assistant/util/NamedTask;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    :try_start_1
    invoke-interface {v2}, Lcom/miui/home/launcher/assistant/util/NamedTask;->run()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v4, "SingleThreadNamedTaskExecutor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Task "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v2}, Lcom/miui/home/launcher/assistant/util/NamedTask;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " failed"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Lcom/miui/home/launcher/assistant/config/PALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v1

    const-string/jumbo v4, "SingleThreadNamedTaskExecutor"

    const-string/jumbo v5, "InterruptedException "

    invoke-static {v4, v5, v1}, Lcom/miui/home/launcher/assistant/config/PALog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    invoke-direct {p0}, Lcom/miui/home/launcher/assistant/util/SingleThreadNamedTaskExecutor$Worker;->loop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/util/SingleThreadNamedTaskExecutor$Worker;->this$0:Lcom/miui/home/launcher/assistant/util/SingleThreadNamedTaskExecutor;

    invoke-static {v0}, Lcom/miui/home/launcher/assistant/util/SingleThreadNamedTaskExecutor;->access$100(Lcom/miui/home/launcher/assistant/util/SingleThreadNamedTaskExecutor;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "SingleThreadNamedTaskExecutor"

    const-string/jumbo v1, "Worker exited before close"

    invoke-static {v0, v1}, Lcom/miui/home/launcher/assistant/config/PALog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/util/SingleThreadNamedTaskExecutor$Worker;->this$0:Lcom/miui/home/launcher/assistant/util/SingleThreadNamedTaskExecutor;

    invoke-static {v1}, Lcom/miui/home/launcher/assistant/util/SingleThreadNamedTaskExecutor;->access$100(Lcom/miui/home/launcher/assistant/util/SingleThreadNamedTaskExecutor;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "SingleThreadNamedTaskExecutor"

    const-string/jumbo v2, "Worker exited before close"

    invoke-static {v1, v2}, Lcom/miui/home/launcher/assistant/config/PALog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    throw v0
.end method
