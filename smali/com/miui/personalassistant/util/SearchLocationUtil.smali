.class public Lcom/miui/personalassistant/util/SearchLocationUtil;
.super Ljava/lang/Object;
.source "SearchLocationUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/personalassistant/util/SearchLocationUtil$CallBack;
    }
.end annotation


# static fields
.field private static final REQ_STATUS_FAIL:I = 0x1

.field private static final REQ_STATUS_NETERROR:I = 0x2

.field private static final REQ_STATUS_SUCCESS:I = 0x0

.field public static final TAG:Ljava/lang/String; = "SearchLocationUtil"

.field private static sInstance:Lcom/miui/personalassistant/util/SearchLocationUtil;


# instance fields
.field private HANDER_THREAD_NAME:Ljava/lang/String;

.field private isRunning:Z

.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private userKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/personalassistant/util/SearchLocationUtil;->isRunning:Z

    const-string/jumbo v0, "location"

    iput-object v0, p0, Lcom/miui/personalassistant/util/SearchLocationUtil;->HANDER_THREAD_NAME:Ljava/lang/String;

    const-string/jumbo v0, "lbs.amap.com.normal"

    invoke-static {v0}, Lcom/autonavi/its/protocol/RequestManager;->getUserKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/personalassistant/util/SearchLocationUtil;->userKey:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/personalassistant/util/SearchLocationUtil;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/util/SearchLocationUtil;->userKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/autonavi/its/protocol/model/Point;)Ljava/util/List;
    .locals 1

    invoke-static {p0}, Lcom/miui/personalassistant/util/SearchLocationUtil;->addOnePoint(Lcom/autonavi/its/protocol/model/Point;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/personalassistant/util/SearchLocationUtil;Lcom/miui/personalassistant/util/SearchLocationUtil$CallBack;)Lcom/autonavi/its/protocol/ReqCallback;
    .locals 1

    invoke-direct {p0, p1}, Lcom/miui/personalassistant/util/SearchLocationUtil;->getReqCallback(Lcom/miui/personalassistant/util/SearchLocationUtil$CallBack;)Lcom/autonavi/its/protocol/ReqCallback;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/personalassistant/util/SearchLocationUtil;)Landroid/os/HandlerThread;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/util/SearchLocationUtil;->mHandlerThread:Landroid/os/HandlerThread;

    return-object v0
.end method

