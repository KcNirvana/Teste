.class public Lcom/autonavi/its/protocol/restapi/ReqETALineInfo;
.super Lcom/autonavi/its/protocol/BaseRequest;
.source "ReqETALineInfo.java"


# static fields
.field private static final TRAFFIC_BAR_WIDTH_DEFAULT:I = 0x118

.field private static final TRAFFIC_DATA_MAX_LENGTH:I = 0x249f0

.field public static final TRAFFIC_DATA_NO_LIMIT:I = -0x1

.field public static final TYPE:Ljava/lang/String; = "ReqETALineInfo"

.field private static final URL:Ljava/lang/String; = "https://restapi.amap.com/v3/traffic/custompath?"


# instance fields
.field private mETAInfo:Lcom/autonavi/its/protocol/model/eta/ETAInfo;

.field private mEndPoint:Lcom/autonavi/its/protocol/model/Point;

.field private mSpecialMsg:Ljava/lang/String;

.field private mStartPoint:Lcom/autonavi/its/protocol/model/Point;

.field private mTrafficBarWidth:I

.field private mTrafficDataLengthLimit:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/autonavi/its/protocol/model/Point;Lcom/autonavi/its/protocol/model/Point;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/16 v0, 0x118

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/autonavi/its/protocol/restapi/ReqETALineInfo;-><init>(Ljava/lang/String;Lcom/autonavi/its/protocol/model/Point;Lcom/autonavi/its/protocol/model/Point;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/autonavi/its/protocol/model/Point;Lcom/autonavi/its/protocol/model/Point;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/autonavi/its/protocol/BaseRequest;-><init>()V

    const/16 v0, 0x118

    iput v0, p0, Lcom/autonavi/its/protocol/restapi/ReqETALineInfo;->mTrafficBarWidth:I

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/autonavi/its/protocol/restapi/ReqETALineInfo;->mSpecialMsg:Ljava/lang/String;

    const v0, 0x249f0

    iput v0, p0, Lcom/autonavi/its/protocol/restapi/ReqETALineInfo;->mTrafficDataLengthLimit:I

    invoke-virtual {p0, p1}, Lcom/autonavi/its/protocol/restapi/ReqETALineInfo;->setUserKey(Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/autonavi/its/protocol/restapi/ReqETALineInfo;->setStartPoint(Lcom/autonavi/its/protocol/model/Point;)V

    invoke-direct {p0, p3}, Lcom/autonavi/its/protocol/restapi/ReqETALineInfo;->setEndPoint(Lcom/autonavi/its/protocol/model/Point;)V

    invoke-direct {p0, p4}, Lcom/autonavi/its/protocol/restapi/ReqETALineInfo;->setTrafficBarWidth(I)V

    const-string/jumbo v0, "key"

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/restapi/ReqETALineInfo;->getUserKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/autonavi/its/protocol/restapi/ReqETALineInfo;->addParams(Ljava/lang/String;Ljava/lang/String;)Lcom/autonavi/its/protocol/BaseRequest;

    const-string/jumbo v0, "origin"

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/restapi/ReqETALineInfo;->getStartPoint()Lcom/autonavi/its/protocol/model/Point;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autonavi/its/protocol/model/Point;->getProtocolString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/autonavi/its/protocol/restapi/ReqETALineInfo;->addParams(Ljava/lang/String;Ljava/lang/String;)Lcom/autonavi/its/protocol/BaseRequest;

    :try_start_0
    const-string/jumbo v0, "originaddress"

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/restapi/ReqETALineInfo;->getStartPoint()Lcom/autonavi/its/protocol/model/Point;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autonavi/its/protocol/model/Point;->getAddress()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "utf-8"

    invoke-static {v1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/autonavi/its/protocol/restapi/ReqETALineInfo;->addParams(Ljava/lang/String;Ljava/lang/String;)Lcom/autonavi/its/protocol/BaseRequest;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    const-string/jumbo v0, "destination"

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/restapi/ReqETALineInfo;->getEndPoint()Lcom/autonavi/its/protocol/model/Point;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autonavi/its/protocol/model/Point;->getProtocolString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/autonavi/its/protocol/restapi/ReqETALineInfo;->addParams(Ljava/lang/String;Ljava/lang/String;)Lcom/autonavi/its/protocol/BaseRequest;

    :try_start_1
    const-string/jumbo v0, "destinationaddress"

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/restapi/ReqETALineInfo;->getEndPoint()Lcom/autonavi/its/protocol/model/Point;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autonavi/its/protocol/model/Point;->getAddress()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "utf-8"

    invoke-static {v1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/autonavi/its/protocol/restapi/ReqETALineInfo;->addParams(Ljava/lang/String;Ljava/lang/String;)Lcom/autonavi/its/protocol/BaseRequest;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    const-string/jumbo v0, "uid"

    invoke-static {}, Lcom/autonavi/its/protocol/RequestManager;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/autonavi/its/common/Util;->getIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/autonavi/its/protocol/restapi/ReqETALineInfo;->addParams(Ljava/lang/String;Ljava/lang/String;)Lcom/autonavi/its/protocol/BaseRequest;

    invoke-static {}, Lcom/autonavi/its/protocol/RequestManager;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "com.autonavi.its"

    const-string/jumbo v2, "2.5"

    invoke-static {v0, v1, v2}, Lcom/autonavi/its/common/restapi/APIUtil;->getHeader(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/autonavi/its/protocol/restapi/ReqETALineInfo;->setHeader(Ljava/util/Map;)V

    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method private setETAInfo(Lcom/autonavi/its/protocol/model/eta/ETAInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/its/protocol/restapi/ReqETALineInfo;->mETAInfo:Lcom/autonavi/its/protocol/model/eta/ETAInfo;

    return-void
.end method

.method private setEndPoint(Lcom/autonavi/its/protocol/model/Point;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "lack end point\uff01"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/autonavi/its/protocol/restapi/ReqETALineInfo;->mEndPoint:Lcom/autonavi/its/protocol/model/Point;

    return-void
.end method

.method private setSpecialMsg(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/its/protocol/restapi/ReqETALineInfo;->mSpecialMsg:Ljava/lang/String;

    return-void
.end method

.method private setStartPoint(Lcom/autonavi/its/protocol/model/Point;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "lack start point\uff01"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/autonavi/its/protocol/restapi/ReqETALineInfo;->mStartPoint:Lcom/autonavi/its/protocol/model/Point;

    return-void
.end method

.method private setTrafficBarWidth(I)V
    .locals 2

    if-gtz p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "invalid traffic bar width\uff01"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput p1, p0, Lcom/autonavi/its/protocol/restapi/ReqETALineInfo;->mTrafficBarWidth:I

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

    invoke-virtual {p0, v4}, Lcom/autonavi/its/protocol/restapi/ReqETALineInfo;->setCode(I)V

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/restapi/ReqETALineInfo;->getCode()I

    move-result v4

    if-ne v4, v2, :cond_2

    :goto_0
    invoke-virtual {p0, v2}, Lcom/autonavi/its/protocol/restapi/ReqETALineInfo;->setIsBusinessSuccess(Z)V

    const-string/jumbo v2, "info"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/autonavi/its/protocol/restapi/ReqETALineInfo;->setMsg(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/restapi/ReqETALineInfo;->isBusinessSuccess()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/restapi/ReqETALineInfo;->getTrafficDataLengthLimit()I

    move-result v2

    if-ltz v2, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/restapi/ReqETALineInfo;->getTrafficDataLengthLimit()I

    move-result v4

    if-ge v2, v4, :cond_3

    :cond_0
    const-string/jumbo v2, "result"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2}, Lcom/autonavi/its/protocol/model/eta/ETAInfo;->parser(Lorg/json/JSONObject;)Lcom/autonavi/its/protocol/model/eta/ETAInfo;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/autonavi/its/protocol/restapi/ReqETALineInfo;->setETAInfo(Lcom/autonavi/its/protocol/model/eta/ETAInfo;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    move v2, v3

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/autonavi/its/protocol/restapi/ReqETALineInfo;->setIsBusinessSuccess(Z)V

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/autonavi/its/protocol/restapi/ReqETALineInfo;->setRetryCount(I)Lcom/autonavi/its/protocol/BaseRequest;

    const-string/jumbo v2, "\u8def\u5f84\u8fc7\u957f\uff0c\u8bf7\u91cd\u65b0\u9009\u62e9\u7ec8\u70b9\uff01"

    invoke-direct {p0, v2}, Lcom/autonavi/its/protocol/restapi/ReqETALineInfo;->setSpecialMsg(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Lcom/autonavi/its/protocol/restapi/ReqETALineInfo;->setException(Ljava/lang/Exception;)Lcom/autonavi/its/protocol/BaseRequest;

    invoke-virtual {p0, v3}, Lcom/autonavi/its/protocol/restapi/ReqETALineInfo;->setIsBusinessSuccess(Z)V

    goto :goto_1
.end method

.method public getETAInfo()Lcom/autonavi/its/protocol/model/eta/ETAInfo;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/its/protocol/restapi/ReqETALineInfo;->mETAInfo:Lcom/autonavi/its/protocol/model/eta/ETAInfo;

    return-object v0
.end method

.method public getEndPoint()Lcom/autonavi/its/protocol/model/Point;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/its/protocol/restapi/ReqETALineInfo;->mEndPoint:Lcom/autonavi/its/protocol/model/Point;

    return-object v0
.end method

.method public getSpecialMsg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/its/protocol/restapi/ReqETALineInfo;->mSpecialMsg:Ljava/lang/String;

    return-object v0
.end method

.method public getStartPoint()Lcom/autonavi/its/protocol/model/Point;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/its/protocol/restapi/ReqETALineInfo;->mStartPoint:Lcom/autonavi/its/protocol/model/Point;

    return-object v0
.end method

.method public getTrafficBarWidth()I
    .locals 1

    iget v0, p0, Lcom/autonavi/its/protocol/restapi/ReqETALineInfo;->mTrafficBarWidth:I

    return v0
.end method

.method public getTrafficDataLengthLimit()I
    .locals 1

    iget v0, p0, Lcom/autonavi/its/protocol/restapi/ReqETALineInfo;->mTrafficDataLengthLimit:I

    return v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "ReqETALineInfo"

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "https://restapi.amap.com/v3/traffic/custompath?"

    return-object v0
.end method

.method public setTrafficDataLengthLimit(I)V
    .locals 0

    iput p1, p0, Lcom/autonavi/its/protocol/restapi/ReqETALineInfo;->mTrafficDataLengthLimit:I

    return-void
.end method
