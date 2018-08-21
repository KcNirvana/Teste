.class public Lcom/autonavi/its/protocol/model/ReverseGeo;
.super Ljava/lang/Object;
.source "ReverseGeo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/autonavi/its/protocol/model/ReverseGeo$AOI;,
        Lcom/autonavi/its/protocol/model/ReverseGeo$BusinessArea;,
        Lcom/autonavi/its/protocol/model/ReverseGeo$StreetNumber;,
        Lcom/autonavi/its/protocol/model/ReverseGeo$Building;,
        Lcom/autonavi/its/protocol/model/ReverseGeo$NeighborHood;
    }
.end annotation


# instance fields
.field private mAOIList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/autonavi/its/protocol/model/ReverseGeo$AOI;",
            ">;"
        }
    .end annotation
.end field

.field private mBuilding:Lcom/autonavi/its/protocol/model/ReverseGeo$Building;

.field private mBusinessAreas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/autonavi/its/protocol/model/ReverseGeo$BusinessArea;",
            ">;"
        }
    .end annotation
.end field

.field private mCity:Ljava/lang/String;

.field private mCityCode:Ljava/lang/String;

.field private mCountry:Ljava/lang/String;

.field private mCrossList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/autonavi/its/protocol/model/Cross;",
            ">;"
        }
    .end annotation
.end field

.field private mDesc:Ljava/lang/String;

.field private mDistrict:Ljava/lang/String;

.field private mNeighborHood:Lcom/autonavi/its/protocol/model/ReverseGeo$NeighborHood;

.field private mPoiList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/autonavi/its/protocol/model/POI;",
            ">;"
        }
    .end annotation
.end field

.field private mProvince:Ljava/lang/String;

.field private mRoadList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/autonavi/its/protocol/model/Road;",
            ">;"
        }
    .end annotation
.end field

.field private mSeaArea:Ljava/lang/String;

.field private mStreetNumber:Lcom/autonavi/its/protocol/model/ReverseGeo$StreetNumber;

.field private mTownship:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/autonavi/its/protocol/model/ReverseGeo;->mPoiList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/autonavi/its/protocol/model/ReverseGeo;->mCrossList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/autonavi/its/protocol/model/ReverseGeo;->mRoadList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/autonavi/its/protocol/model/ReverseGeo;->mAOIList:Ljava/util/List;

    return-void
.end method

