.class public Lcom/miui/personalassistant/util/BaiduMapUtil;
.super Ljava/lang/Object;
.source "BaiduMapUtil.java"

# interfaces
.implements Lcom/miui/personalassistant/util/MapHelper;
.implements Lcom/baidu/mapapi/search/route/OnGetRoutePlanResultListener;


# static fields
.field private static MSG_SMOOTH:Ljava/lang/String; = null

.field private static final REQ_STATUS_FAIL:I = 0x1

.field private static final REQ_STATUS_SUCCESS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "GeoLocationManager.BaiduMapUtil"

.field private static TITLE_BLOCKED:Ljava/lang/String;

.field private static TITLE_BLOCKED_LAST:Ljava/lang/String;

.field private static TITLE_CONGESTION:Ljava/lang/String;

.field private static TITLE_CONGESTION_LAST:Ljava/lang/String;

.field private static TITLE_MIDDLE:Ljava/lang/String;

.field private static TITLE_SMOOTH:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mGeoCoder:Lcom/baidu/mapapi/search/geocode/GeoCoder;

.field private mGeoHandler:Landroid/os/Handler;

.field private mStartAddress:Ljava/lang/String;

.field private mStartCity:Ljava/lang/String;

.field private mType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/personalassistant/util/BaiduMapUtil;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1b0b0273

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/personalassistant/util/BaiduMapUtil;->TITLE_CONGESTION:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1b0b0270

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/personalassistant/util/BaiduMapUtil;->TITLE_MIDDLE:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1b0b0274

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/personalassistant/util/BaiduMapUtil;->TITLE_CONGESTION_LAST:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1b0b0271

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/personalassistant/util/BaiduMapUtil;->TITLE_BLOCKED:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1b0b0272

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/personalassistant/util/BaiduMapUtil;->TITLE_BLOCKED_LAST:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1b0b027b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/personalassistant/util/BaiduMapUtil;->TITLE_SMOOTH:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1b0b0265

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/personalassistant/util/BaiduMapUtil;->MSG_SMOOTH:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/personalassistant/util/BaiduMapUtil;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/util/BaiduMapUtil;->mStartAddress:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/miui/personalassistant/util/BaiduMapUtil;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/util/BaiduMapUtil;->mStartAddress:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1000(Lcom/miui/personalassistant/util/BaiduMapUtil;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/util/BaiduMapUtil;->mType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/miui/personalassistant/util/BaiduMapUtil;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/util/BaiduMapUtil;->mStartCity:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/miui/personalassistant/util/BaiduMapUtil;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/util/BaiduMapUtil;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/personalassistant/util/BaiduMapUtil;Lcom/baidu/mapapi/search/route/RoutePlanSearch;Lcom/baidu/mapapi/search/route/PlanNode;Lcom/baidu/mapapi/search/route/PlanNode;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/personalassistant/util/BaiduMapUtil;->doQueryEta(Lcom/baidu/mapapi/search/route/RoutePlanSearch;Lcom/baidu/mapapi/search/route/PlanNode;Lcom/baidu/mapapi/search/route/PlanNode;)V

    return-void
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/miui/personalassistant/util/BaiduMapUtil;->TITLE_SMOOTH:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/miui/personalassistant/util/BaiduMapUtil;->MSG_SMOOTH:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/miui/personalassistant/util/BaiduMapUtil;->TITLE_CONGESTION:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/miui/personalassistant/util/BaiduMapUtil;->TITLE_MIDDLE:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/miui/personalassistant/util/BaiduMapUtil;->TITLE_CONGESTION_LAST:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/miui/personalassistant/util/BaiduMapUtil;->TITLE_BLOCKED:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/miui/personalassistant/util/BaiduMapUtil;->TITLE_BLOCKED_LAST:Ljava/lang/String;

    return-object v0
.end method

.method private doQueryEta(Lcom/baidu/mapapi/search/route/RoutePlanSearch;Lcom/baidu/mapapi/search/route/PlanNode;Lcom/baidu/mapapi/search/route/PlanNode;)V
    .locals 3

    :try_start_0
    invoke-virtual {p1, p0}, Lcom/baidu/mapapi/search/route/RoutePlanSearch;->setOnGetRoutePlanResultListener(Lcom/baidu/mapapi/search/route/OnGetRoutePlanResultListener;)V

    new-instance v1, Lcom/baidu/mapapi/search/route/DrivingRoutePlanOption;

    invoke-direct {v1}, Lcom/baidu/mapapi/search/route/DrivingRoutePlanOption;-><init>()V

    invoke-virtual {v1, p2}, Lcom/baidu/mapapi/search/route/DrivingRoutePlanOption;->from(Lcom/baidu/mapapi/search/route/PlanNode;)Lcom/baidu/mapapi/search/route/DrivingRoutePlanOption;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/baidu/mapapi/search/route/DrivingRoutePlanOption;->to(Lcom/baidu/mapapi/search/route/PlanNode;)Lcom/baidu/mapapi/search/route/DrivingRoutePlanOption;

    move-result-object v1

    sget-object v2, Lcom/baidu/mapapi/search/route/DrivingRoutePlanOption$DrivingTrafficPolicy;->ROUTE_PATH_AND_TRAFFIC:Lcom/baidu/mapapi/search/route/DrivingRoutePlanOption$DrivingTrafficPolicy;

    invoke-virtual {v1, v2}, Lcom/baidu/mapapi/search/route/DrivingRoutePlanOption;->trafficPolicy(Lcom/baidu/mapapi/search/route/DrivingRoutePlanOption$DrivingTrafficPolicy;)Lcom/baidu/mapapi/search/route/DrivingRoutePlanOption;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/baidu/mapapi/search/route/RoutePlanSearch;->drivingSearch(Lcom/baidu/mapapi/search/route/DrivingRoutePlanOption;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/miui/personalassistant/util/BaiduMapUtil;->sendQuiteMsg()V

    goto :goto_0
.end method


# virtual methods
.method public getAddressByCode(Ljava/lang/String;Ljava/lang/String;Lcom/miui/personalassistant/util/MapHelper$AddressCallback;)V
    .locals 8

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const-string/jumbo v2, "GeoLocationManager.BaiduMapUtil"

    const-string/jumbo v3, "getAddressByCode paramMissing"

    invoke-static {v2, v3}, Lcom/miui/personalassistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/miui/personalassistant/util/BaiduMapUtil;->sendQuiteMsg()V

    :goto_0
    return-void

    :cond_1
    new-instance v1, Lcom/baidu/mapapi/model/LatLng;

    invoke-static {p2}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {p1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lcom/miui/personalassistant/util/MapUtil;->getBDLat(DD)D

    move-result-wide v2

    invoke-static {p2}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-static {p1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Lcom/miui/personalassistant/util/MapUtil;->getBDLng(DD)D

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/baidu/mapapi/model/LatLng;-><init>(DD)V

    :try_start_0
    iget-object v2, p0, Lcom/miui/personalassistant/util/BaiduMapUtil;->mGeoCoder:Lcom/baidu/mapapi/search/geocode/GeoCoder;

    if-nez v2, :cond_2

    invoke-static {}, Lcom/baidu/mapapi/search/geocode/GeoCoder;->newInstance()Lcom/baidu/mapapi/search/geocode/GeoCoder;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/personalassistant/util/BaiduMapUtil;->mGeoCoder:Lcom/baidu/mapapi/search/geocode/GeoCoder;

    :cond_2
    iget-object v2, p0, Lcom/miui/personalassistant/util/BaiduMapUtil;->mGeoCoder:Lcom/baidu/mapapi/search/geocode/GeoCoder;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/miui/personalassistant/util/BaiduMapUtil;->mGeoCoder:Lcom/baidu/mapapi/search/geocode/GeoCoder;

    new-instance v3, Lcom/miui/personalassistant/util/BaiduMapUtil$2;

    invoke-direct {v3, p0, p3}, Lcom/miui/personalassistant/util/BaiduMapUtil$2;-><init>(Lcom/miui/personalassistant/util/BaiduMapUtil;Lcom/miui/personalassistant/util/MapHelper$AddressCallback;)V

    invoke-virtual {v2, v3}, Lcom/baidu/mapapi/search/geocode/GeoCoder;->setOnGetGeoCodeResultListener(Lcom/baidu/mapapi/search/geocode/OnGetGeoCoderResultListener;)V

    :cond_3
    iget-object v2, p0, Lcom/miui/personalassistant/util/BaiduMapUtil;->mGeoCoder:Lcom/baidu/mapapi/search/geocode/GeoCoder;

    new-instance v3, Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeOption;

    invoke-direct {v3}, Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeOption;-><init>()V

    invoke-virtual {v3, v1}, Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeOption;->location(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeOption;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/baidu/mapapi/search/geocode/GeoCoder;->reverseGeoCode(Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeOption;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/miui/personalassistant/util/BaiduMapUtil;->sendQuiteMsg()V

    goto :goto_0
.end method

.method public getEtaLineInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 14

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object p1, v8, v9

    const/4 v9, 0x1

    aput-object p2, v8, v9

    const/4 v9, 0x2

    aput-object p4, v8, v9

    const/4 v9, 0x3

    aput-object p5, v8, v9

    invoke-static {v8}, Lcom/miui/personalassistant/util/LocationUtil;->isRequiredParamMissing([Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string/jumbo v8, "GeoLocationManager.BaiduMapUtil"

    const-string/jumbo v9, " getEtaLineInfo paramMissing"

    invoke-static {v8, v9}, Lcom/miui/personalassistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/miui/personalassistant/util/BaiduMapUtil;->sendQuiteMsg()V

    :goto_0
    return-void

    :cond_0
    move-object/from16 v0, p3

    iput-object v0, p0, Lcom/miui/personalassistant/util/BaiduMapUtil;->mStartAddress:Ljava/lang/String;

    move-object/from16 v0, p7

    iput-object v0, p0, Lcom/miui/personalassistant/util/BaiduMapUtil;->mType:Ljava/lang/String;

    new-instance v6, Lcom/baidu/mapapi/model/LatLng;

    invoke-static/range {p2 .. p2}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    invoke-static {p1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    invoke-static {v8, v9, v10, v11}, Lcom/miui/personalassistant/util/MapUtil;->getBDLat(DD)D

    move-result-wide v8

    invoke-static/range {p2 .. p2}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    invoke-static {p1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v12

    invoke-static {v10, v11, v12, v13}, Lcom/miui/personalassistant/util/MapUtil;->getBDLng(DD)D

    move-result-wide v10

    invoke-direct {v6, v8, v9, v10, v11}, Lcom/baidu/mapapi/model/LatLng;-><init>(DD)V

    new-instance v2, Lcom/baidu/mapapi/model/LatLng;

    invoke-static/range {p5 .. p5}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    invoke-static/range {p4 .. p4}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    invoke-static {v8, v9, v10, v11}, Lcom/miui/personalassistant/util/MapUtil;->getBDLat(DD)D

    move-result-wide v8

    invoke-static/range {p5 .. p5}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    invoke-static/range {p4 .. p4}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v12

    invoke-static {v10, v11, v12, v13}, Lcom/miui/personalassistant/util/MapUtil;->getBDLng(DD)D

    move-result-wide v10

    invoke-direct {v2, v8, v9, v10, v11}, Lcom/baidu/mapapi/model/LatLng;-><init>(DD)V

    invoke-static {v6}, Lcom/baidu/mapapi/search/route/PlanNode;->withLocation(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/search/route/PlanNode;

    move-result-object v7

    invoke-static {v2}, Lcom/baidu/mapapi/search/route/PlanNode;->withLocation(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/search/route/PlanNode;

    move-result-object v3

    invoke-static {}, Lcom/baidu/mapapi/search/route/RoutePlanSearch;->newInstance()Lcom/baidu/mapapi/search/route/RoutePlanSearch;

    move-result-object v5

    iget-object v8, p0, Lcom/miui/personalassistant/util/BaiduMapUtil;->mStartAddress:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    invoke-direct {p0, v5, v7, v3}, Lcom/miui/personalassistant/util/BaiduMapUtil;->doQueryEta(Lcom/baidu/mapapi/search/route/RoutePlanSearch;Lcom/baidu/mapapi/search/route/PlanNode;Lcom/baidu/mapapi/search/route/PlanNode;)V

    goto :goto_0

    :cond_1
    new-instance v8, Lcom/miui/personalassistant/util/BaiduMapUtil$1;

    invoke-direct {v8, p0, v5, v7, v3}, Lcom/miui/personalassistant/util/BaiduMapUtil$1;-><init>(Lcom/miui/personalassistant/util/BaiduMapUtil;Lcom/baidu/mapapi/search/route/RoutePlanSearch;Lcom/baidu/mapapi/search/route/PlanNode;Lcom/baidu/mapapi/search/route/PlanNode;)V

    move-object/from16 v0, p2

    invoke-virtual {p0, p1, v0, v8}, Lcom/miui/personalassistant/util/BaiduMapUtil;->getAddressByCode(Ljava/lang/String;Ljava/lang/String;Lcom/miui/personalassistant/util/MapHelper$AddressCallback;)V

    goto/16 :goto_0
.end method

.method public onGetBikingRouteResult(Lcom/baidu/mapapi/search/route/BikingRouteResult;)V
    .locals 0

    return-void
.end method

.method public onGetDrivingRouteResult(Lcom/baidu/mapapi/search/route/DrivingRouteResult;)V
    .locals 4

    const/4 v3, 0x1

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v1, p1, Lcom/baidu/mapapi/search/route/DrivingRouteResult;->error:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    sget-object v2, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;->NO_ERROR:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    if-ne v1, v2, :cond_0

    invoke-virtual {p1}, Lcom/baidu/mapapi/search/route/DrivingRouteResult;->getRouteLines()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/baidu/mapapi/search/route/DrivingRouteResult;->getRouteLines()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v1, v3, :cond_0

    invoke-virtual {p1}, Lcom/baidu/mapapi/search/route/DrivingRouteResult;->getRouteLines()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    const-string/jumbo v1, "GeoLocationManager.BaiduMapUtil"

    const-string/jumbo v2, "onGetDrivingRouteResult result error"

    invoke-static {v1, v2}, Lcom/miui/personalassistant/config/PALog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/miui/personalassistant/util/BaiduMapUtil;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    const-string/jumbo v3, "GeoLocationManager.BaiduMapUtil"

    invoke-static {v1, v2, v3}, Lcom/miui/personalassistant/util/LocationUtil;->sendEtaLineInfo(Landroid/content/Context;ILjava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/personalassistant/util/BaiduMapUtil;->sendQuiteMsg()V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/baidu/mapapi/search/route/DrivingRouteResult;->getRouteLines()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/mapapi/search/route/DrivingRouteLine;

    new-instance v2, Lcom/miui/personalassistant/util/BaiduMapUtil$3;

    invoke-direct {v2, p0, p1}, Lcom/miui/personalassistant/util/BaiduMapUtil$3;-><init>(Lcom/miui/personalassistant/util/BaiduMapUtil;Lcom/baidu/mapapi/search/route/DrivingRouteResult;)V

    invoke-static {v1, v2}, Lcom/baidu/mapapi/search/ext/parser/DriveRouteInfoParser;->parseDRouteLine2Info(Lcom/baidu/mapapi/search/route/DrivingRouteLine;Lcom/baidu/mapapi/search/ext/parser/DriveRouteInfoParser$ICallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "GeoLocationManager.BaiduMapUtil"

    const-string/jumbo v2, "onGetDrivingRouteResult"

    invoke-static {v1, v2, v0}, Lcom/miui/personalassistant/config/PALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p0}, Lcom/miui/personalassistant/util/BaiduMapUtil;->sendQuiteMsg()V

    goto :goto_0
.end method

.method public onGetIndoorRouteResult(Lcom/baidu/mapapi/search/route/IndoorRouteResult;)V
    .locals 0

    return-void
.end method

.method public onGetMassTransitRouteResult(Lcom/baidu/mapapi/search/route/MassTransitRouteResult;)V
    .locals 0

    return-void
.end method

.method public onGetTransitRouteResult(Lcom/baidu/mapapi/search/route/TransitRouteResult;)V
    .locals 0

    return-void
.end method

.method public onGetWalkingRouteResult(Lcom/baidu/mapapi/search/route/WalkingRouteResult;)V
    .locals 0

    return-void
.end method

.method public sendQuiteMsg()V
    .locals 2

    const/4 v1, 0x4

    iget-object v0, p0, Lcom/miui/personalassistant/util/BaiduMapUtil;->mGeoHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/util/BaiduMapUtil;->mGeoHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/miui/personalassistant/util/BaiduMapUtil;->mGeoHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public setHandler(Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/util/BaiduMapUtil;->mGeoHandler:Landroid/os/Handler;

    return-void
.end method
