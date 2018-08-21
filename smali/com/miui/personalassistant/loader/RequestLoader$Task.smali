.class Lcom/miui/personalassistant/loader/RequestLoader$Task;
.super Ljava/lang/Object;
.source "RequestLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/personalassistant/loader/RequestLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Task"
.end annotation


# instance fields
.field private mDescription:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mRequest:Lcom/miui/personalassistant/request/core/BaseRequest;

.field private mResult:Lcom/miui/personalassistant/request/core/BaseResult;

.field final synthetic this$0:Lcom/miui/personalassistant/loader/RequestLoader;


# direct methods
.method private constructor <init>(Lcom/miui/personalassistant/loader/RequestLoader;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/loader/RequestLoader$Task;->this$0:Lcom/miui/personalassistant/loader/RequestLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/personalassistant/loader/RequestLoader;Lcom/miui/personalassistant/loader/RequestLoader$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/personalassistant/loader/RequestLoader$Task;-><init>(Lcom/miui/personalassistant/loader/RequestLoader;)V

    return-void
.end method


# virtual methods
.method public execute(Lcom/miui/personalassistant/request/core/BaseRequest;Lcom/miui/personalassistant/request/core/BaseResult;)V
    .locals 2

    iput-object p2, p0, Lcom/miui/personalassistant/loader/RequestLoader$Task;->mResult:Lcom/miui/personalassistant/request/core/BaseResult;

    iput-object p1, p0, Lcom/miui/personalassistant/loader/RequestLoader$Task;->mRequest:Lcom/miui/personalassistant/request/core/BaseRequest;

    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/miui/personalassistant/loader/RequestLoader$Task$1;

    invoke-direct {v1, p0}, Lcom/miui/personalassistant/loader/RequestLoader$Task$1;-><init>(Lcom/miui/personalassistant/loader/RequestLoader$Task;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/miui/personalassistant/loader/RequestLoader$Task;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/miui/personalassistant/loader/RequestLoader$Task;->onPreExecute()V

    invoke-static {p0}, Lcom/miui/personalassistant/util/ThreadPool;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected onPostExecute()V
    .locals 4

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/miui/personalassistant/loader/RequestLoader$Task;->mResult:Lcom/miui/personalassistant/request/core/BaseResult;

    invoke-virtual {v1}, Lcom/miui/personalassistant/request/core/BaseResult;->getState()Lcom/miui/personalassistant/request/core/BaseResult$State;

    move-result-object v0

    sget-object v1, Lcom/miui/personalassistant/request/core/BaseResult$State;->OK:Lcom/miui/personalassistant/request/core/BaseResult$State;

    if-eq v0, v1, :cond_2

    iget-object v1, p0, Lcom/miui/personalassistant/loader/RequestLoader$Task;->this$0:Lcom/miui/personalassistant/loader/RequestLoader;

    invoke-static {v1}, Lcom/miui/personalassistant/loader/RequestLoader;->access$200(Lcom/miui/personalassistant/loader/RequestLoader;)Lcom/miui/personalassistant/loader/ProgressListener;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/personalassistant/loader/RequestLoader$Task;->this$0:Lcom/miui/personalassistant/loader/RequestLoader;

    invoke-static {v1}, Lcom/miui/personalassistant/loader/RequestLoader;->access$200(Lcom/miui/personalassistant/loader/RequestLoader;)Lcom/miui/personalassistant/loader/ProgressListener;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/personalassistant/loader/RequestLoader$Task;->mDescription:Ljava/lang/String;

    invoke-interface {v1, v3, v0, v2}, Lcom/miui/personalassistant/loader/ProgressListener;->onError(ZLcom/miui/personalassistant/request/core/BaseResult$State;Ljava/lang/String;)V

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/miui/personalassistant/loader/RequestLoader$Task;->this$0:Lcom/miui/personalassistant/loader/RequestLoader;

    invoke-static {v1}, Lcom/miui/personalassistant/loader/RequestLoader;->access$100(Lcom/miui/personalassistant/loader/RequestLoader;)Lcom/miui/personalassistant/loader/RequestLoader$RequestLoaderCallBack;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/personalassistant/loader/RequestLoader$Task;->this$0:Lcom/miui/personalassistant/loader/RequestLoader;

    invoke-static {v1}, Lcom/miui/personalassistant/loader/RequestLoader;->access$100(Lcom/miui/personalassistant/loader/RequestLoader;)Lcom/miui/personalassistant/loader/RequestLoader$RequestLoaderCallBack;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/personalassistant/loader/RequestLoader$Task;->mRequest:Lcom/miui/personalassistant/request/core/BaseRequest;

    invoke-virtual {v2}, Lcom/miui/personalassistant/request/core/BaseRequest;->getRequestCode()I

    move-result v2

    iget-object v3, p0, Lcom/miui/personalassistant/loader/RequestLoader$Task;->mResult:Lcom/miui/personalassistant/request/core/BaseResult;

    invoke-interface {v1, v2, v3}, Lcom/miui/personalassistant/loader/RequestLoader$RequestLoaderCallBack;->onRequestFinished(ILcom/miui/personalassistant/request/core/BaseResult;)V

    :cond_1
    return-void

    :cond_2
    iget-object v1, p0, Lcom/miui/personalassistant/loader/RequestLoader$Task;->this$0:Lcom/miui/personalassistant/loader/RequestLoader;

    invoke-static {v1}, Lcom/miui/personalassistant/loader/RequestLoader;->access$200(Lcom/miui/personalassistant/loader/RequestLoader;)Lcom/miui/personalassistant/loader/ProgressListener;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/personalassistant/loader/RequestLoader$Task;->this$0:Lcom/miui/personalassistant/loader/RequestLoader;

    invoke-static {v1}, Lcom/miui/personalassistant/loader/RequestLoader;->access$200(Lcom/miui/personalassistant/loader/RequestLoader;)Lcom/miui/personalassistant/loader/ProgressListener;

    move-result-object v1

    invoke-interface {v1, v3}, Lcom/miui/personalassistant/loader/ProgressListener;->onStopLoading(Z)V

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/miui/personalassistant/loader/RequestLoader$Task;->this$0:Lcom/miui/personalassistant/loader/RequestLoader;

    invoke-static {v0}, Lcom/miui/personalassistant/loader/RequestLoader;->access$100(Lcom/miui/personalassistant/loader/RequestLoader;)Lcom/miui/personalassistant/loader/RequestLoader$RequestLoaderCallBack;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/loader/RequestLoader$Task;->this$0:Lcom/miui/personalassistant/loader/RequestLoader;

    invoke-static {v0}, Lcom/miui/personalassistant/loader/RequestLoader;->access$100(Lcom/miui/personalassistant/loader/RequestLoader;)Lcom/miui/personalassistant/loader/RequestLoader$RequestLoaderCallBack;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/personalassistant/loader/RequestLoader$Task;->mRequest:Lcom/miui/personalassistant/request/core/BaseRequest;

    invoke-virtual {v1}, Lcom/miui/personalassistant/request/core/BaseRequest;->getRequestCode()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/miui/personalassistant/loader/RequestLoader$RequestLoaderCallBack;->onPreRequest(I)V

    :cond_0
    iget-object v0, p0, Lcom/miui/personalassistant/loader/RequestLoader$Task;->this$0:Lcom/miui/personalassistant/loader/RequestLoader;

    invoke-static {v0}, Lcom/miui/personalassistant/loader/RequestLoader;->access$200(Lcom/miui/personalassistant/loader/RequestLoader;)Lcom/miui/personalassistant/loader/ProgressListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/personalassistant/loader/RequestLoader$Task;->this$0:Lcom/miui/personalassistant/loader/RequestLoader;

    invoke-static {v0}, Lcom/miui/personalassistant/loader/RequestLoader;->access$200(Lcom/miui/personalassistant/loader/RequestLoader;)Lcom/miui/personalassistant/loader/ProgressListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v2, v2, v1}, Lcom/miui/personalassistant/loader/ProgressListener;->onInit(ZZLcom/miui/personalassistant/loader/Reloadable;)V

    :cond_1
    return-void
.end method

.method public run()V
    .locals 6

    const/4 v1, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/miui/personalassistant/loader/RequestLoader$Task;->mRequest:Lcom/miui/personalassistant/request/core/BaseRequest;

    instance-of v3, v3, Lcom/miui/personalassistant/request/core/HttpRequest;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/miui/personalassistant/loader/RequestLoader$Task;->mRequest:Lcom/miui/personalassistant/request/core/BaseRequest;

    check-cast v3, Lcom/miui/personalassistant/request/core/HttpRequest;

    invoke-virtual {v3}, Lcom/miui/personalassistant/request/core/HttpRequest;->requestServer()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    :goto_0
    :try_start_1
    iget-object v3, p0, Lcom/miui/personalassistant/loader/RequestLoader$Task;->this$0:Lcom/miui/personalassistant/loader/RequestLoader;

    invoke-static {v3}, Lcom/miui/personalassistant/loader/RequestLoader;->access$100(Lcom/miui/personalassistant/loader/RequestLoader;)Lcom/miui/personalassistant/loader/RequestLoader$RequestLoaderCallBack;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/miui/personalassistant/loader/RequestLoader$Task;->this$0:Lcom/miui/personalassistant/loader/RequestLoader;

    invoke-static {v3}, Lcom/miui/personalassistant/loader/RequestLoader;->access$100(Lcom/miui/personalassistant/loader/RequestLoader;)Lcom/miui/personalassistant/loader/RequestLoader$RequestLoaderCallBack;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/personalassistant/loader/RequestLoader$Task;->mRequest:Lcom/miui/personalassistant/request/core/BaseRequest;

    invoke-virtual {v4}, Lcom/miui/personalassistant/request/core/BaseRequest;->getRequestCode()I

    move-result v4

    iget-object v5, p0, Lcom/miui/personalassistant/loader/RequestLoader$Task;->mResult:Lcom/miui/personalassistant/request/core/BaseResult;

    invoke-interface {v3, v4, v1, v5}, Lcom/miui/personalassistant/loader/RequestLoader$RequestLoaderCallBack;->onParseRequest(ILjava/lang/Object;Lcom/miui/personalassistant/request/core/BaseResult;)Lcom/miui/personalassistant/request/core/BaseResult;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/personalassistant/loader/RequestLoader$Task;->mResult:Lcom/miui/personalassistant/request/core/BaseResult;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_0
    if-eqz v1, :cond_1

    instance-of v3, v1, Landroid/database/Cursor;

    if-eqz v3, :cond_1

    check-cast v1, Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/miui/personalassistant/loader/RequestLoader$Task;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    :cond_2
    :try_start_2
    iget-object v3, p0, Lcom/miui/personalassistant/loader/RequestLoader$Task;->mRequest:Lcom/miui/personalassistant/request/core/BaseRequest;

    invoke-virtual {v3}, Lcom/miui/personalassistant/request/core/BaseRequest;->request()Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v1

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v3, v1

    :goto_2
    :try_start_3
    const-string/jumbo v4, "RequestLoader"

    const-string/jumbo v5, "Exception"

    invoke-static {v4, v5, v0}, Lcom/miui/personalassistant/config/PALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object v2, Lcom/miui/personalassistant/request/core/BaseResult$State;->SERVICE_ERROR:Lcom/miui/personalassistant/request/core/BaseResult$State;

    instance-of v4, v0, Lorg/json/JSONException;

    if-eqz v4, :cond_3

    sget-object v2, Lcom/miui/personalassistant/request/core/BaseResult$State;->DATA_ERROR:Lcom/miui/personalassistant/request/core/BaseResult$State;

    :goto_3
    iget-object v4, p0, Lcom/miui/personalassistant/loader/RequestLoader$Task;->mRequest:Lcom/miui/personalassistant/request/core/BaseRequest;

    invoke-virtual {v4}, Lcom/miui/personalassistant/request/core/BaseRequest;->getDescription()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/miui/personalassistant/loader/RequestLoader$Task;->mDescription:Ljava/lang/String;

    iget-object v4, p0, Lcom/miui/personalassistant/loader/RequestLoader$Task;->mResult:Lcom/miui/personalassistant/request/core/BaseResult;

    invoke-virtual {v4, v2}, Lcom/miui/personalassistant/request/core/BaseResult;->setState(Lcom/miui/personalassistant/request/core/BaseResult$State;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v3, :cond_1

    instance-of v4, v3, Landroid/database/Cursor;

    if-eqz v4, :cond_1

    check-cast v3, Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :cond_3
    :try_start_4
    instance-of v4, v0, Ljava/net/UnknownServiceException;

    if-eqz v4, :cond_4

    sget-object v2, Lcom/miui/personalassistant/request/core/BaseResult$State;->SERVICE_ERROR:Lcom/miui/personalassistant/request/core/BaseResult$State;

    goto :goto_3

    :cond_4
    instance-of v4, v0, Lcom/miui/personalassistant/exception/NetworkUnavailableException;

    if-eqz v4, :cond_5

    sget-object v2, Lcom/miui/personalassistant/request/core/BaseResult$State;->NETWORK_ERROR:Lcom/miui/personalassistant/request/core/BaseResult$State;

    goto :goto_3

    :cond_5
    instance-of v4, v0, Lcom/miui/personalassistant/exception/ServerException;

    if-eqz v4, :cond_6

    sget-object v2, Lcom/miui/personalassistant/request/core/BaseResult$State;->SERVICE_ERROR:Lcom/miui/personalassistant/request/core/BaseResult$State;

    goto :goto_3

    :cond_6
    instance-of v4, v0, Lcom/miui/personalassistant/exception/NetworkAccessDeniedException;

    if-eqz v4, :cond_7

    sget-object v2, Lcom/miui/personalassistant/request/core/BaseResult$State;->NETWORK_ACCESS_ERROR:Lcom/miui/personalassistant/request/core/BaseResult$State;

    goto :goto_3

    :cond_7
    sget-object v2, Lcom/miui/personalassistant/request/core/BaseResult$State;->SERVICE_ERROR:Lcom/miui/personalassistant/request/core/BaseResult$State;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_3

    :catchall_0
    move-exception v3

    move-object v4, v3

    move-object v3, v1

    :goto_4
    if-eqz v3, :cond_8

    instance-of v5, v3, Landroid/database/Cursor;

    if-eqz v5, :cond_8

    check-cast v3, Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v4

    :catchall_1
    move-exception v3

    move-object v4, v3

    move-object v3, v1

    goto :goto_4

    :catchall_2
    move-exception v4

    goto :goto_4

    :catch_1
    move-exception v0

    move-object v3, v1

    goto :goto_2
.end method
