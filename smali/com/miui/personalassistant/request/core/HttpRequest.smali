.class public Lcom/miui/personalassistant/request/core/HttpRequest;
.super Lcom/miui/personalassistant/request/core/BaseRequest;
.source "HttpRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/personalassistant/request/core/BaseRequest",
        "<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "HttpRequest"


# instance fields
.field protected mConnectTimeout:I

.field protected mDecryptDownloadData:Z

.field protected mParamMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mReadTimeout:I

.field protected mRequestCache:Z

.field protected mRequestMethod:Ljava/lang/String;

.field protected mRequestServer:Z

.field protected mRequireLocId:Z

.field protected mRequireLogin:Z

.field protected mSignUrlAndParams:Z

.field protected mStatusCode:I

.field protected mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/miui/personalassistant/request/core/HttpRequest;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, p3}, Lcom/miui/personalassistant/request/core/BaseRequest;-><init>(Landroid/content/Context;I)V

    iput-boolean v1, p0, Lcom/miui/personalassistant/request/core/HttpRequest;->mSignUrlAndParams:Z

    iput-object p2, p0, Lcom/miui/personalassistant/request/core/HttpRequest;->mUrl:Ljava/lang/String;

    const-string/jumbo v0, "GET"

    iput-object v0, p0, Lcom/miui/personalassistant/request/core/HttpRequest;->mRequestMethod:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/personalassistant/request/core/HttpRequest;->mParamMap:Ljava/util/HashMap;

    iput-boolean v1, p0, Lcom/miui/personalassistant/request/core/HttpRequest;->mRequestCache:Z

    iput-boolean v1, p0, Lcom/miui/personalassistant/request/core/HttpRequest;->mRequestServer:Z

    iput-boolean v2, p0, Lcom/miui/personalassistant/request/core/HttpRequest;->mRequireLogin:Z

    iput-boolean v1, p0, Lcom/miui/personalassistant/request/core/HttpRequest;->mDecryptDownloadData:Z

    iput-boolean v2, p0, Lcom/miui/personalassistant/request/core/HttpRequest;->mRequireLocId:Z

    return-void
.end method

