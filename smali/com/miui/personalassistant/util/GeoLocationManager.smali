.class public Lcom/miui/personalassistant/util/GeoLocationManager;
.super Ljava/lang/Object;
.source "GeoLocationManager.java"


# static fields
.field public static final AUTONAVI_PKGNAME:Ljava/lang/String; = "com.autonavi.minimap"

.field public static final BAIDUMAP_PKGNAME:Ljava/lang/String; = "com.baidu.BaiduMap"

.field private static final MSG_GET_CONDITION:I = 0x2

.field private static final MSG_GET_LOCATION:I = 0x1

.field public static final MSG_LOCATION_TASK_REMOVE:I = 0x3

.field public static final MSG_MAP_TASK_REMOVE:I = 0x4

.field private static final MSG_QUITE:I = 0x5

.field private static final QUERY_WAITING_TIME_CONDITION:J = 0x2710L

.field private static final QUERY_WAITING_TIME_LOCATION:J = 0x1388L

.field private static final REQ_STATUS_NETERROR:I = 0x2

.field private static final TAG:Ljava/lang/String; = "Assist.GeoLocationManager"

.field private static sInstance:Lcom/miui/personalassistant/util/GeoLocationManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mLocationListener:Landroid/location/LocationListener;

.field private mLocationThread:Landroid/os/HandlerThread;

.field private mMapHelper:Lcom/miui/personalassistant/util/MapHelper;

.field private volatile mTaskFalg:I


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/personalassistant/util/GeoLocationManager;->mTaskFalg:I

    new-instance v0, Lcom/miui/personalassistant/util/GeoLocationManager$2;

    invoke-direct {v0, p0}, Lcom/miui/personalassistant/util/GeoLocationManager$2;-><init>(Lcom/miui/personalassistant/util/GeoLocationManager;)V

    iput-object v0, p0, Lcom/miui/personalassistant/util/GeoLocationManager;->mLocationListener:Landroid/location/LocationListener;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/personalassistant/util/GeoLocationManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/personalassistant/util/GeoLocationManager;)I
    .locals 1

    iget v0, p0, Lcom/miui/personalassistant/util/GeoLocationManager;->mTaskFalg:I

    return v0
.end method

.method static synthetic access$002(Lcom/miui/personalassistant/util/GeoLocationManager;I)I
    .locals 0

    iput p1, p0, Lcom/miui/personalassistant/util/GeoLocationManager;->mTaskFalg:I

    return p1
.end method

