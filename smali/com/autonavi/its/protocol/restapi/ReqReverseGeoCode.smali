.class public Lcom/autonavi/its/protocol/restapi/ReqReverseGeoCode;
.super Lcom/autonavi/its/protocol/BaseRequest;
.source "ReqReverseGeoCode.java"


# static fields
.field public static final TYPE:Ljava/lang/String; = "ReqReverseGeoCode"

.field private static final URL:Ljava/lang/String; = "https://restapi.amap.com/v3/geocode/regeo?"


# instance fields
.field private mPOITypes:Ljava/lang/String;

.field private mPoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/autonavi/its/protocol/model/Point;",
            ">;"
        }
    .end annotation
.end field

.field private mRadius:I

.field private mReverseGeo:Lcom/autonavi/its/protocol/model/ReverseGeo;


# direct methods
.method public constructor <init>(Ljava/lang/String;DD)V
    .locals 4

    new-instance v0, Lcom/autonavi/its/protocol/model/Point;

    invoke-direct {v0, p2, p3, p4, p5}, Lcom/autonavi/its/protocol/model/Point;-><init>(DD)V

    invoke-static {v0}, Lcom/autonavi/its/protocol/restapi/ReqReverseGeoCode;->addOnePoint(Lcom/autonavi/its/protocol/model/Point;)Ljava/util/List;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/autonavi/its/protocol/restapi/ReqReverseGeoCode;-><init>(Ljava/lang/String;Ljava/util/List;IZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;DDI)V
    .locals 4

    new-instance v0, Lcom/autonavi/its/protocol/model/Point;

    invoke-direct {v0, p2, p3, p4, p5}, Lcom/autonavi/its/protocol/model/Point;-><init>(DD)V

    invoke-static {v0}, Lcom/autonavi/its/protocol/restapi/ReqReverseGeoCode;->addOnePoint(Lcom/autonavi/its/protocol/model/Point;)Ljava/util/List;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/autonavi/its/protocol/restapi/ReqReverseGeoCode;-><init>(Ljava/lang/String;Ljava/util/List;IZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;IZ)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/autonavi/its/protocol/model/Point;",
            ">;IZ)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/autonavi/its/protocol/restapi/ReqReverseGeoCode;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;IZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;IZ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/autonavi/its/protocol/model/Point;",
            ">;",
            "Ljava/lang/String;",
            "IZ)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/autonavi/its/protocol/BaseRequest;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/autonavi/its/protocol/restapi/ReqReverseGeoCode;->mPoints:Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/autonavi/its/protocol/restapi/ReqReverseGeoCode;->setUserKey(Ljava/lang/String;)V

    invoke-direct {p0, p3}, Lcom/autonavi/its/protocol/restapi/ReqReverseGeoCode;->setPOITypes(Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/autonavi/its/protocol/restapi/ReqReverseGeoCode;->setPoints(Ljava/util/List;)V

    invoke-direct {p0, p4}, Lcom/autonavi/its/protocol/restapi/ReqReverseGeoCode;->setRadius(I)V

    const-string/jumbo v0, "key"

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/restapi/ReqReverseGeoCode;->getUserKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/autonavi/its/protocol/restapi/ReqReverseGeoCode;->addParams(Ljava/lang/String;Ljava/lang/String;)Lcom/autonavi/its/protocol/BaseRequest;

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/restapi/ReqReverseGeoCode;->getPOITypes()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "poitype"

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/restapi/ReqReverseGeoCode;->getPOITypes()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/autonavi/its/protocol/restapi/ReqReverseGeoCode;->addParams(Ljava/lang/String;Ljava/lang/String;)Lcom/autonavi/its/protocol/BaseRequest;

    :cond_0
    const-string/jumbo v0, "location"

    invoke-direct {p0}, Lcom/autonavi/its/protocol/restapi/ReqReverseGeoCode;->getPointsParams()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/autonavi/its/protocol/restapi/ReqReverseGeoCode;->addParams(Ljava/lang/String;Ljava/lang/String;)Lcom/autonavi/its/protocol/BaseRequest;

    if-lez p4, :cond_1

    const-string/jumbo v0, "radius"

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/restapi/ReqReverseGeoCode;->getRadius()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/autonavi/its/protocol/restapi/ReqReverseGeoCode;->addParams(Ljava/lang/String;I)Lcom/autonavi/its/protocol/BaseRequest;

    :cond_1
    if-eqz p5, :cond_2

    const-string/jumbo v0, "extensions"

    const-string/jumbo v1, "all"

    invoke-virtual {p0, v0, v1}, Lcom/autonavi/its/protocol/restapi/ReqReverseGeoCode;->addParams(Ljava/lang/String;Ljava/lang/String;)Lcom/autonavi/its/protocol/BaseRequest;

    :cond_2
    invoke-static {}, Lcom/autonavi/its/protocol/RequestManager;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "com.autonavi.its"

    const-string/jumbo v2, "2.5"

    invoke-static {v0, v1, v2}, Lcom/autonavi/its/common/restapi/APIUtil;->getHeader(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/autonavi/its/protocol/restapi/ReqReverseGeoCode;->setHeader(Ljava/util/Map;)V

    return-void
.end method

.method private static addOnePoint(Lcom/autonavi/its/protocol/model/Point;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/autonavi/its/protocol/model/Point;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/autonavi/its/protocol/model/Point;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private getPointsParams()Ljava/lang/String;
    .locals 8

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/restapi/ReqReverseGeoCode;->getPoints()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/restapi/ReqReverseGeoCode;->getPoints()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/autonavi/its/protocol/model/Point;

    invoke-virtual {v3}, Lcom/autonavi/its/protocol/model/Point;->getLongitude()D

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/autonavi/its/protocol/model/Coordinate;->formatDouble6(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/restapi/ReqReverseGeoCode;->getPoints()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/autonavi/its/protocol/model/Point;

    invoke-virtual {v3}, Lcom/autonavi/its/protocol/model/Point;->getLatitude()D

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/autonavi/its/protocol/model/Coordinate;->formatDouble6(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v3, v2, -0x1

    if-eq v0, v3, :cond_0

    const-string/jumbo v3, "|"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private setPOITypes(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/its/protocol/restapi/ReqReverseGeoCode;->mPOITypes:Ljava/lang/String;

    return-void
.end method

.method private setPoints(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/autonavi/its/protocol/model/Point;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x14

    if-le v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "too many point\uff01"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/autonavi/its/protocol/restapi/ReqReverseGeoCode;->mPoints:Ljava/util/List;

    return-void
.end method

.method private setRadius(I)V
    .locals 0

    iput p1, p0, Lcom/autonavi/its/protocol/restapi/ReqReverseGeoCode;->mRadius:I

    return-void
.end method

.method private setReverseGeo(Lcom/autonavi/its/protocol/model/ReverseGeo;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/its/protocol/restapi/ReqReverseGeoCode;->mReverseGeo:Lcom/autonavi/its/protocol/model/ReverseGeo;

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

    if-ne v4, v2, :cond_1

    :goto_0
    invoke-virtual {p0, v2}, Lcom/autonavi/its/protocol/restapi/ReqReverseGeoCode;->setIsBusinessSuccess(Z)V

    const-string/jumbo v2, "info"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/autonavi/its/protocol/restapi/ReqReverseGeoCode;->setMsg(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/restapi/ReqReverseGeoCode;->isBusinessSuccess()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Lcom/autonavi/its/protocol/model/ReverseGeo;->parser(Lorg/json/JSONObject;)Lcom/autonavi/its/protocol/model/ReverseGeo;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/autonavi/its/protocol/restapi/ReqReverseGeoCode;->setReverseGeo(Lcom/autonavi/its/protocol/model/ReverseGeo;)V
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

    invoke-virtual {p0, v0}, Lcom/autonavi/its/protocol/restapi/ReqReverseGeoCode;->setException(Ljava/lang/Exception;)Lcom/autonavi/its/protocol/BaseRequest;

    invoke-virtual {p0, v3}, Lcom/autonavi/its/protocol/restapi/ReqReverseGeoCode;->setIsBusinessSuccess(Z)V

    goto :goto_1
.end method

.method public getPOITypes()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/its/protocol/restapi/ReqReverseGeoCode;->mPOITypes:Ljava/lang/String;

    return-object v0
.end method

.method public getPoints()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/autonavi/its/protocol/model/Point;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/autonavi/its/protocol/restapi/ReqReverseGeoCode;->mPoints:Ljava/util/List;

    return-object v0
.end method

.method public getRadius()I
    .locals 1

    iget v0, p0, Lcom/autonavi/its/protocol/restapi/ReqReverseGeoCode;->mRadius:I

    return v0
.end method

.method public getReverseGeo()Lcom/autonavi/its/protocol/model/ReverseGeo;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/its/protocol/restapi/ReqReverseGeoCode;->mReverseGeo:Lcom/autonavi/its/protocol/model/ReverseGeo;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "ReqReverseGeoCode"

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "https://restapi.amap.com/v3/geocode/regeo?"

    return-object v0
.end method
