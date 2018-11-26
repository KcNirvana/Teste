.class public Lcom/miui/networkassistant/service/tm/LockScreenManager;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final LOCK_SCREEN_APP_MIN:J = 0x400L

.field private static final LOCK_SCREEN_GUIDE_MAX_COUNT:I = 0x1

.field private static final LOCK_SCREEN_WARNING_TIME_MAX:J = 0xa4cb800L

.field private static final LOCK_SCREEN_WARNING_TIME_MIN:J = 0x0L

.field private static final TAG:Ljava/lang/String; = "LockScreenManager"


# instance fields
.field private mConfig:Lcom/miui/networkassistant/config/CommonConfig;

.field private mCurrentUidMapSelfLocked:Ljava/util/HashMap;

.field private mLockScreenBeginTime:J

.field private mLockScreenEndTime:J

.field private mLockScreenMonitorEnabled:Z

.field private mMonitorCenter:Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;

.field private mService:Lcom/miui/networkassistant/service/tm/TrafficManageService;

.field private mSimUserInfo:Lcom/miui/networkassistant/config/SimUserInfo;

.field private mTrafficManagers:[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

.field private mWarningBytesLimit:J


# direct methods
.method static synthetic -wrap0(Lcom/miui/networkassistant/service/tm/LockScreenManager;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/service/tm/LockScreenManager;->markAndCalculate(Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Lcom/miui/networkassistant/service/tm/TrafficManageService;[Lcom/miui/networkassistant/service/tm/TrafficSimManager;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/32 v0, 0x19000

    iput-wide v0, p0, Lcom/miui/networkassistant/service/tm/LockScreenManager;->mWarningBytesLimit:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/networkassistant/service/tm/LockScreenManager;->mLockScreenMonitorEnabled:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/networkassistant/service/tm/LockScreenManager;->mCurrentUidMapSelfLocked:Ljava/util/HashMap;

    iput-object p1, p0, Lcom/miui/networkassistant/service/tm/LockScreenManager;->mService:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    iput-object p2, p0, Lcom/miui/networkassistant/service/tm/LockScreenManager;->mTrafficManagers:[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/LockScreenManager;->mService:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {v0}, Lcom/miui/networkassistant/config/CommonConfig;->getInstance(Landroid/content/Context;)Lcom/miui/networkassistant/config/CommonConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/service/tm/LockScreenManager;->mConfig:Lcom/miui/networkassistant/config/CommonConfig;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/networkassistant/service/tm/LockScreenManager;->mLockScreenBeginTime:J

    invoke-virtual {p0}, Lcom/miui/networkassistant/service/tm/LockScreenManager;->initLockScreenMonitor()V

    return-void
.end method

.method private checkAndGetMonitorCenter()V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/LockScreenManager;->mMonitorCenter:Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/LockScreenManager;->mService:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {v0}, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;->getInstance(Landroid/content/Context;)Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/service/tm/LockScreenManager;->mMonitorCenter:Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;

    :cond_0
    return-void
.end method

.method private initLockScreenDataUpgrade()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/LockScreenManager;->mConfig:Lcom/miui/networkassistant/config/CommonConfig;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/CommonConfig;->isLockScreenTrafficMonitorEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/LockScreenManager;->mTrafficManagers:[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    aget-object v1, v1, v3

    iget-object v1, v1, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v1, v0}, Lcom/miui/networkassistant/config/SimUserInfo;->setLockScreenTrafficEnable(Z)Z

    sget-boolean v1, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_DUAL_CARD:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/LockScreenManager;->mTrafficManagers:[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    iget-object v1, v1, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v1, v0}, Lcom/miui/networkassistant/config/SimUserInfo;->setLockScreenTrafficEnable(Z)Z

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/LockScreenManager;->mConfig:Lcom/miui/networkassistant/config/CommonConfig;

    invoke-virtual {v0, v3}, Lcom/miui/networkassistant/config/CommonConfig;->setLockScreenTrafficMonitorEnable(Z)Z

    :cond_1
    return-void
.end method

.method private markAndCalculate(Ljava/lang/String;)V
    .locals 14

    const-wide/16 v12, 0x0

    iget-object v9, p0, Lcom/miui/networkassistant/service/tm/LockScreenManager;->mCurrentUidMapSelfLocked:Ljava/util/HashMap;

    monitor-enter v9

    :try_start_0
    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/LockScreenManager;->checkAndGetMonitorCenter()V

    const-string/jumbo v0, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/networkassistant/service/tm/LockScreenManager;->mLockScreenEndTime:J

    iget-wide v0, p0, Lcom/miui/networkassistant/service/tm/LockScreenManager;->mLockScreenEndTime:J

    iget-wide v2, p0, Lcom/miui/networkassistant/service/tm/LockScreenManager;->mLockScreenBeginTime:J

    sub-long v4, v0, v2

    cmp-long v0, v4, v12

    if-lez v0, :cond_4

    const-wide/32 v0, 0xa4cb800

    cmp-long v0, v4, v0

    if-gez v0, :cond_4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/LockScreenManager;->mMonitorCenter:Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;

    invoke-virtual {v0}, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;->getFilteredAppInfosList()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/networkassistant/model/AppInfo;

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/LockScreenManager;->mCurrentUidMapSelfLocked:Ljava/util/HashMap;

    iget v6, v0, Lcom/miui/networkassistant/model/AppInfo;->uid:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    if-nez v1, :cond_0

    move v0, v2

    :goto_1
    move v2, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v1, v6, v12

    if-gez v1, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/LockScreenManager;->mService:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-virtual {v1}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget v8, v0, Lcom/miui/networkassistant/model/AppInfo;->uid:I

    invoke-static {v1, v8}, Lcom/miui/networkassistant/traffic/statistic/NaTrafficStats;->getMobileBytes(Landroid/content/Context;I)J

    move-result-wide v10

    sub-long v6, v10, v6

    const-wide/16 v10, 0x400

    cmp-long v1, v6, v10

    if-ltz v1, :cond_2

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/LockScreenManager;->mCurrentUidMapSelfLocked:Ljava/util/HashMap;

    iget v0, v0, Lcom/miui/networkassistant/model/AppInfo;->uid:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v1, v0, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    int-to-long v0, v2

    add-long/2addr v0, v6

    long-to-int v0, v0

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/LockScreenManager;->mCurrentUidMapSelfLocked:Ljava/util/HashMap;

    iget v0, v0, Lcom/miui/networkassistant/model/AppInfo;->uid:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move v0, v2

    goto :goto_1

    :cond_3
    int-to-long v0, v2

    iget-wide v6, p0, Lcom/miui/networkassistant/service/tm/LockScreenManager;->mWarningBytesLimit:J

    cmp-long v0, v0, v6

    if-lez v0, :cond_4

    iget-boolean v0, p0, Lcom/miui/networkassistant/service/tm/LockScreenManager;->mLockScreenMonitorEnabled:Z

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/LockScreenManager;->mService:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    int-to-long v2, v2

    iget-wide v6, p0, Lcom/miui/networkassistant/service/tm/LockScreenManager;->mLockScreenBeginTime:J

    iget-object v8, p0, Lcom/miui/networkassistant/service/tm/LockScreenManager;->mCurrentUidMapSelfLocked:Ljava/util/HashMap;

    invoke-static/range {v1 .. v8}, Lcom/miui/networkassistant/utils/NotificationUtil;->sendLockScreenTrafficUsed(Landroid/content/Context;JJJLjava/util/HashMap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    :goto_2
    monitor-exit v9

    return-void

    :cond_5
    :try_start_1
    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/LockScreenManager;->mService:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    int-to-long v2, v2

    invoke-direct {p0, v0, v2, v3}, Lcom/miui/networkassistant/service/tm/LockScreenManager;->sendAndCheckLockScreenTrafficGuide(Landroid/content/Context;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v9

    throw v0

    :cond_6
    :try_start_2
    const-string/jumbo v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/networkassistant/service/tm/LockScreenManager;->mLockScreenBeginTime:J

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/LockScreenManager;->mCurrentUidMapSelfLocked:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/LockScreenManager;->mMonitorCenter:Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;

    invoke-virtual {v0}, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;->getFilteredAppInfosList()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/networkassistant/model/AppInfo;

    iget-object v2, p0, Lcom/miui/networkassistant/service/tm/LockScreenManager;->mCurrentUidMapSelfLocked:Ljava/util/HashMap;

    iget v3, v0, Lcom/miui/networkassistant/model/AppInfo;->uid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/networkassistant/service/tm/LockScreenManager;->mService:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-virtual {v4}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iget v0, v0, Lcom/miui/networkassistant/model/AppInfo;->uid:I

    invoke-static {v4, v0}, Lcom/miui/networkassistant/traffic/statistic/NaTrafficStats;->getMobileBytes(Landroid/content/Context;I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3
.end method

.method private sendAndCheckLockScreenTrafficGuide(Landroid/content/Context;J)V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/LockScreenManager;->mConfig:Lcom/miui/networkassistant/config/CommonConfig;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/CommonConfig;->getLockScreenTrafficGuideNotifyCount()I

    move-result v0

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/LockScreenManager;->mConfig:Lcom/miui/networkassistant/config/CommonConfig;

    invoke-virtual {v1}, Lcom/miui/networkassistant/config/CommonConfig;->isLockScreenTrafficOpened()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    invoke-static {p1, p2, p3}, Lcom/miui/networkassistant/utils/NotificationUtil;->sendLockScreenTrafficGuideNotify(Landroid/content/Context;J)V

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/LockScreenManager;->mConfig:Lcom/miui/networkassistant/config/CommonConfig;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Lcom/miui/networkassistant/config/CommonConfig;->setLockScreenTrafficGuideNotifyCount(I)Z

    :cond_0
    return-void
.end method


# virtual methods
.method initLockScreenMonitor()V
    .locals 4

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/LockScreenManager;->mTrafficManagers:[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    invoke-static {}, Lcom/miui/networkassistant/dual/Sim;->getCurrentActiveSlotNum()I

    move-result v1

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    iput-object v0, p0, Lcom/miui/networkassistant/service/tm/LockScreenManager;->mSimUserInfo:Lcom/miui/networkassistant/config/SimUserInfo;

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/LockScreenManager;->mSimUserInfo:Lcom/miui/networkassistant/config/SimUserInfo;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/LockScreenManager;->mSimUserInfo:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->hasImsi()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/LockScreenManager;->initLockScreenDataUpgrade()V

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/LockScreenManager;->mSimUserInfo:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->isLockScreenTrafficEnable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/networkassistant/service/tm/LockScreenManager;->mLockScreenMonitorEnabled:Z

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/LockScreenManager;->mTrafficManagers:[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    invoke-static {}, Lcom/miui/networkassistant/dual/Sim;->getCurrentActiveSlotNum()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->getCurrentMonthTotalPackage()J

    move-result-wide v0

    iget-object v2, p0, Lcom/miui/networkassistant/service/tm/LockScreenManager;->mSimUserInfo:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v2}, Lcom/miui/networkassistant/config/SimUserInfo;->getLockScreenWarningLevel()I

    move-result v2

    invoke-static {v2, v0, v1}, Lcom/miui/networkassistant/traffic/lockscreen/LockScreenTrafficHelper;->getWarningLimitBytes(IJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/networkassistant/service/tm/LockScreenManager;->mWarningBytesLimit:J

    iget-boolean v0, p0, Lcom/miui/networkassistant/service/tm/LockScreenManager;->mLockScreenMonitorEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/LockScreenManager;->mConfig:Lcom/miui/networkassistant/config/CommonConfig;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/config/CommonConfig;->setLockScreenTrafficOpened(Z)Z

    :cond_0
    const-string/jumbo v0, "LockScreenManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mLockScreenMonitorEnabled : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/miui/networkassistant/service/tm/LockScreenManager;->mLockScreenMonitorEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",mWarningBytesLimit : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/miui/networkassistant/service/tm/LockScreenManager;->mWarningBytesLimit:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/LockScreenManager;->checkAndGetMonitorCenter()V

    :cond_1
    return-void
.end method

.method onLockScreenChange(Landroid/content/Intent;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/LockScreenManager;->mSimUserInfo:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->isExistTotalDataUsage()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/miui/networkassistant/service/tm/LockScreenManager$1;

    invoke-direct {v1, p0, v0}, Lcom/miui/networkassistant/service/tm/LockScreenManager$1;-><init>(Lcom/miui/networkassistant/service/tm/LockScreenManager;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/miui/common/a/b/a;->aGz(Ljava/lang/Runnable;)V

    return-void
.end method
