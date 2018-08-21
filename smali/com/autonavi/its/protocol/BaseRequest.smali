.class public abstract Lcom/autonavi/its/protocol/BaseRequest;
.super Ljava/lang/Object;
.source "BaseRequest.java"


# static fields
.field private static final DEFAULT_RETRY_COUNT:I = 0x3


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mCallback:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/autonavi/its/protocol/ReqCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mCallbackStrongRef:Lcom/autonavi/its/protocol/ReqCallback;

.field private mCode:I

.field private mException:Ljava/lang/Exception;

.field private mHeader:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mHttpReturnCode:I

.field private mIsBusinessSuccess:Z

.field private mIsStrongRef:Z

.field private mIsZipParams:Z

.field private mMethod:Ljava/lang/String;

.field private mMsg:Ljava/lang/String;

.field private mNetAbility:Lcom/autonavi/its/protocol/ability/net/INetAbility;

.field private mParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mResponseContent:Ljava/lang/String;

.field private mResponseData:[B

.field private mRetryCount:I

.field private mTag:Ljava/lang/String;

.field private mUserKey:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    iput v0, p0, Lcom/autonavi/its/protocol/BaseRequest;->mRetryCount:I

    iput-object v2, p0, Lcom/autonavi/its/protocol/BaseRequest;->mException:Ljava/lang/Exception;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/autonavi/its/protocol/BaseRequest;->mResponseContent:Ljava/lang/String;

    iput-object v2, p0, Lcom/autonavi/its/protocol/BaseRequest;->mMsg:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/autonavi/its/protocol/BaseRequest;->mCode:I

    iput-boolean v1, p0, Lcom/autonavi/its/protocol/BaseRequest;->mIsBusinessSuccess:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/autonavi/its/protocol/BaseRequest;->mParams:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/autonavi/its/protocol/BaseRequest;->mHeader:Ljava/util/Map;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/autonavi/its/protocol/BaseRequest;->mIsStrongRef:Z

    new-instance v0, Lcom/autonavi/its/protocol/ability/net/VolleyStringRequest;

    invoke-direct {v0}, Lcom/autonavi/its/protocol/ability/net/VolleyStringRequest;-><init>()V

    iput-object v0, p0, Lcom/autonavi/its/protocol/BaseRequest;->mNetAbility:Lcom/autonavi/its/protocol/ability/net/INetAbility;

    iput-boolean v1, p0, Lcom/autonavi/its/protocol/BaseRequest;->mIsZipParams:Z

    const-string/jumbo v0, "POST"

    iput-object v0, p0, Lcom/autonavi/its/protocol/BaseRequest;->mMethod:Ljava/lang/String;

    return-void
.end method

.method private addStatisticsParams()V
    .locals 2

    const-string/jumbo v0, "cifa"

    invoke-static {}, Lcom/autonavi/its/protocol/BaseRequest;->getCifa()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/autonavi/its/protocol/BaseRequest;->addParams(Ljava/lang/String;Ljava/lang/String;)Lcom/autonavi/its/protocol/BaseRequest;

    return-void
.end method

.method private doRequest(Ljava/lang/String;Lcom/autonavi/its/protocol/ReqCallback;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0, p3}, Lcom/autonavi/its/protocol/BaseRequest;->setTag(Ljava/lang/String;)Lcom/autonavi/its/protocol/BaseRequest;

    invoke-direct {p0, p2}, Lcom/autonavi/its/protocol/BaseRequest;->setCallback(Lcom/autonavi/its/protocol/ReqCallback;)V

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/BaseRequest;->getRetryCount()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/BaseRequest;->getCallback()Lcom/autonavi/its/protocol/ReqCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/BaseRequest;->getCallback()Lcom/autonavi/its/protocol/ReqCallback;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/BaseRequest;->getCallback()Lcom/autonavi/its/protocol/ReqCallback;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/autonavi/its/protocol/BaseRequest$1;

    invoke-direct {v1, p0}, Lcom/autonavi/its/protocol/BaseRequest$1;-><init>(Lcom/autonavi/its/protocol/BaseRequest;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/autonavi/its/protocol/BaseRequest;->doTask()V

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/BaseRequest;->getNetAbility()Lcom/autonavi/its/protocol/ability/net/INetAbility;

    move-result-object v0

    invoke-interface {v0, p1, p0, p3}, Lcom/autonavi/its/protocol/ability/net/INetAbility;->doRequest(Ljava/lang/String;Lcom/autonavi/its/protocol/BaseRequest;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/autonavi/its/protocol/BaseRequest;->getCallback()Lcom/autonavi/its/protocol/ReqCallback;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/autonavi/its/protocol/ReqCallback;->onStart(Lcom/autonavi/its/protocol/BaseRequest;)V

    goto :goto_0
.end method

.method private doRetry()V
    .locals 3

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/BaseRequest;->getRetryCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/BaseRequest;->getRetryCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/autonavi/its/protocol/BaseRequest;->setRetryCount(I)Lcom/autonavi/its/protocol/BaseRequest;

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/BaseRequest;->getMethod()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/BaseRequest;->getCallback()Lcom/autonavi/its/protocol/ReqCallback;

    move-result-object v1

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/BaseRequest;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/autonavi/its/protocol/BaseRequest;->doRequest(Ljava/lang/String;Lcom/autonavi/its/protocol/ReqCallback;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private doTask()V
    .locals 1

    instance-of v0, p0, Lcom/autonavi/its/protocol/log/chaos/ITaskReq;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/autonavi/its/protocol/log/chaos/TaskManager;->instance()Lcom/autonavi/its/protocol/log/chaos/TaskManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/its/protocol/log/chaos/TaskManager;->deal()V

    :cond_0
    return-void
.end method

.method protected static getCifa()Ljava/lang/String;
    .locals 2

    new-instance v0, Lcom/autonavi/its/sdk/util/DeviceInfo;

    invoke-static {}, Lcom/autonavi/its/protocol/RequestManager;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/autonavi/its/sdk/util/DeviceInfo;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/autonavi/its/sdk/util/DeviceInfo;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private preprocessUrl(Ljava/lang/String;)Ljava/lang/StringBuffer;
    .locals 3

    const/16 v2, 0x3f

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    if-lez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_0

    const/16 v2, 0x26

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method private setCallback(Lcom/autonavi/its/protocol/ReqCallback;)V
    .locals 1

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/autonavi/its/protocol/BaseRequest;->mCallback:Ljava/lang/ref/WeakReference;

    iget-boolean v0, p0, Lcom/autonavi/its/protocol/BaseRequest;->mIsStrongRef:Z

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/autonavi/its/protocol/BaseRequest;->mCallbackStrongRef:Lcom/autonavi/its/protocol/ReqCallback;

    :cond_0
    return-void
.end method

.method private wrapGetParams()Ljava/lang/String;
    .locals 6

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/BaseRequest;->getParams()Ljava/util/Map;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string/jumbo v5, "&"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_1
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method


# virtual methods
.method public addParams(Ljava/lang/String;D)Lcom/autonavi/its/protocol/BaseRequest;
    .locals 2

    iget-object v0, p0, Lcom/autonavi/its/protocol/BaseRequest;->mParams:Ljava/util/Map;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public addParams(Ljava/lang/String;I)Lcom/autonavi/its/protocol/BaseRequest;
    .locals 2

    iget-object v0, p0, Lcom/autonavi/its/protocol/BaseRequest;->mParams:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public addParams(Ljava/lang/String;Ljava/lang/String;)Lcom/autonavi/its/protocol/BaseRequest;
    .locals 1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/its/protocol/BaseRequest;->mParams:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object p0
.end method

.method public addParams(Ljava/lang/String;Ljava/lang/String;Z)Lcom/autonavi/its/protocol/BaseRequest;
    .locals 1

    if-nez p3, :cond_1

    iget-object v0, p0, Lcom/autonavi/its/protocol/BaseRequest;->mParams:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/its/protocol/BaseRequest;->mParams:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public addParams(Ljava/lang/String;Z)Lcom/autonavi/its/protocol/BaseRequest;
    .locals 2

    iget-object v1, p0, Lcom/autonavi/its/protocol/BaseRequest;->mParams:Ljava/util/Map;

    if-eqz p2, :cond_0

    const-string/jumbo v0, "true"

    :goto_0
    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0

    :cond_0
    const-string/jumbo v0, "false"

    goto :goto_0
.end method

.method public addParams(Ljava/util/Map;)Lcom/autonavi/its/protocol/BaseRequest;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/autonavi/its/protocol/BaseRequest;"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iget-object v2, p0, Lcom/autonavi/its/protocol/BaseRequest;->mParams:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public addStatisticsParams(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string/jumbo v1, "cifa"

    invoke-static {}, Lcom/autonavi/its/protocol/BaseRequest;->getCifa()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/autonavi/its/protocol/BaseRequest;->addParams(Ljava/lang/String;Ljava/lang/String;)Lcom/autonavi/its/protocol/BaseRequest;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-direct {p0, p1}, Lcom/autonavi/its/protocol/BaseRequest;->preprocessUrl(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public abstract dealBusinessData(Ljava/lang/String;)V
.end method

.method public doReqFail(Ljava/lang/Exception;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/autonavi/its/protocol/BaseRequest;->setException(Ljava/lang/Exception;)Lcom/autonavi/its/protocol/BaseRequest;

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/BaseRequest;->getRetryCount()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/BaseRequest;->getCallback()Lcom/autonavi/its/protocol/ReqCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/BaseRequest;->getCallback()Lcom/autonavi/its/protocol/ReqCallback;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/autonavi/its/protocol/ReqCallback;->onFail(Lcom/autonavi/its/protocol/BaseRequest;)V

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/BaseRequest;->unregisterListener()V

    :cond_0
    invoke-direct {p0}, Lcom/autonavi/its/protocol/BaseRequest;->doRetry()V

    return-void
.end method

.method public doReqSuccess()V
    .locals 1

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/BaseRequest;->getCallback()Lcom/autonavi/its/protocol/ReqCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/BaseRequest;->getCallback()Lcom/autonavi/its/protocol/ReqCallback;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/autonavi/its/protocol/ReqCallback;->onSuccess(Lcom/autonavi/its/protocol/BaseRequest;)V

    :cond_0
    invoke-virtual {p0}, Lcom/autonavi/its/protocol/BaseRequest;->unregisterListener()V

    return-void
.end method

.method public doRequest(Lcom/autonavi/its/protocol/ReqCallback;)V
    .locals 2

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/BaseRequest;->getMethod()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/BaseRequest;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lcom/autonavi/its/protocol/BaseRequest;->doRequest(Ljava/lang/String;Lcom/autonavi/its/protocol/ReqCallback;Ljava/lang/String;)V

    return-void
.end method

.method public doRequest(Lcom/autonavi/its/protocol/ReqCallback;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/BaseRequest;->getMethod()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lcom/autonavi/its/protocol/BaseRequest;->doRequest(Ljava/lang/String;Lcom/autonavi/its/protocol/ReqCallback;Ljava/lang/String;)V

    return-void
.end method

.method public doRequest(Lcom/autonavi/its/protocol/ReqCallback;Ljava/lang/String;Z)V
    .locals 1

    iput-boolean p3, p0, Lcom/autonavi/its/protocol/BaseRequest;->mIsStrongRef:Z

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/BaseRequest;->getMethod()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lcom/autonavi/its/protocol/BaseRequest;->doRequest(Ljava/lang/String;Lcom/autonavi/its/protocol/ReqCallback;Ljava/lang/String;)V

    return-void
.end method

.method public doRequest(Lcom/autonavi/its/protocol/ReqCallback;Z)V
    .locals 2

    iput-boolean p2, p0, Lcom/autonavi/its/protocol/BaseRequest;->mIsStrongRef:Z

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/BaseRequest;->getMethod()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/BaseRequest;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lcom/autonavi/its/protocol/BaseRequest;->doRequest(Ljava/lang/String;Lcom/autonavi/its/protocol/ReqCallback;Ljava/lang/String;)V

    return-void
.end method

.method public doSpecDeal()V
    .locals 0

    return-void
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/its/protocol/BaseRequest;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getCallback()Lcom/autonavi/its/protocol/ReqCallback;
    .locals 2

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/autonavi/its/protocol/BaseRequest;->mIsStrongRef:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/autonavi/its/protocol/BaseRequest;->mCallbackStrongRef:Lcom/autonavi/its/protocol/ReqCallback;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/autonavi/its/protocol/BaseRequest;->mCallbackStrongRef:Lcom/autonavi/its/protocol/ReqCallback;

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/autonavi/its/protocol/BaseRequest;->mCallback:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/autonavi/its/protocol/BaseRequest;->mCallback:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/its/protocol/ReqCallback;

    goto :goto_0
.end method

.method public getCode()I
    .locals 1

    iget v0, p0, Lcom/autonavi/its/protocol/BaseRequest;->mCode:I

    return v0
.end method

.method public getDecoratedUrl()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/autonavi/its/protocol/BaseRequest;->addStatisticsParams()V

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/BaseRequest;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/autonavi/its/protocol/BaseRequest;->getParamUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getException()Ljava/lang/Exception;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/its/protocol/BaseRequest;->mException:Ljava/lang/Exception;

    return-object v0
.end method

.method public getHeader()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/autonavi/its/protocol/BaseRequest;->mHeader:Ljava/util/Map;

    return-object v0
.end method

.method public getHttpReturnCode()I
    .locals 1

    iget v0, p0, Lcom/autonavi/its/protocol/BaseRequest;->mHttpReturnCode:I

    return v0
.end method

.method public getMethod()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/its/protocol/BaseRequest;->mMethod:Ljava/lang/String;

    return-object v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/its/protocol/BaseRequest;->mMsg:Ljava/lang/String;

    return-object v0
.end method

.method protected getNetAbility()Lcom/autonavi/its/protocol/ability/net/INetAbility;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/its/protocol/BaseRequest;->mNetAbility:Lcom/autonavi/its/protocol/ability/net/INetAbility;

    return-object v0
.end method

.method protected getParamUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string/jumbo v2, "POST"

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/BaseRequest;->getMethod()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    :goto_0
    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/autonavi/its/protocol/BaseRequest;->wrapGetParams()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0, p1}, Lcom/autonavi/its/protocol/BaseRequest;->preprocessUrl(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-direct {p0}, Lcom/autonavi/its/protocol/BaseRequest;->wrapGetParams()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getParams()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/autonavi/its/protocol/BaseRequest;->mParams:Ljava/util/Map;

    return-object v0
.end method

.method public getResponseContent()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/its/protocol/BaseRequest;->mResponseContent:Ljava/lang/String;

    return-object v0
.end method

.method public getResponseData()[B
    .locals 1

    iget-object v0, p0, Lcom/autonavi/its/protocol/BaseRequest;->mResponseData:[B

    return-object v0
.end method

.method public getRetryCount()I
    .locals 1

    iget v0, p0, Lcom/autonavi/its/protocol/BaseRequest;->mRetryCount:I

    return v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/its/protocol/BaseRequest;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getType()Ljava/lang/String;
.end method

.method public abstract getUrl()Ljava/lang/String;
.end method

.method public getUserKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/its/protocol/BaseRequest;->mUserKey:Ljava/lang/String;

    return-object v0
.end method

.method public isBusinessSuccess()Z
    .locals 1

    iget-boolean v0, p0, Lcom/autonavi/its/protocol/BaseRequest;->mIsBusinessSuccess:Z

    return v0
.end method

.method public isZipParams()Z
    .locals 1

    iget-boolean v0, p0, Lcom/autonavi/its/protocol/BaseRequest;->mIsZipParams:Z

    return v0
.end method

.method public lookUpParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/its/protocol/BaseRequest;->mParams:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public netError(Lcom/autonavi/volley/VolleyError;)V
    .locals 3

    invoke-virtual {p0, p1}, Lcom/autonavi/its/protocol/BaseRequest;->setException(Ljava/lang/Exception;)Lcom/autonavi/its/protocol/BaseRequest;

    iget-object v1, p1, Lcom/autonavi/volley/VolleyError;->networkResponse:Lcom/autonavi/volley/NetworkResponse;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/autonavi/volley/VolleyError;->networkResponse:Lcom/autonavi/volley/NetworkResponse;

    invoke-virtual {v1}, Lcom/autonavi/volley/NetworkResponse;->getData()[B

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Lcom/autonavi/volley/VolleyError;->networkResponse:Lcom/autonavi/volley/NetworkResponse;

    invoke-virtual {v1}, Lcom/autonavi/volley/NetworkResponse;->getData()[B

    move-result-object v1

    const-string/jumbo v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/autonavi/its/protocol/BaseRequest;->setResponseContent(Ljava/lang/String;)Lcom/autonavi/its/protocol/BaseRequest;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/autonavi/its/protocol/BaseRequest;->getRetryCount()I

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/BaseRequest;->getCallback()Lcom/autonavi/its/protocol/ReqCallback;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/BaseRequest;->getCallback()Lcom/autonavi/its/protocol/ReqCallback;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/autonavi/its/protocol/ReqCallback;->onNetError(Lcom/autonavi/its/protocol/BaseRequest;)V

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/BaseRequest;->unregisterListener()V

    :cond_1
    invoke-direct {p0}, Lcom/autonavi/its/protocol/BaseRequest;->doRetry()V

    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/its/protocol/BaseRequest;->mBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method protected setCode(I)V
    .locals 0

    iput p1, p0, Lcom/autonavi/its/protocol/BaseRequest;->mCode:I

    return-void
.end method

.method public setException(Ljava/lang/Exception;)Lcom/autonavi/its/protocol/BaseRequest;
    .locals 0

    iput-object p1, p0, Lcom/autonavi/its/protocol/BaseRequest;->mException:Ljava/lang/Exception;

    return-object p0
.end method

.method public setHeader(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/autonavi/its/protocol/BaseRequest;->mHeader:Ljava/util/Map;

    return-void
.end method

.method public setHttpReturnCode(I)V
    .locals 0

    iput p1, p0, Lcom/autonavi/its/protocol/BaseRequest;->mHttpReturnCode:I

    return-void
.end method

.method protected setIsBusinessSuccess(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/autonavi/its/protocol/BaseRequest;->mIsBusinessSuccess:Z

    return-void
.end method

.method public setIsZipParams(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/autonavi/its/protocol/BaseRequest;->mIsZipParams:Z

    return-void
.end method

.method public setMethod(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/its/protocol/BaseRequest;->mMethod:Ljava/lang/String;

    return-void
.end method

.method protected setMsg(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/its/protocol/BaseRequest;->mMsg:Ljava/lang/String;

    return-void
.end method

.method protected setNetAbility(Lcom/autonavi/its/protocol/ability/net/INetAbility;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/its/protocol/BaseRequest;->mNetAbility:Lcom/autonavi/its/protocol/ability/net/INetAbility;

    return-void
.end method

.method protected setParams(Ljava/util/Map;)Lcom/autonavi/its/protocol/BaseRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/autonavi/its/protocol/BaseRequest;"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    iput-object p1, p0, Lcom/autonavi/its/protocol/BaseRequest;->mParams:Ljava/util/Map;

    :cond_0
    return-object p0
.end method

.method public setResponseContent(Ljava/lang/String;)Lcom/autonavi/its/protocol/BaseRequest;
    .locals 0

    iput-object p1, p0, Lcom/autonavi/its/protocol/BaseRequest;->mResponseContent:Ljava/lang/String;

    return-object p0
.end method

.method public setResponseData([B)Lcom/autonavi/its/protocol/BaseRequest;
    .locals 0

    iput-object p1, p0, Lcom/autonavi/its/protocol/BaseRequest;->mResponseData:[B

    return-object p0
.end method

.method public setRetryCount(I)Lcom/autonavi/its/protocol/BaseRequest;
    .locals 0

    iput p1, p0, Lcom/autonavi/its/protocol/BaseRequest;->mRetryCount:I

    return-object p0
.end method

.method public setTag(Ljava/lang/String;)Lcom/autonavi/its/protocol/BaseRequest;
    .locals 0

    iput-object p1, p0, Lcom/autonavi/its/protocol/BaseRequest;->mTag:Ljava/lang/String;

    return-object p0
.end method

.method protected setUserKey(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/its/protocol/BaseRequest;->mUserKey:Ljava/lang/String;

    return-void
.end method

.method public unregisterListener()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/autonavi/its/protocol/BaseRequest;->mCallbackStrongRef:Lcom/autonavi/its/protocol/ReqCallback;

    return-void
.end method

.method public wrapParams()Lorg/json/JSONObject;
    .locals 6

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/BaseRequest;->getParams()Ljava/util/Map;

    move-result-object v3

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v5

    :cond_0
    return-object v4
.end method
