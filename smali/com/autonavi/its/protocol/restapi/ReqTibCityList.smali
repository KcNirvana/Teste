.class public Lcom/autonavi/its/protocol/restapi/ReqTibCityList;
.super Lcom/autonavi/its/protocol/BaseRequest;
.source "ReqTibCityList.java"


# static fields
.field public static final TYPE:Ljava/lang/String; = "ReqTIBCityList"

.field public static final URL:Ljava/lang/String; = "https://restapi.amap.com/v3/infoboard/citylist?"


# instance fields
.field private mCities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/autonavi/its/protocol/model/City;",
            ">;"
        }
    .end annotation
.end field

.field private mMD5:Ljava/lang/String;

.field private mVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Lcom/autonavi/its/protocol/BaseRequest;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/autonavi/its/protocol/restapi/ReqTibCityList;->mCities:Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/autonavi/its/protocol/restapi/ReqTibCityList;->setUserKey(Ljava/lang/String;)V

    const-string/jumbo v0, "key"

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/restapi/ReqTibCityList;->getUserKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/autonavi/its/protocol/restapi/ReqTibCityList;->addParams(Ljava/lang/String;Ljava/lang/String;)Lcom/autonavi/its/protocol/BaseRequest;

    const-string/jumbo v0, "extensions"

    const-string/jumbo v1, "all"

    invoke-virtual {p0, v0, v1}, Lcom/autonavi/its/protocol/restapi/ReqTibCityList;->addParams(Ljava/lang/String;Ljava/lang/String;)Lcom/autonavi/its/protocol/BaseRequest;

    invoke-static {}, Lcom/autonavi/its/protocol/RequestManager;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "com.autonavi.its"

    const-string/jumbo v2, "2.5"

    invoke-static {v0, v1, v2}, Lcom/autonavi/its/common/restapi/APIUtil;->getHeader(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/autonavi/its/protocol/restapi/ReqTibCityList;->setHeader(Ljava/util/Map;)V

    return-void
.end method

.method private addCities(Lcom/autonavi/its/protocol/model/City;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/its/protocol/restapi/ReqTibCityList;->mCities:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private setMD5(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/its/protocol/restapi/ReqTibCityList;->mMD5:Ljava/lang/String;

    return-void
.end method

.method private setVersion(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/its/protocol/restapi/ReqTibCityList;->mVersion:Ljava/lang/String;

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
    invoke-virtual {p0, v6}, Lcom/autonavi/its/protocol/restapi/ReqTibCityList;->setIsBusinessSuccess(Z)V

    const-string/jumbo v6, "info"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/autonavi/its/protocol/restapi/ReqTibCityList;->setMsg(Ljava/lang/String;)V

    const-string/jumbo v6, "version"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/autonavi/its/protocol/restapi/ReqTibCityList;->setVersion(Ljava/lang/String;)V

    const-string/jumbo v6, "md5"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/autonavi/its/protocol/restapi/ReqTibCityList;->setMD5(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/restapi/ReqTibCityList;->isBusinessSuccess()Z

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

    invoke-static {v6}, Lcom/autonavi/its/protocol/model/City;->parser(Lorg/json/JSONObject;)Lcom/autonavi/its/protocol/model/City;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/autonavi/its/protocol/restapi/ReqTibCityList;->addCities(Lcom/autonavi/its/protocol/model/City;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    move v6, v7

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {p0, v1}, Lcom/autonavi/its/protocol/restapi/ReqTibCityList;->setException(Ljava/lang/Exception;)Lcom/autonavi/its/protocol/BaseRequest;

    invoke-virtual {p0, v7}, Lcom/autonavi/its/protocol/restapi/ReqTibCityList;->setIsBusinessSuccess(Z)V

    :cond_1
    return-void
.end method

.method public getCities()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/autonavi/its/protocol/model/City;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/autonavi/its/protocol/restapi/ReqTibCityList;->mCities:Ljava/util/List;

    return-object v0
.end method

.method public getMD5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/its/protocol/restapi/ReqTibCityList;->mMD5:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "ReqTIBCityList"

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "https://restapi.amap.com/v3/infoboard/citylist?"

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/its/protocol/restapi/ReqTibCityList;->mVersion:Ljava/lang/String;

    return-object v0
.end method
