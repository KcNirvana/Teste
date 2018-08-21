.class public Lcom/autonavi/its/protocol/restapi/ReqDirectionBicycling;
.super Lcom/autonavi/its/protocol/BaseRequest;
.source "ReqDirectionBicycling.java"


# static fields
.field public static final TYPE:Ljava/lang/String; = "ReqDirectionBicycling"

.field private static final URL:Ljava/lang/String; = "https://restapi.amap.com/v4/direction/bicycling?"


# instance fields
.field private mEndPoint:Lcom/autonavi/its/protocol/model/Coordinate;

.field private mRoute:Lcom/autonavi/its/protocol/model/direction/BRoute;

.field private mStartPoint:Lcom/autonavi/its/protocol/model/Coordinate;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/autonavi/its/protocol/model/Coordinate;Lcom/autonavi/its/protocol/model/Coordinate;)V
    .locals 3

    invoke-direct {p0}, Lcom/autonavi/its/protocol/BaseRequest;-><init>()V

    invoke-virtual {p0, p1}, Lcom/autonavi/its/protocol/restapi/ReqDirectionBicycling;->setUserKey(Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/autonavi/its/protocol/restapi/ReqDirectionBicycling;->setStartPoint(Lcom/autonavi/its/protocol/model/Coordinate;)V

    invoke-direct {p0, p3}, Lcom/autonavi/its/protocol/restapi/ReqDirectionBicycling;->setEndPoint(Lcom/autonavi/its/protocol/model/Coordinate;)V

    const-string/jumbo v0, "key"

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/restapi/ReqDirectionBicycling;->getUserKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/autonavi/its/protocol/restapi/ReqDirectionBicycling;->addParams(Ljava/lang/String;Ljava/lang/String;)Lcom/autonavi/its/protocol/BaseRequest;

    const-string/jumbo v0, "origin"

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/restapi/ReqDirectionBicycling;->getStartPoint()Lcom/autonavi/its/protocol/model/Coordinate;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autonavi/its/protocol/model/Coordinate;->getProtocolString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/autonavi/its/protocol/restapi/ReqDirectionBicycling;->addParams(Ljava/lang/String;Ljava/lang/String;)Lcom/autonavi/its/protocol/BaseRequest;

    const-string/jumbo v0, "destination"

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/restapi/ReqDirectionBicycling;->getEndPoint()Lcom/autonavi/its/protocol/model/Coordinate;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autonavi/its/protocol/model/Coordinate;->getProtocolString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/autonavi/its/protocol/restapi/ReqDirectionBicycling;->addParams(Ljava/lang/String;Ljava/lang/String;)Lcom/autonavi/its/protocol/BaseRequest;

    invoke-static {}, Lcom/autonavi/its/protocol/RequestManager;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "com.autonavi.its"

    const-string/jumbo v2, "2.5"

    invoke-static {v0, v1, v2}, Lcom/autonavi/its/common/restapi/APIUtil;->getHeader(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/autonavi/its/protocol/restapi/ReqDirectionBicycling;->setHeader(Ljava/util/Map;)V

    return-void
.end method

.method private setEndPoint(Lcom/autonavi/its/protocol/model/Coordinate;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/its/protocol/restapi/ReqDirectionBicycling;->mEndPoint:Lcom/autonavi/its/protocol/model/Coordinate;

    return-void
.end method

.method private setRoute(Lcom/autonavi/its/protocol/model/direction/BRoute;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/its/protocol/restapi/ReqDirectionBicycling;->mRoute:Lcom/autonavi/its/protocol/model/direction/BRoute;

    return-void
.end method

.method private setStartPoint(Lcom/autonavi/its/protocol/model/Coordinate;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/its/protocol/restapi/ReqDirectionBicycling;->mStartPoint:Lcom/autonavi/its/protocol/model/Coordinate;

    return-void
.end method


# virtual methods
.method public dealBusinessData(Ljava/lang/String;)V
    .locals 5

    const/4 v3, 0x0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "errcode"

    const/4 v4, -0x1

    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/autonavi/its/protocol/restapi/ReqDirectionBicycling;->setCode(I)V

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/restapi/ReqDirectionBicycling;->getCode()I

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {p0, v2}, Lcom/autonavi/its/protocol/restapi/ReqDirectionBicycling;->setIsBusinessSuccess(Z)V

    const-string/jumbo v2, "errmsg"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/autonavi/its/protocol/restapi/ReqDirectionBicycling;->setMsg(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/restapi/ReqDirectionBicycling;->isBusinessSuccess()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "data"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2}, Lcom/autonavi/its/protocol/model/direction/BRoute;->parser(Lorg/json/JSONObject;)Lcom/autonavi/its/protocol/model/direction/BRoute;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/autonavi/its/protocol/restapi/ReqDirectionBicycling;->setRoute(Lcom/autonavi/its/protocol/model/direction/BRoute;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    return-void

    :cond_1
    move v2, v3

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Lcom/autonavi/its/protocol/restapi/ReqDirectionBicycling;->setException(Ljava/lang/Exception;)Lcom/autonavi/its/protocol/BaseRequest;

    invoke-virtual {p0, v3}, Lcom/autonavi/its/protocol/restapi/ReqDirectionBicycling;->setIsBusinessSuccess(Z)V

    goto :goto_1
.end method

.method public getEndPoint()Lcom/autonavi/its/protocol/model/Coordinate;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/its/protocol/restapi/ReqDirectionBicycling;->mEndPoint:Lcom/autonavi/its/protocol/model/Coordinate;

    return-object v0
.end method

.method public getRoute()Lcom/autonavi/its/protocol/model/direction/BRoute;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/its/protocol/restapi/ReqDirectionBicycling;->mRoute:Lcom/autonavi/its/protocol/model/direction/BRoute;

    return-object v0
.end method

.method public getStartPoint()Lcom/autonavi/its/protocol/model/Coordinate;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/its/protocol/restapi/ReqDirectionBicycling;->mStartPoint:Lcom/autonavi/its/protocol/model/Coordinate;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "ReqDirectionBicycling"

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "https://restapi.amap.com/v4/direction/bicycling?"

    return-object v0
.end method
