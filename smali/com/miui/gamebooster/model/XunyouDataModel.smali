.class public Lcom/miui/gamebooster/model/XunyouDataModel;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private models:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gamebooster/model/XunyouDataModel;->models:Ljava/util/List;

    return-void
.end method

.method private static mF(Lorg/json/JSONArray;Lcom/miui/gamebooster/model/XunyouDataModel;)V
    .locals 4

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    new-instance v3, Lcom/miui/gamebooster/model/b;

    invoke-direct {v3, v2}, Lcom/miui/gamebooster/model/b;-><init>(Lorg/json/JSONObject;)V

    if-eqz v3, :cond_0

    invoke-direct {p1, v3}, Lcom/miui/gamebooster/model/XunyouDataModel;->mG(Lcom/miui/gamebooster/model/b;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private mG(Lcom/miui/gamebooster/model/b;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/model/XunyouDataModel;->models:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public static mH(Lorg/json/JSONObject;)Lcom/miui/gamebooster/model/XunyouDataModel;
    .locals 3

    new-instance v0, Lcom/miui/gamebooster/model/XunyouDataModel;

    invoke-direct {v0}, Lcom/miui/gamebooster/model/XunyouDataModel;-><init>()V

    const-string/jumbo v1, "activities"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v0, "gb_notification_business_period"

    const/16 v1, 0x270f

    invoke-static {v0, v1}, Lcom/miui/common/persistence/a;->aMR(Ljava/lang/String;I)V

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-static {v1, v0}, Lcom/miui/gamebooster/model/XunyouDataModel;->mF(Lorg/json/JSONArray;Lcom/miui/gamebooster/model/XunyouDataModel;)V

    return-object v0
.end method

.method public static mJ(Ljava/util/Map;Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string/jumbo v0, "userId"

    invoke-static {p1}, Lcom/miui/applicationlock/utils/b;->adV(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-nez p0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object p0, v0

    :cond_0
    const-string/jumbo v0, "param"

    new-instance v2, Ljava/lang/String;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "UTF-8"

    invoke-virtual {v1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    const/4 v3, 0x2

    invoke-static {v1, v3}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v1

    const-string/jumbo v3, "UTF-8"

    invoke-direct {v2, v1, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-interface {p0, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string/jumbo v0, "https://api.miui.security.xiaomi.com/game/queryXunYouActivityList"

    sget-object v1, Lcom/miui/securityscan/utils/NetUtil$HttpMethod;->Jf:Lcom/miui/securityscan/utils/NetUtil$HttpMethod;

    const-string/jumbo v2, "22bcec80-cb42-4fd3-b220-45630fc37259"

    invoke-static {p0, v0, v1, v2}, Lcom/miui/securityscan/utils/k;->Jh(Ljava/util/Map;Ljava/lang/String;Lcom/miui/securityscan/utils/NetUtil$HttpMethod;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "NetUtils"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public mI()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/model/XunyouDataModel;->models:Ljava/util/List;

    return-object v0
.end method
