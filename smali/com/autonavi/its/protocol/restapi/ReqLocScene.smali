.class public Lcom/autonavi/its/protocol/restapi/ReqLocScene;
.super Lcom/autonavi/its/protocol/BaseRequest;
.source "ReqLocScene.java"


# static fields
.field private static final DF:Ljava/text/DecimalFormat;

.field public static final ETA_TYPE_COMPANY_TO_HOME:I = 0x3

.field public static final ETA_TYPE_CURRENT_POINT_TO_COMPANY:I = 0x1

.field public static final ETA_TYPE_CURRENT_POINT_TO_HOME:I = 0x2

.field public static final ETA_TYPE_HOME_TO_COMPANY:I = 0x4

.field private static final TRFFIC_BAR_WIDTH_DEFAULT:I = 0x118

.field public static final TYPE:Ljava/lang/String; = "ReqLocScene"

.field private static final URL:Ljava/lang/String; = "https://restapi.amap.com/v3/lbp/locscene?"


# instance fields
.field private mADCode:Ljava/lang/String;

.field private mETAInfo:Lcom/autonavi/its/protocol/model/eta/ETAInfo;

.field private mETAType:I

.field private mEncCompanyLatitude:Ljava/lang/String;

.field private mEncCompanyLongitude:Ljava/lang/String;

.field private mEncHomeLatitude:Ljava/lang/String;

.field private mEncHomeLongitude:Ljava/lang/String;

.field private mLatitude:D

.field private mLongitude:D

.field private mTrafficBarWidth:I

