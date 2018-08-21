.class public Lcom/autonavi/its/protocol/restapi/ReqTibConfig;
.super Lcom/autonavi/its/protocol/BaseRequest;
.source "ReqTibConfig.java"


# static fields
.field public static final DATA_TYPE_DETAIL:I = 0x2

.field public static final DATA_TYPE_NORMAL:I = 0x1

.field public static final TYPE:Ljava/lang/String; = "ReqTibConfig"

.field private static final URL:Ljava/lang/String; = "https://restapi.amap.com/v3/infoboard/config?"


# instance fields
.field private mCityCode:[Ljava/lang/String;

.field private mTibConfigCities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/autonavi/its/protocol/model/tib/TibConfigCity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public varargs constructor <init>(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/autonavi/its/protocol/BaseRequest;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/autonavi/its/protocol/restapi/ReqTibConfig;->mTibConfigCities:Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/autonavi/its/protocol/restapi/ReqTibConfig;->setUserKey(Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/autonavi/its/protocol/restapi/ReqTibConfig;->setCityCode([Ljava/lang/String;)V

    const-string/jumbo v3, "key"

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/restapi/ReqTibConfig;->getUserKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/autonavi/its/protocol/restapi/ReqTibConfig;->addParams(Ljava/lang/String;Ljava/lang/String;)Lcom/autonavi/its/protocol/BaseRequest;

    invoke-direct {p0}, Lcom/autonavi/its/protocol/restapi/ReqTibConfig;->getCityCode()[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    array-length v1, p2

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    aget-object v3, p2, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v3, v1, -0x1

    if-eq v0, v3, :cond_0

    const-string/jumbo v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const-string/jumbo v3, "adcodes"

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/autonavi/its/protocol/restapi/ReqTibConfig;->addParams(Ljava/lang/String;Ljava/lang/String;)Lcom/autonavi/its/protocol/BaseRequest;

    const-string/jumbo v3, "extensions"

    const-string/jumbo v4, "all"

    invoke-virtual {p0, v3, v4}, Lcom/autonavi/its/protocol/restapi/ReqTibConfig;->addParams(Ljava/lang/String;Ljava/lang/String;)Lcom/autonavi/its/protocol/BaseRequest;

    :cond_2
    invoke-static {}, Lcom/autonavi/its/protocol/RequestManager;->getAppContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "com.autonavi.its"

    const-string/jumbo v5, "2.5"

    invoke-static {v3, v4, v5}, Lcom/autonavi/its/common/restapi/APIUtil;->getHeader(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/autonavi/its/protocol/restapi/ReqTibConfig;->setHeader(Ljava/util/Map;)V

    return-void
.end method

.method private addTibConfigCity(Lcom/autonavi/its/protocol/model/tib/TibConfigCity;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/its/protocol/restapi/ReqTibConfig;->mTibConfigCities:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private getCityCode()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/its/protocol/restapi/ReqTibConfig;->mCityCode:[Ljava/lang/String;

    return-object v0
.end method

.method private setCityCode([Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/its/protocol/restapi/ReqTibConfig;->mCityCode:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public dealBusinessData(Ljava/lang/String;)V
    .locals 10

    const/4 v6, 0x1

    const/4 v7, 0x0

    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v8, "status"

    const/4 v9, 0x0

    invoke-virtual {v4, v8, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v6, :cond_0

    :goto_0
    invoke-virtual {p0, v6}, Lcom/autonavi/its/protocol/restapi/ReqTibConfig;->setIsBusinessSuccess(Z)V

    const-string/jumbo v6, "info"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/autonavi/its/protocol/restapi/ReqTibConfig;->setMsg(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/restapi/ReqTibConfig;->isBusinessSuccess()Z

    move-result v6

    if-eqz v6, :cond_1

    const-string/jumbo v6, "cities"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-lez v6, :cond_1

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v5, :cond_1

    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    invoke-static {v6}, Lcom/autonavi/its/protocol/model/tib/TibConfigCity;->parser(Lorg/json/JSONObject;)Lcom/autonavi/its/protocol/model/tib/TibConfigCity;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/autonavi/its/protocol/restapi/ReqTibConfig;->addTibConfigCity(Lcom/autonavi/its/protocol/model/tib/TibConfigCity;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    move v6, v7

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {p0, v1}, Lcom/autonavi/its/protocol/restapi/ReqTibConfig;->setException(Ljava/lang/Exception;)Lcom/autonavi/its/protocol/BaseRequest;

    invoke-virtual {p0, v7}, Lcom/autonavi/its/protocol/restapi/ReqTibConfig;->setIsBusinessSuccess(Z)V

    :cond_1
    return-void
.end method

.method public getTibConfigCities()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/autonavi/its/protocol/model/tib/TibConfigCity;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/autonavi/its/protocol/restapi/ReqTibConfig;->mTibConfigCities:Ljava/util/List;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "ReqTibConfig"

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "https://restapi.amap.com/v3/infoboard/config?"

    return-object v0
.end method
