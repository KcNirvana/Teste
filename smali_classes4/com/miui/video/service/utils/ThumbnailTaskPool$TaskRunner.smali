.class Lcom/miui/video/service/utils/ThumbnailTaskPool$TaskRunner;
.super Ljava/lang/Object;
.source "ThumbnailTaskPool.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/service/utils/ThumbnailTaskPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TaskRunner"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/service/utils/ThumbnailTaskPool;


# direct methods
.method private constructor <init>(Lcom/miui/video/service/utils/ThumbnailTaskPool;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/service/utils/ThumbnailTaskPool$TaskRunner;->this$0:Lcom/miui/video/service/utils/ThumbnailTaskPool;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/video/service/utils/ThumbnailTaskPool;Lcom/miui/video/service/utils/ThumbnailTaskPool$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/video/service/utils/ThumbnailTaskPool$TaskRunner;-><init>(Lcom/miui/video/service/utils/ThumbnailTaskPool;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/miui/video/service/utils/ThumbnailTaskPool$TaskRunner;->this$0:Lcom/miui/video/service/utils/ThumbnailTaskPool;

    invoke-static {v0}, Lcom/miui/video/service/utils/ThumbnailTaskPool;->access$100(Lcom/miui/video/service/utils/ThumbnailTaskPool;)I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    iget-object v0, p0, Lcom/miui/video/service/utils/ThumbnailTaskPool$TaskRunner;->this$0:Lcom/miui/video/service/utils/ThumbnailTaskPool;

    sget-object v1, Lcom/miui/video/service/utils/ThumbnailTaskPool$State;->RUNNING:Lcom/miui/video/service/utils/ThumbnailTaskPool$State;

    invoke-static {v0, v1}, Lcom/miui/video/service/utils/ThumbnailTaskPool;->access$202(Lcom/miui/video/service/utils/ThumbnailTaskPool;Lcom/miui/video/service/utils/ThumbnailTaskPool$State;)Lcom/miui/video/service/utils/ThumbnailTaskPool$State;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    const-string v3, "ThumbnailTaskStack"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "thread id : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/miui/video/framework/log/LogUtils;->i(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    iget-object v1, p0, Lcom/miui/video/service/utils/ThumbnailTaskPool$TaskRunner;->this$0:Lcom/miui/video/service/utils/ThumbnailTaskPool;

    invoke-static {v1}, Lcom/miui/video/service/utils/ThumbnailTaskPool;->access$200(Lcom/miui/video/service/utils/ThumbnailTaskPool;)Lcom/miui/video/service/utils/ThumbnailTaskPool$State;

    move-result-object v1

    sget-object v2, Lcom/miui/video/service/utils/ThumbnailTaskPool$State;->STOPPED:Lcom/miui/video/service/utils/ThumbnailTaskPool$State;

    if-eq v1, v2, :cond_3

    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/miui/video/service/utils/ThumbnailTaskPool$TaskRunner;->this$0:Lcom/miui/video/service/utils/ThumbnailTaskPool;

    invoke-static {v1}, Lcom/miui/video/service/utils/ThumbnailTaskPool;->access$200(Lcom/miui/video/service/utils/ThumbnailTaskPool;)Lcom/miui/video/service/utils/ThumbnailTaskPool$State;

    move-result-object v1

    sget-object v2, Lcom/miui/video/service/utils/ThumbnailTaskPool$State;->PAUSE:Lcom/miui/video/service/utils/ThumbnailTaskPool$State;

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/miui/video/service/utils/ThumbnailTaskPool$TaskRunner;->this$0:Lcom/miui/video/service/utils/ThumbnailTaskPool;

    invoke-static {v1}, Lcom/miui/video/service/utils/ThumbnailTaskPool;->access$300(Lcom/miui/video/service/utils/ThumbnailTaskPool;)[B

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v2, p0, Lcom/miui/video/service/utils/ThumbnailTaskPool$TaskRunner;->this$0:Lcom/miui/video/service/utils/ThumbnailTaskPool;

    invoke-static {v2}, Lcom/miui/video/service/utils/ThumbnailTaskPool;->access$300(Lcom/miui/video/service/utils/ThumbnailTaskPool;)[B

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2

    :cond_1
    iget-object v1, p0, Lcom/miui/video/service/utils/ThumbnailTaskPool$TaskRunner;->this$0:Lcom/miui/video/service/utils/ThumbnailTaskPool;

    invoke-static {v1}, Lcom/miui/video/service/utils/ThumbnailTaskPool;->access$400(Lcom/miui/video/service/utils/ThumbnailTaskPool;)Lcom/miui/video/service/utils/ThumbnailTaskPool$VideoThumbnailAsyncTask;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v2, "ThumbnailTaskStack"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "runner task: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", task id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/miui/video/service/utils/ThumbnailTaskPool$VideoThumbnailAsyncTask;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", thread id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/miui/video/framework/log/LogUtils;->i(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/miui/video/service/utils/ThumbnailTaskPool$TaskRunner;->this$0:Lcom/miui/video/service/utils/ThumbnailTaskPool;

    invoke-static {v2}, Lcom/miui/video/service/utils/ThumbnailTaskPool;->access$500(Lcom/miui/video/service/utils/ThumbnailTaskPool;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/video/service/utils/ThumbnailTaskPool$VideoThumbnailAsyncTask;->load(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/miui/video/service/utils/ThumbnailTaskPool$TaskRunner;->this$0:Lcom/miui/video/service/utils/ThumbnailTaskPool;

    invoke-virtual {v1}, Lcom/miui/video/service/utils/ThumbnailTaskPool$VideoThumbnailAsyncTask;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/miui/video/service/utils/ThumbnailTaskPool;->access$600(Lcom/miui/video/service/utils/ThumbnailTaskPool;Ljava/lang/String;)V

    const-string v2, "ThumbnailTaskStack"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "runner done task: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", task id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/miui/video/service/utils/ThumbnailTaskPool$VideoThumbnailAsyncTask;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", thread id: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/miui/video/framework/log/LogUtils;->i(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    :cond_2
    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :cond_3
    return-void
.end method
