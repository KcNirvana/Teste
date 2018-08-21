.class public Lcom/autonavi/its/protocol/restapi/ReqDirectionDriving;
.super Lcom/autonavi/its/protocol/BaseRequest;
.source "ReqDirectionDriving.java"


# static fields
.field public static final STRATEGY_AVOID_CONGESTION:I = 0x4

.field public static final STRATEGY_AVOID_FEE_AVOID_CONGESTION:I = 0x8

.field public static final STRATEGY_COMPOUND:I = 0x5

.field public static final STRATEGY_COMPOUND_AVOID_CONGESTION:I = 0xc

.field public static final STRATEGY_COMPOUND_AVOID_CONGESTION_LATEST_COST:I = 0x11

.field public static final STRATEGY_COMPOUND_AVOID_CONGESTION_NO_HIGH_WAY:I = 0xf

.field public static final STRATEGY_COMPOUND_AVOID_CONGESTION_NO_HIGH_WAY_LATEST_COST:I = 0x12

.field public static final STRATEGY_COMPOUND_HIGH_WAY:I = 0x13

.field public static final STRATEGY_COMPOUND_HIGH_WAY_AVOID_CONGESTION:I = 0x14

.field public static final STRATEGY_COMPOUND_LATEST_COST:I = 0xe

.field public static final STRATEGY_COMPOUND_LATEST_COST_NO_HIGH_WAY:I = 0x10

.field public static final STRATEGY_COMPOUND_LATEST_TIME_LATEST_DISTANCE:I = 0xb

.field public static final STRATEGY_COMPOUND_LATEST_TIME_LATEST_DISTANCE_AVOID_CONGESTION:I = 0xa

.field public static final STRATEGY_COMPOUND_NO_HIGH_WAY:I = 0xd

.field public static final STRATEGY_LATEST_COST:I = 0x1

.field public static final STRATEGY_LATEST_DISTANCE:I = 0x2

.field public static final STRATEGY_NO_EXPRESS_HIGH_WAY:I = 0x3

.field public static final STRATEGY_NO_HIGH_WAY:I = 0x6

.field public static final STRATEGY_NO_HIGH_WAY_AVOID_FEE:I = 0x7

.field public static final STRATEGY_NO_HIGH_WAY_AVOID_FEE_AVOID_CONGESTION:I = 0x9

.field public static final STRATEGY_SPEED:I = 0x0

.field public static final TYPE:Ljava/lang/String; = "ReqDirectionDriving"

.field private static final URL:Ljava/lang/String; = "https://restapi.amap.com/v3/direction/driving?"


# instance fields
.field private mAvoidPolygons:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/autonavi/its/protocol/model/Polygon;",
            ">;"
        }
    .end annotation
.end field

.field private mAvoidRoad:Ljava/lang/String;

.field private mDestId:Ljava/lang/String;

.field private mDestType:Ljava/lang/String;

.field private mEndPoint:Lcom/autonavi/its/protocol/model/Coordinate;

.field private mNumber:Ljava/lang/String;

.field private mOriginId:Ljava/lang/String;

.field private mOriginType:Ljava/lang/String;

.field private mProvince:Ljava/lang/String;

.field private mRoute:Lcom/autonavi/its/protocol/model/direction/DRoute;

.field private mStartPoint:Lcom/autonavi/its/protocol/model/Coordinate;

.field private mStrategy:I

