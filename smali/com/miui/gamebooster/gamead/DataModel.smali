.class public Lcom/miui/gamebooster/gamead/DataModel;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0xaab6d97e45946f5L


# instance fields
.field private bigImage:Z

.field private dataVersion:Ljava/lang/String;

.field private initSuccess:Z

.field private isDiversion:Z

.field private isGameWall:Z

.field private layoutFormat:Ljava/lang/String;

.field private layoutId:Ljava/lang/String;

.field private models:Ljava/util/List;

.field private testKey:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gamebooster/gamead/DataModel;->models:Ljava/util/List;

    iput-boolean v1, p0, Lcom/miui/gamebooster/gamead/DataModel;->isDiversion:Z

    iput-boolean v1, p0, Lcom/miui/gamebooster/gamead/DataModel;->bigImage:Z

    iput-boolean v1, p0, Lcom/miui/gamebooster/gamead/DataModel;->isGameWall:Z

    return-void
.end method

.method private static lD(Lorg/json/JSONArray;Lcom/miui/gamebooster/gamead/DataModel;ZLjava/lang/String;)V
    .locals 10

    const/4 v9, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v0, v2

    :goto_0
    if-ge v0, v1, :cond_6

    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string/jumbo v6, "type"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "data"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    const-string/jumbo v8, "001"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string/jumbo v8, "0010"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    :cond_0
    if-nez v0, :cond_2

    const-string/jumbo v6, "template"

    invoke-virtual {v7, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    const/16 v8, 0x46

    if-ne v6, v8, :cond_2

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_1

    const-string/jumbo v6, "template"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    const/16 v6, 0x15

    if-ne v5, v6, :cond_1

    invoke-static {v7, p3}, Lcom/miui/gamebooster/gamead/Advertisement;->kF(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/miui/gamebooster/gamead/Advertisement;

    move-result-object v5

    if-eqz v5, :cond_1

    iget-object v6, p1, Lcom/miui/gamebooster/gamead/DataModel;->layoutId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/miui/gamebooster/gamead/Advertisement;->setTestId(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    const-string/jumbo v8, "002"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    if-eqz p2, :cond_1

    invoke-static {v7}, Lcom/miui/gamebooster/gamead/InternalAdWall;->md(Lorg/json/JSONObject;)Lcom/miui/gamebooster/gamead/InternalAdWall;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-direct {p1, v5}, Lcom/miui/gamebooster/gamead/DataModel;->lE(Lcom/miui/gamebooster/gamead/BaseModel;)V

    :cond_4
    invoke-virtual {p1, v9}, Lcom/miui/gamebooster/gamead/DataModel;->lM(Z)V

    goto :goto_1

    :cond_5
    const-string/jumbo v7, "010"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string/jumbo v6, "viewpoints"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-eqz v6, :cond_1

    invoke-static {v5, p1, v4}, Lcom/miui/gamebooster/gamead/DataModel;->lK(Lorg/json/JSONArray;Lcom/miui/gamebooster/gamead/DataModel;Ljava/util/ArrayList;)V

    new-instance v5, Lcom/miui/gamebooster/gamead/ButtomModel;

    invoke-direct {v5}, Lcom/miui/gamebooster/gamead/ButtomModel;-><init>()V

    invoke-direct {p1, v5}, Lcom/miui/gamebooster/gamead/DataModel;->lE(Lcom/miui/gamebooster/gamead/BaseModel;)V

    goto :goto_1

    :cond_6
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_9

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_9

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/gamead/Advertisement;

    invoke-virtual {v0}, Lcom/miui/gamebooster/gamead/Advertisement;->kH()I

    move-result v1

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-gt v1, v5, :cond_7

    invoke-virtual {v0}, Lcom/miui/gamebooster/gamead/Advertisement;->kH()I

    move-result v1

    if-ge v1, v9, :cond_8

    :cond_7
    invoke-direct {p1, v0, v2}, Lcom/miui/gamebooster/gamead/DataModel;->lF(Lcom/miui/gamebooster/gamead/BaseModel;I)V

    goto :goto_2

    :cond_8
    invoke-virtual {v0}, Lcom/miui/gamebooster/gamead/Advertisement;->kH()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p1, v0, v1}, Lcom/miui/gamebooster/gamead/DataModel;->lF(Lcom/miui/gamebooster/gamead/BaseModel;I)V

    goto :goto_2

    :cond_9
    return-void
.end method

.method private lE(Lcom/miui/gamebooster/gamead/BaseModel;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/gamead/DataModel;->testKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/miui/gamebooster/gamead/BaseModel;->ls(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/gamebooster/gamead/DataModel;->models:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private lF(Lcom/miui/gamebooster/gamead/BaseModel;I)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, -0x1

    if-le p2, v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/gamead/DataModel;->testKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/miui/gamebooster/gamead/BaseModel;->ls(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/gamebooster/gamead/DataModel;->models:Ljava/util/List;

    invoke-interface {v0, p2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static lG(Lorg/json/JSONObject;Z)Lcom/miui/gamebooster/gamead/DataModel;
    .locals 5

    const/4 v4, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    new-instance v2, Lcom/miui/gamebooster/gamead/DataModel;

    invoke-direct {v2}, Lcom/miui/gamebooster/gamead/DataModel;-><init>()V

    const-string/jumbo v3, "type"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/miui/gamebooster/gamead/DataModel;->type:Ljava/lang/String;

    const-string/jumbo v3, "dataVersion"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/miui/gamebooster/gamead/DataModel;->dataVersion:Ljava/lang/String;

    const-string/jumbo v3, "layoutId"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/miui/gamebooster/gamead/DataModel;->layoutId:Ljava/lang/String;

    const-string/jumbo v3, "status"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v0, :cond_1

    :goto_0
    iput-boolean v0, v2, Lcom/miui/gamebooster/gamead/DataModel;->initSuccess:Z

    const-string/jumbo v0, "tn"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/miui/gamebooster/gamead/DataModel;->testKey:Ljava/lang/String;

    const-string/jumbo v0, "layoutFormat"

    const-string/jumbo v1, "1,0"

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/miui/gamebooster/gamead/DataModel;->layoutFormat:Ljava/lang/String;

    const-string/jumbo v0, "data"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    return-object v4

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v1, v2, Lcom/miui/gamebooster/gamead/DataModel;->layoutFormat:Ljava/lang/String;

    invoke-static {v0, v2, p1, v1}, Lcom/miui/gamebooster/gamead/DataModel;->lD(Lorg/json/JSONArray;Lcom/miui/gamebooster/gamead/DataModel;ZLjava/lang/String;)V

    return-object v2
.end method

.method private static lK(Lorg/json/JSONArray;Lcom/miui/gamebooster/gamead/DataModel;Ljava/util/ArrayList;)V
    .locals 7

    const/4 v1, 0x0

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    move v0, v1

    :goto_0
    if-ge v0, v2, :cond_4

    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v3}, Lcom/miui/gamebooster/gamead/ViewpointInfo;->lr(Lorg/json/JSONObject;)Lcom/miui/gamebooster/gamead/ViewpointInfo;

    move-result-object v3

    if-eqz v3, :cond_0

    const-string/jumbo v4, ""

    invoke-virtual {v3}, Lcom/miui/gamebooster/gamead/ViewpointInfo;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Lcom/miui/gamebooster/gamead/ViewpointInfo;->lo()Z

    move-result v4

    if-eqz v4, :cond_3

    new-instance v4, Lcom/miui/gamebooster/gamead/ViewPointVideoModel;

    invoke-direct {v4, v3}, Lcom/miui/gamebooster/gamead/ViewPointVideoModel;-><init>(Lcom/miui/gamebooster/gamead/ViewpointInfo;)V

    invoke-direct {p1, v4}, Lcom/miui/gamebooster/gamead/DataModel;->lE(Lcom/miui/gamebooster/gamead/BaseModel;)V

    :cond_2
    :goto_2
    new-instance v4, Lcom/miui/gamebooster/gamead/ViewPointMutiButtomModel;

    new-instance v5, Lcom/miui/gamebooster/gamead/ViewPointGameModel;

    invoke-direct {v5, v3}, Lcom/miui/gamebooster/gamead/ViewPointGameModel;-><init>(Lcom/miui/gamebooster/gamead/ViewpointInfo;)V

    new-instance v6, Lcom/miui/gamebooster/gamead/ViewPointCountModel;

    invoke-direct {v6, v3}, Lcom/miui/gamebooster/gamead/ViewPointCountModel;-><init>(Lcom/miui/gamebooster/gamead/ViewpointInfo;)V

    invoke-direct {v4, v5, v6}, Lcom/miui/gamebooster/gamead/ViewPointMutiButtomModel;-><init>(Lcom/miui/gamebooster/gamead/ViewPointGameModel;Lcom/miui/gamebooster/gamead/ViewPointCountModel;)V

    invoke-direct {p1, v4}, Lcom/miui/gamebooster/gamead/DataModel;->lE(Lcom/miui/gamebooster/gamead/BaseModel;)V

    invoke-virtual {p1}, Lcom/miui/gamebooster/gamead/DataModel;->lH()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    new-instance v4, Lcom/miui/gamebooster/gamead/ViewPointCommentInfoModel;

    invoke-direct {v4, v3, v1}, Lcom/miui/gamebooster/gamead/ViewPointCommentInfoModel;-><init>(Lcom/miui/gamebooster/gamead/ViewpointInfo;Z)V

    invoke-direct {p1, v4}, Lcom/miui/gamebooster/gamead/DataModel;->lE(Lcom/miui/gamebooster/gamead/BaseModel;)V

    invoke-virtual {v3}, Lcom/miui/gamebooster/gamead/ViewpointInfo;->kV()Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v4, Lcom/miui/gamebooster/gamead/ViewPointPicModel;

    invoke-direct {v4, v3}, Lcom/miui/gamebooster/gamead/ViewPointPicModel;-><init>(Lcom/miui/gamebooster/gamead/ViewpointInfo;)V

    invoke-direct {p1, v4}, Lcom/miui/gamebooster/gamead/DataModel;->lE(Lcom/miui/gamebooster/gamead/BaseModel;)V

    goto :goto_2

    :cond_4
    return-void
.end method

.method public static lL(Ljava/util/Map;)Ljava/lang/String;
    .locals 6

    if-nez p0, :cond_0

    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    :cond_0
    invoke-static {}, Lcom/miui/securitycenter/Application;->getInstance()Lcom/miui/securitycenter/Application;

    move-result-object v1

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "https://adv.sec.intl.miui.com/info/layout"

    const-string/jumbo v2, "channel"

    const-string/jumbo v3, "02-18"

    invoke-interface {p0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "deviceId"

    invoke-static {v1}, Lcom/miui/antivirus/a/b;->azk(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    invoke-static {}, Lcom/miui/securityscan/c;->Ov()Z

    move-result v1

    invoke-static {}, Lcom/miui/securityscan/c;->Op()Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v1, "setting"

    const-string/jumbo v2, "2"

    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    invoke-static {p0, v0}, Lcom/miui/securityscan/utils/k;->Jf(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const-string/jumbo v0, "https://adv.sec.miui.com/info/layout"

    const-string/jumbo v2, "gb_added_games"

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v2, v3}, Lcom/miui/common/persistence/a;->aMO(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v2

    const/16 v3, 0x2c

    const-string/jumbo v4, "channel"

    const-string/jumbo v5, "01-18-01"

    invoke-interface {p0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v4, "deviceId"

    invoke-static {v1}, Lcom/miui/antivirus/a/b;->azk(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "packageNames"

    invoke-static {v2, v3}, Lcom/miui/gamebooster/a/r;->gl(Ljava/util/List;C)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    const-string/jumbo v1, "setting"

    const-string/jumbo v2, "1"

    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    const-string/jumbo v1, "setting"

    const-string/jumbo v2, "3"

    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method


# virtual methods
.method public lH()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/gamead/DataModel;->models:Ljava/util/List;

    return-object v0
.end method

.method public lI()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/gamebooster/gamead/DataModel;->isGameWall:Z

    return v0
.end method

.method public lJ()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/gamebooster/gamead/DataModel;->initSuccess:Z

    return v0
.end method

.method public lM(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/gamebooster/gamead/DataModel;->isGameWall:Z

    return-void
.end method
