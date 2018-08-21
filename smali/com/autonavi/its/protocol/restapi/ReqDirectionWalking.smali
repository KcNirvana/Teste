.class public Lcom/autonavi/its/protocol/restapi/ReqDirectionWalking;
.super Lcom/autonavi/its/protocol/BaseRequest;
.source "ReqDirectionWalking.java"


# static fields
.field public static final TYPE:Ljava/lang/String; = "ReqDirectionWalking"

.field private static final URL:Ljava/lang/String; = "https://restapi.amap.com/v3/direction/walking?"


# instance fields
.field private mEndPoint:Lcom/autonavi/its/protocol/model/Coordinate;

.field private mRoute:Lcom/autonavi/its/protocol/model/direction/WRoute;

.field private mStartPoint:Lcom/autonavi/its/protocol/model/Coordinate;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/autonavi/its/protocol/model/Coordinate;Lcom/autonavi/its/protocol/model/Coordinate;)V
    .locals 3

    invoke-direct {p0}, Lcom/autonavi/its/protocol/BaseRequest;-><init>()V

    invoke-virtual {p0, p1}, Lcom/autonavi/its/protocol/restapi/ReqDirectionWalking;->setUserKey(Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/autonavi/its/protocol/restapi/ReqDirectionWalking;->setStartPoint(Lcom/autonavi/its/protocol/model/Coordinate;)V

    invoke-direct {p0, p3}, Lcom/autonavi/its/protocol/restapi/ReqDirectionWalking;->setEndPoint(Lcom/autonavi/its/protocol/model/Coordinate;)V

    const-string/jumbo v0, "key"

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/restapi/ReqDirectionWalking;->getUserKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/autonavi/its/protocol/restapi/ReqDirectionWalking;->addParams(Ljava/lang/String;Ljava/lang/String;)Lcom/autonavi/its/protocol/BaseRequest;

    const-string/jumbo v0, "origin"

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/restapi/ReqDirectionWalking;->getStartPoint()Lcom/autonavi/its/protocol/model/Coordinate;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autonavi/its/protocol/model/Coordinate;->getProtocolString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/autonavi/its/protocol/restapi/ReqDirectionWalking;->addParams(Ljava/lang/String;Ljava/lang/String;)Lcom/autonavi/its/protocol/BaseRequest;

    const-string/jumbo v0, "destination"

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/restapi/ReqDirectionWalking;->getEndPoint()Lcom/autonavi/its/protocol/model/Coordinate;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autonavi/its/protocol/model/Coordinate;->getProtocolString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/autonavi/its/protocol/restapi/ReqDirectionWalking;->addParams(Ljava/lang/String;Ljava/lang/String;)Lcom/autonavi/its/protocol/BaseRequest;

    invoke-static {}, Lcom/autonavi/its/protocol/RequestManager;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "com.autonavi.its"

    const-string/jumbo v2, "2.5"

    invoke-static {v0, v1, v2}, Lcom/autonavi/its/common/restapi/APIUtil;->getHeader(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/autonavi/its/protocol/restapi/ReqDirectionWalking;->setHeader(Ljava/util/Map;)V

    return-void
.end method

.method private setEndPoint(Lcom/autonavi/its/protocol/model/Coordinate;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/its/protocol/restapi/ReqDirectionWalking;->mEndPoint:Lcom/autonavi/its/protocol/model/Coordinate;

    return-void
.end method

.method private setRoute(Lcom/autonavi/its/protocol/model/direction/WRoute;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/its/protocol/restapi/ReqDirectionWalking;->mRoute:Lcom/autonavi/its/protocol/model/direction/WRoute;

    return-void
.end method

.method private setStartPoint(Lcom/autonavi/its/protocol/model/Coordinate;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/its/protocol/restapi/ReqDirectionWalking;->mStartPoint:Lcom/autonavi/its/protocol/model/Coordinate;

    return-void
.end method


# virtual methods
.method public dealBusinessData(Ljava/lang/String;)V
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "status"

    const/4 v5, -0x1

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/autonavi/its/protocol/restapi/ReqDirectionWalking;->setCode(I)V

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/restapi/ReqDirectionWalking;->getCode()I

    move-result v4

    if-ne v4, v2, :cond_1

    :goto_0
    invoke-virtual {p0, v2}, Lcom/autonavi/its/protocol/restapi/ReqDirectionWalking;->setIsBusinessSuccess(Z)V

    const-string/jumbo v2, "info"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/autonavi/its/protocol/restapi/ReqDirectionWalking;->setMsg(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/restapi/ReqDirectionWalking;->isBusinessSuccess()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "route"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2}, Lcom/autonavi/its/protocol/model/direction/WRoute;->parser(Lorg/json/JSONObject;)Lcom/autonavi/its/protocol/model/direction/WRoute;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/autonavi/its/protocol/restapi/ReqDirectionWalking;->setRoute(Lcom/autonavi/its/protocol/model/direction/WRoute;)V
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

    invoke-virtual {p0, v0}, Lcom/autonavi/its/protocol/restapi/ReqDirectionWalking;->setException(Ljava/lang/Exception;)Lcom/autonavi/its/protocol/BaseRequest;

    invoke-virtual {p0, v3}, Lcom/autonavi/its/protocol/restapi/ReqDirectionWalking;->setIsBusinessSuccess(Z)V

    goto :goto_1
.end method

.method public getEndPoint()Lcom/autonavi/its/protocol/model/Coordinate;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/its/protocol/restapi/ReqDirectionWalking;->mEndPoint:Lcom/autonavi/its/protocol/model/Coordinate;

    return-object v0
.end method

.method public getRoute()Lcom/autonavi/its/protocol/model/direction/WRoute;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/its/protocol/restapi/ReqDirectionWalking;->mRoute:Lcom/autonavi/its/protocol/model/direction/WRoute;

    return-object v0
.end method

.method public getStartPoint()Lcom/autonavi/its/protocol/model/Coordinate;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/its/protocol/restapi/ReqDirectionWalking;->mStartPoint:Lcom/autonavi/its/protocol/model/Coordinate;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "ReqDirectionWalking"

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "https://restapi.amap.com/v3/direction/walking?"

    return-object v0
.end method
