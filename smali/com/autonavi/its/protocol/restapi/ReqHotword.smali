.class public Lcom/autonavi/its/protocol/restapi/ReqHotword;
.super Lcom/autonavi/its/protocol/BaseRequest;
.source "ReqHotword.java"


# static fields
.field private static DF:Ljava/text/DecimalFormat; = null

.field public static final TYPE:Ljava/lang/String; = "ReqHotword"

.field private static final URL:Ljava/lang/String; = "https://restapi.amap.com/v3/location/hotword?"


# instance fields
.field private mHotwordList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLatitude:D

.field private mLongitude:D


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/text/DecimalFormat;

    const-string/jumbo v1, "0.######"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/autonavi/its/protocol/restapi/ReqHotword;->DF:Ljava/text/DecimalFormat;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;DD)V
    .locals 4

    invoke-direct {p0}, Lcom/autonavi/its/protocol/BaseRequest;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/autonavi/its/protocol/restapi/ReqHotword;->mHotwordList:Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/autonavi/its/protocol/restapi/ReqHotword;->setUserKey(Ljava/lang/String;)V

    invoke-direct {p0, p2, p3}, Lcom/autonavi/its/protocol/restapi/ReqHotword;->setLongitude(D)V

    invoke-direct {p0, p4, p5}, Lcom/autonavi/its/protocol/restapi/ReqHotword;->setLatitude(D)V

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/restapi/ReqHotword;->getUserKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/autonavi/its/common/restapi/APIUtil;->setKey(Ljava/lang/String;)V

    const-string/jumbo v0, "key"

    invoke-static {}, Lcom/autonavi/its/protocol/RequestManager;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/autonavi/its/common/restapi/APIUtil;->getKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/autonavi/its/protocol/restapi/ReqHotword;->addParams(Ljava/lang/String;Ljava/lang/String;)Lcom/autonavi/its/protocol/BaseRequest;

    const-string/jumbo v0, "location"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/autonavi/its/protocol/restapi/ReqHotword;->DF:Ljava/text/DecimalFormat;

    invoke-virtual {v2, p2, p3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/autonavi/its/protocol/restapi/ReqHotword;->DF:Ljava/text/DecimalFormat;

    invoke-virtual {v2, p4, p5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/autonavi/its/protocol/restapi/ReqHotword;->addParams(Ljava/lang/String;Ljava/lang/String;)Lcom/autonavi/its/protocol/BaseRequest;

    const-string/jumbo v0, "imei"

    invoke-static {}, Lcom/autonavi/its/protocol/RequestManager;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/autonavi/its/common/Util;->getIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/autonavi/its/protocol/restapi/ReqHotword;->addParams(Ljava/lang/String;Ljava/lang/String;)Lcom/autonavi/its/protocol/BaseRequest;

    invoke-static {}, Lcom/autonavi/its/protocol/RequestManager;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "com.autonavi.its"

    const-string/jumbo v2, "2.5"

    invoke-static {v0, v1, v2}, Lcom/autonavi/its/common/restapi/APIUtil;->getHeader(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/autonavi/its/protocol/restapi/ReqHotword;->setHeader(Ljava/util/Map;)V

    new-instance v0, Lcom/autonavi/its/protocol/ability/net/RestBineryRequest;

    invoke-direct {v0}, Lcom/autonavi/its/protocol/ability/net/RestBineryRequest;-><init>()V

    invoke-virtual {p0, v0}, Lcom/autonavi/its/protocol/restapi/ReqHotword;->setNetAbility(Lcom/autonavi/its/protocol/ability/net/INetAbility;)V

    return-void
.end method

.method private addHotword(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/its/protocol/restapi/ReqHotword;->mHotwordList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private setLatitude(D)V
    .locals 1

    iput-wide p1, p0, Lcom/autonavi/its/protocol/restapi/ReqHotword;->mLatitude:D

    return-void
.end method

.method private setLongitude(D)V
    .locals 1

    iput-wide p1, p0, Lcom/autonavi/its/protocol/restapi/ReqHotword;->mLongitude:D

    return-void
.end method


# virtual methods
.method public dealBusinessData(Ljava/lang/String;)V
    .locals 10

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/restapi/ReqHotword;->getResponseContent()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {p0, v7}, Lcom/autonavi/its/protocol/restapi/ReqHotword;->setIsBusinessSuccess(Z)V

    const-string/jumbo v6, "\u8bf7\u6c42\u5931\u8d25\uff01"

    invoke-virtual {p0, v6}, Lcom/autonavi/its/protocol/restapi/ReqHotword;->setResponseContent(Ljava/lang/String;)Lcom/autonavi/its/protocol/BaseRequest;

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/restapi/ReqHotword;->getResponseContent()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v8, "status"

    const/4 v9, -0x1

    invoke-virtual {v4, v8, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v6, :cond_2

    const/4 v8, 0x7

    if-ne v0, v8, :cond_3

    :cond_2
    :goto_1
    invoke-virtual {p0, v6}, Lcom/autonavi/its/protocol/restapi/ReqHotword;->setIsBusinessSuccess(Z)V

    const-string/jumbo v6, "info"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/autonavi/its/protocol/restapi/ReqHotword;->setMsg(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/restapi/ReqHotword;->isBusinessSuccess()Z

    move-result v6

    if-eqz v6, :cond_0

    const-string/jumbo v6, "querylist"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-lez v6, :cond_0

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v5, :cond_0

    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/autonavi/its/protocol/restapi/ReqHotword;->addHotword(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    move v6, v7

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {p0, v1}, Lcom/autonavi/its/protocol/restapi/ReqHotword;->setException(Ljava/lang/Exception;)Lcom/autonavi/its/protocol/BaseRequest;

    invoke-virtual {p0, v7}, Lcom/autonavi/its/protocol/restapi/ReqHotword;->setIsBusinessSuccess(Z)V

    goto :goto_0
.end method

.method public getHotwordList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/autonavi/its/protocol/restapi/ReqHotword;->mHotwordList:Ljava/util/List;

    return-object v0
.end method

.method public getLatitude()D
    .locals 2

    iget-wide v0, p0, Lcom/autonavi/its/protocol/restapi/ReqHotword;->mLatitude:D

    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    iget-wide v0, p0, Lcom/autonavi/its/protocol/restapi/ReqHotword;->mLongitude:D

    return-wide v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "ReqHotword"

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "https://restapi.amap.com/v3/location/hotword?"

    return-object v0
.end method
