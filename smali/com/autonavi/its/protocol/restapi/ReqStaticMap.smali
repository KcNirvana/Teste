.class public Lcom/autonavi/its/protocol/restapi/ReqStaticMap;
.super Lcom/autonavi/its/protocol/BaseRequest;
.source "ReqStaticMap.java"


# static fields
.field private static DF:Ljava/text/DecimalFormat; = null

.field private static final MAX_MARKER_COUNT:I = 0xa

.field private static final MAX_ZOOM_LEVEL:I = 0x11

.field private static final MIN_ZOOM_LEVEL:I = 0x1

.field public static final TYPE:Ljava/lang/String; = "ReqStaticMap"

.field private static final URL:Ljava/lang/String; = "https://restapi.amap.com/v3/staticmap?"


# instance fields
.field private mLatitude:D

.field private mLines:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/autonavi/its/protocol/model/Line;",
            ">;"
        }
    .end annotation
.end field

.field private mLongitude:D

.field private mMarkers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/autonavi/its/protocol/model/Marker;",
            ">;"
        }
    .end annotation
.end field

.field private mUserKey:Ljava/lang/String;

.field private mZoomLevel:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/text/DecimalFormat;

    const-string/jumbo v1, "0.######"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/autonavi/its/protocol/restapi/ReqStaticMap;->DF:Ljava/text/DecimalFormat;

    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;IDDIILjava/util/List;[Lcom/autonavi/its/protocol/model/Marker;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IDDII",
            "Ljava/util/List",
            "<",
            "Lcom/autonavi/its/protocol/model/Line;",
            ">;[",
            "Lcom/autonavi/its/protocol/model/Marker;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/autonavi/its/protocol/BaseRequest;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/autonavi/its/protocol/restapi/ReqStaticMap;->mMarkers:Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/autonavi/its/protocol/restapi/ReqStaticMap;->mLines:Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/autonavi/its/protocol/restapi/ReqStaticMap;->setUserKey(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/autonavi/its/protocol/restapi/ReqStaticMap;->setZoomLevel(I)V

    invoke-virtual {p0, p3, p4}, Lcom/autonavi/its/protocol/restapi/ReqStaticMap;->setLongitude(D)V

    invoke-virtual {p0, p5, p6}, Lcom/autonavi/its/protocol/restapi/ReqStaticMap;->setLatitude(D)V

    move-object/from16 v0, p10

    invoke-virtual {p0, v0}, Lcom/autonavi/its/protocol/restapi/ReqStaticMap;->setMarkers([Lcom/autonavi/its/protocol/model/Marker;)V

    move-object/from16 v0, p9

    invoke-direct {p0, v0}, Lcom/autonavi/its/protocol/restapi/ReqStaticMap;->setLines(Ljava/util/List;)V

    const-string/jumbo v2, "key"

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/restapi/ReqStaticMap;->getUserKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/autonavi/its/protocol/restapi/ReqStaticMap;->addParams(Ljava/lang/String;Ljava/lang/String;)Lcom/autonavi/its/protocol/BaseRequest;

    const-string/jumbo v2, "location"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/autonavi/its/protocol/restapi/ReqStaticMap;->DF:Ljava/text/DecimalFormat;

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/restapi/ReqStaticMap;->getLongitude()D

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/autonavi/its/protocol/restapi/ReqStaticMap;->DF:Ljava/text/DecimalFormat;

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/restapi/ReqStaticMap;->getLatitude()D

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/autonavi/its/protocol/restapi/ReqStaticMap;->addParams(Ljava/lang/String;Ljava/lang/String;)Lcom/autonavi/its/protocol/BaseRequest;

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/restapi/ReqStaticMap;->getZoomLevel()I

    move-result v2

    if-lez v2, :cond_0

    const-string/jumbo v2, "zoom"

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/restapi/ReqStaticMap;->getZoomLevel()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/autonavi/its/protocol/restapi/ReqStaticMap;->addParams(Ljava/lang/String;I)Lcom/autonavi/its/protocol/BaseRequest;

    :cond_0
    invoke-virtual {p0}, Lcom/autonavi/its/protocol/restapi/ReqStaticMap;->getMarkers()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "markers"

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/restapi/ReqStaticMap;->getMarkers()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/autonavi/its/protocol/model/Marker;->arrayToString(Ljava/util/List;Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/autonavi/its/protocol/restapi/ReqStaticMap;->addParams(Ljava/lang/String;Ljava/lang/String;)Lcom/autonavi/its/protocol/BaseRequest;

    :cond_1
    invoke-virtual {p0}, Lcom/autonavi/its/protocol/restapi/ReqStaticMap;->getLines()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/restapi/ReqStaticMap;->getLines()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    const-string/jumbo v2, "paths"

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/restapi/ReqStaticMap;->getLines()Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lcom/autonavi/its/protocol/model/Line;->arrayToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/autonavi/its/protocol/restapi/ReqStaticMap;->addParams(Ljava/lang/String;Ljava/lang/String;)Lcom/autonavi/its/protocol/BaseRequest;

    :cond_2
    if-lez p7, :cond_5

    if-lez p8, :cond_5

    const/16 v2, 0x400

    move/from16 v0, p7

    if-le v0, v2, :cond_3

    const/16 p7, 0x400

    :cond_3
    const/16 v2, 0x400

    move/from16 v0, p8

    if-le v0, v2, :cond_4

    const/16 p8, 0x400

    :cond_4
    const-string/jumbo v2, "size"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, p7

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "*"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p8

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/autonavi/its/protocol/restapi/ReqStaticMap;->addParams(Ljava/lang/String;Ljava/lang/String;)Lcom/autonavi/its/protocol/BaseRequest;

    :cond_5
    invoke-static {}, Lcom/autonavi/its/protocol/RequestManager;->getAppContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "com.autonavi.its"

    const-string/jumbo v4, "2.5"

    invoke-static {v2, v3, v4}, Lcom/autonavi/its/common/restapi/APIUtil;->getHeader(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/autonavi/its/protocol/restapi/ReqStaticMap;->setHeader(Ljava/util/Map;)V

    new-instance v2, Lcom/autonavi/its/protocol/ability/net/VolleyImgRequest;

    invoke-direct {v2}, Lcom/autonavi/its/protocol/ability/net/VolleyImgRequest;-><init>()V

    invoke-virtual {p0, v2}, Lcom/autonavi/its/protocol/restapi/ReqStaticMap;->setNetAbility(Lcom/autonavi/its/protocol/ability/net/INetAbility;)V

    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;IDDII[Lcom/autonavi/its/protocol/model/Marker;)V
    .locals 13

    const/4 v10, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v11, p9

    invoke-direct/range {v1 .. v11}, Lcom/autonavi/its/protocol/restapi/ReqStaticMap;-><init>(Ljava/lang/String;IDDIILjava/util/List;[Lcom/autonavi/its/protocol/model/Marker;)V

    return-void
.end method

.method private addMarker(Lcom/autonavi/its/protocol/model/Marker;)V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/its/protocol/restapi/ReqStaticMap;->mMarkers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/autonavi/its/protocol/restapi/ReqStaticMap;->mMarkers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private setLines(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/autonavi/its/protocol/model/Line;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/autonavi/its/protocol/restapi/ReqStaticMap;->mLines:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public dealBusinessData(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/autonavi/its/protocol/restapi/ReqStaticMap;->setIsBusinessSuccess(Z)V

    return-void
.end method

.method public getLatitude()D
    .locals 2

    iget-wide v0, p0, Lcom/autonavi/its/protocol/restapi/ReqStaticMap;->mLatitude:D

    return-wide v0
.end method

.method public getLines()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/autonavi/its/protocol/model/Line;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/autonavi/its/protocol/restapi/ReqStaticMap;->mLines:Ljava/util/List;

    return-object v0
.end method

.method public getLongitude()D
    .locals 2

    iget-wide v0, p0, Lcom/autonavi/its/protocol/restapi/ReqStaticMap;->mLongitude:D

    return-wide v0
.end method

.method public getMarkers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/autonavi/its/protocol/model/Marker;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/autonavi/its/protocol/restapi/ReqStaticMap;->mMarkers:Ljava/util/List;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "ReqStaticMap"

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "https://restapi.amap.com/v3/staticmap?"

    return-object v0
.end method

.method public getUserKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/its/protocol/restapi/ReqStaticMap;->mUserKey:Ljava/lang/String;

    return-object v0
.end method

.method public getZoomLevel()I
    .locals 1

    iget v0, p0, Lcom/autonavi/its/protocol/restapi/ReqStaticMap;->mZoomLevel:I

    return v0
.end method

.method public setLatitude(D)V
    .locals 1

    iput-wide p1, p0, Lcom/autonavi/its/protocol/restapi/ReqStaticMap;->mLatitude:D

    return-void
.end method

.method public setLongitude(D)V
    .locals 1

    iput-wide p1, p0, Lcom/autonavi/its/protocol/restapi/ReqStaticMap;->mLongitude:D

    return-void
.end method

.method public setMarkers([Lcom/autonavi/its/protocol/model/Marker;)V
    .locals 2

    if-eqz p1, :cond_0

    array-length v1, p1

    if-lez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    aget-object v1, p1, v0

    invoke-direct {p0, v1}, Lcom/autonavi/its/protocol/restapi/ReqStaticMap;->addMarker(Lcom/autonavi/its/protocol/model/Marker;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setUserKey(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/its/protocol/restapi/ReqStaticMap;->mUserKey:Ljava/lang/String;

    return-void
.end method

.method public setZoomLevel(I)V
    .locals 1

    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    const/4 p1, 0x1

    :cond_0
    const/16 v0, 0x11

    if-le p1, v0, :cond_1

    const/16 p1, 0x11

    :cond_1
    iput p1, p0, Lcom/autonavi/its/protocol/restapi/ReqStaticMap;->mZoomLevel:I

    return-void
.end method
