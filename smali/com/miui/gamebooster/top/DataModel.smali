.class public Lcom/miui/gamebooster/top/DataModel;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private dataVersion:Ljava/lang/String;

.field private initSuccess:Z

.field private layoutId:Ljava/lang/String;

.field private models:Ljava/util/List;

.field private testKey:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gamebooster/top/DataModel;->models:Ljava/util/List;

    return-void
.end method

.method public static ta(Lorg/json/JSONObject;)Lcom/miui/gamebooster/top/DataModel;
    .locals 6

    const/4 v4, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    new-instance v2, Lcom/miui/gamebooster/top/DataModel;

    invoke-direct {v2}, Lcom/miui/gamebooster/top/DataModel;-><init>()V

    const-string/jumbo v3, "type"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/miui/gamebooster/top/DataModel;->type:Ljava/lang/String;

    const-string/jumbo v3, "dataVersion"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/miui/gamebooster/top/DataModel;->dataVersion:Ljava/lang/String;

    const-string/jumbo v3, "layoutId"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/miui/gamebooster/top/DataModel;->layoutId:Ljava/lang/String;

    const-string/jumbo v3, "status"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v0, :cond_0

    :goto_0
    iput-boolean v0, v2, Lcom/miui/gamebooster/top/DataModel;->initSuccess:Z

    const-string/jumbo v0, "tn"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/miui/gamebooster/top/DataModel;->testKey:Ljava/lang/String;

    const-string/jumbo v0, "data"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-nez v3, :cond_1

    return-object v4

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    :goto_1
    if-ge v1, v3, :cond_3

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string/jumbo v5, "list"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-static {v4, v2}, Lcom/miui/gamebooster/top/DataModel;->te(Lorg/json/JSONArray;Lcom/miui/gamebooster/top/DataModel;)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    new-instance v0, Lcom/miui/gamebooster/top/ButtomModel;

    invoke-direct {v0}, Lcom/miui/gamebooster/top/ButtomModel;-><init>()V

    invoke-direct {v2, v0}, Lcom/miui/gamebooster/top/DataModel;->tf(Lcom/miui/gamebooster/top/BaseModel;)V

    return-object v2
.end method

.method public static tb(Ljava/util/Map;)Ljava/lang/String;
    .locals 4

    if-nez p0, :cond_0

    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    :cond_0
    invoke-static {}, Lcom/miui/securitycenter/Application;->getInstance()Lcom/miui/securitycenter/Application;

    move-result-object v0

    const-string/jumbo v1, "tab"

    const-string/jumbo v2, "2"

    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "channel"

    const-string/jumbo v2, "01-9"

    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "deviceId"

    invoke-static {v0}, Lcom/miui/gamebooster/a/t;->gK(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const v2, 0x7f0705c6

    invoke-virtual {v0, v2}, Lcom/miui/securitycenter/Application;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    const/4 v0, 0x0

    if-nez v0, :cond_2

    const-string/jumbo v0, "setting"

    const-string/jumbo v1, "2"

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    const-string/jumbo v0, "https://adv.sec.miui.com/info/layout"

    sget-object v1, Lcom/miui/securityscan/utils/NetUtil$HttpMethod;->Jf:Lcom/miui/securityscan/utils/NetUtil$HttpMethod;

    const-string/jumbo v2, "2dcd9s0c-ad3f-2fas-0l3a-abzo301jd0s9"

    invoke-static {p0, v0, v1, v2}, Lcom/miui/securityscan/utils/k;->Jh(Ljava/util/Map;Ljava/lang/String;Lcom/miui/securityscan/utils/NetUtil$HttpMethod;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    if-eqz v2, :cond_1

    const-string/jumbo v0, "setting"

    const-string/jumbo v1, "1"

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private static te(Lorg/json/JSONArray;Lcom/miui/gamebooster/top/DataModel;)V
    .locals 6

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string/jumbo v3, "type"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "data"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string/jumbo v4, "013"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v3, v0, 0x1

    new-instance v4, Lcom/miui/gamebooster/top/GameModel;

    sget-object v5, Lcom/miui/gamebooster/top/BaseModel$CardType;->re:Lcom/miui/gamebooster/top/BaseModel$CardType;

    invoke-direct {v4, v5, v2, v3}, Lcom/miui/gamebooster/top/GameModel;-><init>(Lcom/miui/gamebooster/top/BaseModel$CardType;Lorg/json/JSONObject;I)V

    if-eqz v4, :cond_0

    invoke-direct {p1, v4}, Lcom/miui/gamebooster/top/DataModel;->tf(Lcom/miui/gamebooster/top/BaseModel;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private tf(Lcom/miui/gamebooster/top/BaseModel;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/top/DataModel;->testKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/miui/gamebooster/top/BaseModel;->sX(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/gamebooster/top/DataModel;->models:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public tc()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/top/DataModel;->models:Ljava/util/List;

    return-object v0
.end method

.method public td()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/gamebooster/top/DataModel;->initSuccess:Z

    return v0
.end method