.method private addAOI(Lcom/autonavi/its/protocol/model/ReverseGeo$AOI;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/its/protocol/model/ReverseGeo;->mAOIList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addCross(Lcom/autonavi/its/protocol/model/Cross;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/its/protocol/model/ReverseGeo;->mCrossList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addPoi(Lcom/autonavi/its/protocol/model/POI;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/its/protocol/model/ReverseGeo;->mPoiList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addRoad(Lcom/autonavi/its/protocol/model/Road;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/its/protocol/model/ReverseGeo;->mRoadList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static filterEmpty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/autonavi/its/common/Util;->filterEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static isMunicipality(Ljava/lang/String;)Z
    .locals 1

    const-string/jumbo v0, "\u5317\u4eac\u5e02"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "\u4e0a\u6d77\u5e02"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "\u5929\u6d25\u5e02"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "\u91cd\u5e86\u5e02"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static parser(Lorg/json/JSONObject;)Lcom/autonavi/its/protocol/model/ReverseGeo;
    .locals 10

    const-string/jumbo v9, "regeocode"

    invoke-virtual {p0, v9}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    new-instance v8, Lcom/autonavi/its/protocol/model/ReverseGeo;

    invoke-direct {v8}, Lcom/autonavi/its/protocol/model/ReverseGeo;-><init>()V

    if-nez v3, :cond_1

    :cond_0
    return-object v8

    :cond_1
    const-string/jumbo v9, "formatted_address"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/autonavi/its/protocol/model/ReverseGeo;->setDesc(Ljava/lang/String;)V

    const-string/jumbo v9, "addressComponent"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_3

    const-string/jumbo v9, "country"

    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/autonavi/its/protocol/model/ReverseGeo;->setCountry(Ljava/lang/String;)V

    const-string/jumbo v9, "province"

    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/autonavi/its/protocol/model/ReverseGeo;->setProvince(Ljava/lang/String;)V

    const-string/jumbo v9, "city"

    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/autonavi/its/protocol/model/ReverseGeo;->filterEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_4

    const-string/jumbo v9, "city"

    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/autonavi/its/protocol/model/ReverseGeo;->filterEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/autonavi/its/protocol/model/ReverseGeo;->setCity(Ljava/lang/String;)V

    :cond_2
    :goto_0
    const-string/jumbo v9, "district"

    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/autonavi/its/protocol/model/ReverseGeo;->filterEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/autonavi/its/protocol/model/ReverseGeo;->setDistrict(Ljava/lang/String;)V

    const-string/jumbo v9, "citycode"

    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/autonavi/its/protocol/model/ReverseGeo;->filterEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/autonavi/its/protocol/model/ReverseGeo;->setCityCode(Ljava/lang/String;)V

    const-string/jumbo v9, "township"

    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/autonavi/its/protocol/model/ReverseGeo;->filterEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/autonavi/its/protocol/model/ReverseGeo;->setTownship(Ljava/lang/String;)V

    const-string/jumbo v9, "seaArea"

    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/autonavi/its/protocol/model/ReverseGeo;->filterEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/autonavi/its/protocol/model/ReverseGeo;->setSeaArea(Ljava/lang/String;)V

    const-string/jumbo v9, "neighborhood"

    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    invoke-static {v9}, Lcom/autonavi/its/protocol/model/ReverseGeo$NeighborHood;->parser(Lorg/json/JSONObject;)Lcom/autonavi/its/protocol/model/ReverseGeo$NeighborHood;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/autonavi/its/protocol/model/ReverseGeo;->setNeighborHood(Lcom/autonavi/its/protocol/model/ReverseGeo$NeighborHood;)V

    const-string/jumbo v9, "building"

    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    invoke-static {v9}, Lcom/autonavi/its/protocol/model/ReverseGeo$Building;->parser(Lorg/json/JSONObject;)Lcom/autonavi/its/protocol/model/ReverseGeo$Building;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/autonavi/its/protocol/model/ReverseGeo;->setBuilding(Lcom/autonavi/its/protocol/model/ReverseGeo$Building;)V

    const-string/jumbo v9, "streetNumber"

    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    invoke-static {v9}, Lcom/autonavi/its/protocol/model/ReverseGeo$StreetNumber;->parser(Lorg/json/JSONObject;)Lcom/autonavi/its/protocol/model/ReverseGeo$StreetNumber;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/autonavi/its/protocol/model/ReverseGeo;->setStreetNumber(Lcom/autonavi/its/protocol/model/ReverseGeo$StreetNumber;)V

    const-string/jumbo v9, "businessAreas"

    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    invoke-static {v9}, Lcom/autonavi/its/protocol/model/ReverseGeo$BusinessArea;->parserArray(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/autonavi/its/protocol/model/ReverseGeo;->setBusinessAreas(Ljava/util/List;)V

    :cond_3
    const-string/jumbo v9, "pois"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    if-eqz v5, :cond_5

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v7

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v7, :cond_5

    invoke-virtual {v5, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    invoke-static {v9}, Lcom/autonavi/its/protocol/model/POI;->parser(Lorg/json/JSONObject;)Lcom/autonavi/its/protocol/model/POI;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/autonavi/its/protocol/model/ReverseGeo;->addPoi(Lcom/autonavi/its/protocol/model/POI;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {v8}, Lcom/autonavi/its/protocol/model/ReverseGeo;->getProvince()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/autonavi/its/protocol/model/ReverseGeo;->isMunicipality(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual {v8}, Lcom/autonavi/its/protocol/model/ReverseGeo;->getProvince()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/autonavi/its/protocol/model/ReverseGeo;->setCity(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    const-string/jumbo v9, "roads"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    if-eqz v6, :cond_6

    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v7

    const/4 v0, 0x0

    :goto_2
    if-ge v0, v7, :cond_6

    invoke-virtual {v6, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    invoke-static {v9}, Lcom/autonavi/its/protocol/model/Road;->parser(Lorg/json/JSONObject;)Lcom/autonavi/its/protocol/model/Road;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/autonavi/its/protocol/model/ReverseGeo;->addRoad(Lcom/autonavi/its/protocol/model/Road;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_6
    const-string/jumbo v9, "roadinters"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    if-eqz v4, :cond_7

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v7

    const/4 v0, 0x0

    :goto_3
    if-ge v0, v7, :cond_7

    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    invoke-static {v9}, Lcom/autonavi/its/protocol/model/Cross;->parserRest(Lorg/json/JSONObject;)Lcom/autonavi/its/protocol/model/Cross;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/autonavi/its/protocol/model/ReverseGeo;->addCross(Lcom/autonavi/its/protocol/model/Cross;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_7
    const-string/jumbo v9, "aois"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v7

    const/4 v0, 0x0

    :goto_4
    if-ge v0, v7, :cond_0

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    invoke-static {v9}, Lcom/autonavi/its/protocol/model/ReverseGeo$AOI;->parser(Lorg/json/JSONObject;)Lcom/autonavi/its/protocol/model/ReverseGeo$AOI;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/autonavi/its/protocol/model/ReverseGeo;->addAOI(Lcom/autonavi/its/protocol/model/ReverseGeo$AOI;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4
.end method

.method private setBuilding(Lcom/autonavi/its/protocol/model/ReverseGeo$Building;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/its/protocol/model/ReverseGeo;->mBuilding:Lcom/autonavi/its/protocol/model/ReverseGeo$Building;

    return-void
.end method

.method private setBusinessAreas(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/autonavi/its/protocol/model/ReverseGeo$BusinessArea;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/autonavi/its/protocol/model/ReverseGeo;->mBusinessAreas:Ljava/util/List;

    return-void
.end method

.method private setCity(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/its/protocol/model/ReverseGeo;->mCity:Ljava/lang/String;

    return-void
.end method

.method private setCityCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/its/protocol/model/ReverseGeo;->mCityCode:Ljava/lang/String;

    return-void
.end method

.method private setCountry(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/its/protocol/model/ReverseGeo;->mCountry:Ljava/lang/String;

    return-void
.end method

.method private setDesc(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/its/protocol/model/ReverseGeo;->mDesc:Ljava/lang/String;

    return-void
.end method

.method private setDistrict(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/its/protocol/model/ReverseGeo;->mDistrict:Ljava/lang/String;

    return-void
.end method

.method private setNeighborHood(Lcom/autonavi/its/protocol/model/ReverseGeo$NeighborHood;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/its/protocol/model/ReverseGeo;->mNeighborHood:Lcom/autonavi/its/protocol/model/ReverseGeo$NeighborHood;

    return-void
.end method

.method private setProvince(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/its/protocol/model/ReverseGeo;->mProvince:Ljava/lang/String;

    return-void
.end method

.method private setSeaArea(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/its/protocol/model/ReverseGeo;->mSeaArea:Ljava/lang/String;

    return-void
.end method

.method private setStreetNumber(Lcom/autonavi/its/protocol/model/ReverseGeo$StreetNumber;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/its/protocol/model/ReverseGeo;->mStreetNumber:Lcom/autonavi/its/protocol/model/ReverseGeo$StreetNumber;

    return-void
.end method

.method private setTownship(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/its/protocol/model/ReverseGeo;->mTownship:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAOIList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/autonavi/its/protocol/model/ReverseGeo$AOI;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/autonavi/its/protocol/model/ReverseGeo;->mAOIList:Ljava/util/List;

    return-object v0
.end method

.method public getBuilding()Lcom/autonavi/its/protocol/model/ReverseGeo$Building;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/its/protocol/model/ReverseGeo;->mBuilding:Lcom/autonavi/its/protocol/model/ReverseGeo$Building;

    return-object v0
.end method

.method public getBusinessAreas()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/autonavi/its/protocol/model/ReverseGeo$BusinessArea;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/autonavi/its/protocol/model/ReverseGeo;->mBusinessAreas:Ljava/util/List;

    return-object v0
.end method

.method public getCity()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/its/protocol/model/ReverseGeo;->mCity:Ljava/lang/String;

    return-object v0
.end method

.method public getCityCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/its/protocol/model/ReverseGeo;->mCityCode:Ljava/lang/String;

    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/its/protocol/model/ReverseGeo;->mCountry:Ljava/lang/String;

    return-object v0
.end method

.method public getCrossList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/autonavi/its/protocol/model/Cross;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/autonavi/its/protocol/model/ReverseGeo;->mCrossList:Ljava/util/List;

    return-object v0
.end method

.method public getDesc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/its/protocol/model/ReverseGeo;->mDesc:Ljava/lang/String;

    return-object v0
.end method

.method public getDistrict()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/its/protocol/model/ReverseGeo;->mDistrict:Ljava/lang/String;

    return-object v0
.end method

.method public getNeighborHood()Lcom/autonavi/its/protocol/model/ReverseGeo$NeighborHood;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/its/protocol/model/ReverseGeo;->mNeighborHood:Lcom/autonavi/its/protocol/model/ReverseGeo$NeighborHood;

    return-object v0
.end method

.method public getPoiList()Ljava/util/List;
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

    iget-object v0, p0, Lcom/autonavi/its/protocol/model/ReverseGeo;->mPoiList:Ljava/util/List;

    return-object v0
.end method

.method public getProvince()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/its/protocol/model/ReverseGeo;->mProvince:Ljava/lang/String;

    return-object v0
.end method

.method public getRoadList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/autonavi/its/protocol/model/Road;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/autonavi/its/protocol/model/ReverseGeo;->mRoadList:Ljava/util/List;

    return-object v0
.end method

.method public getSeaArea()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/its/protocol/model/ReverseGeo;->mSeaArea:Ljava/lang/String;

    return-object v0
.end method

.method public getStreetNumber()Lcom/autonavi/its/protocol/model/ReverseGeo$StreetNumber;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/its/protocol/model/ReverseGeo;->mStreetNumber:Lcom/autonavi/its/protocol/model/ReverseGeo$StreetNumber;

    return-object v0
.end method

.method public getTownship()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/its/protocol/model/ReverseGeo;->mTownship:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v1, "[ReverseGeo :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " country: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/model/ReverseGeo;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " provice:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/model/ReverseGeo;->getProvince()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " city:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/model/ReverseGeo;->getCity()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " district:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/model/ReverseGeo;->getDistrict()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " desc:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/model/ReverseGeo;->getDesc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " poi list:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/model/ReverseGeo;->getPoiList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\n cross list:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/model/ReverseGeo;->getCrossList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\n road list:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/model/ReverseGeo;->getRoadList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\n AOI list:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/model/ReverseGeo;->getAOIList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v1, " ]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
