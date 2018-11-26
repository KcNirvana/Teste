.class public Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final INIT_CAPACITY:I = 0x100

.field private static final MSG_MONITOR_APP_LIST_UPDATED:I = 0x2

.field private static final MSG_UPDATE_TRAFFIC:I = 0x1

.field private static final TAG:Ljava/lang/String; = "TrafficStatisticManager"


# instance fields
.field private mAllStats:Landroid/util/SparseArray;

.field private mBeginTime:[J

.field private mContext:Landroid/content/Context;

.field private mDataUsageTotal:[J

.field private mEndTime:[J

.field private mFirstDayOfMonth:J

.field private final mHandlerThread:Landroid/os/HandlerThread;

.field private mImsi:Ljava/lang/String;

.field private mIsMobileTraffic:Z

.field private mLastMonth:J

.field private mListeners:Ljava/util/ArrayList;

.field private mLock:Ljava/lang/Object;

.field private mManagedProfileInfo:Lcom/miui/networkassistant/model/TrafficInfo;

.field private mManagedProfileUids:Ljava/util/HashSet;

.field private mManagedProfileUserId:I

.field private mMonitorCenter:Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;

.field private mMonitorCenterListener:Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper$AppMonitorListener;

.field private mNonSystemAppInfoList:Ljava/util/List;

.field private mNow:J

.field private mReady:Z

.field private mStatsSession:Lcom/miui/net/MiuiNetworkSessionStats;

.field private mSystemAppInfoList:Ljava/util/List;

.field private mSystemTrafficInfo:Lcom/miui/networkassistant/model/TrafficInfo;

.field private mThisWeek:J

.field private mToday:J

.field private mTrafficInfoList:Ljava/util/List;

.field private final mUpdateHandler:Lcom/miui/networkassistant/service/ts/TrafficStatisticManager$UpdateAppTrafficHandler;

.field private mYesterday:J


# direct methods
.method static synthetic -get0(Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;)Lcom/miui/networkassistant/service/ts/TrafficStatisticManager$UpdateAppTrafficHandler;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;->mUpdateHandler:Lcom/miui/networkassistant/service/ts/TrafficStatisticManager$UpdateAppTrafficHandler;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;->broadcastTrafficUpdate()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;->initAppTraffic()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;->refreshAppTrafficLocked()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;->mIsMobileTraffic:Z

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;->mManagedProfileUids:Ljava/util/HashSet;

    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;->mManagedProfileUserId:I

    new-instance v0, Lcom/miui/networkassistant/service/ts/TrafficStatisticManager$1;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/service/ts/TrafficStatisticManager$1;-><init>(Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;)V

    iput-object v0, p0, Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;->mMonitorCenterListener:Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper$AppMonitorListener;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;->mListeners:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;->mReady:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;->mLock:Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;->mImsi:Ljava/lang/String;

    invoke-direct {p0, p3}, Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;->getDataUsageType(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;->mIsMobileTraffic:Z

    new-instance v0, Lcom/miui/networkassistant/model/TrafficInfo;

    new-instance v1, Lcom/miui/networkassistant/model/AppInfo;

    invoke-direct {v1}, Lcom/miui/networkassistant/model/AppInfo;-><init>()V

    invoke-direct {v0, v1}, Lcom/miui/networkassistant/model/TrafficInfo;-><init>(Lcom/miui/networkassistant/model/AppInfo;)V

    iput-object v0, p0, Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;->mManagedProfileInfo:Lcom/miui/networkassistant/model/TrafficInfo;

    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "TrafficStatisticManager"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;->mHandlerThread:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/miui/networkassistant/service/ts/TrafficStatisticManager$UpdateAppTrafficHandler;

    iget-object v1, p0, Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/miui/networkassistant/service/ts/TrafficStatisticManager$UpdateAppTrafficHandler;-><init>(Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;->mUpdateHandler:Lcom/miui/networkassistant/service/ts/TrafficStatisticManager$UpdateAppTrafficHandler;

    invoke-direct {p0}, Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;->startStatistic()V

    return-void
.end method

.method private addAllAppsByUserIds()V
    .locals 9

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;->mTrafficInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/networkassistant/model/TrafficInfo;

    iget-object v1, p0, Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;->mManagedProfileUids:Ljava/util/HashSet;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    iget-object v5, v0, Lcom/miui/networkassistant/model/TrafficInfo;->mAppInfo:Lcom/miui/networkassistant/model/AppInfo;

    iget v5, v5, Lcom/miui/networkassistant/model/AppInfo;->uid:I

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Lcom/miui/common/b/f;->aHX(I)I

    move-result v6

    if-ne v5, v6, :cond_1

    const-string/jumbo v5, "TrafficStatisticManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "add uid:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Lcom/miui/networkassistant/model/AppInfo;

    invoke-direct {v5}, Lcom/miui/networkassistant/model/AppInfo;-><init>()V

    iget-object v6, p0, Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;->mContext:Landroid/content/Context;

    iget-object v7, v0, Lcom/miui/networkassistant/model/TrafficInfo;->mAppInfo:Lcom/miui/networkassistant/model/AppInfo;

    iget-object v7, v7, Lcom/miui/networkassistant/model/AppInfo;->packageName:Ljava/lang/CharSequence;

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v6, v7, v8}, Lcom/miui/networkassistant/utils/PackageUtil;->getManagedProfilePackageNameFormat(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/miui/networkassistant/model/AppInfo;->packageName:Ljava/lang/CharSequence;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v5, Lcom/miui/networkassistant/model/AppInfo;->uid:I

    new-instance v1, Lcom/miui/networkassistant/model/TrafficInfo;

    invoke-direct {v1, v5}, Lcom/miui/networkassistant/model/TrafficInfo;-><init>(Lcom/miui/networkassistant/model/AppInfo;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;->mTrafficInfoList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private addEntryToAppUsageItem(Ljava/util/Map;Landroid/util/SparseArray;II)V
    .locals 4

    invoke-virtual {p2, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/networkassistant/model/AppDataUsage;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;->buildAppUsageItems()[Lcom/miui/networkassistant/model/AppDataUsage;

    move-result-object v0

    invoke-virtual {p2, p3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    aget-object v1, v0, p4

    const-string/jumbo v0, "txBytes"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/miui/networkassistant/model/AppDataUsage;->addTxBytes(J)V

    const-string/jumbo v0, "rxBytes"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/miui/networkassistant/model/AppDataUsage;->addRxBytes(J)V

    return-void
.end method

.method private applyAllStatisticToAppList(Ljava/util/List;)V
    .locals 4

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iget-object v0, p0, Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;->mManagedProfileInfo:Lcom/miui/networkassistant/model/TrafficInfo;

    new-instance v2, Lcom/miui/networkassistant/model/TrafficInfo$AppStatistic;

    invoke-direct {v2}, Lcom/miui/networkassistant/model/TrafficInfo$AppStatistic;-><init>()V

    iput-object v2, v0, Lcom/miui/networkassistant/model/TrafficInfo;->mAppStats:Lcom/miui/networkassistant/model/TrafficInfo$AppStatistic;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/networkassistant/model/TrafficInfo;

    iget-object v3, v0, Lcom/miui/networkassistant/model/TrafficInfo;->mAppInfo:Lcom/miui/networkassistant/model/AppInfo;

    iget v3, v3, Lcom/miui/networkassistant/model/AppInfo;->uid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, v0, Lcom/miui/networkassistant/model/TrafficInfo;->mAppStats:Lcom/miui/networkassistant/model/TrafficInfo$AppStatistic;

    invoke-direct {p0, v0, v3}, Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;->applyStatisticToApp(Lcom/miui/networkassistant/model/TrafficInfo;Lcom/miui/networkassistant/model/TrafficInfo$AppStatistic;)V

    iget-object v0, v0, Lcom/miui/networkassistant/model/TrafficInfo;->mAppInfo:Lcom/miui/networkassistant/model/AppInfo;

    iget v0, v0, Lcom/miui/networkassistant/model/AppInfo;->uid:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method private applyDataUsagesTotal([J[Lcom/miui/networkassistant/model/AppDataUsage;)V
    .locals 5

    const/4 v4, 0x4

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    array-length v0, p1

    if-ne v0, v4, :cond_0

    array-length v0, p2

    if-ne v0, v4, :cond_0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v4, :cond_0

    aget-object v1, p2, v0

    invoke-virtual {v1}, Lcom/miui/networkassistant/model/AppDataUsage;->getTotal()J

    move-result-wide v2

    aput-wide v2, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private applyManagedProfileApps()V
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;->mManagedProfileUids:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "magaged_profile_package&@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;->mManagedProfileUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;->mManagedProfileInfo:Lcom/miui/networkassistant/model/TrafficInfo;

    iget-object v1, v1, Lcom/miui/networkassistant/model/TrafficInfo;->mAppInfo:Lcom/miui/networkassistant/model/AppInfo;

    iput-object v0, v1, Lcom/miui/networkassistant/model/AppInfo;->packageName:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;->mManagedProfileInfo:Lcom/miui/networkassistant/model/TrafficInfo;

    iget-object v0, v0, Lcom/miui/networkassistant/model/TrafficInfo;->mAppInfo:Lcom/miui/networkassistant/model/AppInfo;

    iget v1, p0, Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;->mManagedProfileUserId:I

    iput v1, v0, Lcom/miui/networkassistant/model/AppInfo;->uid:I

    iget-object v0, p0, Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;->mTrafficInfoList:Ljava/util/List;

    iget-object v1, p0, Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;->mManagedProfileInfo:Lcom/miui/networkassistant/model/TrafficInfo;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private applyStatisticToApp(Lcom/miui/networkassistant/model/TrafficInfo;Lcom/miui/networkassistant/model/TrafficInfo$AppStatistic;)V
    .locals 8

    iget-object v0, p0, Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;->mAllStats:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;->mAllStats:Landroid/util/SparseArray;

    iget-object v1, p1, Lcom/miui/networkassistant/model/TrafficInfo;->mAppInfo:Lcom/miui/networkassistant/model/AppInfo;

    iget v1, v1, Lcom/miui/networkassistant/model/AppInfo;->uid:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/networkassistant/model/AppDataUsage;

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_4

    if-eqz v0, :cond_1

    aget-object v2, v0, v1

    if-eqz v2, :cond_1

    iget-object v3, p2, Lcom/miui/networkassistant/model/TrafficInfo$AppStatistic;->mTotalBytes:[J

    invoke-virtual {v2}, Lcom/miui/networkassistant/model/AppDataUsage;->getTotal()J

    move-result-wide v4

    aput-wide v4, v3, v1

    :cond_1
    iget-object v2, p1, Lcom/miui/networkassistant/model/TrafficInfo;->mAppInfo:Lcom/miui/networkassistant/model/AppInfo;

    iget-boolean v2, v2, Lcom/miui/networkassistant/model/AppInfo;->isSystemApp:Z

    if-eqz v2, :cond_2

    iget-object v2, p1, Lcom/miui/networkassistant/model/TrafficInfo;->mAppInfo:Lcom/miui/networkassistant/model/AppInfo;

    iget-object v2, v2, Lcom/miui/networkassistant/model/AppInfo;->packageName:Ljava/lang/CharSequence;

    invoke-static {v2}, Lcom/miui/networkassistant/utils/HybirdServiceUtil;->isHybirdService(Ljava/lang/CharSequence;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;->mSystemTrafficInfo:Lcom/miui/networkassistant/model/TrafficInfo;

    iget-object v2, v2, Lcom/miui/networkassistant/model/TrafficInfo;->mAppStats:Lcom/miui/networkassistant/model/TrafficInfo$AppStatistic;

    iget-object v2, v2, Lcom/miui/networkassistant/model/TrafficInfo$AppStatistic;->mTotalBytes:[J

    aget-wide v4, v2, v1

    iget-object v3, p2, Lcom/miui/networkassistant/model/TrafficInfo$AppStatistic;->mTotalBytes:[J

    aget-wide v6, v3, v1

    add-long/2addr v4, v6

    aput-wide v4, v2, v1

    :cond_2
    iget v2, p0, Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;->mManagedProfileUserId:I

    iget-object v3, p1, Lcom/miui/networkassistant/model/TrafficInfo;->mAppInfo:Lcom/miui/networkassistant/model/AppInfo;

    iget v3, v3, Lcom/miui/networkassistant/model/AppInfo;->uid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;->mManagedProfileInfo:Lcom/miui/networkassistant/model/TrafficInfo;

    iget-object v2, v2, Lcom/miui/networkassistant/model/TrafficInfo;->mAppStats:Lcom/miui/networkassistant/model/TrafficInfo$AppStatistic;

    iget-object v2, v2, Lcom/miui/networkassistant/model/TrafficInfo$AppStatistic;->mTotalBytes:[J

    aget-wide v4, v2, v1

    iget-object v3, p2, Lcom/miui/networkassistant/model/TrafficInfo$AppStatistic;->mTotalBytes:[J

    aget-wide v6, v3, v1

    add-long/2addr v4, v6

    aput-wide v4, v2, v1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method private broadcastTrafficUpdate()V
    .locals 3

    iget-object v1, p0, Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;->mListeners:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    const-string/jumbo v0, "TrafficStatisticManager"

    const-string/jumbo v2, "broadcastTrafficUpdate"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;->mListeners:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/networkassistant/service/ts/TrafficStatisticManager$TrafficStatisticListener;

    invoke-interface {v0}, Lcom/miui/networkassistant/service/ts/TrafficStatisticManager$TrafficStatisticListener;->onAppTrafficStatisticUpdated()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_0
    monitor-exit v1

    return-void
.end method

.method private buildAppTotalTraffic()V
    .locals 2

    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iget-boolean v1, p0, Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;->mIsMobileTraffic:Z

    invoke-direct {p0, v0, v1}, Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;->buildDataUsage(Ljava/util/HashSet;Z)V

    return-void
.end method

.method private buildAppUsageItems()[Lcom/miui/networkassistant/model/AppDataUsage;
    .locals 4

    const/4 v3, 0x4

    new-array v1, v3, [Lcom/miui/networkassistant/model/AppDataUsage;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    new-instance v2, Lcom/miui/networkassistant/model/AppDataUsage;

    invoke-direct {v2}, Lcom/miui/networkassistant/model/AppDataUsage;-><init>()V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private buildDataUsage(Ljava/util/HashSet;Z)V
    .locals 7

    iget-object v0, p0, Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;->mStatsSession:Lcom/miui/net/MiuiNetworkSessionStats;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    return-void

    :cond_1
    new-instance v0, Landroid/util/SparseArray;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;->mAllStats:Landroid/util/SparseArray;

    const/4 v0, 0x0

    move v6, v0

    :goto_0
    const/4 v0, 0x4

    if-ge v6, v0, :cond_4

    if-eqz p2, :cond_2

    :try_start_0
    iget-object v0, p0, Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;->mStatsSession:Lcom/miui/net/MiuiNetworkSessionStats;

    iget-object v1, p0, Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;->mImsi:Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;->mBeginTime:[J

    aget-wide v2, v2, v6

    iget-object v4, p0, Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;->mEndTime:[J

    aget-wide v4, v4, v6

    invoke-virtual/range {v0 .. v5}, Lcom/miui/net/MiuiNetworkSessionStats;->getMobileSummaryForAllUid(Ljava/lang/String;JJ)Landroid/util/SparseArray;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_3

    invoke-direct {p0, v0, v6, p1}, Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;->buildNetworkStats(Landroid/util/SparseArray;ILjava/util/HashSet;)V

    :goto_2
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;->mStatsSession:Lcom/miui/net/MiuiNetworkSessionStats;

    iget-object v1, p0, Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;->mBeginTime:[J

    aget-wide v2, v1, v6

    iget-object v1, p0, Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;->mEndTime:[J

    aget-wide v4, v1, v6

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/miui/net/MiuiNetworkSessionStats;->getWifiSummaryForAllUid(JJ)Landroid/util/SparseArray;

    move-result-object v0

    goto :goto_1

    :cond_3
    const-string/jumbo v0, "TrafficStatisticManager"

    const-string/jumbo v1, "summaryStats null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    const-string/jumbo v1, "TrafficStatisticManager"

    const-string/jumbo v2, "get summary stats failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :cond_4
    return-void
.end method

.method private buildNetworkStats(Landroid/util/SparseArray;ILjava/util/HashSet;)V
    .locals 12

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    const-wide/16 v6, 0x0

    const-wide/16 v4, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v8

    const/4 v0, 0x0

    move v3, v0

    move-object v0, v1

    :goto_0
    if-ge v3, v8, :cond_a

    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    iget-object v0, p0, Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;->mContext:Landroid/content/Context;

    invoke-static {v0, v9}, Lcom/miui/common/b/f;->aHY(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {v2}, Lcom/miui/common/b/f;->aHX(I)I

    move-result v0

    const/16 v1, 0x2710

    if-lt v0, v1, :cond_4

    const/4 v0, 0x1

    move v1, v0

    :goto_1
    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v1, :cond_6

    iput v9, p0, Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;->mManagedProfileUserId:I

    iget-object v1, p0, Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;->mManagedProfileUids:Ljava/util/HashSet;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_2
    iget-object v1, p0, Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;->mAllStats:Landroid/util/SparseArray;

    invoke-direct {p0, v0, v1, v2, p2}, Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;->addEntryToAppUsageItem(Ljava/util/Map;Landroid/util/SparseArray;II)V

    invoke-static {}, Lcom/miui/common/b/f;->aHU()Z

    move-result v1

    if-eqz v1, :cond_9

    const/4 v1, -0x2

    if-eq v2, v1, :cond_3

    invoke-static {v2}, Lcom/miui/common/b/f;->aHZ(I)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_3

    const-string/jumbo v1, "txBytes"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    add-long/2addr v6, v10

    const-string/jumbo v1, "rxBytes"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    add-long/2addr v4, v10

    :cond_3
    :goto_3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    move v1, v0

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    move v1, v0

    goto :goto_1

    :cond_6
    const v1, 0x7fffffff

    if-ne v2, v1, :cond_7

    const/4 v1, -0x5

    move v2, v1

    goto :goto_2

    :cond_7
    const/16 v1, 0x4e20

    if-gt v2, v1, :cond_8

    const/16 v1, 0x3e8

    if-ge v2, v1, :cond_2

    :cond_8
    const/4 v1, -0x4

    if-eq v2, v1, :cond_2

    const/4 v1, -0x5

    if-eq v2, v1, :cond_2

    invoke-static {}, Lcom/miui/common/b/f;->aHU()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    invoke-static {v2}, Lcom/miui/common/b/l;->aIH(I)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "TrafficStatisticManager"

    const-string/jumbo v9, "invalid uid :%d, tx:%d, rx:%d "

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v11, 0x0

    aput-object v2, v10, v11

    const-string/jumbo v2, "txBytes"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const/4 v11, 0x1

    aput-object v2, v10, v11

    const-string/jumbo v2, "rxBytes"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const/4 v11, 0x2

    aput-object v2, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x2

    move v2, v1

    goto/16 :goto_2

    :cond_9
    const/4 v1, -0x2

    if-eq v2, v1, :cond_3

    const-string/jumbo v1, "txBytes"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    add-long/2addr v6, v10

    const-string/jumbo v1, "rxBytes"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    add-long/2addr v4, v10

    goto/16 :goto_3

    :cond_a
    const-string/jumbo v1, "txBytes"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "rxBytes"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;->mAllStats:Landroid/util/SparseArray;

    const/4 v2, -0x1

    invoke-direct {p0, v0, v1, v2, p2}, Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;->addEntryToAppUsageItem(Ljava/util/Map;Landroid/util/SparseArray;II)V

    return-void
.end method

.method private closeStatsSession()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;->mStatsSession:Lcom/miui/net/MiuiNetworkSessionStats;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;->mStatsSession:Lcom/miui/net/MiuiNetworkSessionStats;

    invoke-virtual {v0}, Lcom/miui/net/MiuiNetworkSessionStats;->closeSession()V

    iput-object v1, p0, Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;->mStatsSession:Lcom/miui/net/MiuiNetworkSessionStats;

    :cond_0
    return-void
.end method

.method private copyLatestResult()V
    .locals 5

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;->mTrafficInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/networkassistant/model/TrafficInfo;

    iget-object v4, v0, Lcom/miui/networkassistant/model/TrafficInfo;->mAppInfo:Lcom/miui/networkassistant/model/AppInfo;

    iget-boolean v4, v4, Lcom/miui/networkassistant/model/AppInfo;->isSystemApp:Z

    if-eqz v4, :cond_0

    iget-object v4, v0, Lcom/miui/networkassistant/model/TrafficInfo;->mAppInfo:Lcom/miui/networkassistant/model/AppInfo;

    iget-object v4, v4, Lcom/miui/networkassistant/model/AppInfo;->packageName:Ljava/lang/CharSequence;

    invoke-static {v4}, Lcom/miui/networkassistant/utils/HybirdServiceUtil;->isHybirdService(Ljava/lang/CharSequence;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_0

    new-instance v4, Lcom/miui/networkassistant/model/TrafficInfo;

    invoke-direct {v4, v0}, Lcom/miui/networkassistant/model/TrafficInfo;-><init>(Lcom/miui/networkassistant/model/TrafficInfo;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v4, Lcom/miui/networkassistant/model/TrafficInfo;

    invoke-direct {v4, v0}, Lcom/miui/networkassistant/model/TrafficInfo;-><init>(Lcom/miui/networkassistant/model/TrafficInfo;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;->mNonSystemAppInfoList:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;->mNonSystemAppInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_2
    iput-object v1, p0, Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;->mNonSystemAppInfoList:Ljava/util/List;

    iget-object v0, p0, Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;->mSystemAppInfoList:Ljava/util/List;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;->mSystemAppInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_3
    iput-object v2, p0, Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;->mSystemAppInfoList:Ljava/util/List;

    const/4 v0, 0x4

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;->mDataUsageTotal:[J

    iget-object v0, p0, Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;->mAllStats:Landroid/util/SparseArray;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;->mAllStats:Landroid/util/SparseArray;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/networkassistant/model/AppDataUsage;

    iget-object v1, p0, Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;->mDataUsageTotal:[J

    invoke-direct {p0, v1, v0}, Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;->applyDataUsagesTotal([J[Lcom/miui/networkassistant/model/AppDataUsage;)V

    :cond_4
    return-void
.end method

.method private createAllAppList()V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;->mMonitorCenter:Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;

    invoke-virtual {v0}, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;->getFilteredAppInfosList()Ljava/util/ArrayList;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/miui/networkassistant/model/AppInfo;

    const-string/jumbo v2, "icon_personal_hotpot"

    const/4 v3, -0x5

    invoke-direct {v0, v2, v3, v4}, Lcom/miui/networkassistant/model/AppInfo;-><init>(Ljava/lang/CharSequence;IZ)V

    invoke-virtual {v1, v4, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    invoke-static {}, Lcom/miui/common/b/f;->aHW()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/miui/networkassistant/model/AppInfo;

    const-string/jumbo v2, "icon_deleted_app"

    const/4 v3, -0x4

    invoke-direct {v0, v2, v3, v4}, Lcom/miui/networkassistant/model/AppInfo;-><init>(Ljava/lang/CharSequence;IZ)V

    invoke-virtual {v1, v4, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;->mTrafficInfoList:Ljava/util/List;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/networkassistant/model/AppInfo;

    new-instance v3, Lcom/miui/networkassistant/model/TrafficInfo;

    invoke-direct {v3, v0}, Lcom/miui/networkassistant/model/TrafficInfo;-><init>(Lcom/miui/networkassistant/model/AppInfo;)V

    iget-object v0, p0, Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;->mTrafficInfoList:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/miui/networkassistant/model/AppInfo;

    const-string/jumbo v2, "icon_system_app"

    const/16 v3, -0xa

    invoke-direct {v0, v2, v3, v4}, Lcom/miui/networkassistant/model/AppInfo;-><init>(Ljava/lang/CharSequence;IZ)V

    invoke-virtual {v1, v4, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    new-instance v1, Lcom/miui/networkassistant/model/TrafficInfo;

    invoke-direct {v1, v0}, Lcom/miui/networkassistant/model/TrafficInfo;-><init>(Lcom/miui/networkassistant/model/AppInfo;)V

    iput-object v1, p0, Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;->mSystemTrafficInfo:Lcom/miui/networkassistant/model/TrafficInfo;

    iget-object v0, p0, Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;->mTrafficInfoList:Ljava/util/List;

    iget-object v1, p0, Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;->mSystemTrafficInfo:Lcom/miui/networkassistant/model/TrafficInfo;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private createStatsSession()V
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;->mStatsSession:Lcom/miui/net/MiuiNetworkSessionStats;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;->mStatsSession:Lcom/miui/net/MiuiNetworkSessionStats;

    invoke-virtual {v0}, Lcom/miui/net/MiuiNetworkSessionStats;->openSession()V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/miui/net/MiuiNetworkSessionStats;

    iget-object v1, p0, Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/miui/net/MiuiNetworkSessionStats;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;->mStatsSession:Lcom/miui/net/MiuiNetworkSessionStats;

    iget-object v0, p0, Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;->mStatsSession:Lcom/miui/net/MiuiNetworkSessionStats;

    invoke-virtual {v0}, Lcom/miui/net/MiuiNetworkSessionStats;->openSession()V

    goto :goto_0
.end method

.method private getDataUsageType(I)Z
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    if-ne p1, v0, :cond_1

    return v1

    :cond_1
    return v0
.end method

.method private initAppTraffic()V
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;->createAllAppList()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    iget-object v0, p0, Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;->mUpdateHandler:Lcom/miui/networkassistant/service/ts/TrafficStatisticManager$UpdateAppTrafficHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/service/ts/TrafficStatisticManager$UpdateAppTrafficHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;->mUpdateHandler:Lcom/miui/networkassistant/service/ts/TrafficStatisticManager$UpdateAppTrafficHandler;

    invoke-virtual {v1, v0}, Lcom/miui/networkassistant/service/ts/TrafficStatisticManager$UpdateAppTrafficHandler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private refreshAppTrafficLocked()V
    .locals 2

    const-string/jumbo v0, "TrafficStatisticManager"

    const-string/jumbo v1, "refreshAppTrafficLocked"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;->mReady:Z

    iget-object v0, p0, Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;->mStatsSession:Lcom/miui/net/MiuiNetworkSessionStats;

    invoke-virtual {v0}, Lcom/miui/net/MiuiNetworkSessionStats;->forceUpdate()V

    iget-object v0, p0, Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;->mManagedProfileUids:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    invoke-direct {p0}, Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;->updateDateTime()V

    invoke-direct {p0}, Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;->buildAppTotalTraffic()V

    iget-object v1, p0, Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0}, Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;->addAllAppsByUserIds()V

    iget-object v0, p0, Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;->mTrafficInfoList:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;->applyAllStatisticToAppList(Ljava/util/List;)V

    invoke-direct {p0}, Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;->applyManagedProfileApps()V

    invoke-direct {p0}, Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;->copyLatestResult()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;->mReady:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private registerMonitorCenter()V
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;->getInstance(Landroid/content/Context;)Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;->mMonitorCenter:Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;

    iget-object v0, p0, Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;->mMonitorCenter:Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;

    iget-object v1, p0, Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;->mMonitorCenterListener:Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper$AppMonitorListener;

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;->registerLisener(Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper$AppMonitorListener;)V

    return-void
.end method

.method private startStatistic()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;->createStatsSession()V

    invoke-direct {p0}, Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;->registerMonitorCenter()V

    return-void
.end method

.method private unRegisterMonitorCenter()V
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;->mMonitorCenter:Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;->mMonitorCenter:Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;

    iget-object v1, p0, Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;->mMonitorCenterListener:Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper$AppMonitorListener;

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;->unRegisterLisener(Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper$AppMonitorListener;)V

    :cond_0
    return-void
.end method

.method private updateDateTime()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-static {}, Lcom/miui/networkassistant/utils/DateUtil;->getNowTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;->mNow:J

    invoke-static {}, Lcom/miui/networkassistant/utils/DateUtil;->getTodayTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;->mToday:J

    invoke-static {v4}, Lcom/miui/networkassistant/utils/DateUtil;->getThisMonthBeginTimeMillis(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;->mFirstDayOfMonth:J

    invoke-static {v4}, Lcom/miui/networkassistant/utils/DateUtil;->getLastMonthBeginTimeMillis(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;->mLastMonth:J

    sget-boolean v0, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_CM_CUSTOMIZATION_TEST:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/networkassistant/utils/DateUtil;->getThisWeekBeginTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;->mThisWeek:J

    new-array v0, v8, [J

    iget-wide v2, p0, Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;->mThisWeek:J

    aput-wide v2, v0, v5

    iget-wide v2, p0, Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;->mToday:J

    aput-wide v2, v0, v4

    iget-wide v2, p0, Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;->mLastMonth:J

    aput-wide v2, v0, v6

    iget-wide v2, p0, Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;->mFirstDayOfMonth:J

    aput-wide v2, v0, v7

    iput-object v0, p0, Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;->mBeginTime:[J

    new-array v0, v8, [J

    iget-wide v2, p0, Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;->mNow:J

    aput-wide v2, v0, v5

    iget-wide v2, p0, Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;->mNow:J

    aput-wide v2, v0, v4

    iget-wide v2, p0, Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;->mFirstDayOfMonth:J

    aput-wide v2, v0, v6

    iget-wide v2, p0, Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;->mNow:J

    aput-wide v2, v0, v7

    iput-object v0, p0, Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;->mEndTime:[J

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/miui/networkassistant/utils/DateUtil;->getYesterdayTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;->mYesterday:J

    new-array v0, v8, [J

    iget-wide v2, p0, Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;->mYesterday:J

    aput-wide v2, v0, v5

    iget-wide v2, p0, Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;->mToday:J

    aput-wide v2, v0, v4

    iget-wide v2, p0, Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;->mLastMonth:J

    aput-wide v2, v0, v6

    iget-wide v2, p0, Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;->mFirstDayOfMonth:J

    aput-wide v2, v0, v7

    iput-object v0, p0, Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;->mBeginTime:[J

    new-array v0, v8, [J

    iget-wide v2, p0, Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;->mToday:J

    aput-wide v2, v0, v5

    iget-wide v2, p0, Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;->mNow:J

    aput-wide v2, v0, v4

    iget-wide v2, p0, Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;->mFirstDayOfMonth:J

    aput-wide v2, v0, v6

    iget-wide v2, p0, Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;->mNow:J

    aput-wide v2, v0, v7

    iput-object v0, p0, Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;->mEndTime:[J

    goto :goto_0
.end method


# virtual methods
.method public getAllAppDataUsageTotal()[J
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;->mDataUsageTotal:[J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public getNonSystemAppsListLocked()Ljava/util/List;
    .locals 3

    iget-object v1, p0, Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;->mNonSystemAppInfoList:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getSystemAppDataUsageTotal()[J
    .locals 2

    iget-object v1, p0, Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;->mSystemTrafficInfo:Lcom/miui/networkassistant/model/TrafficInfo;

    iget-object v0, v0, Lcom/miui/networkassistant/model/TrafficInfo;->mAppStats:Lcom/miui/networkassistant/model/TrafficInfo$AppStatistic;

    iget-object v0, v0, Lcom/miui/networkassistant/model/TrafficInfo$AppStatistic;->mTotalBytes:[J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getSystemAppListLocked()Ljava/util/List;
    .locals 3

    iget-object v1, p0, Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;->mSystemAppInfoList:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public quitStatistic()V
    .locals 2

    invoke-direct {p0}, Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;->unRegisterMonitorCenter()V

    iget-object v0, p0, Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;->mUpdateHandler:Lcom/miui/networkassistant/service/ts/TrafficStatisticManager$UpdateAppTrafficHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/service/ts/TrafficStatisticManager$UpdateAppTrafficHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;->mUpdateHandler:Lcom/miui/networkassistant/service/ts/TrafficStatisticManager$UpdateAppTrafficHandler;

    invoke-virtual {v0}, Lcom/miui/networkassistant/service/ts/TrafficStatisticManager$UpdateAppTrafficHandler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    invoke-direct {p0}, Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;->closeStatsSession()V

    return-void
.end method

.method public registerListener(Lcom/miui/networkassistant/service/ts/TrafficStatisticManager$TrafficStatisticListener;)V
    .locals 2

    iget-object v1, p0, Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;->mListeners:Ljava/util/ArrayList;

    monitor-enter v1

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean v0, p0, Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;->mReady:Z

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/miui/networkassistant/service/ts/TrafficStatisticManager$TrafficStatisticListener;->onAppTrafficStatisticUpdated()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setDataUsageType(I)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;->getDataUsageType(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;->mIsMobileTraffic:Z

    iget-object v0, p0, Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;->mUpdateHandler:Lcom/miui/networkassistant/service/ts/TrafficStatisticManager$UpdateAppTrafficHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/service/ts/TrafficStatisticManager$UpdateAppTrafficHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;->mUpdateHandler:Lcom/miui/networkassistant/service/ts/TrafficStatisticManager$UpdateAppTrafficHandler;

    invoke-virtual {v1, v0}, Lcom/miui/networkassistant/service/ts/TrafficStatisticManager$UpdateAppTrafficHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public unRegisterListener(Lcom/miui/networkassistant/service/ts/TrafficStatisticManager$TrafficStatisticListener;)V
    .locals 2

    iget-object v1, p0, Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;->mListeners:Ljava/util/ArrayList;

    monitor-enter v1

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
