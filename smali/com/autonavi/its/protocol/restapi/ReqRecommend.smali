.class public Lcom/autonavi/its/protocol/restapi/ReqRecommend;
.super Lcom/autonavi/its/protocol/BaseRequest;
.source "ReqRecommend.java"


# static fields
.field public static final REQ_TYPE_BUS_EVENT:Ljava/lang/String; = "2"

.field public static final REQ_TYPE_TRAFFIC_EVENT_OR_TRAFFIC_STATUS:Ljava/lang/String; = "1"

.field public static final REQ_TYPE_WEATHER_EVENT:Ljava/lang/String; = "3"

.field public static final TYPE:Ljava/lang/String; = "ReqRecommend"

.field private static final URL:Ljava/lang/String; = "https://restapi.amap.com/v3/lbp/recommend?"


# instance fields
.field private mADCode:Ljava/lang/String;

.field private mBusDetail:Lcom/autonavi/its/protocol/model/BusDetail;

.field private mDataTypes:[Ljava/lang/String;

.field private mLatitude:D

.field private mLongitude:D

.field private mTrafficDetail:Lcom/autonavi/its/protocol/model/TrafficDetail;

.field private mTrafficStatusDetail:Lcom/autonavi/its/protocol/model/TrafficStatusDetail;

.field private mUserKey:Ljava/lang/String;

.field private mWeatherDetail:Lcom/autonavi/its/protocol/model/WeatherDetail;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;DD)V
    .locals 9

    const/4 v0, 0x3

    new-array v8, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v1, "1"

    aput-object v1, v8, v0

    const/4 v0, 0x1

    const-string/jumbo v1, "2"

    aput-object v1, v8, v0

    const/4 v0, 0x2

    const-string/jumbo v1, "3"

    aput-object v1, v8, v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-wide v6, p5

    invoke-direct/range {v1 .. v8}, Lcom/autonavi/its/protocol/restapi/ReqRecommend;-><init>(Ljava/lang/String;Ljava/lang/String;DD[Ljava/lang/String;)V

    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;Ljava/lang/String;DD[Ljava/lang/String;)V
    .locals 11

    invoke-direct {p0}, Lcom/autonavi/its/protocol/BaseRequest;-><init>()V

    invoke-virtual {p0, p1}, Lcom/autonavi/its/protocol/restapi/ReqRecommend;->setUserKey(Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/autonavi/its/protocol/restapi/ReqRecommend;->setADCode(Ljava/lang/String;)V

    invoke-virtual {p0, p3, p4}, Lcom/autonavi/its/protocol/restapi/ReqRecommend;->setLongitude(D)V

    move-wide/from16 v0, p5

    invoke-virtual {p0, v0, v1}, Lcom/autonavi/its/protocol/restapi/ReqRecommend;->setLatitude(D)V

    move-object/from16 v0, p7

    invoke-direct {p0, v0}, Lcom/autonavi/its/protocol/restapi/ReqRecommend;->setDataTypes([Ljava/lang/String;)V

    const-string/jumbo v5, "key"

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/restapi/ReqRecommend;->getUserKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/autonavi/its/protocol/restapi/ReqRecommend;->addParams(Ljava/lang/String;Ljava/lang/String;)Lcom/autonavi/its/protocol/BaseRequest;

    :try_start_0
    const-string/jumbo v5, "diu"

    new-instance v6, Ljava/lang/String;

    invoke-static {}, Lcom/autonavi/its/protocol/RequestManager;->getAppContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/autonavi/its/common/Util;->getIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    const/4 v8, 0x2

    invoke-static {v7, v8}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v7

    const-string/jumbo v8, "UTF-8"

    invoke-direct {v6, v7, v8}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {p0, v5, v6}, Lcom/autonavi/its/protocol/restapi/ReqRecommend;->addParams(Ljava/lang/String;Ljava/lang/String;)Lcom/autonavi/its/protocol/BaseRequest;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string/jumbo v5, "adcode"

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/restapi/ReqRecommend;->getADCode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/autonavi/its/protocol/restapi/ReqRecommend;->addParams(Ljava/lang/String;Ljava/lang/String;)Lcom/autonavi/its/protocol/BaseRequest;

    new-instance v2, Ljava/text/DecimalFormat;

    const-string/jumbo v5, "0.######"

    invoke-direct {v2, v5}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    const-string/jumbo v5, "location"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3, p4}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, p5

    invoke-virtual {v2, v0, v1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/autonavi/its/protocol/restapi/ReqRecommend;->addParams(Ljava/lang/String;Ljava/lang/String;)Lcom/autonavi/its/protocol/BaseRequest;

    const-string/jumbo v5, "source"

    const-string/jumbo v6, "trafficard"

    invoke-virtual {p0, v5, v6}, Lcom/autonavi/its/protocol/restapi/ReqRecommend;->addParams(Ljava/lang/String;Ljava/lang/String;)Lcom/autonavi/its/protocol/BaseRequest;

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/restapi/ReqRecommend;->getDataTypes()[Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/restapi/ReqRecommend;->getDataTypes()[Ljava/lang/String;

    move-result-object v5

    array-length v5, v5

    if-lez v5, :cond_2

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v3, 0x0

    :goto_1
    invoke-virtual {p0}, Lcom/autonavi/its/protocol/restapi/ReqRecommend;->getDataTypes()[Ljava/lang/String;

    move-result-object v5

    array-length v5, v5

    if-ge v3, v5, :cond_1

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/restapi/ReqRecommend;->getDataTypes()[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/restapi/ReqRecommend;->getDataTypes()[Ljava/lang/String;

    move-result-object v5

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    if-eq v3, v5, :cond_0

    const-string/jumbo v5, "|"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    const-string/jumbo v5, "datatypes"

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/autonavi/its/protocol/restapi/ReqRecommend;->addParams(Ljava/lang/String;Ljava/lang/String;)Lcom/autonavi/its/protocol/BaseRequest;

    :cond_2
    invoke-static {}, Lcom/autonavi/its/protocol/RequestManager;->getAppContext()Landroid/content/Context;

    move-result-object v5

    const-string/jumbo v6, "com.autonavi.its"

    const-string/jumbo v7, "2.5"

    invoke-static {v5, v6, v7}, Lcom/autonavi/its/common/restapi/APIUtil;->getHeader(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/autonavi/its/protocol/restapi/ReqRecommend;->setHeader(Ljava/util/Map;)V

    return-void

    :catch_0
    move-exception v5

    goto/16 :goto_0
.end method

.method private parserFactory(Lorg/json/JSONArray;)V
    .locals 5

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_4

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const-string/jumbo v3, "TRAFFIC_EVENT"

    const-string/jumbo v4, "type"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {v1}, Lcom/autonavi/its/protocol/model/TrafficDetail;->parser(Lorg/json/JSONObject;)Lcom/autonavi/its/protocol/model/TrafficDetail;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/autonavi/its/protocol/restapi/ReqRecommend;->setTrafficDetail(Lcom/autonavi/its/protocol/model/TrafficDetail;)V

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const-string/jumbo v3, "TRAFFIC_STATUS"

    const-string/jumbo v4, "type"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {v1}, Lcom/autonavi/its/protocol/model/TrafficStatusDetail;->parser(Lorg/json/JSONObject;)Lcom/autonavi/its/protocol/model/TrafficStatusDetail;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/autonavi/its/protocol/restapi/ReqRecommend;->setTrafficStatusDetail(Lcom/autonavi/its/protocol/model/TrafficStatusDetail;)V

    goto :goto_1

    :cond_2
    const-string/jumbo v3, "BUS_EVENT"

    const-string/jumbo v4, "type"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v1}, Lcom/autonavi/its/protocol/model/BusDetail;->parser(Lorg/json/JSONObject;)Lcom/autonavi/its/protocol/model/BusDetail;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/autonavi/its/protocol/restapi/ReqRecommend;->setBusDetail(Lcom/autonavi/its/protocol/model/BusDetail;)V

    goto :goto_1

    :cond_3
    const-string/jumbo v3, "WEATHER_EVENT"

    const-string/jumbo v4, "type"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v1}, Lcom/autonavi/its/protocol/model/WeatherDetail;->parser(Lorg/json/JSONObject;)Lcom/autonavi/its/protocol/model/WeatherDetail;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/autonavi/its/protocol/restapi/ReqRecommend;->setWeatherDetail(Lcom/autonavi/its/protocol/model/WeatherDetail;)V

    goto :goto_1

    :cond_4
    return-void
.end method

.method private setADCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/its/protocol/restapi/ReqRecommend;->mADCode:Ljava/lang/String;

    return-void
.end method

.method private setBusDetail(Lcom/autonavi/its/protocol/model/BusDetail;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/its/protocol/restapi/ReqRecommend;->mBusDetail:Lcom/autonavi/its/protocol/model/BusDetail;

    return-void
.end method

.method private setDataTypes([Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/its/protocol/restapi/ReqRecommend;->mDataTypes:[Ljava/lang/String;

    return-void
.end method

.method private setTrafficDetail(Lcom/autonavi/its/protocol/model/TrafficDetail;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/its/protocol/restapi/ReqRecommend;->mTrafficDetail:Lcom/autonavi/its/protocol/model/TrafficDetail;

    return-void
.end method

.method private setTrafficStatusDetail(Lcom/autonavi/its/protocol/model/TrafficStatusDetail;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/its/protocol/restapi/ReqRecommend;->mTrafficStatusDetail:Lcom/autonavi/its/protocol/model/TrafficStatusDetail;

    return-void
.end method

.method private setWeatherDetail(Lcom/autonavi/its/protocol/model/WeatherDetail;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/its/protocol/restapi/ReqRecommend;->mWeatherDetail:Lcom/autonavi/its/protocol/model/WeatherDetail;

    return-void
.end method


# virtual methods
.method public dealBusinessData(Ljava/lang/String;)V
    .locals 8

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/restapi/ReqRecommend;->getResponseContent()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {p0, v5}, Lcom/autonavi/its/protocol/restapi/ReqRecommend;->setIsBusinessSuccess(Z)V

    const-string/jumbo v4, "\u8bf7\u6c42\u5931\u8d25\uff01"

    invoke-virtual {p0, v4}, Lcom/autonavi/its/protocol/restapi/ReqRecommend;->setResponseContent(Ljava/lang/String;)Lcom/autonavi/its/protocol/BaseRequest;

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/restapi/ReqRecommend;->getResponseContent()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v6, "status"

    const/4 v7, -0x1

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v4, :cond_2

    const/4 v6, 0x7

    if-ne v0, v6, :cond_3

    :cond_2
    :goto_1
    invoke-virtual {p0, v4}, Lcom/autonavi/its/protocol/restapi/ReqRecommend;->setIsBusinessSuccess(Z)V

    const-string/jumbo v4, "info"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/autonavi/its/protocol/restapi/ReqRecommend;->setMsg(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/restapi/ReqRecommend;->isBusinessSuccess()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string/jumbo v4, "results"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-direct {p0, v3}, Lcom/autonavi/its/protocol/restapi/ReqRecommend;->parserFactory(Lorg/json/JSONArray;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {p0, v1}, Lcom/autonavi/its/protocol/restapi/ReqRecommend;->setException(Ljava/lang/Exception;)Lcom/autonavi/its/protocol/BaseRequest;

    invoke-virtual {p0, v5}, Lcom/autonavi/its/protocol/restapi/ReqRecommend;->setIsBusinessSuccess(Z)V

    goto :goto_0

    :cond_3
    move v4, v5

    goto :goto_1
.end method

.method public getADCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/its/protocol/restapi/ReqRecommend;->mADCode:Ljava/lang/String;

    return-object v0
.end method

.method public getBusDetail()Lcom/autonavi/its/protocol/model/BusDetail;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/its/protocol/restapi/ReqRecommend;->mBusDetail:Lcom/autonavi/its/protocol/model/BusDetail;

    return-object v0
.end method

.method public getDataTypes()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/its/protocol/restapi/ReqRecommend;->mDataTypes:[Ljava/lang/String;

    return-object v0
.end method

.method public getLatitude()D
    .locals 2

    iget-wide v0, p0, Lcom/autonavi/its/protocol/restapi/ReqRecommend;->mLatitude:D

    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    iget-wide v0, p0, Lcom/autonavi/its/protocol/restapi/ReqRecommend;->mLongitude:D

    return-wide v0
.end method

.method public getTrafficDetail()Lcom/autonavi/its/protocol/model/TrafficDetail;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/its/protocol/restapi/ReqRecommend;->mTrafficDetail:Lcom/autonavi/its/protocol/model/TrafficDetail;

    return-object v0
.end method

.method public getTrafficStatusDetail()Lcom/autonavi/its/protocol/model/TrafficStatusDetail;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/its/protocol/restapi/ReqRecommend;->mTrafficStatusDetail:Lcom/autonavi/its/protocol/model/TrafficStatusDetail;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "ReqRecommend"

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "https://restapi.amap.com/v3/lbp/recommend?"

    return-object v0
.end method

.method public getUserKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/its/protocol/restapi/ReqRecommend;->mUserKey:Ljava/lang/String;

    return-object v0
.end method

.method public getWeatherDetail()Lcom/autonavi/its/protocol/model/WeatherDetail;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/its/protocol/restapi/ReqRecommend;->mWeatherDetail:Lcom/autonavi/its/protocol/model/WeatherDetail;

    return-object v0
.end method

.method public setLatitude(D)V
    .locals 1

    iput-wide p1, p0, Lcom/autonavi/its/protocol/restapi/ReqRecommend;->mLatitude:D

    return-void
.end method

.method public setLongitude(D)V
    .locals 1

    iput-wide p1, p0, Lcom/autonavi/its/protocol/restapi/ReqRecommend;->mLongitude:D

    return-void
.end method

.method public setUserKey(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/its/protocol/restapi/ReqRecommend;->mUserKey:Ljava/lang/String;

    return-void
.end method