.method static synthetic access$100(Lcom/miui/personalassistant/util/GeoLocationManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/personalassistant/util/GeoLocationManager;->cancelLocationRequest()V

    return-void
.end method

.method static synthetic access$200(Lcom/miui/personalassistant/util/GeoLocationManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/personalassistant/util/GeoLocationManager;->sendQuiteMsg()V

    return-void
.end method

.method static synthetic access$300(Lcom/miui/personalassistant/util/GeoLocationManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/personalassistant/util/GeoLocationManager;->quiteThread()V

    return-void
.end method

.method static synthetic access$400(Lcom/miui/personalassistant/util/GeoLocationManager;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/util/GeoLocationManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/miui/personalassistant/util/GeoLocationManager;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/util/GeoLocationManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private cancelLocationRequest()V
    .locals 2

    const-string/jumbo v0, "Assist.GeoLocationManager"

    const-string/jumbo v1, "cancelLocationRequest "

    invoke-static {v0, v1}, Lcom/miui/personalassistant/config/PALog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v0, p0, Lcom/miui/personalassistant/util/GeoLocationManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/personalassistant/util/LocationUtil;->getLocationManager(Landroid/content/Context;)Landroid/location/LocationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/personalassistant/util/GeoLocationManager;->mLocationListener:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    iget-object v0, p0, Lcom/miui/personalassistant/util/GeoLocationManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/personalassistant/util/LocationUtil;->sendLastLocation(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private declared-synchronized checkLocationThread()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/miui/personalassistant/util/GeoLocationManager;->mLocationThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/util/GeoLocationManager;->mLocationThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "Assist.GeoLocationManager"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/personalassistant/util/GeoLocationManager;->mLocationThread:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/miui/personalassistant/util/GeoLocationManager;->mLocationThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/miui/personalassistant/util/GeoLocationManager$1;

    iget-object v1, p0, Lcom/miui/personalassistant/util/GeoLocationManager;->mLocationThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/miui/personalassistant/util/GeoLocationManager$1;-><init>(Lcom/miui/personalassistant/util/GeoLocationManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/miui/personalassistant/util/GeoLocationManager;->mHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/miui/personalassistant/util/GeoLocationManager;
    .locals 2

    const-class v1, Lcom/miui/personalassistant/util/GeoLocationManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/miui/personalassistant/util/GeoLocationManager;->sInstance:Lcom/miui/personalassistant/util/GeoLocationManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/personalassistant/util/GeoLocationManager;

    invoke-direct {v0, p0}, Lcom/miui/personalassistant/util/GeoLocationManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/miui/personalassistant/util/GeoLocationManager;->sInstance:Lcom/miui/personalassistant/util/GeoLocationManager;

    :cond_0
    sget-object v0, Lcom/miui/personalassistant/util/GeoLocationManager;->sInstance:Lcom/miui/personalassistant/util/GeoLocationManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private declared-synchronized quiteThread()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/miui/personalassistant/util/GeoLocationManager;->mTaskFalg:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/util/GeoLocationManager;->mLocationThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "Assist.GeoLocationManager"

    const-string/jumbo v1, " quiteThread "

    invoke-static {v0, v1}, Lcom/miui/personalassistant/config/PALog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/personalassistant/util/GeoLocationManager;->mMapHelper:Lcom/miui/personalassistant/util/MapHelper;

    iget-object v0, p0, Lcom/miui/personalassistant/util/GeoLocationManager;->mLocationThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/personalassistant/util/GeoLocationManager;->mLocationThread:Landroid/os/HandlerThread;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/personalassistant/util/GeoLocationManager;->mHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private sendQuiteMsg()V
    .locals 4

    const/4 v1, 0x5

    iget-object v0, p0, Lcom/miui/personalassistant/util/GeoLocationManager;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/util/GeoLocationManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/util/GeoLocationManager;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public getEtaLineInfo(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 7

    const/4 v6, 0x2

    const-string/jumbo v1, "Assist.GeoLocationManager"

    const-string/jumbo v2, "MapItem proxy type :  %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x6

    aget-object v5, p2, v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/miui/personalassistant/config/PALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/miui/personalassistant/util/GeoLocationManager;->checkLocationThread()V

    new-instance v0, Lcom/miui/personalassistant/util/LocationUtil$ConditionInfo;

    invoke-direct {v0, p2, p1}, Lcom/miui/personalassistant/util/LocationUtil$ConditionInfo;-><init>([Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/personalassistant/util/GeoLocationManager;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/personalassistant/util/GeoLocationManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v6, v0}, Lcom/miui/personalassistant/util/GeoLocationManager;->sendMessage(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public getLocation()Landroid/location/Location;
    .locals 5

    const/4 v4, 0x3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/miui/personalassistant/util/GeoLocationManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/miui/personalassistant/util/LocationUtil;->isLocationExpired(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v0, "Assist.GeoLocationManager"

    const-string/jumbo v1, "isLocationExpired : flase"

    invoke-static {v0, v1}, Lcom/miui/personalassistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/personalassistant/util/GeoLocationManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/personalassistant/util/LocationUtil;->getLastPreferedLocation(Landroid/content/Context;)Landroid/location/Location;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/miui/personalassistant/util/GeoLocationManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/miui/personalassistant/util/Util;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "Assist.GeoLocationManager"

    const-string/jumbo v2, "networkConnect : flase"

    invoke-static {v1, v2}, Lcom/miui/personalassistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/miui/personalassistant/util/GeoLocationManager;->mContext:Landroid/content/Context;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/miui/personalassistant/util/LocationUtil;->sendEmptyLocation(Landroid/content/Context;I)V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/miui/personalassistant/util/GeoLocationManager;->checkLocationThread()V

    iget-object v1, p0, Lcom/miui/personalassistant/util/GeoLocationManager;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/personalassistant/util/GeoLocationManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/miui/personalassistant/util/GeoLocationManager;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/miui/personalassistant/util/GeoLocationManager;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method requestCondition(Ljava/lang/Object;)V
    .locals 10

    const/4 v9, 0x3

    const/4 v7, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x4

    iget-object v0, p0, Lcom/miui/personalassistant/util/GeoLocationManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    instance-of v0, p1, Lcom/miui/personalassistant/util/LocationUtil$ConditionInfo;

    if-eqz v0, :cond_7

    move-object v8, p1

    check-cast v8, Lcom/miui/personalassistant/util/LocationUtil$ConditionInfo;

    const-string/jumbo v0, "com.autonavi.minimap"

    iget-object v1, v8, Lcom/miui/personalassistant/util/LocationUtil$ConditionInfo;->pkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/personalassistant/util/GeoLocationManager;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v6, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iget-object v0, p0, Lcom/miui/personalassistant/util/GeoLocationManager;->mMapHelper:Lcom/miui/personalassistant/util/MapHelper;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/personalassistant/util/GeoLocationManager;->mMapHelper:Lcom/miui/personalassistant/util/MapHelper;

    instance-of v0, v0, Lcom/miui/personalassistant/util/AutoNaviUtil;

    if-nez v0, :cond_2

    :cond_1
    new-instance v0, Lcom/miui/personalassistant/util/AutoNaviUtil;

    iget-object v1, p0, Lcom/miui/personalassistant/util/GeoLocationManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/miui/personalassistant/util/AutoNaviUtil;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/personalassistant/util/GeoLocationManager;->mMapHelper:Lcom/miui/personalassistant/util/MapHelper;

    :cond_2
    iget-object v0, p0, Lcom/miui/personalassistant/util/GeoLocationManager;->mMapHelper:Lcom/miui/personalassistant/util/MapHelper;

    iget-object v1, p0, Lcom/miui/personalassistant/util/GeoLocationManager;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, v1}, Lcom/miui/personalassistant/util/MapHelper;->setHandler(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/miui/personalassistant/util/GeoLocationManager;->mMapHelper:Lcom/miui/personalassistant/util/MapHelper;

    iget-object v1, v8, Lcom/miui/personalassistant/util/LocationUtil$ConditionInfo;->args:[Ljava/lang/String;

    aget-object v1, v1, v4

    iget-object v2, v8, Lcom/miui/personalassistant/util/LocationUtil$ConditionInfo;->args:[Ljava/lang/String;

    aget-object v2, v2, v5

    iget-object v3, v8, Lcom/miui/personalassistant/util/LocationUtil$ConditionInfo;->args:[Ljava/lang/String;

    aget-object v3, v3, v7

    iget-object v4, v8, Lcom/miui/personalassistant/util/LocationUtil$ConditionInfo;->args:[Ljava/lang/String;

    aget-object v4, v4, v9

    iget-object v5, v8, Lcom/miui/personalassistant/util/LocationUtil$ConditionInfo;->args:[Ljava/lang/String;

    aget-object v5, v5, v6

    iget-object v6, v8, Lcom/miui/personalassistant/util/LocationUtil$ConditionInfo;->args:[Ljava/lang/String;

    const/4 v7, 0x5

    aget-object v6, v6, v7

    iget-object v7, v8, Lcom/miui/personalassistant/util/LocationUtil$ConditionInfo;->args:[Ljava/lang/String;

    const/4 v9, 0x6

    aget-object v7, v7, v9

    invoke-interface/range {v0 .. v7}, Lcom/miui/personalassistant/util/MapHelper;->getEtaLineInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string/jumbo v0, "com.baidu.BaiduMap"

    iget-object v1, v8, Lcom/miui/personalassistant/util/LocationUtil$ConditionInfo;->pkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/miui/personalassistant/util/GeoLocationManager;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v6, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iget-object v0, p0, Lcom/miui/personalassistant/util/GeoLocationManager;->mMapHelper:Lcom/miui/personalassistant/util/MapHelper;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/miui/personalassistant/util/GeoLocationManager;->mMapHelper:Lcom/miui/personalassistant/util/MapHelper;

    instance-of v0, v0, Lcom/miui/personalassistant/util/BaiduMapUtil;

    if-nez v0, :cond_5

    :cond_4
    new-instance v0, Lcom/miui/personalassistant/util/BaiduMapUtil;

    iget-object v1, p0, Lcom/miui/personalassistant/util/GeoLocationManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/miui/personalassistant/util/BaiduMapUtil;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/personalassistant/util/GeoLocationManager;->mMapHelper:Lcom/miui/personalassistant/util/MapHelper;

    :cond_5
    iget-object v0, p0, Lcom/miui/personalassistant/util/GeoLocationManager;->mMapHelper:Lcom/miui/personalassistant/util/MapHelper;

    iget-object v1, p0, Lcom/miui/personalassistant/util/GeoLocationManager;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, v1}, Lcom/miui/personalassistant/util/MapHelper;->setHandler(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/miui/personalassistant/util/GeoLocationManager;->mMapHelper:Lcom/miui/personalassistant/util/MapHelper;

    iget-object v1, v8, Lcom/miui/personalassistant/util/LocationUtil$ConditionInfo;->args:[Ljava/lang/String;

    aget-object v1, v1, v4

    iget-object v2, v8, Lcom/miui/personalassistant/util/LocationUtil$ConditionInfo;->args:[Ljava/lang/String;

    aget-object v2, v2, v5

    iget-object v3, v8, Lcom/miui/personalassistant/util/LocationUtil$ConditionInfo;->args:[Ljava/lang/String;

    aget-object v3, v3, v7

    iget-object v4, v8, Lcom/miui/personalassistant/util/LocationUtil$ConditionInfo;->args:[Ljava/lang/String;

    aget-object v4, v4, v9

    iget-object v5, v8, Lcom/miui/personalassistant/util/LocationUtil$ConditionInfo;->args:[Ljava/lang/String;

    aget-object v5, v5, v6

    iget-object v6, v8, Lcom/miui/personalassistant/util/LocationUtil$ConditionInfo;->args:[Ljava/lang/String;

    const/4 v7, 0x5

    aget-object v6, v6, v7

    iget-object v7, v8, Lcom/miui/personalassistant/util/LocationUtil$ConditionInfo;->args:[Ljava/lang/String;

    const/4 v9, 0x6

    aget-object v7, v7, v9

    invoke-interface/range {v0 .. v7}, Lcom/miui/personalassistant/util/MapHelper;->getEtaLineInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    invoke-direct {p0}, Lcom/miui/personalassistant/util/GeoLocationManager;->sendQuiteMsg()V

    goto/16 :goto_0

    :cond_7
    invoke-direct {p0}, Lcom/miui/personalassistant/util/GeoLocationManager;->sendQuiteMsg()V

    goto/16 :goto_0
.end method

.method requestLocation()V
    .locals 6

    const-string/jumbo v3, "Assist.GeoLocationManager"

    const-string/jumbo v4, "requestLocation"

    invoke-static {v3, v4}, Lcom/miui/personalassistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v3, p0, Lcom/miui/personalassistant/util/GeoLocationManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/miui/personalassistant/util/LocationUtil;->getLocationManager(Landroid/content/Context;)Landroid/location/LocationManager;

    move-result-object v1

    iget-object v3, p0, Lcom/miui/personalassistant/util/GeoLocationManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/miui/personalassistant/util/LocationUtil;->getBestProvider(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/miui/personalassistant/util/GeoLocationManager;->mLocationListener:Landroid/location/LocationListener;

    iget-object v4, p0, Lcom/miui/personalassistant/util/GeoLocationManager;->mLocationThread:Landroid/os/HandlerThread;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/location/LocationManager;->requestSingleUpdate(Ljava/lang/String;Landroid/location/LocationListener;Landroid/os/Looper;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v3, "Assist.GeoLocationManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "requestLocation "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/miui/personalassistant/config/PALog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public sendMessage(ILjava/lang/Object;)V
    .locals 3

    iget-object v1, p0, Lcom/miui/personalassistant/util/GeoLocationManager;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/personalassistant/util/GeoLocationManager;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->what:I

    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/miui/personalassistant/util/GeoLocationManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method
