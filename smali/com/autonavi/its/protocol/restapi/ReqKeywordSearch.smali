.class public Lcom/autonavi/its/protocol/restapi/ReqKeywordSearch;
.super Lcom/autonavi/its/protocol/BaseRequest;
.source "ReqKeywordSearch.java"


# static fields
.field public static final TYPE:Ljava/lang/String; = "ReqKeywordSearch"

.field private static final URL:Ljava/lang/String; = "https://restapi.amap.com/v3/place/text?"


# instance fields
.field private mCity:Ljava/lang/String;

.field private mIsGetDetail:Z

.field private mKeyword:Ljava/lang/String;

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


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 8

    const/4 v3, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move v6, p4

    move v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/autonavi/its/protocol/restapi/ReqKeywordSearch;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZII)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZII)V
    .locals 5

    const/16 v0, 0x64

    const/16 v1, 0x19

    const/4 v4, 0x1

    invoke-direct {p0}, Lcom/autonavi/its/protocol/BaseRequest;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/autonavi/its/protocol/restapi/ReqKeywordSearch;->mPOIList:Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/autonavi/its/protocol/restapi/ReqKeywordSearch;->setUserKey(Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/autonavi/its/protocol/restapi/ReqKeywordSearch;->setKeyword(Ljava/lang/String;)V

    invoke-direct {p0, p3}, Lcom/autonavi/its/protocol/restapi/ReqKeywordSearch;->setPOITypes(Ljava/lang/String;)V

    invoke-direct {p0, p4}, Lcom/autonavi/its/protocol/restapi/ReqKeywordSearch;->setCity(Ljava/lang/String;)V

    invoke-direct {p0, p5}, Lcom/autonavi/its/protocol/restapi/ReqKeywordSearch;->setIsGetDetail(Z)V

    invoke-direct {p0, p6}, Lcom/autonavi/its/protocol/restapi/ReqKeywordSearch;->setPageIndex(I)V

    invoke-direct {p0, p7}, Lcom/autonavi/its/protocol/restapi/ReqKeywordSearch;->setPageSize(I)V

    const-string/jumbo v2, "key"

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/restapi/ReqKeywordSearch;->getUserKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/autonavi/its/protocol/restapi/ReqKeywordSearch;->addParams(Ljava/lang/String;Ljava/lang/String;)Lcom/autonavi/its/protocol/BaseRequest;

    const-string/jumbo v2, "keywords"

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/restapi/ReqKeywordSearch;->getKeyword()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/autonavi/its/protocol/restapi/ReqKeywordSearch;->addParams(Ljava/lang/String;Ljava/lang/String;)Lcom/autonavi/its/protocol/BaseRequest;

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/restapi/ReqKeywordSearch;->getPOITypes()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "types"

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/restapi/ReqKeywordSearch;->getPOITypes()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/autonavi/its/protocol/restapi/ReqKeywordSearch;->addParams(Ljava/lang/String;Ljava/lang/String;)Lcom/autonavi/its/protocol/BaseRequest;

    :cond_0
    invoke-virtual {p0}, Lcom/autonavi/its/protocol/restapi/ReqKeywordSearch;->getCity()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "city"

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/restapi/ReqKeywordSearch;->getCity()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/autonavi/its/protocol/restapi/ReqKeywordSearch;->addParams(Ljava/lang/String;Ljava/lang/String;)Lcom/autonavi/its/protocol/BaseRequest;

    :cond_1
    invoke-virtual {p0}, Lcom/autonavi/its/protocol/restapi/ReqKeywordSearch;->isGetDetail()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "extensions"

    const-string/jumbo v3, "all"

    invoke-virtual {p0, v2, v3}, Lcom/autonavi/its/protocol/restapi/ReqKeywordSearch;->addParams(Ljava/lang/String;Ljava/lang/String;)Lcom/autonavi/its/protocol/BaseRequest;

    :cond_2
    if-lt p6, v4, :cond_4

    if-le p6, v0, :cond_3

    move p6, v0

    :cond_3
    const-string/jumbo v0, "page"

    invoke-virtual {p0, v0, p6}, Lcom/autonavi/its/protocol/restapi/ReqKeywordSearch;->addParams(Ljava/lang/String;I)Lcom/autonavi/its/protocol/BaseRequest;

    :cond_4
    if-lt p7, v4, :cond_6

    if-le p7, v1, :cond_5

    move p7, v1

    :cond_5
    const-string/jumbo v0, "offset"

    invoke-virtual {p0, v0, p7}, Lcom/autonavi/its/protocol/restapi/ReqKeywordSearch;->addParams(Ljava/lang/String;I)Lcom/autonavi/its/protocol/BaseRequest;

    :cond_6
    invoke-static {}, Lcom/autonavi/its/protocol/RequestManager;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "com.autonavi.its"

    const-string/jumbo v2, "2.5"

    invoke-static {v0, v1, v2}, Lcom/autonavi/its/common/restapi/APIUtil;->getHeader(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/autonavi/its/protocol/restapi/ReqKeywordSearch;->setHeader(Ljava/util/Map;)V

    return-void
.end method

.method private addPOI(Lcom/autonavi/its/protocol/model/POI;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/its/protocol/restapi/ReqKeywordSearch;->mPOIList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private setCity(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/its/protocol/restapi/ReqKeywordSearch;->mCity:Ljava/lang/String;

    return-void
.end method

.method private setIsGetDetail(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/autonavi/its/protocol/restapi/ReqKeywordSearch;->mIsGetDetail:Z

    return-void
.end method

.method private setKeyword(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/its/protocol/restapi/ReqKeywordSearch;->mKeyword:Ljava/lang/String;

    return-void
.end method

.method private setPOITypes(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/its/protocol/restapi/ReqKeywordSearch;->mPOITypes:Ljava/lang/String;

    return-void
.end method

.method private setPageIndex(I)V
    .locals 0

    iput p1, p0, Lcom/autonavi/its/protocol/restapi/ReqKeywordSearch;->mPageIndex:I

    return-void
.end method

.method private setPageSize(I)V
    .locals 0

    iput p1, p0, Lcom/autonavi/its/protocol/restapi/ReqKeywordSearch;->mPageSize:I

    return-void
.end method


# virtual methods
.method public dealBusinessData(Ljava/lang/String;)V
    .locals 10

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/restapi/ReqKeywordSearch;->getResponseContent()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {p0, v7}, Lcom/autonavi/its/protocol/restapi/ReqKeywordSearch;->setIsBusinessSuccess(Z)V

    const-string/jumbo v6, "\u8bf7\u6c42\u5931\u8d25\uff01"

    invoke-virtual {p0, v6}, Lcom/autonavi/its/protocol/restapi/ReqKeywordSearch;->setResponseContent(Ljava/lang/String;)Lcom/autonavi/its/protocol/BaseRequest;

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/restapi/ReqKeywordSearch;->getResponseContent()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v8, "status"

    const/4 v9, -0x1

    invoke-virtual {v4, v8, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v6, :cond_2

    :goto_1
    invoke-virtual {p0, v6}, Lcom/autonavi/its/protocol/restapi/ReqKeywordSearch;->setIsBusinessSuccess(Z)V

    const-string/jumbo v6, "info"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/autonavi/its/protocol/restapi/ReqKeywordSearch;->setMsg(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/restapi/ReqKeywordSearch;->isBusinessSuccess()Z

    move-result v6

    if-eqz v6, :cond_0

    const-string/jumbo v6, "pois"

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

    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    invoke-static {v6}, Lcom/autonavi/its/protocol/model/POI;->parser(Lorg/json/JSONObject;)Lcom/autonavi/its/protocol/model/POI;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/autonavi/its/protocol/restapi/ReqKeywordSearch;->addPOI(Lcom/autonavi/its/protocol/model/POI;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    move v6, v7

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {p0, v1}, Lcom/autonavi/its/protocol/restapi/ReqKeywordSearch;->setException(Ljava/lang/Exception;)Lcom/autonavi/its/protocol/BaseRequest;

    invoke-virtual {p0, v7}, Lcom/autonavi/its/protocol/restapi/ReqKeywordSearch;->setIsBusinessSuccess(Z)V

    goto :goto_0
.end method

.method public getCity()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/its/protocol/restapi/ReqKeywordSearch;->mCity:Ljava/lang/String;

    return-object v0
.end method

.method public getKeyword()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/its/protocol/restapi/ReqKeywordSearch;->mKeyword:Ljava/lang/String;

    return-object v0
.end method

.method public getPOITypes()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/its/protocol/restapi/ReqKeywordSearch;->mPOITypes:Ljava/lang/String;

    return-object v0
.end method

.method public getPageIndex()I
    .locals 1

    iget v0, p0, Lcom/autonavi/its/protocol/restapi/ReqKeywordSearch;->mPageIndex:I

    return v0
.end method

.method public getPageSize()I
    .locals 1

    iget v0, p0, Lcom/autonavi/its/protocol/restapi/ReqKeywordSearch;->mPageSize:I

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

    iget-object v0, p0, Lcom/autonavi/its/protocol/restapi/ReqKeywordSearch;->mPOIList:Ljava/util/List;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "ReqKeywordSearch"

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "https://restapi.amap.com/v3/place/text?"

    return-object v0
.end method

.method public isGetDetail()Z
    .locals 1

    iget-boolean v0, p0, Lcom/autonavi/its/protocol/restapi/ReqKeywordSearch;->mIsGetDetail:Z

    return v0
.end method
