.class public Lcom/autonavi/its/protocol/model/POI;
.super Lcom/autonavi/its/protocol/model/Coordinate;
.source "POI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/autonavi/its/protocol/model/POI$Photo;,
        Lcom/autonavi/its/protocol/model/POI$BusinessDepthInfo;,
        Lcom/autonavi/its/protocol/model/POI$IndoorData;
    }
.end annotation


# static fields
.field private static final JSON_KEY_ADDRESS:Ljava/lang/String; = "address"

.field private static final JSON_KEY_LAT:Ljava/lang/String; = "latitude"

.field private static final JSON_KEY_LONG:Ljava/lang/String; = "longitude"

.field private static final JSON_KEY_NAME:Ljava/lang/String; = "name"


# instance fields
.field private mADName:Ljava/lang/String;

.field private mAdCode:Ljava/lang/String;

.field private mAddress:Ljava/lang/String;

.field private mAlias:Ljava/lang/String;

.field private mBusinessArea:Ljava/lang/String;

.field private mBusinessDepthInfo:Lcom/autonavi/its/protocol/model/POI$BusinessDepthInfo;

.field private mBusinessInfoType:Ljava/lang/String;

.field private mCityCode:Ljava/lang/String;

.field private mCityName:Ljava/lang/String;

.field private mDirection:Ljava/lang/String;

.field private mDistance:D

.field private mDistrict:Ljava/lang/String;

.field private mEmail:Ljava/lang/String;

.field private mEntrLocation:Lcom/autonavi/its/protocol/model/Coordinate;

.field private mExitLocation:Lcom/autonavi/its/protocol/model/Coordinate;

.field private mGridCode:Ljava/lang/String;

.field private mHasIndoorMap:Z

.field private mId:Ljava/lang/String;

.field private mIndoorData:Lcom/autonavi/its/protocol/model/POI$IndoorData;

.field private mName:Ljava/lang/String;

.field private mNaviPOIId:Ljava/lang/String;

.field private mPCode:Ljava/lang/String;

.field private mPName:Ljava/lang/String;

.field private mParkingType:Ljava/lang/String;

.field private mPhotos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/autonavi/its/protocol/model/POI$Photo;",
            ">;"
        }
    .end annotation
.end field

.field private mPostcode:Ljava/lang/String;

.field private mTag:Ljava/lang/String;

.field private mTel:Ljava/lang/String;

.field protected mType:Ljava/lang/String;

.field private mTypeCode:Ljava/lang/String;

