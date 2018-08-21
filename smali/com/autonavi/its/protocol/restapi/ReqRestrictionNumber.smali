.class public Lcom/autonavi/its/protocol/restapi/ReqRestrictionNumber;
.super Lcom/autonavi/its/protocol/BaseRequest;
.source "ReqRestrictionNumber.java"


# static fields
.field public static final TYPE:Ljava/lang/String; = "ReqRestrictionNumber"

.field private static final URL:Ljava/lang/String; = "https://restapi.amap.com/v4/traffic/restriction/number?"


# instance fields
.field private mCityCode:Ljava/lang/String;

.field private mDate:Ljava/util/Date;

.field private mLatitude:D

.field private mLongitude:D

.field private mRestrictionNumber:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;DD)V
    .locals 8

    const-string/jumbo v6, ""

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-direct/range {v0 .. v7}, Lcom/autonavi/its/protocol/restapi/ReqRestrictionNumber;-><init>(Ljava/lang/String;DDLjava/lang/String;Ljava/util/Date;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;DDLjava/lang/String;Ljava/util/Date;)V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SimpleDateFormat"
        }
    .end annotation

    const-wide/16 v4, 0x0

    invoke-direct {p0}, Lcom/autonavi/its/protocol/BaseRequest;-><init>()V

    invoke-virtual {p0, p1}, Lcom/autonavi/its/protocol/restapi/ReqRestrictionNumber;->setUserKey(Ljava/lang/String;)V

    invoke-direct {p0, p2, p3}, Lcom/autonavi/its/protocol/restapi/ReqRestrictionNumber;->setLongitude(D)V

    invoke-direct {p0, p4, p5}, Lcom/autonavi/its/protocol/restapi/ReqRestrictionNumber;->setLatitude(D)V

    invoke-direct {p0, p6}, Lcom/autonavi/its/protocol/restapi/ReqRestrictionNumber;->setCityCode(Ljava/lang/String;)V

    invoke-direct {p0, p7}, Lcom/autonavi/its/protocol/restapi/ReqRestrictionNumber;->setDate(Ljava/util/Date;)V

    const-string/jumbo v2, "key"

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/restapi/ReqRestrictionNumber;->getUserKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/autonavi/its/protocol/restapi/ReqRestrictionNumber;->addParams(Ljava/lang/String;Ljava/lang/String;)Lcom/autonavi/its/protocol/BaseRequest;

    cmpl-double v2, p2, v4

    if-lez v2, :cond_0

    cmpl-double v2, p4, v4

    if-lez v2, :cond_0

    const-string/jumbo v2, "location"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2, p3}, Lcom/autonavi/its/protocol/model/Coordinate;->formatDouble6(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p4, p5}, Lcom/autonavi/its/protocol/model/Coordinate;->formatDouble6(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/autonavi/its/protocol/restapi/ReqRestrictionNumber;->addParams(Ljava/lang/String;Ljava/lang/String;)Lcom/autonavi/its/protocol/BaseRequest;

    :cond_0
    invoke-virtual {p0}, Lcom/autonavi/its/protocol/restapi/ReqRestrictionNumber;->getCityCode()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "adcode"

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/restapi/ReqRestrictionNumber;->getCityCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/autonavi/its/protocol/restapi/ReqRestrictionNumber;->addParams(Ljava/lang/String;Ljava/lang/String;)Lcom/autonavi/its/protocol/BaseRequest;

    :cond_1
    invoke-virtual {p0}, Lcom/autonavi/its/protocol/restapi/ReqRestrictionNumber;->getDate()Ljava/util/Date;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string/jumbo v0, "yyyy-MM-dd"

    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const-string/jumbo v2, "date"

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/restapi/ReqRestrictionNumber;->getDate()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/autonavi/its/protocol/restapi/ReqRestrictionNumber;->addParams(Ljava/lang/String;Ljava/lang/String;)Lcom/autonavi/its/protocol/BaseRequest;

    :cond_2
    invoke-static {}, Lcom/autonavi/its/protocol/RequestManager;->getAppContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "com.autonavi.its"

    const-string/jumbo v4, "2.5"

    invoke-static {v2, v3, v4}, Lcom/autonavi/its/common/restapi/APIUtil;->getHeader(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/autonavi/its/protocol/restapi/ReqRestrictionNumber;->setHeader(Ljava/util/Map;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;DDLjava/util/Date;)V
    .locals 8

    const-string/jumbo v6, ""

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/autonavi/its/protocol/restapi/ReqRestrictionNumber;-><init>(Ljava/lang/String;DDLjava/lang/String;Ljava/util/Date;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v4, v2

    move-object v6, p2

    invoke-direct/range {v0 .. v7}, Lcom/autonavi/its/protocol/restapi/ReqRestrictionNumber;-><init>(Ljava/lang/String;DDLjava/lang/String;Ljava/util/Date;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)V
    .locals 8

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    move-object v0, p0

    move-object v1, p1

    move-wide v4, v2

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/autonavi/its/protocol/restapi/ReqRestrictionNumber;-><init>(Ljava/lang/String;DDLjava/lang/String;Ljava/util/Date;)V

    return-void
.end method

.method private setCityCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/its/protocol/restapi/ReqRestrictionNumber;->mCityCode:Ljava/lang/String;

    return-void
.end method

.method private setDate(Ljava/util/Date;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/its/protocol/restapi/ReqRestrictionNumber;->mDate:Ljava/util/Date;

    return-void
.end method

.method private setLatitude(D)V
    .locals 1

    iput-wide p1, p0, Lcom/autonavi/its/protocol/restapi/ReqRestrictionNumber;->mLatitude:D

    return-void
.end method

.method private setLongitude(D)V
    .locals 1

    iput-wide p1, p0, Lcom/autonavi/its/protocol/restapi/ReqRestrictionNumber;->mLongitude:D

    return-void
.end method

.method private setRestrictionNumber(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/its/protocol/restapi/ReqRestrictionNumber;->mRestrictionNumber:Ljava/lang/String;

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

    invoke-virtual {p0, v2}, Lcom/autonavi/its/protocol/restapi/ReqRestrictionNumber;->setCode(I)V

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/restapi/ReqRestrictionNumber;->getCode()I

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {p0, v2}, Lcom/autonavi/its/protocol/restapi/ReqRestrictionNumber;->setIsBusinessSuccess(Z)V

    const-string/jumbo v2, "errmsg"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/autonavi/its/protocol/restapi/ReqRestrictionNumber;->setMsg(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/restapi/ReqRestrictionNumber;->isBusinessSuccess()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "data"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "data"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string/jumbo v4, "number"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/autonavi/its/protocol/restapi/ReqRestrictionNumber;->setRestrictionNumber(Ljava/lang/String;)V
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

    invoke-virtual {p0, v0}, Lcom/autonavi/its/protocol/restapi/ReqRestrictionNumber;->setException(Ljava/lang/Exception;)Lcom/autonavi/its/protocol/BaseRequest;

    invoke-virtual {p0, v3}, Lcom/autonavi/its/protocol/restapi/ReqRestrictionNumber;->setIsBusinessSuccess(Z)V

    goto :goto_1
.end method

.method public getCityCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/its/protocol/restapi/ReqRestrictionNumber;->mCityCode:Ljava/lang/String;

    return-object v0
.end method

.method public getDate()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/its/protocol/restapi/ReqRestrictionNumber;->mDate:Ljava/util/Date;

    return-object v0
.end method

.method public getLatitude()D
    .locals 2

    iget-wide v0, p0, Lcom/autonavi/its/protocol/restapi/ReqRestrictionNumber;->mLatitude:D

    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    iget-wide v0, p0, Lcom/autonavi/its/protocol/restapi/ReqRestrictionNumber;->mLongitude:D

    return-wide v0
.end method

.method public getRestrictionNumber()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/its/protocol/restapi/ReqRestrictionNumber;->mRestrictionNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "ReqRestrictionNumber"

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "https://restapi.amap.com/v4/traffic/restriction/number?"

    return-object v0
.end method
