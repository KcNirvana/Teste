.class public Lcom/autonavi/its/protocol/restapi/ReqDirectionTransit;
.super Lcom/autonavi/its/protocol/BaseRequest;
.source "ReqDirectionTransit.java"


# static fields
.field public static final TRANSFER_STRATEGY_DONT_TAKE_SUBWAY:I = 0x5

.field public static final TRANSFER_STRATEGY_FASTEST:I = 0x0

.field public static final TRANSFER_STRATEGY_LEAST_COST:I = 0x1

.field public static final TRANSFER_STRATEGY_LEAST_TRANFER:I = 0x2

.field public static final TRANSFER_STRATEGY_LEAST_WALKING:I = 0x3

.field public static final TYPE:Ljava/lang/String; = "ReqDirectionTransit"

.field private static final URL:Ljava/lang/String; = "https://restapi.amap.com/v3/direction/transit/integrated?"


# instance fields
.field private mCity:Ljava/lang/String;

.field private mConsiderNight:Z

.field private mDestiCity:Ljava/lang/String;

.field private mEndPoint:Lcom/autonavi/its/protocol/model/Coordinate;

.field private mHour:I

.field private mMinute:I

.field private mNeedDetail:Z

.field private mRoute:Lcom/autonavi/its/protocol/model/direction/TRoute;

.field private mStartDate:Ljava/util/Date;

.field private mStartPoint:Lcom/autonavi/its/protocol/model/Coordinate;

