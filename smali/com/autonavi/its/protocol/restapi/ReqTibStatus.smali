.class public Lcom/autonavi/its/protocol/restapi/ReqTibStatus;
.super Lcom/autonavi/its/protocol/BaseRequest;
.source "ReqTibStatus.java"


# static fields
.field public static final TYPE:Ljava/lang/String; = "ReqTibStatus"

.field private static final URL:Ljava/lang/String; = "https://restapi.amap.com/v3/infoboard/status?"


# instance fields
.field private mCityCode:Ljava/lang/String;

.field private mPanelId:Ljava/lang/String;

.field private mStatusDescription:Ljava/lang/String;

.field private mTime:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Lcom/autonavi/its/protocol/BaseRequest;-><init>()V

    invoke-virtual {p0, p1}, Lcom/autonavi/its/protocol/restapi/ReqTibStatus;->setUserKey(Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/autonavi/its/protocol/restapi/ReqTibStatus;->setPanelId(Ljava/lang/String;)V

    invoke-direct {p0, p3}, Lcom/autonavi/its/protocol/restapi/ReqTibStatus;->setCityCode(Ljava/lang/String;)V

    const-string/jumbo v0, "key"

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/restapi/ReqTibStatus;->getUserKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/autonavi/its/protocol/restapi/ReqTibStatus;->addParams(Ljava/lang/String;Ljava/lang/String;)Lcom/autonavi/its/protocol/BaseRequest;

    const-string/jumbo v0, "panelid"

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/restapi/ReqTibStatus;->getPanelId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/autonavi/its/protocol/restapi/ReqTibStatus;->addParams(Ljava/lang/String;Ljava/lang/String;)Lcom/autonavi/its/protocol/BaseRequest;

    const-string/jumbo v0, "adcode"

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/restapi/ReqTibStatus;->getCityCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/autonavi/its/protocol/restapi/ReqTibStatus;->addParams(Ljava/lang/String;Ljava/lang/String;)Lcom/autonavi/its/protocol/BaseRequest;

    invoke-static {}, Lcom/autonavi/its/protocol/RequestManager;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "com.autonavi.its"

    const-string/jumbo v2, "2.5"

    invoke-static {v0, v1, v2}, Lcom/autonavi/its/common/restapi/APIUtil;->getHeader(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/autonavi/its/protocol/restapi/ReqTibStatus;->setHeader(Ljava/util/Map;)V

    return-void
.end method

.method private setCityCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/its/protocol/restapi/ReqTibStatus;->mCityCode:Ljava/lang/String;

    return-void
.end method

.method private setPanelId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/its/protocol/restapi/ReqTibStatus;->mPanelId:Ljava/lang/String;

    return-void
.end method

.method private setStatusDescription(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/its/protocol/restapi/ReqTibStatus;->mStatusDescription:Ljava/lang/String;

    return-void
.end method

.method private setTime(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/its/protocol/restapi/ReqTibStatus;->mTime:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public dealBusinessData(Ljava/lang/String;)V
    .locals 7

    const/4 v3, 0x1

    const/4 v4, 0x0

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v5, "status"

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_1

    :goto_0
    invoke-virtual {p0, v3}, Lcom/autonavi/its/protocol/restapi/ReqTibStatus;->setIsBusinessSuccess(Z)V

    const-string/jumbo v3, "info"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/autonavi/its/protocol/restapi/ReqTibStatus;->setMsg(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/restapi/ReqTibStatus;->isBusinessSuccess()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "time"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/autonavi/its/protocol/restapi/ReqTibStatus;->setTime(Ljava/lang/String;)V

    const-string/jumbo v3, "description"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/autonavi/its/protocol/restapi/ReqTibStatus;->setStatusDescription(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    return-void

    :cond_1
    move v3, v4

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {p0, v1}, Lcom/autonavi/its/protocol/restapi/ReqTibStatus;->setException(Ljava/lang/Exception;)Lcom/autonavi/its/protocol/BaseRequest;

    invoke-virtual {p0, v4}, Lcom/autonavi/its/protocol/restapi/ReqTibStatus;->setIsBusinessSuccess(Z)V

    goto :goto_1
.end method

.method public getCityCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/its/protocol/restapi/ReqTibStatus;->mCityCode:Ljava/lang/String;

    return-object v0
.end method

.method public getPanelId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/its/protocol/restapi/ReqTibStatus;->mPanelId:Ljava/lang/String;

    return-object v0
.end method

.method public getStatusDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/its/protocol/restapi/ReqTibStatus;->mStatusDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getTime()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/its/protocol/restapi/ReqTibStatus;->mTime:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "ReqTibStatus"

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "https://restapi.amap.com/v3/infoboard/status?"

    return-object v0
.end method