.field private mUserKey:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/text/DecimalFormat;

    const-string/jumbo v1, "0.######"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/autonavi/its/protocol/restapi/ReqLocScene;->DF:Ljava/text/DecimalFormat;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;DDI)V
    .locals 11

    const/16 v9, 0x118

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-wide/from16 v6, p5

    move/from16 v8, p7

    invoke-direct/range {v1 .. v9}, Lcom/autonavi/its/protocol/restapi/ReqLocScene;-><init>(Ljava/lang/String;Ljava/lang/String;DDII)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;DDII)V
    .locals 11

    const/4 v10, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-wide/from16 v6, p5

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-direct/range {v1 .. v10}, Lcom/autonavi/its/protocol/restapi/ReqLocScene;-><init>(Ljava/lang/String;Ljava/lang/String;DDIILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;DDIILjava/lang/String;)V
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Lcom/autonavi/its/protocol/BaseRequest;-><init>()V

    const/16 v0, 0x118

    iput v0, p0, Lcom/autonavi/its/protocol/restapi/ReqLocScene;->mTrafficBarWidth:I

    invoke-virtual {p0, p1}, Lcom/autonavi/its/protocol/restapi/ReqLocScene;->setUserKey(Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/autonavi/its/protocol/restapi/ReqLocScene;->setADCode(Ljava/lang/String;)V

    invoke-virtual {p0, p3, p4}, Lcom/autonavi/its/protocol/restapi/ReqLocScene;->setLongitude(D)V

    invoke-virtual {p0, p5, p6}, Lcom/autonavi/its/protocol/restapi/ReqLocScene;->setLatitude(D)V

    invoke-direct {p0, p7}, Lcom/autonavi/its/protocol/restapi/ReqLocScene;->setETAType(I)V

    invoke-direct {p0, p8}, Lcom/autonavi/its/protocol/restapi/ReqLocScene;->setTrafficBarWidth(I)V

    const-string/jumbo v0, "key"

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/restapi/ReqLocScene;->getUserKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/autonavi/its/protocol/restapi/ReqLocScene;->addParams(Ljava/lang/String;Ljava/lang/String;)Lcom/autonavi/its/protocol/BaseRequest;

    :try_start_0
    invoke-static {p9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "diu"

    new-instance v1, Ljava/lang/String;

    invoke-static {}, Lcom/autonavi/its/protocol/RequestManager;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/autonavi/its/common/Util;->getIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v2

    const-string/jumbo v3, "UTF-8"

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/autonavi/its/protocol/restapi/ReqLocScene;->addParams(Ljava/lang/String;Ljava/lang/String;)Lcom/autonavi/its/protocol/BaseRequest;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string/jumbo v0, "adcode"

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/restapi/ReqLocScene;->getADCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/autonavi/its/protocol/restapi/ReqLocScene;->addParams(Ljava/lang/String;Ljava/lang/String;)Lcom/autonavi/its/protocol/BaseRequest;

    const-string/jumbo v0, "location"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/autonavi/its/protocol/restapi/ReqLocScene;->DF:Ljava/text/DecimalFormat;

    invoke-virtual {v2, p3, p4}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/autonavi/its/protocol/restapi/ReqLocScene;->DF:Ljava/text/DecimalFormat;

    invoke-virtual {v2, p5, p6}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/autonavi/its/protocol/restapi/ReqLocScene;->addParams(Ljava/lang/String;Ljava/lang/String;)Lcom/autonavi/its/protocol/BaseRequest;

    const-string/jumbo v0, "source"

    const-string/jumbo v1, "trafficard"

    invoke-virtual {p0, v0, v1}, Lcom/autonavi/its/protocol/restapi/ReqLocScene;->addParams(Ljava/lang/String;Ljava/lang/String;)Lcom/autonavi/its/protocol/BaseRequest;

    const-string/jumbo v0, "etatype"

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/restapi/ReqLocScene;->getETAType()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/autonavi/its/protocol/restapi/ReqLocScene;->addParams(Ljava/lang/String;I)Lcom/autonavi/its/protocol/BaseRequest;

    invoke-static {}, Lcom/autonavi/its/protocol/RequestManager;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "com.autonavi.its"

    const-string/jumbo v2, "2.5"

    invoke-static {v0, v1, v2}, Lcom/autonavi/its/common/restapi/APIUtil;->getHeader(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/autonavi/its/protocol/restapi/ReqLocScene;->setHeader(Ljava/util/Map;)V

    return-void

    :cond_0
    :try_start_1
    const-string/jumbo v0, "diu"

    new-instance v1, Ljava/lang/String;

    invoke-virtual {p9}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v2

    const-string/jumbo v3, "UTF-8"

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/autonavi/its/protocol/restapi/ReqLocScene;->addParams(Ljava/lang/String;Ljava/lang/String;)Lcom/autonavi/its/protocol/BaseRequest;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private setADCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/its/protocol/restapi/ReqLocScene;->mADCode:Ljava/lang/String;

    return-void
.end method

.method private setETAInfo(Lcom/autonavi/its/protocol/model/eta/ETAInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/its/protocol/restapi/ReqLocScene;->mETAInfo:Lcom/autonavi/its/protocol/model/eta/ETAInfo;

    return-void
.end method

.method private setETAType(I)V
    .locals 0

    iput p1, p0, Lcom/autonavi/its/protocol/restapi/ReqLocScene;->mETAType:I

    return-void
.end method

.method private setEncCompanyLatitude(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/its/protocol/restapi/ReqLocScene;->mEncCompanyLatitude:Ljava/lang/String;

    return-void
.end method

.method private setEncCompanyLongitude(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/its/protocol/restapi/ReqLocScene;->mEncCompanyLongitude:Ljava/lang/String;

    return-void
.end method

.method private setEncHomeLatitude(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/its/protocol/restapi/ReqLocScene;->mEncHomeLatitude:Ljava/lang/String;

    return-void
.end method

.method private setEncHomeLongitude(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/its/protocol/restapi/ReqLocScene;->mEncHomeLongitude:Ljava/lang/String;

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
    iput p1, p0, Lcom/autonavi/its/protocol/restapi/ReqLocScene;->mTrafficBarWidth:I

    return-void
.end method


# virtual methods
.method public dealBusinessData(Ljava/lang/String;)V
    .locals 7

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/restapi/ReqLocScene;->getResponseContent()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p0, v4}, Lcom/autonavi/its/protocol/restapi/ReqLocScene;->setIsBusinessSuccess(Z)V

    const-string/jumbo v3, "\u8bf7\u6c42\u5931\u8d25\uff01"

    invoke-virtual {p0, v3}, Lcom/autonavi/its/protocol/restapi/ReqLocScene;->setResponseContent(Ljava/lang/String;)Lcom/autonavi/its/protocol/BaseRequest;

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/restapi/ReqLocScene;->getResponseContent()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v5, "status"

    const/4 v6, -0x1

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v3, :cond_2

    const/4 v5, 0x7

    if-ne v0, v5, :cond_3

    :cond_2
    :goto_1
    invoke-virtual {p0, v3}, Lcom/autonavi/its/protocol/restapi/ReqLocScene;->setIsBusinessSuccess(Z)V

    const-string/jumbo v3, "info"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/autonavi/its/protocol/restapi/ReqLocScene;->setMsg(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/restapi/ReqLocScene;->isBusinessSuccess()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "homelon"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/autonavi/its/common/Util;->filterEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/autonavi/its/protocol/restapi/ReqLocScene;->setEncHomeLongitude(Ljava/lang/String;)V

    const-string/jumbo v3, "homelat"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/autonavi/its/common/Util;->filterEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/autonavi/its/protocol/restapi/ReqLocScene;->setEncHomeLatitude(Ljava/lang/String;)V

    const-string/jumbo v3, "companylon"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/autonavi/its/common/Util;->filterEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/autonavi/its/protocol/restapi/ReqLocScene;->setEncCompanyLongitude(Ljava/lang/String;)V

    const-string/jumbo v3, "companylat"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/autonavi/its/common/Util;->filterEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/autonavi/its/protocol/restapi/ReqLocScene;->setEncCompanyLatitude(Ljava/lang/String;)V

    const-string/jumbo v3, "result"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "result"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v3}, Lcom/autonavi/its/protocol/model/eta/ETAInfo;->parser(Lorg/json/JSONObject;)Lcom/autonavi/its/protocol/model/eta/ETAInfo;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/autonavi/its/protocol/restapi/ReqLocScene;->setETAInfo(Lcom/autonavi/its/protocol/model/eta/ETAInfo;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {p0, v1}, Lcom/autonavi/its/protocol/restapi/ReqLocScene;->setException(Ljava/lang/Exception;)Lcom/autonavi/its/protocol/BaseRequest;

    invoke-virtual {p0, v4}, Lcom/autonavi/its/protocol/restapi/ReqLocScene;->setIsBusinessSuccess(Z)V

    goto/16 :goto_0

    :cond_3
    move v3, v4

    goto :goto_1
.end method

.method public getADCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/its/protocol/restapi/ReqLocScene;->mADCode:Ljava/lang/String;

    return-object v0
.end method

.method public getETAInfo()Lcom/autonavi/its/protocol/model/eta/ETAInfo;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/its/protocol/restapi/ReqLocScene;->mETAInfo:Lcom/autonavi/its/protocol/model/eta/ETAInfo;

    return-object v0
.end method

.method public getETAType()I
    .locals 1

    iget v0, p0, Lcom/autonavi/its/protocol/restapi/ReqLocScene;->mETAType:I

    return v0
.end method

.method public getEncCompanyLatitude()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/its/protocol/restapi/ReqLocScene;->mEncCompanyLatitude:Ljava/lang/String;

    return-object v0
.end method

.method public getEncCompanyLongitude()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/its/protocol/restapi/ReqLocScene;->mEncCompanyLongitude:Ljava/lang/String;

    return-object v0
.end method

.method public getEncHomeLatitude()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/its/protocol/restapi/ReqLocScene;->mEncHomeLatitude:Ljava/lang/String;

    return-object v0
.end method

.method public getEncHomeLongitude()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/its/protocol/restapi/ReqLocScene;->mEncHomeLongitude:Ljava/lang/String;

    return-object v0
.end method

.method public getLatitude()D
    .locals 2

    iget-wide v0, p0, Lcom/autonavi/its/protocol/restapi/ReqLocScene;->mLatitude:D

    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    iget-wide v0, p0, Lcom/autonavi/its/protocol/restapi/ReqLocScene;->mLongitude:D

    return-wide v0
.end method

.method public getTrafficBarWidth()I
    .locals 1

    iget v0, p0, Lcom/autonavi/its/protocol/restapi/ReqLocScene;->mTrafficBarWidth:I

    return v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "ReqLocScene"

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "https://restapi.amap.com/v3/lbp/locscene?"

    return-object v0
.end method

.method public getUserKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/its/protocol/restapi/ReqLocScene;->mUserKey:Ljava/lang/String;

    return-object v0
.end method

.method public setLatitude(D)V
    .locals 1

    iput-wide p1, p0, Lcom/autonavi/its/protocol/restapi/ReqLocScene;->mLatitude:D

    return-void
.end method

.method public setLongitude(D)V
    .locals 1

    iput-wide p1, p0, Lcom/autonavi/its/protocol/restapi/ReqLocScene;->mLongitude:D

    return-void
.end method

.method public setUserKey(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/its/protocol/restapi/ReqLocScene;->mUserKey:Ljava/lang/String;

    return-void
.end method
