.class public Lcom/miui/systemAdSolution/common/Material;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final KEY_AD_PASS_BACK:Ljava/lang/String; = "ex"

.field private static final KEY_CLICK_MONITOR_URLS:Ljava/lang/String; = "clickMonitorUrls"

.field private static final KEY_CUSTOM_MONITOR_URLS:Ljava/lang/String; = "cusMoniUrls"

.field private static final KEY_EXTRA:Ljava/lang/String; = "extra"

.field private static final KEY_ID:Ljava/lang/String; = "id"

.field private static final KEY_RESOURCES:Ljava/lang/String; = "resources"

.field private static final KEY_VIEW_LOG:Ljava/lang/String; = "viewLogLevel"

.field private static final KEY_VIEW_MONITOR_URLS:Ljava/lang/String; = "viewMonitorUrls"

.field private static final TAG:Ljava/lang/String; = "Material"

.field private static final VIEW_LOG_LEVEL_MATERIAL:I = 0x0

.field private static final VIEW_LOG_LEVEL_RESOURCE:I = 0x1


# instance fields
.field private adPassBack:Ljava/lang/String;

.field private extra:Ljava/lang/String;

.field private id:J

.field private resources:Ljava/util/List;

.field private viewLogLevel:I

.field private viewMonitorUrls:Ljava/util/List;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(Lorg/json/JSONObject;)Lcom/miui/systemAdSolution/common/Material;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/miui/systemAdSolution/common/Material;->parse(Lorg/json/JSONObject;Z)Lcom/miui/systemAdSolution/common/Material;

    move-result-object v0

    return-object v0
.end method

.method public static parse(Lorg/json/JSONObject;Z)Lcom/miui/systemAdSolution/common/Material;
    .locals 7

    const/4 v1, 0x0

    const/4 v6, 0x0

    if-nez p0, :cond_0

    return-object v6

    :cond_0
    new-instance v2, Lcom/miui/systemAdSolution/common/Material;

    invoke-direct {v2}, Lcom/miui/systemAdSolution/common/Material;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v2, Lcom/miui/systemAdSolution/common/Material;->resources:Ljava/util/List;

    const-string/jumbo v0, "resources"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    if-eqz v3, :cond_3

    move v0, v1

    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v0, v4, :cond_3

    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-static {v4}, Lcom/miui/systemAdSolution/common/Material$Resource;->parse(Lorg/json/JSONObject;)Lcom/miui/systemAdSolution/common/Material$Resource;

    move-result-object v4

    if-eqz v4, :cond_1

    if-eqz p1, :cond_2

    invoke-virtual {v4}, Lcom/miui/systemAdSolution/common/Material$Resource;->getResourceDataCount()I

    move-result v5

    if-lez v5, :cond_1

    iget-object v5, v2, Lcom/miui/systemAdSolution/common/Material;->resources:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v5, v2, Lcom/miui/systemAdSolution/common/Material;->resources:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    iget-object v0, v2, Lcom/miui/systemAdSolution/common/Material;->resources:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string/jumbo v0, "Material"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "no resources in material:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v6

    :cond_4
    const-string/jumbo v0, "id"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v2, Lcom/miui/systemAdSolution/common/Material;->id:J

    const-string/jumbo v0, "viewLogLevel"

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v2, Lcom/miui/systemAdSolution/common/Material;->viewLogLevel:I

    const-string/jumbo v0, "ex"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/miui/systemAdSolution/common/Material;->adPassBack:Ljava/lang/String;

    const-string/jumbo v0, "extra"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/miui/systemAdSolution/common/Material;->extra:Ljava/lang/String;

    const-string/jumbo v0, "viewMonitorUrls"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/systemAdSolution/common/Material;->parseMonitors(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v2, Lcom/miui/systemAdSolution/common/Material;->viewMonitorUrls:Ljava/util/List;

    return-object v2
.end method

.method public static parseMonitors(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 5

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string/jumbo v4, "http"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method


# virtual methods
.method public getAdPassBack()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/systemAdSolution/common/Material;->adPassBack:Ljava/lang/String;

    return-object v0
.end method

.method public getExtra()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/systemAdSolution/common/Material;->extra:Ljava/lang/String;

    return-object v0
.end method

.method public getId()J
    .locals 2

    iget-wide v0, p0, Lcom/miui/systemAdSolution/common/Material;->id:J

    return-wide v0
.end method

.method public getResource(I)Lcom/miui/systemAdSolution/common/Material$Resource;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/systemAdSolution/common/Material;->getResourceCount()I

    move-result v0

    if-le v0, p1, :cond_0

    iget-object v0, p0, Lcom/miui/systemAdSolution/common/Material;->resources:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/systemAdSolution/common/Material$Resource;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getResourceCount()I
    .locals 1

    iget-object v0, p0, Lcom/miui/systemAdSolution/common/Material;->resources:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getResources()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/miui/systemAdSolution/common/Material;->resources:Ljava/util/List;

    return-object v0
.end method

.method public getViewMonitorUrls()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/miui/systemAdSolution/common/Material;->viewMonitorUrls:Ljava/util/List;

    return-object v0
.end method

.method public isMaterialViewLogLevel()Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Lcom/miui/systemAdSolution/common/Material;->viewLogLevel:I

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isResourceViewLogLevel()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/miui/systemAdSolution/common/Material;->viewLogLevel:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public serialize()Lorg/json/JSONObject;
    .locals 4

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string/jumbo v0, "id"

    iget-wide v2, p0, Lcom/miui/systemAdSolution/common/Material;->id:J

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string/jumbo v0, "viewLogLevel"

    iget v2, p0, Lcom/miui/systemAdSolution/common/Material;->viewLogLevel:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v0, "ex"

    iget-object v2, p0, Lcom/miui/systemAdSolution/common/Material;->adPassBack:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "extra"

    iget-object v2, p0, Lcom/miui/systemAdSolution/common/Material;->extra:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    iget-object v0, p0, Lcom/miui/systemAdSolution/common/Material;->viewMonitorUrls:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/systemAdSolution/common/Material;->viewMonitorUrls:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/systemAdSolution/common/Material;->viewMonitorUrls:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

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

    :cond_0
    :try_start_1
    const-string/jumbo v0, "viewMonitorUrls"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    iget-object v0, p0, Lcom/miui/systemAdSolution/common/Material;->resources:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/systemAdSolution/common/Material;->resources:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/systemAdSolution/common/Material$Resource;

    invoke-virtual {v0}, Lcom/miui/systemAdSolution/common/Material$Resource;->serialize()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_2

    :cond_1
    const-string/jumbo v0, "resources"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public setAdPassBack(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/systemAdSolution/common/Material;->adPassBack:Ljava/lang/String;

    return-void
.end method

.method public setViewMonitorUrls(Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/systemAdSolution/common/Material;->viewMonitorUrls:Ljava/util/List;

    return-void
.end method
