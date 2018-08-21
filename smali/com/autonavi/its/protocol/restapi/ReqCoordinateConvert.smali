.class public Lcom/autonavi/its/protocol/restapi/ReqCoordinateConvert;
.super Lcom/autonavi/its/protocol/BaseRequest;
.source "ReqCoordinateConvert.java"


# static fields
.field public static final COORDINATE_SYS_AUTONAVI:Ljava/lang/String; = "autonavi"

.field public static final COORDINATE_SYS_BAIDU:Ljava/lang/String; = "baidu"

.field public static final COORDINATE_SYS_GPS:Ljava/lang/String; = "gps"

.field public static final COORDINATE_SYS_MAPBAR:Ljava/lang/String; = "mapbar"

.field public static final TYPE:Ljava/lang/String; = "ReqCoordinateConvert"

.field private static final URL:Ljava/lang/String; = "https://restapi.amap.com/v3/assistant/coordinate/convert?"


# instance fields
.field private mConvertedCoondinateList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/autonavi/its/protocol/model/Coordinate;",
            ">;"
        }
    .end annotation
.end field

.field private mCoordSys:Ljava/lang/String;

.field private mCoordinateList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/autonavi/its/protocol/model/Coordinate;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;DDLjava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const-wide/16 v4, 0x0

    invoke-direct {p0}, Lcom/autonavi/its/protocol/BaseRequest;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/autonavi/its/protocol/restapi/ReqCoordinateConvert;->mCoordinateList:Ljava/util/List;

    const-string/jumbo v2, "autonavi"

    iput-object v2, p0, Lcom/autonavi/its/protocol/restapi/ReqCoordinateConvert;->mCoordSys:Ljava/lang/String;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/autonavi/its/protocol/restapi/ReqCoordinateConvert;->mConvertedCoondinateList:Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/autonavi/its/protocol/restapi/ReqCoordinateConvert;->setUserKey(Ljava/lang/String;)V

    cmpl-double v2, p2, v4

    if-lez v2, :cond_0

    cmpl-double v2, p4, v4

    if-lez v2, :cond_0

    new-instance v0, Lcom/autonavi/its/protocol/model/Coordinate;

    invoke-direct {v0, p2, p3, p4, p5}, Lcom/autonavi/its/protocol/model/Coordinate;-><init>(DD)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v1}, Lcom/autonavi/its/protocol/restapi/ReqCoordinateConvert;->setCoordinateList(Ljava/util/List;)V

    invoke-direct {p0, p6}, Lcom/autonavi/its/protocol/restapi/ReqCoordinateConvert;->setCoordSys(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/autonavi/its/protocol/restapi/ReqCoordinateConvert;->addParams()V

    return-void

    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Illegal params, coordinate error!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/autonavi/its/protocol/model/Coordinate;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/autonavi/its/protocol/BaseRequest;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/autonavi/its/protocol/restapi/ReqCoordinateConvert;->mCoordinateList:Ljava/util/List;

    const-string/jumbo v1, "autonavi"

    iput-object v1, p0, Lcom/autonavi/its/protocol/restapi/ReqCoordinateConvert;->mCoordSys:Ljava/lang/String;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/autonavi/its/protocol/restapi/ReqCoordinateConvert;->mConvertedCoondinateList:Ljava/util/List;

    if-eqz p2, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p1}, Lcom/autonavi/its/protocol/restapi/ReqCoordinateConvert;->setUserKey(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/autonavi/its/protocol/restapi/ReqCoordinateConvert;->setCoordinateList(Ljava/util/List;)V

    invoke-direct {p0, p3}, Lcom/autonavi/its/protocol/restapi/ReqCoordinateConvert;->setCoordSys(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/autonavi/its/protocol/restapi/ReqCoordinateConvert;->addParams()V

    return-void

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Illegal params, coordinateSys is null!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/autonavi/its/protocol/model/Coordinate;",
            ">;",
            "Ljava/lang/String;",
            ")V"
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

    iput-object v0, p0, Lcom/autonavi/its/protocol/restapi/ReqCoordinateConvert;->mCoordinateList:Ljava/util/List;

    const-string/jumbo v0, "autonavi"

    iput-object v0, p0, Lcom/autonavi/its/protocol/restapi/ReqCoordinateConvert;->mCoordSys:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/autonavi/its/protocol/restapi/ReqCoordinateConvert;->mConvertedCoondinateList:Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/autonavi/its/protocol/restapi/ReqCoordinateConvert;->setUserKey(Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/autonavi/its/protocol/restapi/ReqCoordinateConvert;->setCoordinateList(Ljava/util/List;)V

    invoke-direct {p0, p3}, Lcom/autonavi/its/protocol/restapi/ReqCoordinateConvert;->setCoordSys(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/autonavi/its/protocol/restapi/ReqCoordinateConvert;->addParams()V

    return-void
.end method

.method private addParams()V
    .locals 3

    :try_start_0
    const-string/jumbo v0, "key"

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/restapi/ReqCoordinateConvert;->getUserKey()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "utf-8"

    invoke-static {v1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/autonavi/its/protocol/restapi/ReqCoordinateConvert;->addParams(Ljava/lang/String;Ljava/lang/String;)Lcom/autonavi/its/protocol/BaseRequest;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string/jumbo v0, "locations"

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/restapi/ReqCoordinateConvert;->getCoordinateList()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/autonavi/its/protocol/model/Coordinate;->arrayToProtocolString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/autonavi/its/protocol/restapi/ReqCoordinateConvert;->addParams(Ljava/lang/String;Ljava/lang/String;)Lcom/autonavi/its/protocol/BaseRequest;

    const-string/jumbo v0, "coordsys"

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/restapi/ReqCoordinateConvert;->getCoordSys()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/autonavi/its/protocol/restapi/ReqCoordinateConvert;->addParams(Ljava/lang/String;Ljava/lang/String;)Lcom/autonavi/its/protocol/BaseRequest;

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private setConvertedCoodinateList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/autonavi/its/protocol/model/Coordinate;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/autonavi/its/protocol/restapi/ReqCoordinateConvert;->mConvertedCoondinateList:Ljava/util/List;

    return-void
.end method

.method private setCoordSys(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "gps"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "mapbar"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "baidu"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "autonavi"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Illegal params, coordSys not support!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/autonavi/its/protocol/restapi/ReqCoordinateConvert;->mCoordSys:Ljava/lang/String;

    return-void
.end method

.method private setCoordinateList(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/autonavi/its/protocol/model/Coordinate;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Illegal params, coordinateList is null or size is 0!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-object p1, p0, Lcom/autonavi/its/protocol/restapi/ReqCoordinateConvert;->mCoordinateList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public dealBusinessData(Ljava/lang/String;)V
    .locals 9

    const/4 v5, 0x1

    const/4 v6, 0x0

    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v7, "status"

    const/4 v8, -0x1

    invoke-virtual {v3, v7, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v5, :cond_1

    :goto_0
    invoke-virtual {p0, v5}, Lcom/autonavi/its/protocol/restapi/ReqCoordinateConvert;->setIsBusinessSuccess(Z)V

    const-string/jumbo v5, "info"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/autonavi/its/protocol/restapi/ReqCoordinateConvert;->setMsg(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/restapi/ReqCoordinateConvert;->isBusinessSuccess()Z

    move-result v5

    if-eqz v5, :cond_0

    const-string/jumbo v5, "locations"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/autonavi/its/protocol/model/Coordinate;->parserArray(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/autonavi/its/protocol/restapi/ReqCoordinateConvert;->setConvertedCoodinateList(Ljava/util/List;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    return-void

    :cond_1
    move v5, v6

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {p0, v2}, Lcom/autonavi/its/protocol/restapi/ReqCoordinateConvert;->setException(Ljava/lang/Exception;)Lcom/autonavi/its/protocol/BaseRequest;

    invoke-virtual {p0, v6}, Lcom/autonavi/its/protocol/restapi/ReqCoordinateConvert;->setIsBusinessSuccess(Z)V

    goto :goto_1
.end method

.method public getConvertedCoodinateList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/autonavi/its/protocol/model/Coordinate;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/autonavi/its/protocol/restapi/ReqCoordinateConvert;->mConvertedCoondinateList:Ljava/util/List;

    return-object v0
.end method

.method public getCoordSys()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/its/protocol/restapi/ReqCoordinateConvert;->mCoordSys:Ljava/lang/String;

    return-object v0
.end method

.method public getCoordinateList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/autonavi/its/protocol/model/Coordinate;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/autonavi/its/protocol/restapi/ReqCoordinateConvert;->mCoordinateList:Ljava/util/List;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "ReqCoordinateConvert"

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "https://restapi.amap.com/v3/assistant/coordinate/convert?"

    return-object v0
.end method