.field private mStrategy:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/autonavi/its/protocol/model/Coordinate;Lcom/autonavi/its/protocol/model/Coordinate;Ljava/lang/String;)V
    .locals 12

    const-string/jumbo v5, ""

    const/4 v6, 0x0

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    invoke-direct/range {v0 .. v11}, Lcom/autonavi/its/protocol/restapi/ReqDirectionTransit;-><init>(Ljava/lang/String;Lcom/autonavi/its/protocol/model/Coordinate;Lcom/autonavi/its/protocol/model/Coordinate;Ljava/lang/String;Ljava/lang/String;ZIZLjava/util/Date;II)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/autonavi/its/protocol/model/Coordinate;Lcom/autonavi/its/protocol/model/Coordinate;Ljava/lang/String;Ljava/lang/String;ZIZLjava/util/Date;II)V
    .locals 9

    invoke-direct {p0}, Lcom/autonavi/its/protocol/BaseRequest;-><init>()V

    const/4 v6, -0x1

    iput v6, p0, Lcom/autonavi/its/protocol/restapi/ReqDirectionTransit;->mHour:I

    const/4 v6, 0x0

    iput v6, p0, Lcom/autonavi/its/protocol/restapi/ReqDirectionTransit;->mMinute:I

    invoke-virtual {p0, p1}, Lcom/autonavi/its/protocol/restapi/ReqDirectionTransit;->setUserKey(Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/autonavi/its/protocol/restapi/ReqDirectionTransit;->setStartPoint(Lcom/autonavi/its/protocol/model/Coordinate;)V

    invoke-direct {p0, p3}, Lcom/autonavi/its/protocol/restapi/ReqDirectionTransit;->setEndPoint(Lcom/autonavi/its/protocol/model/Coordinate;)V

    invoke-direct {p0, p4}, Lcom/autonavi/its/protocol/restapi/ReqDirectionTransit;->setCity(Ljava/lang/String;)V

    invoke-direct {p0, p5}, Lcom/autonavi/its/protocol/restapi/ReqDirectionTransit;->setDestiCity(Ljava/lang/String;)V

    invoke-direct {p0, p6}, Lcom/autonavi/its/protocol/restapi/ReqDirectionTransit;->setNeedDetail(Z)V

    move/from16 v0, p7

    invoke-direct {p0, v0}, Lcom/autonavi/its/protocol/restapi/ReqDirectionTransit;->setStrategy(I)V

    move/from16 v0, p8

    invoke-direct {p0, v0}, Lcom/autonavi/its/protocol/restapi/ReqDirectionTransit;->setConsiderNight(Z)V

    move-object/from16 v0, p9

    invoke-direct {p0, v0}, Lcom/autonavi/its/protocol/restapi/ReqDirectionTransit;->setStartDate(Ljava/util/Date;)V

    move/from16 v0, p10

    invoke-direct {p0, v0}, Lcom/autonavi/its/protocol/restapi/ReqDirectionTransit;->setHour(I)V

    move/from16 v0, p11

    invoke-direct {p0, v0}, Lcom/autonavi/its/protocol/restapi/ReqDirectionTransit;->setMinute(I)V

    const-string/jumbo v6, "key"

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/restapi/ReqDirectionTransit;->getUserKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Lcom/autonavi/its/protocol/restapi/ReqDirectionTransit;->addParams(Ljava/lang/String;Ljava/lang/String;)Lcom/autonavi/its/protocol/BaseRequest;

    const-string/jumbo v6, "origin"

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/restapi/ReqDirectionTransit;->getStartPoint()Lcom/autonavi/its/protocol/model/Coordinate;

    move-result-object v7

    invoke-virtual {v7}, Lcom/autonavi/its/protocol/model/Coordinate;->getProtocolString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Lcom/autonavi/its/protocol/restapi/ReqDirectionTransit;->addParams(Ljava/lang/String;Ljava/lang/String;)Lcom/autonavi/its/protocol/BaseRequest;

    const-string/jumbo v6, "destination"

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/restapi/ReqDirectionTransit;->getEndPoint()Lcom/autonavi/its/protocol/model/Coordinate;

    move-result-object v7

    invoke-virtual {v7}, Lcom/autonavi/its/protocol/model/Coordinate;->getProtocolString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Lcom/autonavi/its/protocol/restapi/ReqDirectionTransit;->addParams(Ljava/lang/String;Ljava/lang/String;)Lcom/autonavi/its/protocol/BaseRequest;

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string/jumbo v6, "city"

    invoke-virtual {p0, v6, p4}, Lcom/autonavi/its/protocol/restapi/ReqDirectionTransit;->addParams(Ljava/lang/String;Ljava/lang/String;)Lcom/autonavi/its/protocol/BaseRequest;

    :cond_0
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string/jumbo v6, "cityd"

    invoke-virtual {p0, v6, p5}, Lcom/autonavi/its/protocol/restapi/ReqDirectionTransit;->addParams(Ljava/lang/String;Ljava/lang/String;)Lcom/autonavi/its/protocol/BaseRequest;

    :cond_1
    if-eqz p6, :cond_5

    const-string/jumbo v6, "extensions"

    const-string/jumbo v7, "all"

    invoke-virtual {p0, v6, v7}, Lcom/autonavi/its/protocol/restapi/ReqDirectionTransit;->addParams(Ljava/lang/String;Ljava/lang/String;)Lcom/autonavi/its/protocol/BaseRequest;

    :goto_0
    move/from16 v0, p7

    invoke-direct {p0, v0}, Lcom/autonavi/its/protocol/restapi/ReqDirectionTransit;->isValidStrategy(I)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string/jumbo v6, "strategy"

    move/from16 v0, p7

    invoke-virtual {p0, v6, v0}, Lcom/autonavi/its/protocol/restapi/ReqDirectionTransit;->addParams(Ljava/lang/String;I)Lcom/autonavi/its/protocol/BaseRequest;

    :cond_2
    if-eqz p8, :cond_6

    const-string/jumbo v6, "nightflag"

    const/4 v7, 0x1

    invoke-virtual {p0, v6, v7}, Lcom/autonavi/its/protocol/restapi/ReqDirectionTransit;->addParams(Ljava/lang/String;I)Lcom/autonavi/its/protocol/BaseRequest;

    :goto_1
    if-eqz p9, :cond_3

    const-string/jumbo v1, "yyyy-MM-dd"

    new-instance v4, Ljava/text/SimpleDateFormat;

    invoke-direct {v4, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p9

    invoke-virtual {v4, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v6, "date"

    invoke-virtual {p0, v6, v3}, Lcom/autonavi/its/protocol/restapi/ReqDirectionTransit;->addParams(Ljava/lang/String;Ljava/lang/String;)Lcom/autonavi/its/protocol/BaseRequest;

    :cond_3
    if-ltz p10, :cond_4

    const/16 v6, 0x18

    move/from16 v0, p10

    if-gt v0, v6, :cond_4

    if-ltz p11, :cond_4

    const/16 v6, 0x3b

    move/from16 v0, p11

    if-gt v0, v6, :cond_4

    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string/jumbo v6, "HH:mm"

    invoke-direct {v4, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    const/16 v6, 0xb

    move/from16 v0, p10

    invoke-virtual {v2, v6, v0}, Ljava/util/Calendar;->set(II)V

    const/16 v6, 0xc

    move/from16 v0, p11

    invoke-virtual {v2, v6, v0}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "time"

    invoke-virtual {p0, v6, v5}, Lcom/autonavi/its/protocol/restapi/ReqDirectionTransit;->addParams(Ljava/lang/String;Ljava/lang/String;)Lcom/autonavi/its/protocol/BaseRequest;

    :cond_4
    invoke-static {}, Lcom/autonavi/its/protocol/RequestManager;->getAppContext()Landroid/content/Context;

    move-result-object v6

    const-string/jumbo v7, "com.autonavi.its"

    const-string/jumbo v8, "2.5"

    invoke-static {v6, v7, v8}, Lcom/autonavi/its/common/restapi/APIUtil;->getHeader(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/autonavi/its/protocol/restapi/ReqDirectionTransit;->setHeader(Ljava/util/Map;)V

    return-void

    :cond_5
    const-string/jumbo v6, "extensions"

    const-string/jumbo v7, "base"

    invoke-virtual {p0, v6, v7}, Lcom/autonavi/its/protocol/restapi/ReqDirectionTransit;->addParams(Ljava/lang/String;Ljava/lang/String;)Lcom/autonavi/its/protocol/BaseRequest;

    goto/16 :goto_0

    :cond_6
    const-string/jumbo v6, "nightflag"

    const/4 v7, 0x0

    invoke-virtual {p0, v6, v7}, Lcom/autonavi/its/protocol/restapi/ReqDirectionTransit;->addParams(Ljava/lang/String;I)Lcom/autonavi/its/protocol/BaseRequest;

    goto :goto_1
.end method

.method private isValidStrategy(I)Z
    .locals 2

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    if-eq p1, v0, :cond_0

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    const/4 v1, 0x5

    if-ne p1, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setCity(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/its/protocol/restapi/ReqDirectionTransit;->mCity:Ljava/lang/String;

    return-void
.end method

.method private setConsiderNight(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/autonavi/its/protocol/restapi/ReqDirectionTransit;->mConsiderNight:Z

    return-void
.end method

.method private setDestiCity(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/its/protocol/restapi/ReqDirectionTransit;->mDestiCity:Ljava/lang/String;

    return-void
.end method

.method private setEndPoint(Lcom/autonavi/its/protocol/model/Coordinate;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/its/protocol/restapi/ReqDirectionTransit;->mEndPoint:Lcom/autonavi/its/protocol/model/Coordinate;

    return-void
.end method

.method private setHour(I)V
    .locals 0

    iput p1, p0, Lcom/autonavi/its/protocol/restapi/ReqDirectionTransit;->mHour:I

    return-void
.end method

.method private setMinute(I)V
    .locals 0

    iput p1, p0, Lcom/autonavi/its/protocol/restapi/ReqDirectionTransit;->mMinute:I

    return-void
.end method

.method private setNeedDetail(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/autonavi/its/protocol/restapi/ReqDirectionTransit;->mNeedDetail:Z

    return-void
.end method

.method private setRoute(Lcom/autonavi/its/protocol/model/direction/TRoute;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/its/protocol/restapi/ReqDirectionTransit;->mRoute:Lcom/autonavi/its/protocol/model/direction/TRoute;

    return-void
.end method

.method private setStartDate(Ljava/util/Date;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/its/protocol/restapi/ReqDirectionTransit;->mStartDate:Ljava/util/Date;

    return-void
.end method

.method private setStartPoint(Lcom/autonavi/its/protocol/model/Coordinate;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/its/protocol/restapi/ReqDirectionTransit;->mStartPoint:Lcom/autonavi/its/protocol/model/Coordinate;

    return-void
.end method

.method private setStrategy(I)V
    .locals 0

    iput p1, p0, Lcom/autonavi/its/protocol/restapi/ReqDirectionTransit;->mStrategy:I

    return-void
.end method


# virtual methods
.method public considerNight()Z
    .locals 1

    iget-boolean v0, p0, Lcom/autonavi/its/protocol/restapi/ReqDirectionTransit;->mConsiderNight:Z

    return v0
.end method

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

    invoke-virtual {p0, v4}, Lcom/autonavi/its/protocol/restapi/ReqDirectionTransit;->setCode(I)V

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/restapi/ReqDirectionTransit;->getCode()I

    move-result v4

    if-ne v4, v2, :cond_1

    :goto_0
    invoke-virtual {p0, v2}, Lcom/autonavi/its/protocol/restapi/ReqDirectionTransit;->setIsBusinessSuccess(Z)V

    const-string/jumbo v2, "info"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/autonavi/its/protocol/restapi/ReqDirectionTransit;->setMsg(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/restapi/ReqDirectionTransit;->isBusinessSuccess()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "route"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2}, Lcom/autonavi/its/protocol/model/direction/TRoute;->parser(Lorg/json/JSONObject;)Lcom/autonavi/its/protocol/model/direction/TRoute;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/autonavi/its/protocol/restapi/ReqDirectionTransit;->setRoute(Lcom/autonavi/its/protocol/model/direction/TRoute;)V
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

    invoke-virtual {p0, v0}, Lcom/autonavi/its/protocol/restapi/ReqDirectionTransit;->setException(Ljava/lang/Exception;)Lcom/autonavi/its/protocol/BaseRequest;

    invoke-virtual {p0, v3}, Lcom/autonavi/its/protocol/restapi/ReqDirectionTransit;->setIsBusinessSuccess(Z)V

    goto :goto_1
.end method

.method public getCity()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/its/protocol/restapi/ReqDirectionTransit;->mCity:Ljava/lang/String;

    return-object v0
.end method

.method public getDestiCity()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/its/protocol/restapi/ReqDirectionTransit;->mDestiCity:Ljava/lang/String;

    return-object v0
.end method

.method public getEndPoint()Lcom/autonavi/its/protocol/model/Coordinate;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/its/protocol/restapi/ReqDirectionTransit;->mEndPoint:Lcom/autonavi/its/protocol/model/Coordinate;

    return-object v0
.end method

.method public getHour()I
    .locals 1

    iget v0, p0, Lcom/autonavi/its/protocol/restapi/ReqDirectionTransit;->mHour:I

    return v0
.end method

.method public getMinute()I
    .locals 1

    iget v0, p0, Lcom/autonavi/its/protocol/restapi/ReqDirectionTransit;->mMinute:I

    return v0
.end method

.method public getRoute()Lcom/autonavi/its/protocol/model/direction/TRoute;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/its/protocol/restapi/ReqDirectionTransit;->mRoute:Lcom/autonavi/its/protocol/model/direction/TRoute;

    return-object v0
.end method

.method public getStartDate()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/its/protocol/restapi/ReqDirectionTransit;->mStartDate:Ljava/util/Date;

    return-object v0
.end method

.method public getStartPoint()Lcom/autonavi/its/protocol/model/Coordinate;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/its/protocol/restapi/ReqDirectionTransit;->mStartPoint:Lcom/autonavi/its/protocol/model/Coordinate;

    return-object v0
.end method

.method public getStrategy()I
    .locals 1

    iget v0, p0, Lcom/autonavi/its/protocol/restapi/ReqDirectionTransit;->mStrategy:I

    return v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "ReqDirectionTransit"

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "https://restapi.amap.com/v3/direction/transit/integrated?"

    return-object v0
.end method

.method public needDetail()Z
    .locals 1

    iget-boolean v0, p0, Lcom/autonavi/its/protocol/restapi/ReqDirectionTransit;->mNeedDetail:Z

    return v0
.end method