.method static synthetic access$402(Lcom/miui/personalassistant/util/SearchLocationUtil;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/personalassistant/util/SearchLocationUtil;->isRunning:Z

    return p1
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

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static getCurLocation(Landroid/content/Context;Lcom/miui/personalassistant/util/SearchLocationUtil$CallBack;)V
    .locals 7

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p0}, Lcom/miui/personalassistant/util/SearchLocationUtil;->getExLocation(Landroid/content/Context;)Landroid/location/Location;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {p1, v1}, Lcom/miui/personalassistant/util/SearchLocationUtil$CallBack;->onGetLocation(Landroid/location/Location;)V

    goto :goto_0

    :cond_2
    invoke-static {p0}, Lcom/miui/personalassistant/util/Util;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    :try_start_0
    invoke-static {p0}, Lcom/miui/personalassistant/util/LocationUtil;->getLocationManager(Landroid/content/Context;)Landroid/location/LocationManager;

    move-result-object v2

    invoke-static {p0}, Lcom/miui/personalassistant/util/LocationUtil;->getBestProvider(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    new-instance v4, Lcom/miui/personalassistant/util/SearchLocationUtil$1;

    invoke-direct {v4, p1}, Lcom/miui/personalassistant/util/SearchLocationUtil$1;-><init>(Lcom/miui/personalassistant/util/SearchLocationUtil$CallBack;)V

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/location/LocationManager;->requestSingleUpdate(Ljava/lang/String;Landroid/location/LocationListener;Landroid/os/Looper;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v4, "SearchLocationUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "requestLocation "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/miui/personalassistant/config/PALog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static getExLocation(Landroid/content/Context;)Landroid/location/Location;
    .locals 1

    invoke-static {p0}, Lcom/miui/personalassistant/util/LocationUtil;->isLocationExpired(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/miui/personalassistant/util/LocationUtil;->getLastPreferedLocation(Landroid/content/Context;)Landroid/location/Location;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/miui/personalassistant/util/SearchLocationUtil;
    .locals 3

    const-class v1, Lcom/miui/personalassistant/util/SearchLocationUtil;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/miui/personalassistant/util/SearchLocationUtil;->sInstance:Lcom/miui/personalassistant/util/SearchLocationUtil;

    if-nez v0, :cond_1

    const-class v2, Lcom/miui/personalassistant/util/SearchLocationUtil;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-object v0, Lcom/miui/personalassistant/util/SearchLocationUtil;->sInstance:Lcom/miui/personalassistant/util/SearchLocationUtil;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/personalassistant/util/SearchLocationUtil;

    invoke-direct {v0, p0}, Lcom/miui/personalassistant/util/SearchLocationUtil;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/miui/personalassistant/util/SearchLocationUtil;->sInstance:Lcom/miui/personalassistant/util/SearchLocationUtil;

    :cond_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :try_start_2
    sget-object v0, Lcom/miui/personalassistant/util/SearchLocationUtil;->sInstance:Lcom/miui/personalassistant/util/SearchLocationUtil;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getReqCallback(Lcom/miui/personalassistant/util/SearchLocationUtil$CallBack;)Lcom/autonavi/its/protocol/ReqCallback;
    .locals 1

    new-instance v0, Lcom/miui/personalassistant/util/SearchLocationUtil$3;

    invoke-direct {v0, p0, p1}, Lcom/miui/personalassistant/util/SearchLocationUtil$3;-><init>(Lcom/miui/personalassistant/util/SearchLocationUtil;Lcom/miui/personalassistant/util/SearchLocationUtil$CallBack;)V

    return-object v0
.end method


# virtual methods
.method public getGeo(Ljava/lang/String;Ljava/lang/String;Lcom/miui/personalassistant/util/SearchLocationUtil$CallBack;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/miui/personalassistant/util/SearchLocationUtil;->getGeo(Ljava/lang/String;Ljava/lang/String;ZLcom/miui/personalassistant/util/SearchLocationUtil$CallBack;)V

    return-void
.end method

.method public getGeo(Ljava/lang/String;Ljava/lang/String;ZLcom/miui/personalassistant/util/SearchLocationUtil$CallBack;)V
    .locals 8

    const/4 v2, 0x1

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    aput-object p2, v0, v2

    invoke-static {v0}, Lcom/autonavi/its/common/Util;->isRequiredParamMissing([Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    iget-boolean v0, p0, Lcom/miui/personalassistant/util/SearchLocationUtil;->isRunning:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Landroid/os/HandlerThread;

    iget-object v1, p0, Lcom/miui/personalassistant/util/SearchLocationUtil;->HANDER_THREAD_NAME:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/personalassistant/util/SearchLocationUtil;->mHandlerThread:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/miui/personalassistant/util/SearchLocationUtil;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/personalassistant/util/SearchLocationUtil;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/miui/personalassistant/util/SearchLocationUtil;->mHandler:Landroid/os/Handler;

    iput-boolean v2, p0, Lcom/miui/personalassistant/util/SearchLocationUtil;->isRunning:Z

    iget-object v7, p0, Lcom/miui/personalassistant/util/SearchLocationUtil;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/miui/personalassistant/util/SearchLocationUtil$2;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/miui/personalassistant/util/SearchLocationUtil$2;-><init>(Lcom/miui/personalassistant/util/SearchLocationUtil;Ljava/lang/String;Ljava/lang/String;ZLcom/miui/personalassistant/util/SearchLocationUtil$CallBack;)V

    invoke-virtual {v7, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
