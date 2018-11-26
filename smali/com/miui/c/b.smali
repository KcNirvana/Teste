.class public Lcom/miui/c/b;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final TAG:Ljava/lang/String;

.field private bcm:I

.field private bcn:J

.field private bco:I

.field private bcp:Z

.field private bcq:Z

.field private final bcr:Ljava/util/Map;

.field private bcs:Ljava/lang/String;

.field private bct:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/miui/systemAdSolution/common/AdInfo;Ljava/lang/String;)V
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "ModuleResources"

    iput-object v0, p0, Lcom/miui/c/b;->TAG:Ljava/lang/String;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/miui/c/b;->bcr:Ljava/util/Map;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/miui/c/f;->bcG:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p2}, Lcom/miui/systemAdSolution/common/AdInfo;->getTagId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p2}, Lcom/miui/systemAdSolution/common/AdInfo;->getExtra()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/miui/systemAdSolution/common/AdInfo;->getId()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/miui/c/b;->bcn:J

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "attribute"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/c/b;->bcm:I

    const-string/jumbo v0, "isLight"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/c/b;->bcq:Z

    const-string/jumbo v0, "securityscanText"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/c/b;->bcs:Ljava/lang/String;

    const-string/jumbo v0, "frequency"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/c/b;->bco:I

    const-string/jumbo v0, "totalDisplayTimesOneDay"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/c/b;->bct:I

    const-string/jumbo v0, "applyFeature"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/c/b;->bcp:Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-static {p2}, Lcom/miui/c/f;->bzq(Lcom/miui/systemAdSolution/common/AdInfo;)Lcom/miui/systemAdSolution/common/Material;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/miui/systemAdSolution/common/Material;->getResources()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v1}, Lcom/miui/systemAdSolution/common/Material;->getResources()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/systemAdSolution/common/Material$Resource;

    new-instance v3, Lcom/miui/c/c;

    invoke-direct {v3, v8}, Lcom/miui/c/c;-><init>(Lcom/miui/c/c;)V

    invoke-virtual {v0}, Lcom/miui/systemAdSolution/common/Material$Resource;->getDeeplink()Lcom/miui/systemAdSolution/common/Material$Resource$Deeplink;

    move-result-object v4

    invoke-virtual {v0}, Lcom/miui/systemAdSolution/common/Material$Resource;->getLandingPageUrl()Ljava/lang/String;

    move-result-object v5

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/miui/systemAdSolution/common/Material$Resource$Deeplink;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/miui/c/c;->setPackageName(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/miui/systemAdSolution/common/Material$Resource$Deeplink;->getDeeplinkUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/miui/c/c;->byZ(Ljava/lang/String;)V

    :cond_1
    invoke-static {p1, p3, p2, v1, v0}, Lcom/miui/c/f;->bzr(Landroid/content/Context;Ljava/lang/String;Lcom/miui/systemAdSolution/common/AdInfo;Lcom/miui/systemAdSolution/common/Material;Lcom/miui/systemAdSolution/common/Material$Resource;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/miui/c/c;->setLocalPath(Ljava/lang/String;)V

    const-string/jumbo v4, "9.png"

    invoke-virtual {v0}, Lcom/miui/systemAdSolution/common/Material$Resource;->getExtra()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v3, v9}, Lcom/miui/c/c;->bzb(Z)V

    :cond_2
    :goto_2
    invoke-virtual {v3, v5}, Lcom/miui/c/c;->setLandingPageUrl(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/miui/c/b;->bcr:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/miui/systemAdSolution/common/Material$Resource;->getId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "ModuleResources"

    const-string/jumbo v2, "ModuleResource transform exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_3
    const-string/jumbo v4, "gif"

    invoke-virtual {v0}, Lcom/miui/systemAdSolution/common/Material$Resource;->getExtra()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3, v9}, Lcom/miui/c/c;->bza(Z)V

    goto :goto_2

    :cond_4
    return-void
.end method


# virtual methods
.method public byR()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/c/b;->bcq:Z

    return v0
.end method

.method public byS()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/c/b;->bcs:Ljava/lang/String;

    return-object v0
.end method

.method public byT()J
    .locals 2

    iget-wide v0, p0, Lcom/miui/c/b;->bcn:J

    return-wide v0
.end method

.method public byU()I
    .locals 1

    iget v0, p0, Lcom/miui/c/b;->bcm:I

    return v0
.end method

.method public byV()I
    .locals 1

    iget v0, p0, Lcom/miui/c/b;->bco:I

    return v0
.end method

.method public byW()I
    .locals 1

    iget v0, p0, Lcom/miui/c/b;->bct:I

    return v0
.end method

.method public byX()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/c/b;->bcp:Z

    return v0
.end method

.method public getResources()Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/miui/c/b;->bcr:Ljava/util/Map;

    return-object v0
.end method

.method public getSize()I
    .locals 1

    iget-object v0, p0, Lcom/miui/c/b;->bcr:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method
