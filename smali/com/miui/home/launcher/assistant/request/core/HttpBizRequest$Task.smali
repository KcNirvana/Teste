.class Lcom/miui/home/launcher/assistant/request/core/HttpBizRequest$Task;
.super Ljava/lang/Object;
.source "HttpBizRequest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/assistant/request/core/HttpBizRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Task"
.end annotation


# instance fields
.field private mHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/miui/home/launcher/assistant/request/core/HttpBizRequest;


# direct methods
.method private constructor <init>(Lcom/miui/home/launcher/assistant/request/core/HttpBizRequest;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/request/core/HttpBizRequest$Task;->this$0:Lcom/miui/home/launcher/assistant/request/core/HttpBizRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/home/launcher/assistant/request/core/HttpBizRequest;Lcom/miui/home/launcher/assistant/request/core/HttpBizRequest$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/assistant/request/core/HttpBizRequest$Task;-><init>(Lcom/miui/home/launcher/assistant/request/core/HttpBizRequest;)V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x3
    .end annotation

    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/miui/home/launcher/assistant/request/core/HttpBizRequest$Task$1;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/assistant/request/core/HttpBizRequest$Task$1;-><init>(Lcom/miui/home/launcher/assistant/request/core/HttpBizRequest$Task;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/request/core/HttpBizRequest$Task;->mHandler:Landroid/os/Handler;

    invoke-static {}, Lcom/miui/home/launcher/assistant/module/ThreadDispatcher;->getInstance()Lcom/miui/home/launcher/assistant/module/ThreadDispatcher;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/assistant/module/ThreadDispatcher;->runInBackgroud(Ljava/lang/Runnable;)V

    return-void
.end method

.method public run()V
    .locals 5

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/request/core/HttpBizRequest$Task;->this$0:Lcom/miui/home/launcher/assistant/request/core/HttpBizRequest;

    invoke-virtual {v2}, Lcom/miui/home/launcher/assistant/request/core/HttpBizRequest;->getRequestCache()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/request/core/HttpBizRequest$Task;->this$0:Lcom/miui/home/launcher/assistant/request/core/HttpBizRequest;

    iget-object v2, v2, Lcom/miui/home/launcher/assistant/request/core/HttpBizRequest;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/miui/home/launcher/assistant/request/core/HttpBizRequest$Task;->this$0:Lcom/miui/home/launcher/assistant/request/core/HttpBizRequest;

    invoke-virtual {v3}, Lcom/miui/home/launcher/assistant/request/core/HttpBizRequest;->getCacheKey()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/miui/home/launcher/assistant/util/Cache;->get(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "HttpBizRequest"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getCache="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\tcacheKey="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/home/launcher/assistant/request/core/HttpBizRequest$Task;->this$0:Lcom/miui/home/launcher/assistant/request/core/HttpBizRequest;

    invoke-virtual {v4}, Lcom/miui/home/launcher/assistant/request/core/HttpBizRequest;->getCacheKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/miui/home/launcher/assistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/request/core/HttpBizRequest$Task;->this$0:Lcom/miui/home/launcher/assistant/request/core/HttpBizRequest;

    invoke-static {v2, v0}, Lcom/miui/home/launcher/assistant/request/core/HttpBizRequest;->access$202(Lcom/miui/home/launcher/assistant/request/core/HttpBizRequest;Ljava/lang/String;)Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/request/core/HttpBizRequest$Task;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/miui/home/launcher/assistant/request/core/HttpBizRequest$Task;->this$0:Lcom/miui/home/launcher/assistant/request/core/HttpBizRequest;

    iget-object v3, p0, Lcom/miui/home/launcher/assistant/request/core/HttpBizRequest$Task;->this$0:Lcom/miui/home/launcher/assistant/request/core/HttpBizRequest;

    invoke-virtual {v3}, Lcom/miui/home/launcher/assistant/request/core/HttpBizRequest;->requestServer()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/miui/home/launcher/assistant/request/core/HttpBizRequest;->access$202(Lcom/miui/home/launcher/assistant/request/core/HttpBizRequest;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v2, p0, Lcom/miui/home/launcher/assistant/request/core/HttpBizRequest$Task;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    :catch_0
    move-exception v1

    const-string/jumbo v2, "HttpBizRequest"

    const-string/jumbo v3, "Exception"

    invoke-static {v2, v3, v1}, Lcom/miui/home/launcher/assistant/config/PALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
