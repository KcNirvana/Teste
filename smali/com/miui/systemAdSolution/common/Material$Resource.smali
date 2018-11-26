.class public Lcom/miui/systemAdSolution/common/Material$Resource;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final KEY_DESCRIBE:Ljava/lang/String; = "desc"

.field private static final KEY_LANDING_PAGE_URL:Ljava/lang/String; = "landingPageUrl"

.field private static final KEY_RESOURCE_DATAS:Ljava/lang/String; = "urls"

.field private static final KEY_TAG:Ljava/lang/String; = "tag"

.field private static final KEY_TITLE:Ljava/lang/String; = "title"


# instance fields
.field private clickMonitorUrls:Ljava/util/List;

.field private deeplink:Lcom/miui/systemAdSolution/common/Material$Resource$Deeplink;

.field private describe:Ljava/lang/String;

.field private extra:Ljava/lang/String;

.field private id:J

.field private landingPageUrl:Ljava/lang/String;

.field private resourceDatas:Ljava/util/List;

.field private tag:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private viewMonitorUrls:Ljava/util/List;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(Lorg/json/JSONObject;)Lcom/miui/systemAdSolution/common/Material$Resource;
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Lcom/miui/systemAdSolution/common/Material$Resource;

    invoke-direct {v1}, Lcom/miui/systemAdSolution/common/Material$Resource;-><init>()V

    const-string/jumbo v0, "id"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/miui/systemAdSolution/common/Material$Resource;->id:J

    const-string/jumbo v0, "title"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/miui/systemAdSolution/common/Material$Resource;->title:Ljava/lang/String;

    const-string/jumbo v0, "desc"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/miui/systemAdSolution/common/Material$Resource;->describe:Ljava/lang/String;

    const-string/jumbo v0, "landingPageUrl"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/miui/systemAdSolution/common/Material$Resource;->landingPageUrl:Ljava/lang/String;

    const-string/jumbo v0, "tag"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/miui/systemAdSolution/common/Material$Resource;->tag:Ljava/lang/String;

    invoke-static {p0}, Lcom/miui/systemAdSolution/common/Material$Resource$Deeplink;->parse(Lorg/json/JSONObject;)Lcom/miui/systemAdSolution/common/Material$Resource$Deeplink;

    move-result-object v0

    iput-object v0, v1, Lcom/miui/systemAdSolution/common/Material$Resource;->deeplink:Lcom/miui/systemAdSolution/common/Material$Resource$Deeplink;

    const-string/jumbo v0, "extra"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/miui/systemAdSolution/common/Material$Resource;->extra:Ljava/lang/String;

    const-string/jumbo v0, "viewMonitorUrls"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/systemAdSolution/common/Material;->parseMonitors(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v1, Lcom/miui/systemAdSolution/common/Material$Resource;->viewMonitorUrls:Ljava/util/List;

    const-string/jumbo v0, "clickMonitorUrls"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/systemAdSolution/common/Material;->parseMonitors(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v1, Lcom/miui/systemAdSolution/common/Material$Resource;->clickMonitorUrls:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Lcom/miui/systemAdSolution/common/Material$Resource;->resourceDatas:Ljava/util/List;

    const-string/jumbo v0, "urls"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-eqz v2, :cond_2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_2

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-static {v3}, Lcom/miui/systemAdSolution/common/Material$Resource$ResourceData;->parse(Lorg/json/JSONObject;)Lcom/miui/systemAdSolution/common/Material$Resource$ResourceData;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v4, v1, Lcom/miui/systemAdSolution/common/Material$Resource;->resourceDatas:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method


# virtual methods
.method public getClickMonitorUrls()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/miui/systemAdSolution/common/Material$Resource;->clickMonitorUrls:Ljava/util/List;

    return-object v0
.end method

.method public getDeeplink()Lcom/miui/systemAdSolution/common/Material$Resource$Deeplink;
    .locals 1

    iget-object v0, p0, Lcom/miui/systemAdSolution/common/Material$Resource;->deeplink:Lcom/miui/systemAdSolution/common/Material$Resource$Deeplink;

    return-object v0
.end method

.method public getDescribe()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/systemAdSolution/common/Material$Resource;->describe:Ljava/lang/String;

    return-object v0
.end method

.method public getExtra()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/systemAdSolution/common/Material$Resource;->extra:Ljava/lang/String;

    return-object v0
.end method

.method public getId()J
    .locals 2

    iget-wide v0, p0, Lcom/miui/systemAdSolution/common/Material$Resource;->id:J

    return-wide v0
.end method

.method public getLandingPageUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/systemAdSolution/common/Material$Resource;->landingPageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getResourceData(I)Lcom/miui/systemAdSolution/common/Material$Resource$ResourceData;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/systemAdSolution/common/Material$Resource;->getResourceDataCount()I

    move-result v0

    if-le v0, p1, :cond_0

    iget-object v0, p0, Lcom/miui/systemAdSolution/common/Material$Resource;->resourceDatas:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/systemAdSolution/common/Material$Resource$ResourceData;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getResourceDataCount()I
    .locals 1

    iget-object v0, p0, Lcom/miui/systemAdSolution/common/Material$Resource;->resourceDatas:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/systemAdSolution/common/Material$Resource;->resourceDatas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getResourceDatas()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/miui/systemAdSolution/common/Material$Resource;->resourceDatas:Ljava/util/List;

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/systemAdSolution/common/Material$Resource;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/systemAdSolution/common/Material$Resource;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getViewMonitorUrls()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/miui/systemAdSolution/common/Material$Resource;->viewMonitorUrls:Ljava/util/List;

    return-object v0
.end method

.method public serialize()Lorg/json/JSONObject;
    .locals 4

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string/jumbo v0, "id"

    iget-wide v2, p0, Lcom/miui/systemAdSolution/common/Material$Resource;->id:J

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string/jumbo v0, "title"

    iget-object v2, p0, Lcom/miui/systemAdSolution/common/Material$Resource;->title:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "desc"

    iget-object v2, p0, Lcom/miui/systemAdSolution/common/Material$Resource;->describe:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "landingPageUrl"

    iget-object v2, p0, Lcom/miui/systemAdSolution/common/Material$Resource;->landingPageUrl:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "tag"

    iget-object v2, p0, Lcom/miui/systemAdSolution/common/Material$Resource;->tag:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/miui/systemAdSolution/common/Material$Resource;->deeplink:Lcom/miui/systemAdSolution/common/Material$Resource$Deeplink;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/systemAdSolution/common/Material$Resource;->deeplink:Lcom/miui/systemAdSolution/common/Material$Resource$Deeplink;

    invoke-virtual {v0, v1}, Lcom/miui/systemAdSolution/common/Material$Resource$Deeplink;->serialize(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    :cond_0
    const-string/jumbo v0, "extra"

    iget-object v2, p0, Lcom/miui/systemAdSolution/common/Material$Resource;->extra:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    iget-object v0, p0, Lcom/miui/systemAdSolution/common/Material$Resource;->viewMonitorUrls:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/systemAdSolution/common/Material$Resource;->viewMonitorUrls:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/systemAdSolution/common/Material$Resource;->viewMonitorUrls:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "Material"

    const-string/jumbo v3, "serializing the ResourceData failed!"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-object v1

    :cond_1
    :try_start_1
    const-string/jumbo v0, "viewMonitorUrls"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    iget-object v0, p0, Lcom/miui/systemAdSolution/common/Material$Resource;->clickMonitorUrls:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/systemAdSolution/common/Material$Resource;->clickMonitorUrls:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/systemAdSolution/common/Material$Resource;->clickMonitorUrls:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_2

    :cond_2
    const-string/jumbo v0, "clickMonitorUrls"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    iget-object v0, p0, Lcom/miui/systemAdSolution/common/Material$Resource;->resourceDatas:Ljava/util/List;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/systemAdSolution/common/Material$Resource;->resourceDatas:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/systemAdSolution/common/Material$Resource$ResourceData;

    invoke-virtual {v0}, Lcom/miui/systemAdSolution/common/Material$Resource$ResourceData;->serialize()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_3

    :cond_3
    const-string/jumbo v0, "urls"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public setClickMonitorUrls(Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/systemAdSolution/common/Material$Resource;->clickMonitorUrls:Ljava/util/List;

    return-void
.end method

.method public setViewMonitorUrls(Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/systemAdSolution/common/Material$Resource;->viewMonitorUrls:Ljava/util/List;

    return-void
.end method
