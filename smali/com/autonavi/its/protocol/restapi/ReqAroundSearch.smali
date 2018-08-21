.class public Lcom/autonavi/its/protocol/restapi/ReqAroundSearch;
.super Lcom/autonavi/its/protocol/BaseRequest;
.source "ReqAroundSearch.java"


# static fields
.field public static final SORT_TYPE_DISTANCE:Ljava/lang/String; = "distance"

.field public static final SORT_TYPE_WEIGHT:Ljava/lang/String; = "weight"

.field public static final TYPE:Ljava/lang/String; = "ReqAroundSearch"

.field private static final URL:Ljava/lang/String; = "https://restapi.amap.com/v3/place/around?"


# instance fields
.field private mCity:Ljava/lang/String;

.field private mIsGetDetail:Z

.field private mKeywords:[Ljava/lang/String;

.field private mLatitude:D

.field private mLongitude:D

.field private mPOIList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/autonavi/its/protocol/model/POI;",
            ">;"
        }
    .end annotation
.end field

.field private mPOITypes:Ljava/lang/String;

.field private mPageIndex:I

.field private mPageSize:I

.field private mRadius:I

.field private mSortRule:Ljava/lang/String;


# direct methods
.method public varargs constructor <init>(Ljava/lang/String;DDLjava/lang/String;IIILjava/lang/String;[Ljava/lang/String;)V
    .locals 14

    const/4 v6, 0x0

    const/4 v12, 0x1

    move-object v0, p0

    move-object v1, p1

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v13, p11

    invoke-direct/range {v0 .. v13}, Lcom/autonavi/its/protocol/restapi/ReqAroundSearch;-><init>(Ljava/lang/String;DDLjava/lang/String;Ljava/lang/String;IIILjava/lang/String;Z[Ljava/lang/String;)V

    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;DDLjava/lang/String;Ljava/lang/String;IIILjava/lang/String;Z[Ljava/lang/String;)V
    .locals 6

    invoke-direct {p0}, Lcom/autonavi/its/protocol/BaseRequest;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/autonavi/its/protocol/restapi/ReqAroundSearch;->mPOIList:Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/autonavi/its/protocol/restapi/ReqAroundSearch;->setUserKey(Ljava/lang/String;)V

    invoke-direct {p0, p2, p3}, Lcom/autonavi/its/protocol/restapi/ReqAroundSearch;->setLongitude(D)V

    invoke-direct {p0, p4, p5}, Lcom/autonavi/its/protocol/restapi/ReqAroundSearch;->setLatitude(D)V

    invoke-direct {p0, p6}, Lcom/autonavi/its/protocol/restapi/ReqAroundSearch;->setPOITypes(Ljava/lang/String;)V

    invoke-direct {p0, p7}, Lcom/autonavi/its/protocol/restapi/ReqAroundSearch;->setCity(Ljava/lang/String;)V

    invoke-direct {p0, p8}, Lcom/autonavi/its/protocol/restapi/ReqAroundSearch;->setRadius(I)V

    invoke-direct {p0, p9}, Lcom/autonavi/its/protocol/restapi/ReqAroundSearch;->setPageIndex(I)V

    move/from16 v0, p10

    invoke-direct {p0, v0}, Lcom/autonavi/its/protocol/restapi/ReqAroundSearch;->setPageSize(I)V

    move-object/from16 v0, p11

    invoke-virtual {p0, v0}, Lcom/autonavi/its/protocol/restapi/ReqAroundSearch;->setSortRule(Ljava/lang/String;)V

    move/from16 v0, p12

    invoke-direct {p0, v0}, Lcom/autonavi/its/protocol/restapi/ReqAroundSearch;->setIsGetDetail(Z)V

    move-object/from16 v0, p13

    invoke-direct {p0, v0}, Lcom/autonavi/its/protocol/restapi/ReqAroundSearch;->setKeywords([Ljava/lang/String;)V

    const-string/jumbo v3, "key"

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/restapi/ReqAroundSearch;->getUserKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/autonavi/its/protocol/restapi/ReqAroundSearch;->addParams(Ljava/lang/String;Ljava/lang/String;)Lcom/autonavi/its/protocol/BaseRequest;

    const-string/jumbo v3, "location"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2, p3}, Lcom/autonavi/its/protocol/model/Coordinate;->formatDouble6(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p4, p5}, Lcom/autonavi/its/protocol/model/Coordinate;->formatDouble6(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/autonavi/its/protocol/restapi/ReqAroundSearch;->addParams(Ljava/lang/String;Ljava/lang/String;)Lcom/autonavi/its/protocol/BaseRequest;

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/restapi/ReqAroundSearch;->getPOITypes()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "types"

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/restapi/ReqAroundSearch;->getPOITypes()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/autonavi/its/protocol/restapi/ReqAroundSearch;->addParams(Ljava/lang/String;Ljava/lang/String;)Lcom/autonavi/its/protocol/BaseRequest;

    :cond_0
    invoke-static {p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string/jumbo v3, "city"

    invoke-virtual {p0, v3, p7}, Lcom/autonavi/its/protocol/restapi/ReqAroundSearch;->addParams(Ljava/lang/String;Ljava/lang/String;)Lcom/autonavi/its/protocol/BaseRequest;

    :cond_1
    if-lez p8, :cond_2

    const-string/jumbo v3, "radius"

    invoke-virtual {p0, v3, p8}, Lcom/autonavi/its/protocol/restapi/ReqAroundSearch;->addParams(Ljava/lang/String;I)Lcom/autonavi/its/protocol/BaseRequest;

    :cond_2
    invoke-static/range {p11 .. p11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string/jumbo v3, "distance"

    move-object/from16 v0, p11

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string/jumbo v3, "weight"

    move-object/from16 v0, p11

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    const-string/jumbo v3, "sortrule"

    move-object/from16 v0, p11

    invoke-virtual {p0, v3, v0}, Lcom/autonavi/its/protocol/restapi/ReqAroundSearch;->addParams(Ljava/lang/String;Ljava/lang/String;)Lcom/autonavi/its/protocol/BaseRequest;

    :cond_4
    invoke-virtual {p0}, Lcom/autonavi/its/protocol/restapi/ReqAroundSearch;->isGetDetail()Z

    move-result v3

    if-eqz v3, :cond_5

    const-string/jumbo v3, "extensions"

    const-string/jumbo v4, "all"

    invoke-virtual {p0, v3, v4}, Lcom/autonavi/its/protocol/restapi/ReqAroundSearch;->addParams(Ljava/lang/String;Ljava/lang/String;)Lcom/autonavi/its/protocol/BaseRequest;

    :cond_5
    const/4 v3, 0x1

    if-lt p9, v3, :cond_7

    const/16 v3, 0x64

    if-le p9, v3, :cond_6

    const/16 p9, 0x64

    :cond_6
    const-string/jumbo v3, "page"

    invoke-virtual {p0, v3, p9}, Lcom/autonavi/its/protocol/restapi/ReqAroundSearch;->addParams(Ljava/lang/String;I)Lcom/autonavi/its/protocol/BaseRequest;

    :cond_7
    const/4 v3, 0x1

    move/from16 v0, p10

    if-lt v0, v3, :cond_9

    const/16 v3, 0x19

    move/from16 v0, p10

    if-le v0, v3, :cond_8

    const/16 p10, 0x19

    :cond_8
    const-string/jumbo v3, "offset"

    move/from16 v0, p10

    invoke-virtual {p0, v3, v0}, Lcom/autonavi/its/protocol/restapi/ReqAroundSearch;->addParams(Ljava/lang/String;I)Lcom/autonavi/its/protocol/BaseRequest;

    :cond_9
    invoke-direct {p0}, Lcom/autonavi/its/protocol/restapi/ReqAroundSearch;->getKeywords()[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_c

    invoke-direct {p0}, Lcom/autonavi/its/protocol/restapi/ReqAroundSearch;->getKeywords()[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    if-lez v3, :cond_c

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-direct {p0}, Lcom/autonavi/its/protocol/restapi/ReqAroundSearch;->getKeywords()[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    if-ge v1, v3, :cond_b

    invoke-direct {p0}, Lcom/autonavi/its/protocol/restapi/ReqAroundSearch;->getKeywords()[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0}, Lcom/autonavi/its/protocol/restapi/ReqAroundSearch;->getKeywords()[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    if-eq v1, v3, :cond_a

    const-string/jumbo v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_b
    const-string/jumbo v3, "keywords"

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/autonavi/its/protocol/restapi/ReqAroundSearch;->addParams(Ljava/lang/String;Ljava/lang/String;)Lcom/autonavi/its/protocol/BaseRequest;

    :cond_c
    invoke-static {}, Lcom/autonavi/its/protocol/RequestManager;->getAppContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "com.autonavi.its"

    const-string/jumbo v5, "2.5"

    invoke-static {v3, v4, v5}, Lcom/autonavi/its/common/restapi/APIUtil;->getHeader(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/autonavi/its/protocol/restapi/ReqAroundSearch;->setHeader(Ljava/util/Map;)V

    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;DDLjava/lang/String;[Ljava/lang/String;)V
    .locals 12

    const/16 v7, 0xbb8

    const/4 v8, 0x1

    const/16 v9, 0x14

    const-string/jumbo v10, "distance"

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide/from16 v4, p4

    move-object/from16 v6, p6

    move-object/from16 v11, p7

    invoke-direct/range {v0 .. v11}, Lcom/autonavi/its/protocol/restapi/ReqAroundSearch;-><init>(Ljava/lang/String;DDLjava/lang/String;IIILjava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method private addPOI(Lcom/autonavi/its/protocol/model/POI;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/its/protocol/restapi/ReqAroundSearch;->mPOIList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private getKeywords()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/its/protocol/restapi/ReqAroundSearch;->mKeywords:[Ljava/lang/String;

    return-object v0
.end method

.method private setCity(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/its/protocol/restapi/ReqAroundSearch;->mCity:Ljava/lang/String;

    return-void
.end method

.method private setIsGetDetail(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/autonavi/its/protocol/restapi/ReqAroundSearch;->mIsGetDetail:Z

    return-void
.end method

.method private setKeywords([Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/its/protocol/restapi/ReqAroundSearch;->mKeywords:[Ljava/lang/String;

    return-void
.end method

.method private setLatitude(D)V
    .locals 1

    iput-wide p1, p0, Lcom/autonavi/its/protocol/restapi/ReqAroundSearch;->mLatitude:D

    return-void
.end method

.method private setLongitude(D)V
    .locals 1

    iput-wide p1, p0, Lcom/autonavi/its/protocol/restapi/ReqAroundSearch;->mLongitude:D

    return-void
.end method

.method private setPOITypes(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/its/protocol/restapi/ReqAroundSearch;->mPOITypes:Ljava/lang/String;

    return-void
.end method

.method private setPageIndex(I)V
    .locals 0

    iput p1, p0, Lcom/autonavi/its/protocol/restapi/ReqAroundSearch;->mPageIndex:I

    return-void
.end method

.method private setPageSize(I)V
    .locals 0

    iput p1, p0, Lcom/autonavi/its/protocol/restapi/ReqAroundSearch;->mPageSize:I

    return-void
.end method

.method private setRadius(I)V
    .locals 0

    iput p1, p0, Lcom/autonavi/its/protocol/restapi/ReqAroundSearch;->mRadius:I

    return-void
.end method


# virtual methods
.method public dealBusinessData(Ljava/lang/String;)V
    .locals 10

    const/4 v6, 0x1

    const/4 v7, 0x0

    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v8, "status"

    const/4 v9, -0x1

    invoke-virtual {v4, v8, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v6, :cond_0

    :goto_0
    invoke-virtual {p0, v6}, Lcom/autonavi/its/protocol/restapi/ReqAroundSearch;->setIsBusinessSuccess(Z)V

    const-string/jumbo v6, "info"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/autonavi/its/protocol/restapi/ReqAroundSearch;->setMsg(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/restapi/ReqAroundSearch;->isBusinessSuccess()Z

    move-result v6

    if-eqz v6, :cond_1

    const-string/jumbo v6, "pois"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-lez v6, :cond_1

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v5, :cond_1

    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    invoke-static {v6}, Lcom/autonavi/its/protocol/model/POI;->parser(Lorg/json/JSONObject;)Lcom/autonavi/its/protocol/model/POI;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/autonavi/its/protocol/restapi/ReqAroundSearch;->addPOI(Lcom/autonavi/its/protocol/model/POI;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    move v6, v7

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {p0, v1}, Lcom/autonavi/its/protocol/restapi/ReqAroundSearch;->setException(Ljava/lang/Exception;)Lcom/autonavi/its/protocol/BaseRequest;

    invoke-virtual {p0, v7}, Lcom/autonavi/its/protocol/restapi/ReqAroundSearch;->setIsBusinessSuccess(Z)V

    :cond_1
    return-void
.end method

.method public getCity()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/its/protocol/restapi/ReqAroundSearch;->mCity:Ljava/lang/String;

    return-object v0
.end method

.method public getLatitude()D
    .locals 2

    iget-wide v0, p0, Lcom/autonavi/its/protocol/restapi/ReqAroundSearch;->mLatitude:D

    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    iget-wide v0, p0, Lcom/autonavi/its/protocol/restapi/ReqAroundSearch;->mLongitude:D

    return-wide v0
.end method

.method public getPOITypes()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/its/protocol/restapi/ReqAroundSearch;->mPOITypes:Ljava/lang/String;

    return-object v0
.end method

.method public getPageIndex()I
    .locals 1

    iget v0, p0, Lcom/autonavi/its/protocol/restapi/ReqAroundSearch;->mPageIndex:I

    return v0
.end method

.method public getPageSize()I
    .locals 1

    iget v0, p0, Lcom/autonavi/its/protocol/restapi/ReqAroundSearch;->mPageSize:I

    return v0
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

    iget-object v0, p0, Lcom/autonavi/its/protocol/restapi/ReqAroundSearch;->mPOIList:Ljava/util/List;

    return-object v0
.end method

.method public getRadius()I
    .locals 1

    iget v0, p0, Lcom/autonavi/its/protocol/restapi/ReqAroundSearch;->mRadius:I

    return v0
.end method

.method public getSortRule()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/its/protocol/restapi/ReqAroundSearch;->mSortRule:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "ReqAroundSearch"

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "https://restapi.amap.com/v3/place/around?"

    return-object v0
.end method

.method public isGetDetail()Z
    .locals 1

    iget-boolean v0, p0, Lcom/autonavi/its/protocol/restapi/ReqAroundSearch;->mIsGetDetail:Z

    return v0
.end method

.method public setSortRule(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/its/protocol/restapi/ReqAroundSearch;->mSortRule:Ljava/lang/String;

    return-void
.end method