.field private mWayPoints:Ljava/util/List;
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
.method public constructor <init>(Ljava/lang/String;Lcom/autonavi/its/protocol/model/Coordinate;Lcom/autonavi/its/protocol/model/Coordinate;)V
    .locals 14

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-direct/range {v0 .. v13}, Lcom/autonavi/its/protocol/restapi/ReqDirectionDriving;-><init>(Ljava/lang/String;Lcom/autonavi/its/protocol/model/Coordinate;Lcom/autonavi/its/protocol/model/Coordinate;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/autonavi/its/protocol/model/Coordinate;Lcom/autonavi/its/protocol/model/Coordinate;I)V
    .locals 14

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    invoke-direct/range {v0 .. v13}, Lcom/autonavi/its/protocol/restapi/ReqDirectionDriving;-><init>(Ljava/lang/String;Lcom/autonavi/its/protocol/model/Coordinate;Lcom/autonavi/its/protocol/model/Coordinate;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/autonavi/its/protocol/model/Coordinate;Lcom/autonavi/its/protocol/model/Coordinate;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/autonavi/its/protocol/model/Coordinate;",
            "Lcom/autonavi/its/protocol/model/Coordinate;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/autonavi/its/protocol/model/Coordinate;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/autonavi/its/protocol/model/Polygon;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/autonavi/its/protocol/BaseRequest;-><init>()V

    invoke-virtual {p0, p1}, Lcom/autonavi/its/protocol/restapi/ReqDirectionDriving;->setUserKey(Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/autonavi/its/protocol/restapi/ReqDirectionDriving;->setStartPoint(Lcom/autonavi/its/protocol/model/Coordinate;)V

    invoke-direct {p0, p3}, Lcom/autonavi/its/protocol/restapi/ReqDirectionDriving;->setEndPoint(Lcom/autonavi/its/protocol/model/Coordinate;)V

    invoke-direct {p0, p4}, Lcom/autonavi/its/protocol/restapi/ReqDirectionDriving;->setStrategy(I)V

    invoke-direct {p0, p5}, Lcom/autonavi/its/protocol/restapi/ReqDirectionDriving;->setOriginId(Ljava/lang/String;)V

    invoke-direct {p0, p6}, Lcom/autonavi/its/protocol/restapi/ReqDirectionDriving;->setDestId(Ljava/lang/String;)V

    invoke-direct {p0, p7}, Lcom/autonavi/its/protocol/restapi/ReqDirectionDriving;->setOriginType(Ljava/lang/String;)V

    invoke-direct {p0, p8}, Lcom/autonavi/its/protocol/restapi/ReqDirectionDriving;->setDestType(Ljava/lang/String;)V

    invoke-direct {p0, p9}, Lcom/autonavi/its/protocol/restapi/ReqDirectionDriving;->setWayPoints(Ljava/util/List;)V

    invoke-direct {p0, p10}, Lcom/autonavi/its/protocol/restapi/ReqDirectionDriving;->setAvoidRoad(Ljava/lang/String;)V

    invoke-direct {p0, p11}, Lcom/autonavi/its/protocol/restapi/ReqDirectionDriving;->setAvoidPolygons(Ljava/util/List;)V

    move-object/from16 v0, p12

    invoke-direct {p0, v0}, Lcom/autonavi/its/protocol/restapi/ReqDirectionDriving;->setProvince(Ljava/lang/String;)V

    move-object/from16 v0, p13

    invoke-direct {p0, v0}, Lcom/autonavi/its/protocol/restapi/ReqDirectionDriving;->setNumber(Ljava/lang/String;)V

    const-string/jumbo v1, "key"

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/restapi/ReqDirectionDriving;->getUserKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/autonavi/its/protocol/restapi/ReqDirectionDriving;->addParams(Ljava/lang/String;Ljava/lang/String;)Lcom/autonavi/its/protocol/BaseRequest;

    const-string/jumbo v1, "origin"

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/restapi/ReqDirectionDriving;->getStartPoint()Lcom/autonavi/its/protocol/model/Coordinate;

    move-result-object v2

    invoke-virtual {v2}, Lcom/autonavi/its/protocol/model/Coordinate;->getProtocolString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/autonavi/its/protocol/restapi/ReqDirectionDriving;->addParams(Ljava/lang/String;Ljava/lang/String;)Lcom/autonavi/its/protocol/BaseRequest;

    const-string/jumbo v1, "destination"

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/restapi/ReqDirectionDriving;->getEndPoint()Lcom/autonavi/its/protocol/model/Coordinate;

    move-result-object v2

    invoke-virtual {v2}, Lcom/autonavi/its/protocol/model/Coordinate;->getProtocolString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/autonavi/its/protocol/restapi/ReqDirectionDriving;->addParams(Ljava/lang/String;Ljava/lang/String;)Lcom/autonavi/its/protocol/BaseRequest;

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/restapi/ReqDirectionDriving;->getStrategy()I

    move-result v1

    if-ltz v1, :cond_0

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/restapi/ReqDirectionDriving;->getStrategy()I

    move-result v1

    const/16 v2, 0x14

    if-gt v1, v2, :cond_0

    const-string/jumbo v1, "strategy"

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/restapi/ReqDirectionDriving;->getDestType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/autonavi/its/protocol/restapi/ReqDirectionDriving;->addParams(Ljava/lang/String;Ljava/lang/String;)Lcom/autonavi/its/protocol/BaseRequest;

    :cond_0
    invoke-virtual {p0}, Lcom/autonavi/its/protocol/restapi/ReqDirectionDriving;->getOriginId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "originid"

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/restapi/ReqDirectionDriving;->getOriginId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/autonavi/its/protocol/restapi/ReqDirectionDriving;->addParams(Ljava/lang/String;Ljava/lang/String;)Lcom/autonavi/its/protocol/BaseRequest;

    :cond_1
    invoke-virtual {p0}, Lcom/autonavi/its/protocol/restapi/ReqDirectionDriving;->getDestId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "destinationid"

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/restapi/ReqDirectionDriving;->getDestId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/autonavi/its/protocol/restapi/ReqDirectionDriving;->addParams(Ljava/lang/String;Ljava/lang/String;)Lcom/autonavi/its/protocol/BaseRequest;

    :cond_2
    invoke-virtual {p0}, Lcom/autonavi/its/protocol/restapi/ReqDirectionDriving;->getOriginType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string/jumbo v1, "origintype"

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/restapi/ReqDirectionDriving;->getOriginType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/autonavi/its/protocol/restapi/ReqDirectionDriving;->addParams(Ljava/lang/String;Ljava/lang/String;)Lcom/autonavi/its/protocol/BaseRequest;

    :cond_3
    invoke-virtual {p0}, Lcom/autonavi/its/protocol/restapi/ReqDirectionDriving;->getDestType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string/jumbo v1, "destinationtype"

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/restapi/ReqDirectionDriving;->getDestType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/autonavi/its/protocol/restapi/ReqDirectionDriving;->addParams(Ljava/lang/String;Ljava/lang/String;)Lcom/autonavi/its/protocol/BaseRequest;

    :cond_4
    invoke-virtual {p0}, Lcom/autonavi/its/protocol/restapi/ReqDirectionDriving;->getWayPoints()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_5

    const-string/jumbo v1, "waypoints"

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/restapi/ReqDirectionDriving;->getWayPoints()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lcom/autonavi/its/protocol/model/Coordinate;->arrayToProtocolString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/autonavi/its/protocol/restapi/ReqDirectionDriving;->addParams(Ljava/lang/String;Ljava/lang/String;)Lcom/autonavi/its/protocol/BaseRequest;

    :cond_5
    invoke-virtual {p0}, Lcom/autonavi/its/protocol/restapi/ReqDirectionDriving;->getAvoidPolygons()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_6

    const-string/jumbo v1, "avoidpolygons"

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/restapi/ReqDirectionDriving;->getAvoidPolygons()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lcom/autonavi/its/protocol/model/Polygon;->arrayToProtocolString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/autonavi/its/protocol/restapi/ReqDirectionDriving;->addParams(Ljava/lang/String;Ljava/lang/String;)Lcom/autonavi/its/protocol/BaseRequest;

    :cond_6
    invoke-virtual {p0}, Lcom/autonavi/its/protocol/restapi/ReqDirectionDriving;->getAvoidRoad()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string/jumbo v1, "avoidroad"

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/restapi/ReqDirectionDriving;->getAvoidRoad()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/autonavi/its/protocol/restapi/ReqDirectionDriving;->addParams(Ljava/lang/String;Ljava/lang/String;)Lcom/autonavi/its/protocol/BaseRequest;

    :cond_7
    invoke-virtual {p0}, Lcom/autonavi/its/protocol/restapi/ReqDirectionDriving;->getProvince()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string/jumbo v1, "province"

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/restapi/ReqDirectionDriving;->getProvince()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/autonavi/its/protocol/restapi/ReqDirectionDriving;->addParams(Ljava/lang/String;Ljava/lang/String;)Lcom/autonavi/its/protocol/BaseRequest;

    :cond_8
    invoke-virtual {p0}, Lcom/autonavi/its/protocol/restapi/ReqDirectionDriving;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string/jumbo v1, "number"

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/restapi/ReqDirectionDriving;->getNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/autonavi/its/protocol/restapi/ReqDirectionDriving;->addParams(Ljava/lang/String;Ljava/lang/String;)Lcom/autonavi/its/protocol/BaseRequest;

    :cond_9
    invoke-static {}, Lcom/autonavi/its/protocol/RequestManager;->getAppContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "com.autonavi.its"

    const-string/jumbo v3, "2.5"

    invoke-static {v1, v2, v3}, Lcom/autonavi/its/common/restapi/APIUtil;->getHeader(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/autonavi/its/protocol/restapi/ReqDirectionDriving;->setHeader(Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/autonavi/its/protocol/model/Coordinate;Lcom/autonavi/its/protocol/model/Coordinate;ILjava/util/List;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/autonavi/its/protocol/model/Coordinate;",
            "Lcom/autonavi/its/protocol/model/Coordinate;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/autonavi/its/protocol/model/Coordinate;",
            ">;)V"
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v9, p5

    invoke-direct/range {v0 .. v13}, Lcom/autonavi/its/protocol/restapi/ReqDirectionDriving;-><init>(Ljava/lang/String;Lcom/autonavi/its/protocol/model/Coordinate;Lcom/autonavi/its/protocol/model/Coordinate;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/autonavi/its/protocol/model/Coordinate;Lcom/autonavi/its/protocol/model/Coordinate;ILjava/util/List;Ljava/lang/String;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/autonavi/its/protocol/model/Coordinate;",
            "Lcom/autonavi/its/protocol/model/Coordinate;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/autonavi/its/protocol/model/Coordinate;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    invoke-direct/range {v0 .. v13}, Lcom/autonavi/its/protocol/restapi/ReqDirectionDriving;-><init>(Ljava/lang/String;Lcom/autonavi/its/protocol/model/Coordinate;Lcom/autonavi/its/protocol/model/Coordinate;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private setAvoidPolygons(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/autonavi/its/protocol/model/Polygon;",
            ">;)V"
        }
    .end annotation

    const/16 v2, 0x20

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v2, :cond_0

    iget-object v0, p0, Lcom/autonavi/its/protocol/restapi/ReqDirectionDriving;->mAvoidPolygons:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/autonavi/its/protocol/restapi/ReqDirectionDriving;->mAvoidPolygons:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {p1, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/autonavi/its/protocol/restapi/ReqDirectionDriving;->mAvoidPolygons:Ljava/util/List;

    goto :goto_0
.end method

.method private setAvoidRoad(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/its/protocol/restapi/ReqDirectionDriving;->mAvoidRoad:Ljava/lang/String;

    return-void
.end method

.method private setDestId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/its/protocol/restapi/ReqDirectionDriving;->mDestId:Ljava/lang/String;

    return-void
.end method

.method private setDestType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/its/protocol/restapi/ReqDirectionDriving;->mDestType:Ljava/lang/String;

    return-void
.end method

.method private setEndPoint(Lcom/autonavi/its/protocol/model/Coordinate;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/its/protocol/restapi/ReqDirectionDriving;->mEndPoint:Lcom/autonavi/its/protocol/model/Coordinate;

    return-void
.end method

.method private setNumber(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/its/protocol/restapi/ReqDirectionDriving;->mNumber:Ljava/lang/String;

    return-void
.end method

.method private setOriginId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/its/protocol/restapi/ReqDirectionDriving;->mOriginId:Ljava/lang/String;

    return-void
.end method

.method private setOriginType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/its/protocol/restapi/ReqDirectionDriving;->mOriginType:Ljava/lang/String;

    return-void
.end method

.method private setProvince(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/its/protocol/restapi/ReqDirectionDriving;->mProvince:Ljava/lang/String;

    return-void
.end method

.method private setRoute(Lcom/autonavi/its/protocol/model/direction/DRoute;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/its/protocol/restapi/ReqDirectionDriving;->mRoute:Lcom/autonavi/its/protocol/model/direction/DRoute;

    return-void
.end method

.method private setStartPoint(Lcom/autonavi/its/protocol/model/Coordinate;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/its/protocol/restapi/ReqDirectionDriving;->mStartPoint:Lcom/autonavi/its/protocol/model/Coordinate;

    return-void
.end method

.method private setStrategy(I)V
    .locals 0

    iput p1, p0, Lcom/autonavi/its/protocol/restapi/ReqDirectionDriving;->mStrategy:I

    return-void
.end method

.method private setWayPoints(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/autonavi/its/protocol/model/Coordinate;",
            ">;)V"
        }
    .end annotation

    const/16 v2, 0x10

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v2, :cond_0

    iget-object v0, p0, Lcom/autonavi/its/protocol/restapi/ReqDirectionDriving;->mWayPoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/autonavi/its/protocol/restapi/ReqDirectionDriving;->mWayPoints:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {p1, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/autonavi/its/protocol/restapi/ReqDirectionDriving;->mWayPoints:Ljava/util/List;

    goto :goto_0
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

    invoke-virtual {p0, v4}, Lcom/autonavi/its/protocol/restapi/ReqDirectionDriving;->setCode(I)V

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/restapi/ReqDirectionDriving;->getCode()I

    move-result v4

    if-ne v4, v2, :cond_1

    :goto_0
    invoke-virtual {p0, v2}, Lcom/autonavi/its/protocol/restapi/ReqDirectionDriving;->setIsBusinessSuccess(Z)V

    const-string/jumbo v2, "info"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/autonavi/its/protocol/restapi/ReqDirectionDriving;->setMsg(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/restapi/ReqDirectionDriving;->isBusinessSuccess()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "route"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2}, Lcom/autonavi/its/protocol/model/direction/DRoute;->parser(Lorg/json/JSONObject;)Lcom/autonavi/its/protocol/model/direction/DRoute;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/autonavi/its/protocol/restapi/ReqDirectionDriving;->setRoute(Lcom/autonavi/its/protocol/model/direction/DRoute;)V
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

    invoke-virtual {p0, v0}, Lcom/autonavi/its/protocol/restapi/ReqDirectionDriving;->setException(Ljava/lang/Exception;)Lcom/autonavi/its/protocol/BaseRequest;

    invoke-virtual {p0, v3}, Lcom/autonavi/its/protocol/restapi/ReqDirectionDriving;->setIsBusinessSuccess(Z)V

    goto :goto_1
.end method

.method public getAvoidPolygons()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/autonavi/its/protocol/model/Polygon;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/autonavi/its/protocol/restapi/ReqDirectionDriving;->mAvoidPolygons:Ljava/util/List;

    return-object v0
.end method

.method public getAvoidRoad()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/its/protocol/restapi/ReqDirectionDriving;->mAvoidRoad:Ljava/lang/String;

    return-object v0
.end method

.method public getDestId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/its/protocol/restapi/ReqDirectionDriving;->mDestId:Ljava/lang/String;

    return-object v0
.end method

.method public getDestType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/its/protocol/restapi/ReqDirectionDriving;->mDestType:Ljava/lang/String;

    return-object v0
.end method

.method public getEndPoint()Lcom/autonavi/its/protocol/model/Coordinate;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/its/protocol/restapi/ReqDirectionDriving;->mEndPoint:Lcom/autonavi/its/protocol/model/Coordinate;

    return-object v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/its/protocol/restapi/ReqDirectionDriving;->mNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/its/protocol/restapi/ReqDirectionDriving;->mOriginId:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/its/protocol/restapi/ReqDirectionDriving;->mOriginType:Ljava/lang/String;

    return-object v0
.end method

.method public getProvince()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/its/protocol/restapi/ReqDirectionDriving;->mProvince:Ljava/lang/String;

    return-object v0
.end method

.method public getRoute()Lcom/autonavi/its/protocol/model/direction/DRoute;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/its/protocol/restapi/ReqDirectionDriving;->mRoute:Lcom/autonavi/its/protocol/model/direction/DRoute;

    return-object v0
.end method

.method public getStartPoint()Lcom/autonavi/its/protocol/model/Coordinate;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/its/protocol/restapi/ReqDirectionDriving;->mStartPoint:Lcom/autonavi/its/protocol/model/Coordinate;

    return-object v0
.end method

.method public getStrategy()I
    .locals 1

    iget v0, p0, Lcom/autonavi/its/protocol/restapi/ReqDirectionDriving;->mStrategy:I

    return v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "ReqDirectionDriving"

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "https://restapi.amap.com/v3/direction/driving?"

    return-object v0
.end method

.method public getWayPoints()Ljava/util/List;
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

    iget-object v0, p0, Lcom/autonavi/its/protocol/restapi/ReqDirectionDriving;->mWayPoints:Ljava/util/List;

    return-object v0
.end method