.method private appendParameters(Lcom/miui/personalassistant/request/core/JSONRequest;)V
    .locals 4

    iget-object v1, p0, Lcom/miui/personalassistant/request/core/HttpRequest;->mParamMap:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/personalassistant/request/core/HttpRequest;->mParamMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/miui/personalassistant/request/core/HttpRequest;->mParamMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, p1, v1, v2}, Lcom/miui/personalassistant/request/core/HttpRequest;->onAppendParameter(Lcom/miui/personalassistant/request/core/JSONRequest;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private requestLocalData()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/miui/personalassistant/request/core/HttpRequest;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/miui/personalassistant/request/core/HttpRequest;->getCacheKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/personalassistant/util/Cache;->get(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addParam(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/request/core/HttpRequest;->mParamMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected getCacheKey()Ljava/lang/String;
    .locals 8

    iget-object v4, p0, Lcom/miui/personalassistant/request/core/HttpRequest;->mParamMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_0

    const-string/jumbo v4, "&"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-nez v4, :cond_2

    iget-object v3, p0, Lcom/miui/personalassistant/request/core/HttpRequest;->mUrl:Ljava/lang/String;

    :goto_1
    invoke-static {v3}, Lcom/miui/personalassistant/util/CoderUtils;->encodeSHA(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    return-object v4

    :cond_2
    const-string/jumbo v4, "%s?%s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/miui/personalassistant/request/core/HttpRequest;->mUrl:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v2, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method

.method public getParamMap()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/personalassistant/request/core/HttpRequest;->mParamMap:Ljava/util/HashMap;

    return-object v0
.end method

.method public getRequestCache()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/personalassistant/request/core/HttpRequest;->mRequestCache:Z

    return v0
.end method

.method public getRequestServer()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/personalassistant/request/core/HttpRequest;->mRequestServer:Z

    return v0
.end method

.method public getStatusCode()I
    .locals 1

    iget v0, p0, Lcom/miui/personalassistant/request/core/HttpRequest;->mStatusCode:I

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/request/core/HttpRequest;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method protected onAppendParameter(Lcom/miui/personalassistant/request/core/JSONRequest;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1, p2, p3}, Lcom/miui/personalassistant/request/core/JSONRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic request()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/personalassistant/request/core/HttpRequest;->request()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public request()Lorg/json/JSONObject;
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public requestLocal()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/miui/personalassistant/request/core/HttpRequest;->requestLocalData()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public requestServer()Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownServiceException;
        }
    .end annotation

    new-instance v3, Lcom/miui/personalassistant/request/core/JSONRequest;

    iget-object v5, p0, Lcom/miui/personalassistant/request/core/HttpRequest;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/miui/personalassistant/request/core/HttpRequest;->getUrl()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v5, v6}, Lcom/miui/personalassistant/request/core/JSONRequest;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/miui/personalassistant/request/core/HttpRequest;->mRequestMethod:Ljava/lang/String;

    invoke-virtual {v3, v5}, Lcom/miui/personalassistant/request/core/JSONRequest;->setHttpMethod(Ljava/lang/String;)Lcom/miui/personalassistant/request/core/BaseJSONRequest;

    iget-boolean v5, p0, Lcom/miui/personalassistant/request/core/HttpRequest;->mRequireLogin:Z

    invoke-virtual {v3, v5}, Lcom/miui/personalassistant/request/core/JSONRequest;->setRequireLogin(Z)Lcom/miui/personalassistant/request/core/BaseJSONRequest;

    iget-boolean v5, p0, Lcom/miui/personalassistant/request/core/HttpRequest;->mDecryptDownloadData:Z

    invoke-virtual {v3, v5}, Lcom/miui/personalassistant/request/core/JSONRequest;->setDecryptDownloadData(Z)Lcom/miui/personalassistant/request/core/BaseJSONRequest;

    iget v5, p0, Lcom/miui/personalassistant/request/core/HttpRequest;->mConnectTimeout:I

    invoke-virtual {v3, v5}, Lcom/miui/personalassistant/request/core/JSONRequest;->setConnectTimeout(I)V

    iget v5, p0, Lcom/miui/personalassistant/request/core/HttpRequest;->mReadTimeout:I

    invoke-virtual {v3, v5}, Lcom/miui/personalassistant/request/core/JSONRequest;->setReadTimeout(I)V

    iget-boolean v5, p0, Lcom/miui/personalassistant/request/core/HttpRequest;->mSignUrlAndParams:Z

    invoke-virtual {v3, v5}, Lcom/miui/personalassistant/request/core/JSONRequest;->setSignUrlAndParams(Z)V

    invoke-direct {p0, v3}, Lcom/miui/personalassistant/request/core/HttpRequest;->appendParameters(Lcom/miui/personalassistant/request/core/JSONRequest;)V

    invoke-virtual {v3}, Lcom/miui/personalassistant/request/core/JSONRequest;->getStatus()I

    move-result v4

    iput v4, p0, Lcom/miui/personalassistant/request/core/HttpRequest;->mStatusCode:I

    invoke-virtual {v3}, Lcom/miui/personalassistant/request/core/JSONRequest;->getDescription()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/miui/personalassistant/request/core/HttpRequest;->mDescription:Ljava/lang/String;

    const-string/jumbo v5, "HttpRequest"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "requestServer status="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/miui/personalassistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v4, :cond_1

    invoke-virtual {v3}, Lcom/miui/personalassistant/request/core/JSONRequest;->requestData()Ljava/lang/String;

    move-result-object v1

    iget-boolean v5, p0, Lcom/miui/personalassistant/request/core/HttpRequest;->mRequestCache:Z

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Lcom/miui/personalassistant/request/core/HttpRequest;->getCacheKey()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v5, "HttpRequest"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "cacheKey="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\tmUrl="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/miui/personalassistant/request/core/HttpRequest;->mUrl:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\tmParams="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/miui/personalassistant/request/core/HttpRequest;->mParamMap:Ljava/util/HashMap;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/miui/personalassistant/config/PALog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/miui/personalassistant/request/core/HttpRequest;->mContext:Landroid/content/Context;

    invoke-static {v5, v0, v1}, Lcom/miui/personalassistant/util/Cache;->put(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    move-object v2, v1

    :goto_0
    return-object v2

    :cond_1
    iget-boolean v5, p0, Lcom/miui/personalassistant/request/core/HttpRequest;->mRequestCache:Z

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/miui/personalassistant/request/core/HttpRequest;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/miui/personalassistant/request/core/HttpRequest;->getCacheKey()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/miui/personalassistant/util/Cache;->get(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v5, "HttpRequest"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getCache="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\tcacheKey="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/miui/personalassistant/request/core/HttpRequest;->getCacheKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/miui/personalassistant/config/PALog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v1

    goto :goto_0

    :cond_2
    new-instance v5, Ljava/net/UnknownServiceException;

    invoke-direct {v5}, Ljava/net/UnknownServiceException;-><init>()V

    throw v5
.end method

.method public setConnectTimeout(I)V
    .locals 0

    iput p1, p0, Lcom/miui/personalassistant/request/core/HttpRequest;->mConnectTimeout:I

    return-void
.end method

.method public setDecryptData(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/personalassistant/request/core/HttpRequest;->mDecryptDownloadData:Z

    return-void
.end method

.method public setReadTimeout(I)V
    .locals 0

    iput p1, p0, Lcom/miui/personalassistant/request/core/HttpRequest;->mReadTimeout:I

    return-void
.end method

.method public setRequestCache(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/personalassistant/request/core/HttpRequest;->mRequestCache:Z

    return-void
.end method

.method public setRequestMethod(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/request/core/HttpRequest;->mRequestMethod:Ljava/lang/String;

    return-void
.end method

.method public setRequestServer(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/personalassistant/request/core/HttpRequest;->mRequestServer:Z

    return-void
.end method

.method public setRequireLocId(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/personalassistant/request/core/HttpRequest;->mRequireLocId:Z

    return-void
.end method

.method public setRequireLogin(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/personalassistant/request/core/HttpRequest;->mRequireLogin:Z

    return-void
.end method

.method public setSignUrlAndParams(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/personalassistant/request/core/HttpRequest;->mSignUrlAndParams:Z

    return-void
.end method

.method public setStatusCode(I)V
    .locals 0

    iput p1, p0, Lcom/miui/personalassistant/request/core/HttpRequest;->mStatusCode:I

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/request/core/HttpRequest;->mUrl:Ljava/lang/String;

    return-void
.end method
