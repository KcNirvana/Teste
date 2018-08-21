.class Lcom/miui/personalassistant/loader/BaseLoader$Task;
.super Ljava/lang/Object;
.source "BaseLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/personalassistant/loader/BaseLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Task"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/personalassistant/loader/BaseLoader$Task$DataLoadedCallback;
    }
.end annotation


# instance fields
.field private volatile mIsLastRequest:Z

.field final synthetic this$0:Lcom/miui/personalassistant/loader/BaseLoader;


# direct methods
.method private constructor <init>(Lcom/miui/personalassistant/loader/BaseLoader;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/loader/BaseLoader$Task;->this$0:Lcom/miui/personalassistant/loader/BaseLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/personalassistant/loader/BaseLoader;Lcom/miui/personalassistant/loader/BaseLoader$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/personalassistant/loader/BaseLoader$Task;-><init>(Lcom/miui/personalassistant/loader/BaseLoader;)V

    return-void
.end method

.method static synthetic access$900(Lcom/miui/personalassistant/loader/BaseLoader$Task;Lcom/miui/personalassistant/loader/BaseLoader$StateAndDescription;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/personalassistant/loader/BaseLoader$Task;->onPostExecute(Lcom/miui/personalassistant/loader/BaseLoader$StateAndDescription;)V

    return-void
.end method

.method private onPostExecute(Lcom/miui/personalassistant/loader/BaseLoader$StateAndDescription;)V
    .locals 5

    const/4 v4, 0x1

    iget-object v2, p0, Lcom/miui/personalassistant/loader/BaseLoader$Task;->this$0:Lcom/miui/personalassistant/loader/BaseLoader;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/miui/personalassistant/loader/BaseLoader;->access$102(Lcom/miui/personalassistant/loader/BaseLoader;Z)Z

    iget-object v1, p1, Lcom/miui/personalassistant/loader/BaseLoader$StateAndDescription;->state:Lcom/miui/personalassistant/request/core/BaseResult$State;

    iget-object v0, p1, Lcom/miui/personalassistant/loader/BaseLoader$StateAndDescription;->description:Ljava/lang/String;

    sget-object v2, Lcom/miui/personalassistant/request/core/BaseResult$State;->OK:Lcom/miui/personalassistant/request/core/BaseResult$State;

    if-eq v1, v2, :cond_1

    iget-object v2, p0, Lcom/miui/personalassistant/loader/BaseLoader$Task;->this$0:Lcom/miui/personalassistant/loader/BaseLoader;

    invoke-static {v2}, Lcom/miui/personalassistant/loader/BaseLoader;->access$200(Lcom/miui/personalassistant/loader/BaseLoader;)Lcom/miui/personalassistant/loader/ProgressListener;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/miui/personalassistant/loader/BaseLoader$Task;->this$0:Lcom/miui/personalassistant/loader/BaseLoader;

    invoke-static {v2}, Lcom/miui/personalassistant/loader/BaseLoader;->access$200(Lcom/miui/personalassistant/loader/BaseLoader;)Lcom/miui/personalassistant/loader/ProgressListener;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/personalassistant/loader/BaseLoader$Task;->this$0:Lcom/miui/personalassistant/loader/BaseLoader;

    invoke-static {v3}, Lcom/miui/personalassistant/loader/BaseLoader;->access$300(Lcom/miui/personalassistant/loader/BaseLoader;)Z

    move-result v3

    invoke-interface {v2, v3, v1, v0}, Lcom/miui/personalassistant/loader/ProgressListener;->onError(ZLcom/miui/personalassistant/request/core/BaseResult$State;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/miui/personalassistant/loader/BaseLoader$Task;->this$0:Lcom/miui/personalassistant/loader/BaseLoader;

    invoke-static {v2}, Lcom/miui/personalassistant/loader/BaseLoader;->access$400(Lcom/miui/personalassistant/loader/BaseLoader;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/miui/personalassistant/loader/BaseLoader$Task;->this$0:Lcom/miui/personalassistant/loader/BaseLoader;

    iget-object v3, p0, Lcom/miui/personalassistant/loader/BaseLoader$Task;->this$0:Lcom/miui/personalassistant/loader/BaseLoader;

    iget-object v3, v3, Lcom/miui/personalassistant/loader/BaseLoader;->mResult:Lcom/miui/personalassistant/request/core/BaseResult;

    invoke-virtual {v2, v3}, Lcom/miui/personalassistant/loader/BaseLoader;->deliverResult(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/miui/personalassistant/loader/BaseLoader$Task;->this$0:Lcom/miui/personalassistant/loader/BaseLoader;

    invoke-static {v2, v4}, Lcom/miui/personalassistant/loader/BaseLoader;->access$502(Lcom/miui/personalassistant/loader/BaseLoader;Z)Z

    :goto_1
    iget-object v2, p0, Lcom/miui/personalassistant/loader/BaseLoader$Task;->this$0:Lcom/miui/personalassistant/loader/BaseLoader;

    invoke-static {v2}, Lcom/miui/personalassistant/loader/BaseLoader;->access$200(Lcom/miui/personalassistant/loader/BaseLoader;)Lcom/miui/personalassistant/loader/ProgressListener;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/miui/personalassistant/loader/BaseLoader$Task;->mIsLastRequest:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/miui/personalassistant/loader/BaseLoader$Task;->this$0:Lcom/miui/personalassistant/loader/BaseLoader;

    invoke-static {v2}, Lcom/miui/personalassistant/loader/BaseLoader;->access$200(Lcom/miui/personalassistant/loader/BaseLoader;)Lcom/miui/personalassistant/loader/ProgressListener;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/personalassistant/loader/BaseLoader$Task;->this$0:Lcom/miui/personalassistant/loader/BaseLoader;

    invoke-static {v3}, Lcom/miui/personalassistant/loader/BaseLoader;->access$300(Lcom/miui/personalassistant/loader/BaseLoader;)Z

    move-result v3

    invoke-interface {v2, v3}, Lcom/miui/personalassistant/loader/ProgressListener;->onStopLoading(Z)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/miui/personalassistant/loader/BaseLoader$Task;->this$0:Lcom/miui/personalassistant/loader/BaseLoader;

    invoke-static {v2, v4}, Lcom/miui/personalassistant/loader/BaseLoader;->access$402(Lcom/miui/personalassistant/loader/BaseLoader;Z)Z

    goto :goto_1
.end method

.method private parseCacheInBackground(ILjava/lang/Object;)V
    .locals 2

    const/4 v1, 0x1

    :try_start_0
    invoke-direct {p0, p1, p2, v1}, Lcom/miui/personalassistant/loader/BaseLoader$Task;->parseResultInBackground(ILjava/lang/Object;Z)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private parseResultInBackground(ILjava/lang/Object;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string/jumbo v1, "BaseLoader"

    const-string/jumbo v2, "postResultInBackground data"

    invoke-static {v1, v2}, Lcom/miui/personalassistant/config/PALog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/miui/personalassistant/loader/BaseLoader$Task;->this$0:Lcom/miui/personalassistant/loader/BaseLoader;

    iget-object v1, v1, Lcom/miui/personalassistant/loader/BaseLoader;->mLoaderCallBack:Lcom/miui/personalassistant/loader/BaseLoader$BaseLoaderCallBack;

    invoke-interface {v1}, Lcom/miui/personalassistant/loader/BaseLoader$BaseLoaderCallBack;->onGetResult()Lcom/miui/personalassistant/request/core/BaseResult;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/personalassistant/loader/BaseLoader$Task;->this$0:Lcom/miui/personalassistant/loader/BaseLoader;

    iget-object v1, v1, Lcom/miui/personalassistant/loader/BaseLoader;->mLoaderCallBack:Lcom/miui/personalassistant/loader/BaseLoader$BaseLoaderCallBack;

    invoke-interface {v1, p1, p2, v0, p3}, Lcom/miui/personalassistant/loader/BaseLoader$BaseLoaderCallBack;->onParseResult(ILjava/lang/Object;Lcom/miui/personalassistant/request/core/BaseResult;Z)Lcom/miui/personalassistant/request/core/BaseResult;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/personalassistant/loader/BaseLoader$Task;->this$0:Lcom/miui/personalassistant/loader/BaseLoader;

    iget-object v2, p0, Lcom/miui/personalassistant/loader/BaseLoader$Task;->this$0:Lcom/miui/personalassistant/loader/BaseLoader;

    iget-object v3, p0, Lcom/miui/personalassistant/loader/BaseLoader$Task;->this$0:Lcom/miui/personalassistant/loader/BaseLoader;

    iget-object v3, v3, Lcom/miui/personalassistant/loader/BaseLoader;->mResult:Lcom/miui/personalassistant/request/core/BaseResult;

    invoke-virtual {v2, p1, v3, v0, p3}, Lcom/miui/personalassistant/loader/BaseLoader;->onDataMerged(ILcom/miui/personalassistant/request/core/BaseResult;Lcom/miui/personalassistant/request/core/BaseResult;Z)Lcom/miui/personalassistant/request/core/BaseResult;

    move-result-object v2

    iput-object v2, v1, Lcom/miui/personalassistant/loader/BaseLoader;->mResult:Lcom/miui/personalassistant/request/core/BaseResult;

    iget-object v1, p0, Lcom/miui/personalassistant/loader/BaseLoader$Task;->this$0:Lcom/miui/personalassistant/loader/BaseLoader;

    iget-object v1, v1, Lcom/miui/personalassistant/loader/BaseLoader;->mRequestResultStatusListener:Lcom/miui/personalassistant/loader/BaseLoader$RequestResultStatusListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/personalassistant/loader/BaseLoader$Task;->this$0:Lcom/miui/personalassistant/loader/BaseLoader;

    iget-object v1, v1, Lcom/miui/personalassistant/loader/BaseLoader;->mRequestResultStatusListener:Lcom/miui/personalassistant/loader/BaseLoader$RequestResultStatusListener;

    invoke-virtual {v0}, Lcom/miui/personalassistant/request/core/BaseResult;->getState()Lcom/miui/personalassistant/request/core/BaseResult$State;

    move-result-object v2

    invoke-interface {v1, p1, v2, p3}, Lcom/miui/personalassistant/loader/BaseLoader$RequestResultStatusListener;->onGetStatus(ILcom/miui/personalassistant/request/core/BaseResult$State;Z)V

    :cond_0
    new-instance v1, Lcom/miui/personalassistant/loader/BaseLoader$StateAndDescription;

    iget-object v2, p0, Lcom/miui/personalassistant/loader/BaseLoader$Task;->this$0:Lcom/miui/personalassistant/loader/BaseLoader;

    invoke-virtual {v0}, Lcom/miui/personalassistant/request/core/BaseResult;->getState()Lcom/miui/personalassistant/request/core/BaseResult$State;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/miui/personalassistant/loader/BaseLoader$StateAndDescription;-><init>(Lcom/miui/personalassistant/loader/BaseLoader;Lcom/miui/personalassistant/request/core/BaseResult$State;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/miui/personalassistant/loader/BaseLoader$Task;->postResultInBackground(Lcom/miui/personalassistant/loader/BaseLoader$StateAndDescription;)V

    return-void
.end method

.method private postResultInBackground(Lcom/miui/personalassistant/loader/BaseLoader$StateAndDescription;)V
    .locals 2

    iget-object v1, p0, Lcom/miui/personalassistant/loader/BaseLoader$Task;->this$0:Lcom/miui/personalassistant/loader/BaseLoader;

    invoke-static {v1}, Lcom/miui/personalassistant/loader/BaseLoader;->access$600(Lcom/miui/personalassistant/loader/BaseLoader;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/miui/personalassistant/loader/BaseLoader$Task;->this$0:Lcom/miui/personalassistant/loader/BaseLoader;

    invoke-static {v1}, Lcom/miui/personalassistant/loader/BaseLoader;->access$600(Lcom/miui/personalassistant/loader/BaseLoader;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 0

    invoke-virtual {p0}, Lcom/miui/personalassistant/loader/BaseLoader$Task;->onPreExecute()V

    invoke-static {p0}, Lcom/miui/personalassistant/util/ThreadPool;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onPreExecute()V
    .locals 2

    iget-object v0, p0, Lcom/miui/personalassistant/loader/BaseLoader$Task;->this$0:Lcom/miui/personalassistant/loader/BaseLoader;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/personalassistant/loader/BaseLoader;->access$102(Lcom/miui/personalassistant/loader/BaseLoader;Z)Z

    iget-object v0, p0, Lcom/miui/personalassistant/loader/BaseLoader$Task;->this$0:Lcom/miui/personalassistant/loader/BaseLoader;

    invoke-static {v0}, Lcom/miui/personalassistant/loader/BaseLoader;->access$200(Lcom/miui/personalassistant/loader/BaseLoader;)Lcom/miui/personalassistant/loader/ProgressListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/loader/BaseLoader$Task;->this$0:Lcom/miui/personalassistant/loader/BaseLoader;

    invoke-static {v0}, Lcom/miui/personalassistant/loader/BaseLoader;->access$200(Lcom/miui/personalassistant/loader/BaseLoader;)Lcom/miui/personalassistant/loader/ProgressListener;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/personalassistant/loader/BaseLoader$Task;->this$0:Lcom/miui/personalassistant/loader/BaseLoader;

    invoke-static {v1}, Lcom/miui/personalassistant/loader/BaseLoader;->access$300(Lcom/miui/personalassistant/loader/BaseLoader;)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/miui/personalassistant/loader/ProgressListener;->onStartLoading(Z)V

    :cond_0
    return-void
.end method

.method public run()V
    .locals 12

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    :goto_0
    :try_start_0
    iget-object v8, p0, Lcom/miui/personalassistant/loader/BaseLoader$Task;->this$0:Lcom/miui/personalassistant/loader/BaseLoader;

    invoke-static {v8}, Lcom/miui/personalassistant/loader/BaseLoader;->access$700(Lcom/miui/personalassistant/loader/BaseLoader;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v4, v8, :cond_4

    const/4 v1, 0x0

    iget-object v8, p0, Lcom/miui/personalassistant/loader/BaseLoader$Task;->this$0:Lcom/miui/personalassistant/loader/BaseLoader;

    invoke-static {v8}, Lcom/miui/personalassistant/loader/BaseLoader;->access$700(Lcom/miui/personalassistant/loader/BaseLoader;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Lcom/miui/personalassistant/request/core/BaseRequest;

    move-object v6, v0

    instance-of v8, v6, Lcom/miui/personalassistant/request/core/LocalRequest;

    if-eqz v8, :cond_0

    const-string/jumbo v8, "BaseLoader"

    const-string/jumbo v11, "request local data"

    invoke-static {v8, v11}, Lcom/miui/personalassistant/config/PALog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v6

    check-cast v0, Lcom/miui/personalassistant/request/core/LocalRequest;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/miui/personalassistant/request/core/LocalRequest;->request()Landroid/database/Cursor;

    move-result-object v1

    :cond_0
    iget-object v8, p0, Lcom/miui/personalassistant/loader/BaseLoader$Task;->this$0:Lcom/miui/personalassistant/loader/BaseLoader;

    invoke-static {v8}, Lcom/miui/personalassistant/loader/BaseLoader;->access$700(Lcom/miui/personalassistant/loader/BaseLoader;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-ne v4, v8, :cond_3

    move v8, v9

    :goto_1
    iput-boolean v8, p0, Lcom/miui/personalassistant/loader/BaseLoader$Task;->mIsLastRequest:Z

    if-nez v1, :cond_1

    instance-of v8, v6, Lcom/miui/personalassistant/request/core/LocalRequest;

    if-eqz v8, :cond_2

    :cond_1
    invoke-virtual {v6}, Lcom/miui/personalassistant/request/core/BaseRequest;->getRequestCode()I

    move-result v8

    invoke-direct {p0, v8, v1}, Lcom/miui/personalassistant/loader/BaseLoader$Task;->parseCacheInBackground(ILjava/lang/Object;)V

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    move v8, v10

    goto :goto_1

    :cond_4
    const/4 v4, 0x0

    :goto_2
    iget-object v8, p0, Lcom/miui/personalassistant/loader/BaseLoader$Task;->this$0:Lcom/miui/personalassistant/loader/BaseLoader;

    invoke-static {v8}, Lcom/miui/personalassistant/loader/BaseLoader;->access$700(Lcom/miui/personalassistant/loader/BaseLoader;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v4, v8, :cond_8

    const/4 v1, 0x0

    iget-object v8, p0, Lcom/miui/personalassistant/loader/BaseLoader$Task;->this$0:Lcom/miui/personalassistant/loader/BaseLoader;

    invoke-static {v8}, Lcom/miui/personalassistant/loader/BaseLoader;->access$700(Lcom/miui/personalassistant/loader/BaseLoader;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Lcom/miui/personalassistant/request/core/BaseRequest;

    move-object v6, v0

    instance-of v8, v6, Lcom/miui/personalassistant/request/core/HttpRequest;

    if-eqz v8, :cond_6

    move-object v0, v6

    check-cast v0, Lcom/miui/personalassistant/request/core/HttpRequest;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/miui/personalassistant/request/core/HttpRequest;->getRequestServer()Z

    move-result v8

    if-eqz v8, :cond_6

    iget-object v8, p0, Lcom/miui/personalassistant/loader/BaseLoader$Task;->this$0:Lcom/miui/personalassistant/loader/BaseLoader;

    invoke-static {v8}, Lcom/miui/personalassistant/loader/BaseLoader;->access$800(Lcom/miui/personalassistant/loader/BaseLoader;)V

    const-string/jumbo v8, "BaseLoader"

    const-string/jumbo v11, "request server data"

    invoke-static {v8, v11}, Lcom/miui/personalassistant/config/PALog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Lcom/miui/personalassistant/request/core/HttpRequest;->requestServer()Ljava/lang/String;

    move-result-object v1

    iget-object v8, p0, Lcom/miui/personalassistant/loader/BaseLoader$Task;->this$0:Lcom/miui/personalassistant/loader/BaseLoader;

    invoke-static {v8}, Lcom/miui/personalassistant/loader/BaseLoader;->access$700(Lcom/miui/personalassistant/loader/BaseLoader;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-ne v4, v8, :cond_7

    move v8, v9

    :goto_3
    iput-boolean v8, p0, Lcom/miui/personalassistant/loader/BaseLoader$Task;->mIsLastRequest:Z

    if-nez v1, :cond_5

    const-string/jumbo v1, ""

    :cond_5
    invoke-virtual {v6}, Lcom/miui/personalassistant/request/core/BaseRequest;->getRequestCode()I

    move-result v8

    const/4 v11, 0x0

    invoke-direct {p0, v8, v1, v11}, Lcom/miui/personalassistant/loader/BaseLoader$Task;->parseResultInBackground(ILjava/lang/Object;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_7
    move v8, v10

    goto :goto_3

    :catch_0
    move-exception v2

    const-string/jumbo v8, "BaseLoader"

    const-string/jumbo v10, "Exception"

    invoke-static {v8, v10, v2}, Lcom/miui/personalassistant/config/PALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    instance-of v8, v2, Lorg/json/JSONException;

    if-eqz v8, :cond_9

    sget-object v7, Lcom/miui/personalassistant/request/core/BaseResult$State;->DATA_ERROR:Lcom/miui/personalassistant/request/core/BaseResult$State;

    :goto_4
    iput-boolean v9, p0, Lcom/miui/personalassistant/loader/BaseLoader$Task;->mIsLastRequest:Z

    new-instance v8, Lcom/miui/personalassistant/loader/BaseLoader$StateAndDescription;

    iget-object v9, p0, Lcom/miui/personalassistant/loader/BaseLoader$Task;->this$0:Lcom/miui/personalassistant/loader/BaseLoader;

    invoke-virtual {v6}, Lcom/miui/personalassistant/request/core/BaseRequest;->getDescription()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v9, v7, v10}, Lcom/miui/personalassistant/loader/BaseLoader$StateAndDescription;-><init>(Lcom/miui/personalassistant/loader/BaseLoader;Lcom/miui/personalassistant/request/core/BaseResult$State;Ljava/lang/String;)V

    invoke-direct {p0, v8}, Lcom/miui/personalassistant/loader/BaseLoader$Task;->postResultInBackground(Lcom/miui/personalassistant/loader/BaseLoader$StateAndDescription;)V

    :cond_8
    return-void

    :cond_9
    instance-of v8, v2, Ljava/net/UnknownServiceException;

    if-eqz v8, :cond_a

    sget-object v7, Lcom/miui/personalassistant/request/core/BaseResult$State;->SERVICE_ERROR:Lcom/miui/personalassistant/request/core/BaseResult$State;

    goto :goto_4

    :cond_a
    sget-object v7, Lcom/miui/personalassistant/request/core/BaseResult$State;->SERVICE_ERROR:Lcom/miui/personalassistant/request/core/BaseResult$State;

    goto :goto_4
.end method
