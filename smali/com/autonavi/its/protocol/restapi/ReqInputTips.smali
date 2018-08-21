.class public Lcom/autonavi/its/protocol/restapi/ReqInputTips;
.super Lcom/autonavi/its/protocol/BaseRequest;
.source "ReqInputTips.java"


# static fields
.field public static final RESULT_DATA_TYPE_ALL:Ljava/lang/String; = "all"

.field public static final RESULT_DATA_TYPE_BUS:Ljava/lang/String; = "bus"

.field public static final RESULT_DATA_TYPE_BUS_LINE:Ljava/lang/String; = "busline"

.field public static final RESULT_DATA_TYPE_POI:Ljava/lang/String; = "poi"

.field public static final TYPE:Ljava/lang/String; = "ReqInputTips"

.field private static final URL:Ljava/lang/String; = "https://restapi.amap.com/v3/assistant/inputtips?"


# instance fields
.field private mCity:Ljava/lang/String;

.field private mKeyword:Ljava/lang/String;

.field private mLatitude:D

.field private mLongitude:D

.field private mPOIType:Ljava/lang/String;

.field private mResultDataTypes:[Ljava/lang/String;

.field private mTips:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/autonavi/its/protocol/model/POI;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    const-string/jumbo v8, ""

    const-string/jumbo v9, ""

    const/4 v0, 0x0

    new-array v10, v0, [Ljava/lang/String;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v6, v4

    invoke-direct/range {v1 .. v10}, Lcom/autonavi/its/protocol/restapi/ReqInputTips;-><init>(Ljava/lang/String;Ljava/lang/String;DDLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;DDLjava/lang/String;)V
    .locals 11

    const-string/jumbo v9, ""

    const/4 v0, 0x0

    new-array v10, v0, [Ljava/lang/String;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-wide/from16 v6, p5

    move-object/from16 v8, p7

    invoke-direct/range {v1 .. v10}, Lcom/autonavi/its/protocol/restapi/ReqInputTips;-><init>(Ljava/lang/String;Ljava/lang/String;DDLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;Ljava/lang/String;DDLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 9

    invoke-direct {p0}, Lcom/autonavi/its/protocol/BaseRequest;-><init>()V

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    iput-wide v6, p0, Lcom/autonavi/its/protocol/restapi/ReqInputTips;->mLongitude:D

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    iput-wide v6, p0, Lcom/autonavi/its/protocol/restapi/ReqInputTips;->mLatitude:D

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/autonavi/its/protocol/restapi/ReqInputTips;->mTips:Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/autonavi/its/protocol/restapi/ReqInputTips;->setUserKey(Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/autonavi/its/protocol/restapi/ReqInputTips;->setKeyword(Ljava/lang/String;)V

    move-object/from16 v0, p8

    invoke-direct {p0, v0}, Lcom/autonavi/its/protocol/restapi/ReqInputTips;->setPOIType(Ljava/lang/String;)V

    invoke-direct {p0, p3, p4}, Lcom/autonavi/its/protocol/restapi/ReqInputTips;->setLongitude(D)V

    invoke-direct {p0, p5, p6}, Lcom/autonavi/its/protocol/restapi/ReqInputTips;->setLatitude(D)V

    move-object/from16 v0, p7

    invoke-direct {p0, v0}, Lcom/autonavi/its/protocol/restapi/ReqInputTips;->setCity(Ljava/lang/String;)V

    move-object/from16 v0, p9

    invoke-direct {p0, v0}, Lcom/autonavi/its/protocol/restapi/ReqInputTips;->setResultDataTypes([Ljava/lang/String;)V

    const-string/jumbo v5, "key"

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/restapi/ReqInputTips;->getUserKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/autonavi/its/protocol/restapi/ReqInputTips;->addParams(Ljava/lang/String;Ljava/lang/String;)Lcom/autonavi/its/protocol/BaseRequest;

    const-string/jumbo v5, "keywords"

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/restapi/ReqInputTips;->getKeyword()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/autonavi/its/protocol/restapi/ReqInputTips;->addParams(Ljava/lang/String;Ljava/lang/String;)Lcom/autonavi/its/protocol/BaseRequest;

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/restapi/ReqInputTips;->getPOIType()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string/jumbo v5, "type"

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/restapi/ReqInputTips;->getPOIType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/autonavi/its/protocol/restapi/ReqInputTips;->addParams(Ljava/lang/String;Ljava/lang/String;)Lcom/autonavi/its/protocol/BaseRequest;

    :cond_0
    const-wide/16 v6, 0x0

    cmpl-double v5, p3, v6

    if-lez v5, :cond_1

    const-wide/16 v6, 0x0

    cmpl-double v5, p5, v6

    if-lez v5, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p3, p4}, Lcom/autonavi/its/protocol/model/Coordinate;->formatDouble6(D)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p5, p6}, Lcom/autonavi/its/protocol/model/Coordinate;->formatDouble6(D)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "location"

    invoke-virtual {p0, v5, v3}, Lcom/autonavi/its/protocol/restapi/ReqInputTips;->addParams(Ljava/lang/String;Ljava/lang/String;)Lcom/autonavi/its/protocol/BaseRequest;

    :cond_1
    invoke-virtual {p0}, Lcom/autonavi/its/protocol/restapi/ReqInputTips;->getCity()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string/jumbo v5, "city"

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/restapi/ReqInputTips;->getCity()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/autonavi/its/protocol/restapi/ReqInputTips;->addParams(Ljava/lang/String;Ljava/lang/String;)Lcom/autonavi/its/protocol/BaseRequest;

    :cond_2
    invoke-direct {p0}, Lcom/autonavi/its/protocol/restapi/ReqInputTips;->getResultDataTypes()[Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_5

    invoke-direct {p0}, Lcom/autonavi/its/protocol/restapi/ReqInputTips;->getResultDataTypes()[Ljava/lang/String;

    move-result-object v5

    array-length v5, v5

    if-lez v5, :cond_5

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v2, 0x0

    :goto_0
    invoke-direct {p0}, Lcom/autonavi/its/protocol/restapi/ReqInputTips;->getResultDataTypes()[Ljava/lang/String;

    move-result-object v5

    array-length v5, v5

    if-ge v2, v5, :cond_4

    invoke-direct {p0}, Lcom/autonavi/its/protocol/restapi/ReqInputTips;->getResultDataTypes()[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0}, Lcom/autonavi/its/protocol/restapi/ReqInputTips;->getResultDataTypes()[Ljava/lang/String;

    move-result-object v5

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    if-eq v2, v5, :cond_3

    const-string/jumbo v5, "|"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    const-string/jumbo v5, "datatype"

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/autonavi/its/protocol/restapi/ReqInputTips;->addParams(Ljava/lang/String;Ljava/lang/String;)Lcom/autonavi/its/protocol/BaseRequest;

    :cond_5
    invoke-static {}, Lcom/autonavi/its/protocol/RequestManager;->getAppContext()Landroid/content/Context;

    move-result-object v5

    const-string/jumbo v6, "com.autonavi.its"

    const-string/jumbo v7, "2.5"

    invoke-static {v5, v6, v7}, Lcom/autonavi/its/common/restapi/APIUtil;->getHeader(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/autonavi/its/protocol/restapi/ReqInputTips;->setHeader(Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    const-string/jumbo v9, ""

    const/4 v0, 0x0

    new-array v10, v0, [Ljava/lang/String;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v6, v4

    move-object v8, p3

    invoke-direct/range {v1 .. v10}, Lcom/autonavi/its/protocol/restapi/ReqInputTips;-><init>(Ljava/lang/String;Ljava/lang/String;DDLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method private getResultDataTypes()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/its/protocol/restapi/ReqInputTips;->mResultDataTypes:[Ljava/lang/String;

    return-object v0
.end method

.method private setCity(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/its/protocol/restapi/ReqInputTips;->mCity:Ljava/lang/String;

    return-void
.end method

.method private setKeyword(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/its/protocol/restapi/ReqInputTips;->mKeyword:Ljava/lang/String;

    return-void
.end method

.method private setLatitude(D)V
    .locals 1

    iput-wide p1, p0, Lcom/autonavi/its/protocol/restapi/ReqInputTips;->mLatitude:D

    return-void
.end method

.method private setLongitude(D)V
    .locals 1

    iput-wide p1, p0, Lcom/autonavi/its/protocol/restapi/ReqInputTips;->mLongitude:D

    return-void
.end method

.method private setPOIType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/its/protocol/restapi/ReqInputTips;->mPOIType:Ljava/lang/String;

    return-void
.end method

.method private setResultDataTypes([Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/its/protocol/restapi/ReqInputTips;->mResultDataTypes:[Ljava/lang/String;

    return-void
.end method

.method private setTips(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/autonavi/its/protocol/model/POI;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/autonavi/its/protocol/restapi/ReqInputTips;->mTips:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public dealBusinessData(Ljava/lang/String;)V
    .locals 8

    const/4 v4, 0x1

    const/4 v5, 0x0

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v6, "status"

    const/4 v7, -0x1

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v4, :cond_1

    :goto_0
    invoke-virtual {p0, v4}, Lcom/autonavi/its/protocol/restapi/ReqInputTips;->setIsBusinessSuccess(Z)V

    const-string/jumbo v4, "info"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/autonavi/its/protocol/restapi/ReqInputTips;->setMsg(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/restapi/ReqInputTips;->isBusinessSuccess()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string/jumbo v4, "tips"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-static {v3}, Lcom/autonavi/its/protocol/model/POI;->parserArray(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/autonavi/its/protocol/restapi/ReqInputTips;->setTips(Ljava/util/List;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    return-void

    :cond_1
    move v4, v5

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {p0, v1}, Lcom/autonavi/its/protocol/restapi/ReqInputTips;->setException(Ljava/lang/Exception;)Lcom/autonavi/its/protocol/BaseRequest;

    invoke-virtual {p0, v5}, Lcom/autonavi/its/protocol/restapi/ReqInputTips;->setIsBusinessSuccess(Z)V

    goto :goto_1
.end method

.method public getCity()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/its/protocol/restapi/ReqInputTips;->mCity:Ljava/lang/String;

    return-object v0
.end method

.method public getKeyword()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/its/protocol/restapi/ReqInputTips;->mKeyword:Ljava/lang/String;

    return-object v0
.end method

.method public getLatitude()D
    .locals 2

    iget-wide v0, p0, Lcom/autonavi/its/protocol/restapi/ReqInputTips;->mLatitude:D

    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    iget-wide v0, p0, Lcom/autonavi/its/protocol/restapi/ReqInputTips;->mLongitude:D

    return-wide v0
.end method

.method public getPOIType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/its/protocol/restapi/ReqInputTips;->mPOIType:Ljava/lang/String;

    return-object v0
.end method

.method public getTips()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/autonavi/its/protocol/model/POI;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/autonavi/its/protocol/restapi/ReqInputTips;->mTips:Ljava/util/List;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "ReqInputTips"

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "https://restapi.amap.com/v3/assistant/inputtips?"

    return-object v0
.end method