.field private mWebsite:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/autonavi/its/protocol/model/Coordinate;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/autonavi/its/protocol/model/POI;->mName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(DDLjava/lang/String;)V
    .locals 9

    const/4 v6, 0x0

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/autonavi/its/protocol/model/POI;-><init>(DDLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(DDLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/autonavi/its/protocol/model/Coordinate;-><init>(DD)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/autonavi/its/protocol/model/POI;->mName:Ljava/lang/String;

    invoke-direct {p0, p6}, Lcom/autonavi/its/protocol/model/POI;->setAddress(Ljava/lang/String;)Lcom/autonavi/its/protocol/model/POI;

    invoke-direct {p0, p5}, Lcom/autonavi/its/protocol/model/POI;->setName(Ljava/lang/String;)Lcom/autonavi/its/protocol/model/POI;

    return-void
.end method

.method public static fromJson(Lorg/json/JSONObject;)Lcom/autonavi/its/protocol/model/POI;
    .locals 4

    new-instance v0, Lcom/autonavi/its/protocol/model/POI;

    invoke-direct {v0}, Lcom/autonavi/its/protocol/model/POI;-><init>()V

    const-string/jumbo v1, "name"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/autonavi/its/protocol/model/POI;->setName(Ljava/lang/String;)Lcom/autonavi/its/protocol/model/POI;

    const-string/jumbo v1, "address"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/autonavi/its/protocol/model/POI;->setAddress(Ljava/lang/String;)Lcom/autonavi/its/protocol/model/POI;

    const-string/jumbo v1, "latitude"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/autonavi/its/protocol/model/POI;->setLatitude(D)Lcom/autonavi/its/protocol/model/Coordinate;

    const-string/jumbo v1, "longitude"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/autonavi/its/protocol/model/POI;->setLongitude(D)Lcom/autonavi/its/protocol/model/Coordinate;

    return-object v0
.end method

.method public static parser(Lorg/json/JSONObject;)Lcom/autonavi/its/protocol/model/POI;
    .locals 9

    const/4 v8, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    new-instance v0, Lcom/autonavi/its/protocol/model/POI;

    invoke-direct {v0}, Lcom/autonavi/its/protocol/model/POI;-><init>()V

    if-eqz p0, :cond_3

    const-string/jumbo v5, "id"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string/jumbo v5, "id"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/autonavi/its/protocol/model/POI;->setId(Ljava/lang/String;)Lcom/autonavi/its/protocol/model/POI;

    :cond_0
    const-string/jumbo v5, "address"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/autonavi/its/common/Util;->filterEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/autonavi/its/protocol/model/POI;->setAddress(Ljava/lang/String;)Lcom/autonavi/its/protocol/model/POI;

    const-string/jumbo v5, "name"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/autonavi/its/protocol/model/POI;->setName(Ljava/lang/String;)Lcom/autonavi/its/protocol/model/POI;

    const-string/jumbo v5, "type"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/autonavi/its/protocol/model/POI;->setType(Ljava/lang/String;)Lcom/autonavi/its/protocol/model/POI;

    const-string/jumbo v5, "district"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/autonavi/its/protocol/model/POI;->setDistrict(Ljava/lang/String;)V

    const-string/jumbo v5, "adcode"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/autonavi/its/protocol/model/POI;->setAdCode(Ljava/lang/String;)V

    const-string/jumbo v5, "direction"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/autonavi/its/protocol/model/POI;->setDirection(Ljava/lang/String;)V

    const-string/jumbo v5, "businessarea"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/autonavi/its/protocol/model/POI;->setBusinessArea(Ljava/lang/String;)V

    const-string/jumbo v5, "tel"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/autonavi/its/common/Util;->filterEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/autonavi/its/protocol/model/POI;->setTel(Ljava/lang/String;)Lcom/autonavi/its/protocol/model/POI;

    const-string/jumbo v5, "distance"

    const-wide/16 v6, 0x0

    invoke-virtual {p0, v5, v6, v7}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v6

    invoke-direct {v0, v6, v7}, Lcom/autonavi/its/protocol/model/POI;->setDistance(D)Lcom/autonavi/its/protocol/model/POI;

    const-string/jumbo v5, "typecode"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/autonavi/its/protocol/model/POI;->setTypeCode(Ljava/lang/String;)V

    const-string/jumbo v5, "location"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/autonavi/its/common/Util;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string/jumbo v5, ","

    invoke-virtual {v1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    array-length v5, v2

    if-eq v5, v8, :cond_1

    const-string/jumbo v5, " "

    invoke-virtual {v1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    :cond_1
    array-length v5, v2

    if-ne v5, v8, :cond_2

    aget-object v5, v2, v4

    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/autonavi/its/protocol/model/POI;->formatDouble6(D)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Lcom/autonavi/its/protocol/model/POI;->setLongitude(D)Lcom/autonavi/its/protocol/model/Coordinate;

    aget-object v5, v2, v3

    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/autonavi/its/protocol/model/POI;->formatDouble6(D)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Lcom/autonavi/its/protocol/model/POI;->setLatitude(D)Lcom/autonavi/its/protocol/model/Coordinate;

    :cond_2
    const-string/jumbo v5, "tag"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/autonavi/its/common/Util;->filterEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/autonavi/its/protocol/model/POI;->setTag(Ljava/lang/String;)V

    const-string/jumbo v5, "biz_type"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/autonavi/its/common/Util;->filterEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/autonavi/its/protocol/model/POI;->setBusinessInfoType(Ljava/lang/String;)V

    const-string/jumbo v5, "postcode"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/autonavi/its/common/Util;->filterEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/autonavi/its/protocol/model/POI;->setPostcode(Ljava/lang/String;)V

    const-string/jumbo v5, "website"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/autonavi/its/common/Util;->filterEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/autonavi/its/protocol/model/POI;->setWebsite(Ljava/lang/String;)V

    const-string/jumbo v5, "email"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/autonavi/its/common/Util;->filterEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/autonavi/its/protocol/model/POI;->setEmail(Ljava/lang/String;)V

    const-string/jumbo v5, "pcode"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/autonavi/its/common/Util;->filterEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/autonavi/its/protocol/model/POI;->setPCode(Ljava/lang/String;)V

    const-string/jumbo v5, "pname"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/autonavi/its/common/Util;->filterEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/autonavi/its/protocol/model/POI;->setPName(Ljava/lang/String;)V

    const-string/jumbo v5, "citycode"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/autonavi/its/common/Util;->filterEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/autonavi/its/protocol/model/POI;->setCityCode(Ljava/lang/String;)V

    const-string/jumbo v5, "cityname"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/autonavi/its/common/Util;->filterEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/autonavi/its/protocol/model/POI;->setCityName(Ljava/lang/String;)V

    const-string/jumbo v5, "adname"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/autonavi/its/common/Util;->filterEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/autonavi/its/protocol/model/POI;->setADName(Ljava/lang/String;)V

    const-string/jumbo v5, "entr_location"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/autonavi/its/protocol/model/Coordinate;->parserProtocolString(Ljava/lang/String;)Lcom/autonavi/its/protocol/model/Coordinate;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/autonavi/its/protocol/model/POI;->setEntrLocation(Lcom/autonavi/its/protocol/model/Coordinate;)V

    const-string/jumbo v5, "exit_location"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/autonavi/its/protocol/model/Coordinate;->parserProtocolString(Ljava/lang/String;)Lcom/autonavi/its/protocol/model/Coordinate;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/autonavi/its/protocol/model/POI;->setExitLocation(Lcom/autonavi/its/protocol/model/Coordinate;)V

    const-string/jumbo v5, "navi_poiid"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/autonavi/its/common/Util;->filterEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/autonavi/its/protocol/model/POI;->setNaviPOIId(Ljava/lang/String;)V

    const-string/jumbo v5, "gridcode"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/autonavi/its/common/Util;->filterEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/autonavi/its/protocol/model/POI;->setGridCode(Ljava/lang/String;)V

    const-string/jumbo v5, "alias"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/autonavi/its/common/Util;->filterEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/autonavi/its/protocol/model/POI;->setAlias(Ljava/lang/String;)V

    const-string/jumbo v5, "business_area"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/autonavi/its/protocol/model/POI;->setBusinessArea(Ljava/lang/String;)V

    const-string/jumbo v5, "parking_type"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/autonavi/its/protocol/model/POI;->setParkingType(Ljava/lang/String;)V

    const-string/jumbo v5, "indoor_map"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    if-ne v5, v3, :cond_4

    :goto_0
    invoke-direct {v0, v3}, Lcom/autonavi/its/protocol/model/POI;->setHasIndoorMap(Z)V

    const-string/jumbo v3, "indoor_data"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v3}, Lcom/autonavi/its/protocol/model/POI$IndoorData;->parser(Lorg/json/JSONObject;)Lcom/autonavi/its/protocol/model/POI$IndoorData;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/autonavi/its/protocol/model/POI;->setIndoorData(Lcom/autonavi/its/protocol/model/POI$IndoorData;)V

    const-string/jumbo v3, "biz_ext"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v3}, Lcom/autonavi/its/protocol/model/POI$BusinessDepthInfo;->parser(Lorg/json/JSONObject;)Lcom/autonavi/its/protocol/model/POI$BusinessDepthInfo;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/autonavi/its/protocol/model/POI;->setBusinessDepthInfo(Lcom/autonavi/its/protocol/model/POI$BusinessDepthInfo;)V

    const-string/jumbo v3, "photos"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-static {v3}, Lcom/autonavi/its/protocol/model/POI$Photo;->parserArray(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/autonavi/its/protocol/model/POI;->setPhotos(Ljava/util/List;)V

    :cond_3
    return-object v0

    :cond_4
    move v3, v4

    goto :goto_0
.end method

.method public static parserArray(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/autonavi/its/protocol/model/POI;",
            ">;"
        }
    .end annotation

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v3}, Lcom/autonavi/its/protocol/model/POI;->parser(Lorg/json/JSONObject;)Lcom/autonavi/its/protocol/model/POI;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method private setADName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/its/protocol/model/POI;->mADName:Ljava/lang/String;

    return-void
.end method

.method private setAdCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/its/protocol/model/POI;->mAdCode:Ljava/lang/String;

    return-void
.end method

.method private setAddress(Ljava/lang/String;)Lcom/autonavi/its/protocol/model/POI;
    .locals 0

    iput-object p1, p0, Lcom/autonavi/its/protocol/model/POI;->mAddress:Ljava/lang/String;

    return-object p0
.end method

.method private setAlias(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/its/protocol/model/POI;->mAlias:Ljava/lang/String;

    return-void
.end method

.method private setBusinessArea(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/autonavi/its/protocol/model/POI;->mBusinessArea:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private setBusinessDepthInfo(Lcom/autonavi/its/protocol/model/POI$BusinessDepthInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/its/protocol/model/POI;->mBusinessDepthInfo:Lcom/autonavi/its/protocol/model/POI$BusinessDepthInfo;

    return-void
.end method

.method private setBusinessInfoType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/its/protocol/model/POI;->mBusinessInfoType:Ljava/lang/String;

    return-void
.end method

.method private setCityCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/its/protocol/model/POI;->mCityCode:Ljava/lang/String;

    return-void
.end method

.method private setCityName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/its/protocol/model/POI;->mCityName:Ljava/lang/String;

    return-void
.end method

.method private setDirection(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/its/protocol/model/POI;->mDirection:Ljava/lang/String;

    return-void
.end method

.method private setDistance(D)Lcom/autonavi/its/protocol/model/POI;
    .locals 1

    iput-wide p1, p0, Lcom/autonavi/its/protocol/model/POI;->mDistance:D

    return-object p0
.end method

.method private setDistrict(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/its/protocol/model/POI;->mDistrict:Ljava/lang/String;

    return-void
.end method

.method private setEmail(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/its/protocol/model/POI;->mEmail:Ljava/lang/String;

    return-void
.end method

.method private setEntrLocation(Lcom/autonavi/its/protocol/model/Coordinate;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/its/protocol/model/POI;->mEntrLocation:Lcom/autonavi/its/protocol/model/Coordinate;

    return-void
.end method

.method private setExitLocation(Lcom/autonavi/its/protocol/model/Coordinate;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/its/protocol/model/POI;->mExitLocation:Lcom/autonavi/its/protocol/model/Coordinate;

    return-void
.end method

.method private setGridCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/its/protocol/model/POI;->mGridCode:Ljava/lang/String;

    return-void
.end method

.method private setHasIndoorMap(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/autonavi/its/protocol/model/POI;->mHasIndoorMap:Z

    return-void
.end method

.method private setId(Ljava/lang/String;)Lcom/autonavi/its/protocol/model/POI;
    .locals 0

    iput-object p1, p0, Lcom/autonavi/its/protocol/model/POI;->mId:Ljava/lang/String;

    return-object p0
.end method

.method private setIndoorData(Lcom/autonavi/its/protocol/model/POI$IndoorData;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/its/protocol/model/POI;->mIndoorData:Lcom/autonavi/its/protocol/model/POI$IndoorData;

    return-void
.end method

.method private setName(Ljava/lang/String;)Lcom/autonavi/its/protocol/model/POI;
    .locals 0

    iput-object p1, p0, Lcom/autonavi/its/protocol/model/POI;->mName:Ljava/lang/String;

    return-object p0
.end method

.method private setNaviPOIId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/its/protocol/model/POI;->mNaviPOIId:Ljava/lang/String;

    return-void
.end method

.method private setPCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/its/protocol/model/POI;->mPCode:Ljava/lang/String;

    return-void
.end method

.method private setPName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/its/protocol/model/POI;->mPName:Ljava/lang/String;

    return-void
.end method

.method private setParkingType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/its/protocol/model/POI;->mParkingType:Ljava/lang/String;

    return-void
.end method

.method private setPhotos(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/autonavi/its/protocol/model/POI$Photo;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/autonavi/its/protocol/model/POI;->mPhotos:Ljava/util/List;

    return-void
.end method

.method private setPostcode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/its/protocol/model/POI;->mPostcode:Ljava/lang/String;

    return-void
.end method

.method private setTag(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/its/protocol/model/POI;->mTag:Ljava/lang/String;

    return-void
.end method

.method private setTel(Ljava/lang/String;)Lcom/autonavi/its/protocol/model/POI;
    .locals 0

    iput-object p1, p0, Lcom/autonavi/its/protocol/model/POI;->mTel:Ljava/lang/String;

    return-object p0
.end method

.method private setType(Ljava/lang/String;)Lcom/autonavi/its/protocol/model/POI;
    .locals 0

    iput-object p1, p0, Lcom/autonavi/its/protocol/model/POI;->mType:Ljava/lang/String;

    return-object p0
.end method

.method private setTypeCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/its/protocol/model/POI;->mTypeCode:Ljava/lang/String;

    return-void
.end method

.method private setWebsite(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/its/protocol/model/POI;->mWebsite:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getADName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/its/protocol/model/POI;->mADName:Ljava/lang/String;

    return-object v0
.end method

.method public getAdCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/its/protocol/model/POI;->mAdCode:Ljava/lang/String;

    return-object v0
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/its/protocol/model/POI;->mAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getAlias()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/its/protocol/model/POI;->mAlias:Ljava/lang/String;

    return-object v0
.end method

.method public getBusinessArea()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/its/protocol/model/POI;->mBusinessArea:Ljava/lang/String;

    return-object v0
.end method

.method public getBusinessDepthInfo()Lcom/autonavi/its/protocol/model/POI$BusinessDepthInfo;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/its/protocol/model/POI;->mBusinessDepthInfo:Lcom/autonavi/its/protocol/model/POI$BusinessDepthInfo;

    return-object v0
.end method

.method public getBusinessInfoType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/its/protocol/model/POI;->mBusinessInfoType:Ljava/lang/String;

    return-object v0
.end method

.method public getCityCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/its/protocol/model/POI;->mCityCode:Ljava/lang/String;

    return-object v0
.end method

.method public getCityName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/its/protocol/model/POI;->mCityName:Ljava/lang/String;

    return-object v0
.end method

.method public getDirection()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/its/protocol/model/POI;->mDirection:Ljava/lang/String;

    return-object v0
.end method

.method public getDistance()D
    .locals 2

    iget-wide v0, p0, Lcom/autonavi/its/protocol/model/POI;->mDistance:D

    return-wide v0
.end method

.method public getDistrict()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/its/protocol/model/POI;->mDistrict:Ljava/lang/String;

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/its/protocol/model/POI;->mEmail:Ljava/lang/String;

    return-object v0
.end method

.method public getEntrLocation()Lcom/autonavi/its/protocol/model/Coordinate;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/its/protocol/model/POI;->mEntrLocation:Lcom/autonavi/its/protocol/model/Coordinate;

    return-object v0
.end method

.method public getExitLocation()Lcom/autonavi/its/protocol/model/Coordinate;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/its/protocol/model/POI;->mExitLocation:Lcom/autonavi/its/protocol/model/Coordinate;

    return-object v0
.end method

.method public getGridCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/its/protocol/model/POI;->mGridCode:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/its/protocol/model/POI;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getIndoorData()Lcom/autonavi/its/protocol/model/POI$IndoorData;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/its/protocol/model/POI;->mIndoorData:Lcom/autonavi/its/protocol/model/POI$IndoorData;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/its/protocol/model/POI;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getNaviPOIId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/its/protocol/model/POI;->mNaviPOIId:Ljava/lang/String;

    return-object v0
.end method

.method public getPCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/its/protocol/model/POI;->mPCode:Ljava/lang/String;

    return-object v0
.end method

.method public getPName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/its/protocol/model/POI;->mPName:Ljava/lang/String;

    return-object v0
.end method

.method public getParkingType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/its/protocol/model/POI;->mParkingType:Ljava/lang/String;

    return-object v0
.end method

.method public getPhotos()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/autonavi/its/protocol/model/POI$Photo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/autonavi/its/protocol/model/POI;->mPhotos:Ljava/util/List;

    return-object v0
.end method

.method public getPostcode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/its/protocol/model/POI;->mPostcode:Ljava/lang/String;

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/its/protocol/model/POI;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method public getTel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/its/protocol/model/POI;->mTel:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/its/protocol/model/POI;->mType:Ljava/lang/String;

    return-object v0
.end method

.method public getTypeCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/its/protocol/model/POI;->mTypeCode:Ljava/lang/String;

    return-object v0
.end method

.method public getWebsite()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/its/protocol/model/POI;->mWebsite:Ljava/lang/String;

    return-object v0
.end method

.method public hasIndoorMap()Z
    .locals 1

    iget-boolean v0, p0, Lcom/autonavi/its/protocol/model/POI;->mHasIndoorMap:Z

    return v0
.end method

.method public toJson()Lorg/json/JSONObject;
    .locals 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string/jumbo v1, "longitude"

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/model/POI;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string/jumbo v1, "latitude"

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/model/POI;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string/jumbo v1, "address"

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/model/POI;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "name"

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/model/POI;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v1, "\nPOI ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v1, "id"

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/model/POI;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/autonavi/its/common/Util;->createLine(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "\u5730\u5740"

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/model/POI;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/autonavi/its/common/Util;->createLine(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "\u540d\u79f0"

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/model/POI;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/autonavi/its/common/Util;->createLine(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "POI\u7c7b\u578b"

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/model/POI;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/autonavi/its/common/Util;->createLine(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "POI\u7f16\u7801"

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/model/POI;->getTypeCode()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/autonavi/its/common/Util;->createLine(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "\u533a\u57df\u7f16\u7801"

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/model/POI;->getAdCode()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/autonavi/its/common/Util;->createLine(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "\u8857\u533a\u4fe1\u606f"

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/model/POI;->getDistrict()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/autonavi/its/common/Util;->createLine(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "\u6240\u5728\u5546\u5708"

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/model/POI;->getBusinessArea()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/autonavi/its/common/Util;->createLine(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "\u65b9\u5411"

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/model/POI;->getDirection()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/autonavi/its/common/Util;->createLine(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "\u7535\u8bdd"

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/model/POI;->getTel()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/autonavi/its/common/Util;->createLine(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "\u79bb\u4e2d\u5fc3\u70b9\u8ddd\u79bb\uff08\u5355\u4f4d\uff1a\u7c73\uff09"

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/model/POI;->getDistance()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/autonavi/its/common/Util;->createLine(Ljava/lang/StringBuffer;Ljava/lang/String;D)V

    const-string/jumbo v1, "\u7ecf\u5ea6"

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/model/POI;->getLongitude()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/autonavi/its/common/Util;->createLine(Ljava/lang/StringBuffer;Ljava/lang/String;D)V

    const-string/jumbo v1, "\u7eac\u5ea6"

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/model/POI;->getLatitude()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/autonavi/its/common/Util;->createLine(Ljava/lang/StringBuffer;Ljava/lang/String;D)V

    const-string/jumbo v1, "POI\u7684\u70ed\u95e8\u83dc"

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/model/POI;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/autonavi/its/common/Util;->createLine(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "\u884c\u4e1a\u7c7b\u578b"

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/model/POI;->getBusinessInfoType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/autonavi/its/common/Util;->createLine(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "\u90ae\u7f16"

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/model/POI;->getPostcode()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/autonavi/its/common/Util;->createLine(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "POI\u7f51\u5740"

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/model/POI;->getWebsite()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/autonavi/its/common/Util;->createLine(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "\u90ae\u7bb1"

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/model/POI;->getEmail()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/autonavi/its/common/Util;->createLine(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "\u7701\u4efd\u7f16\u7801"

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/model/POI;->getPCode()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/autonavi/its/common/Util;->createLine(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "\u7701\u4efd\u540d\u79f0"

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/model/POI;->getPName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/autonavi/its/common/Util;->createLine(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "\u57ce\u5e02\u7f16\u7801"

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/model/POI;->getCityCode()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/autonavi/its/common/Util;->createLine(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "\u57ce\u5e02\u540d"

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/model/POI;->getCityName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/autonavi/its/common/Util;->createLine(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "\u533a\u57df\u540d\u79f0"

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/model/POI;->getADName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/autonavi/its/common/Util;->createLine(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "\u5165\u53e3\u7ecf\u7eac\u5ea6"

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/model/POI;->getEntrLocation()Lcom/autonavi/its/protocol/model/Coordinate;

    move-result-object v1

    if-nez v1, :cond_2

    const-string/jumbo v1, ""

    :goto_0
    invoke-static {v0, v2, v1}, Lcom/autonavi/its/common/Util;->createLine(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "\u51fa\u53e3\u7ecf\u7eac\u5ea6"

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/model/POI;->getExitLocation()Lcom/autonavi/its/protocol/model/Coordinate;

    move-result-object v1

    if-nez v1, :cond_3

    const-string/jumbo v1, ""

    :goto_1
    invoke-static {v0, v2, v1}, Lcom/autonavi/its/common/Util;->createLine(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "\u5730\u56fe\u7f16\u53f7"

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/model/POI;->getNaviPOIId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/autonavi/its/common/Util;->createLine(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "\u5730\u7406\u683cID"

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/model/POI;->getGridCode()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/autonavi/its/common/Util;->createLine(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "\u522b\u540d"

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/model/POI;->getAlias()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/autonavi/its/common/Util;->createLine(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "\u6240\u5728\u5546\u5708"

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/model/POI;->getBusinessArea()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/autonavi/its/common/Util;->createLine(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "\u505c\u8f66\u573a\u7c7b\u578b"

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/model/POI;->getParkingType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/autonavi/its/common/Util;->createLine(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "\u662f\u5426\u6709\u5ba4\u5185\u5730\u56fe"

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/model/POI;->hasIndoorMap()Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/autonavi/its/common/Util;->createLine(Ljava/lang/StringBuffer;Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/model/POI;->hasIndoorMap()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v2, "\u5ba4\u5185\u5730\u56fe\u76f8\u5173\u6570\u636e"

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/model/POI;->getIndoorData()Lcom/autonavi/its/protocol/model/POI$IndoorData;

    move-result-object v1

    if-nez v1, :cond_4

    const-string/jumbo v1, ""

    :goto_2
    invoke-static {v0, v2, v1}, Lcom/autonavi/its/common/Util;->createLine(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string/jumbo v2, "\u5546\u4e1a\u6df1\u5ea6\u4fe1\u606f"

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/model/POI;->getBusinessDepthInfo()Lcom/autonavi/its/protocol/model/POI$BusinessDepthInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/model/POI;->getBusinessDepthInfo()Lcom/autonavi/its/protocol/model/POI$BusinessDepthInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autonavi/its/protocol/model/POI$BusinessDepthInfo;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_1
    const-string/jumbo v1, ""

    :goto_3
    invoke-static {v0, v2, v1}, Lcom/autonavi/its/common/Util;->createLine(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "\u7167\u7247\u5217\u8868"

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/model/POI;->getPhotos()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_6

    const-string/jumbo v1, ""

    :goto_4
    invoke-static {v0, v2, v1}, Lcom/autonavi/its/common/Util;->createLine(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "\n ]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_2
    invoke-virtual {p0}, Lcom/autonavi/its/protocol/model/POI;->getEntrLocation()Lcom/autonavi/its/protocol/model/Coordinate;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autonavi/its/protocol/model/Coordinate;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/autonavi/its/protocol/model/POI;->getExitLocation()Lcom/autonavi/its/protocol/model/Coordinate;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autonavi/its/protocol/model/Coordinate;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/autonavi/its/protocol/model/POI;->getIndoorData()Lcom/autonavi/its/protocol/model/POI$IndoorData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autonavi/its/protocol/model/POI$IndoorData;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_5
    invoke-virtual {p0}, Lcom/autonavi/its/protocol/model/POI;->getBusinessDepthInfo()Lcom/autonavi/its/protocol/model/POI$BusinessDepthInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autonavi/its/protocol/model/POI$BusinessDepthInfo;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_6
    invoke-virtual {p0}, Lcom/autonavi/its/protocol/model/POI;->getPhotos()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_4
.end method
