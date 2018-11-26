.class public Lcom/miui/appmanager/model/AMDataModel;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static models:Ljava/util/List;


# instance fields
.field private channel:Ljava/lang/String;

.field private dataVersion:Ljava/lang/String;

.field private forceRefresh:Z

.field private isAllAds:Z

.field private layoutFormat:Ljava/lang/String;

.field private layoutId:Ljava/lang/String;

.field private status:I

.field private tn:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/miui/appmanager/model/AMDataModel;->models:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bhG(Landroid/content/Context;Ljava/util/Map;)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    :cond_0
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "channel"

    const-string/jumbo v1, "02-15"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    new-instance v0, Lcom/miui/appmanager/i;

    invoke-direct {v0, p0}, Lcom/miui/appmanager/i;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/miui/appmanager/i;->bmg()Z

    move-result v0

    const-string/jumbo v1, "setting"

    if-eqz v0, :cond_2

    const-string/jumbo v0, "3"

    :goto_1
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/securityscan/b/a;->Jn:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/miui/securityscan/utils/k;->Jf(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const-string/jumbo v0, "channel"

    const-string/jumbo v1, "01-15"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "2"

    goto :goto_1
.end method

.method private static bhH(Lcom/miui/appmanager/model/k;)V
    .locals 1

    if-eqz p0, :cond_0

    sget-object v0, Lcom/miui/appmanager/model/AMDataModel;->models:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public static bhI(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/Boolean;)Lcom/miui/appmanager/model/AMDataModel;
    .locals 6

    const/4 v5, 0x0

    sget-object v0, Lcom/miui/appmanager/model/AMDataModel;->models:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    new-instance v1, Lcom/miui/appmanager/model/AMDataModel;

    invoke-direct {v1}, Lcom/miui/appmanager/model/AMDataModel;-><init>()V

    const-string/jumbo v0, "channel"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/miui/appmanager/model/AMDataModel;->channel:Ljava/lang/String;

    const-string/jumbo v0, "dataVersion"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/miui/appmanager/model/AMDataModel;->dataVersion:Ljava/lang/String;

    const-string/jumbo v0, "layoutId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/miui/appmanager/model/AMDataModel;->layoutId:Ljava/lang/String;

    const-string/jumbo v0, "tn"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/miui/appmanager/model/AMDataModel;->tn:Ljava/lang/String;

    const-string/jumbo v0, "status"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/miui/appmanager/model/AMDataModel;->status:I

    const-string/jumbo v0, "forceRefresh"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v1, Lcom/miui/appmanager/model/AMDataModel;->forceRefresh:Z

    const-string/jumbo v0, "layoutFormat"

    const-string/jumbo v2, "1,0"

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/miui/appmanager/model/AMDataModel;->layoutFormat:Ljava/lang/String;

    const-string/jumbo v0, "data"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_0

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    iget-object v4, v1, Lcom/miui/appmanager/model/AMDataModel;->layoutFormat:Ljava/lang/String;

    invoke-static {v5, v3, v4, p2}, Lcom/miui/appmanager/model/AMDataModel;->bhL(Lcom/miui/appmanager/model/c;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Boolean;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private static bhL(Lcom/miui/appmanager/model/c;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 4

    const/4 v0, 0x0

    const-string/jumbo v1, "rowType"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "item"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string/jumbo v0, "type"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "template"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    const-string/jumbo v2, "data"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string/jumbo v3, "001"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v0, 0x271e

    if-ne v0, v1, :cond_1

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/miui/appmanager/j;->bmr(I)Lcom/miui/appmanager/model/s;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/miui/appmanager/model/AMDataModel;->bhH(Lcom/miui/appmanager/model/k;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/miui/appmanager/model/a;

    const v1, 0x7f03001e

    invoke-direct {v0, v1, v2, p2}, Lcom/miui/appmanager/model/a;-><init>(ILorg/json/JSONObject;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/miui/appmanager/model/AMDataModel;->bhH(Lcom/miui/appmanager/model/k;)V

    if-eqz p0, :cond_0

    invoke-virtual {p0, v0}, Lcom/miui/appmanager/model/c;->bgV(Lcom/miui/appmanager/model/k;)V

    goto :goto_0

    :cond_2
    const-string/jumbo v1, "005"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/miui/appmanager/model/e;

    invoke-direct {v0}, Lcom/miui/appmanager/model/e;-><init>()V

    invoke-static {v0}, Lcom/miui/appmanager/model/AMDataModel;->bhH(Lcom/miui/appmanager/model/k;)V

    goto :goto_0

    :cond_3
    const-string/jumbo v1, "card"

    const-string/jumbo v2, "rowType"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "list"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    new-instance v2, Lcom/miui/appmanager/model/c;

    invoke-direct {v2, p1}, Lcom/miui/appmanager/model/c;-><init>(Lorg/json/JSONObject;)V

    if-eqz v2, :cond_4

    invoke-static {v2}, Lcom/miui/appmanager/model/AMDataModel;->bhH(Lcom/miui/appmanager/model/k;)V

    :cond_4
    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_0

    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_0

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v2, v3, p2, p3}, Lcom/miui/appmanager/model/AMDataModel;->bhL(Lcom/miui/appmanager/model/c;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Boolean;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method


# virtual methods
.method public bhJ()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/appmanager/model/AMDataModel;->dataVersion:Ljava/lang/String;

    return-object v0
.end method

.method public bhK()Ljava/util/ArrayList;
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/miui/appmanager/model/AMDataModel;->models:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method
