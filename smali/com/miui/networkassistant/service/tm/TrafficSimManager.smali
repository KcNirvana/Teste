.class public Lcom/miui/networkassistant/service/tm/TrafficSimManager;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final MEGA:I = 0x100000

.field private static final OVER_DAILY_LIMIT_STOP_NETWORK:I = 0x1

.field private static final OVER_DAILY_LIMIT_WARNING:I = 0x0

.field private static final TAG:Ljava/lang/String; = "TrafficManageService"

.field private static sInstanceMap:Ljava/util/HashMap;


# instance fields
.field private mCacheLeisureTime:J

.field private mCacheLeisureUsed:J

.field private mCommonConfig:Lcom/miui/networkassistant/config/CommonConfig;

.field private mContext:Landroid/content/Context;

.field private mCurrentImsi:Ljava/lang/String;

.field private mDailyCardEnable:Z

.field private mDailyCardPackage:J

.field private mDailyLimitTraffic:J

.field private mDataUsageIgnoreUidListSelfLocked:Ljava/util/HashSet;

.field private mDataUsageTotalPackage:J

.field private mDataUsageTotalPackageWarning:J

.field mIgnoreAppListConfig:Lcom/miui/networkassistant/config/DataUsageIgnoreAppListConfig;

.field private mIsDailyLimitEnabled:Z

.field private mIsDataUsageOverLimitOn:Z

.field private mIsDataUsageOverNormalPkg:Z

.field private mIsLeisureDataUsageOverLimitOn:Z

.field private mIsMiSim:Z

.field private mIsRoamingDailyLimitEnabled:Z

.field private mIsSimLocationError:Z

.field private mIsTcDiagnostic:Z

.field private mIsTotalPackageSetted:Z

.field private mIsTrafficPurchaseAvailable:Z

.field private mIsUserCorrection:Z

.field private mLeisureDataUsageTotal:J

.field private mLeisureFromTime:J

.field private mLeisureToTime:J

.field private mMiSimHelper:Lcom/miui/networkassistant/traffic/statistic/MiSimHelper;

.field private mMiuiNetworkSessionStats:Lcom/miui/net/MiuiNetworkSessionStats;

.field private mMonthStartTime:J

.field private mOverDailyLimitWarningType:I

.field private mRoamingDailyLimitTraffic:J

.field private mRoamingOverLimitOptType:I

.field private mService:Lcom/miui/networkassistant/service/tm/TrafficManageService;

.field private mShouldUpdateTcEngine:Z

.field mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

.field mTrafficCorrection:Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection;

.field private mTrafficCorrectionListener:Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection$TrafficCorrectionListener;

.field private mUpdateAutoCorrectionLock:Ljava/lang/Object;


# direct methods
.method static synthetic -get0(Lcom/miui/networkassistant/service/tm/TrafficSimManager;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/miui/networkassistant/service/tm/TrafficSimManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mIsSimLocationError:Z

    return v0
.end method

.method static synthetic -get2(Lcom/miui/networkassistant/service/tm/TrafficSimManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mIsTcDiagnostic:Z

    return v0
.end method

.method static synthetic -get3(Lcom/miui/networkassistant/service/tm/TrafficSimManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mIsUserCorrection:Z

    return v0
.end method

.method static synthetic -get4(Lcom/miui/networkassistant/service/tm/TrafficSimManager;)Lcom/miui/net/MiuiNetworkSessionStats;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mMiuiNetworkSessionStats:Lcom/miui/net/MiuiNetworkSessionStats;

    return-object v0
.end method

.method static synthetic -get5(Lcom/miui/networkassistant/service/tm/TrafficSimManager;)Lcom/miui/networkassistant/service/tm/TrafficManageService;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mService:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    return-object v0
.end method

.method static synthetic -set0(Lcom/miui/networkassistant/service/tm/TrafficSimManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mShouldUpdateTcEngine:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/miui/networkassistant/service/tm/TrafficSimManager;Lcom/miui/networkassistant/model/TrafficUsedStatus;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->checkPackagesConfig(Lcom/miui/networkassistant/model/TrafficUsedStatus;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/miui/networkassistant/service/tm/TrafficSimManager;Lcom/miui/networkassistant/model/TrafficUsedStatus;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->checkTotalLimitError(Lcom/miui/networkassistant/model/TrafficUsedStatus;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap10(Lcom/miui/networkassistant/service/tm/TrafficSimManager;Lcom/miui/networkassistant/model/TrafficUsedStatus;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->saveBillAndCallTimeResult(Lcom/miui/networkassistant/model/TrafficUsedStatus;)V

    return-void
.end method

.method static synthetic -wrap11(Lcom/miui/networkassistant/service/tm/TrafficSimManager;Lcom/miui/networkassistant/model/TrafficUsedStatus;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->shouldUpdateTcEngine(Lcom/miui/networkassistant/model/TrafficUsedStatus;)V

    return-void
.end method

.method static synthetic -wrap12(Lcom/miui/networkassistant/service/tm/TrafficSimManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->showCorrectionFailedToast()V

    return-void
.end method

.method static synthetic -wrap13(Lcom/miui/networkassistant/service/tm/TrafficSimManager;Landroid/content/Context;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->showDataUsageCorrectionFailureNotify(Landroid/content/Context;I)V

    return-void
.end method

.method static synthetic -wrap14(Lcom/miui/networkassistant/service/tm/TrafficSimManager;Landroid/content/Context;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->showDataUsageCorrectionTimeOutNotify(Landroid/content/Context;I)V

    return-void
.end method

.method static synthetic -wrap15(Lcom/miui/networkassistant/service/tm/TrafficSimManager;ZJI)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->startTrafficCorrection(ZJI)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/miui/networkassistant/service/tm/TrafficSimManager;)Z
    .locals 1

    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->updateTrafficCorrectionEngine()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Lcom/miui/networkassistant/service/tm/TrafficSimManager;Ljava/lang/String;)[I
    .locals 1

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->getSimLocation(Ljava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap4(Lcom/miui/networkassistant/service/tm/TrafficSimManager;)J
    .locals 2

    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->getNormalMonthDataUsageUsed()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic -wrap5(Lcom/miui/networkassistant/service/tm/TrafficSimManager;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->checkOperatorConfig(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/miui/networkassistant/service/tm/TrafficSimManager;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->finishCorrection(Z)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/miui/networkassistant/service/tm/TrafficSimManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->notifyBillPackageChange()V

    return-void
.end method

.method static synthetic -wrap8(Lcom/miui/networkassistant/service/tm/TrafficSimManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->notifyCallTimePackageChange()V

    return-void
.end method

.method static synthetic -wrap9(Lcom/miui/networkassistant/service/tm/TrafficSimManager;Lcom/miui/networkassistant/model/TrafficUsedStatus;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->saveAnalytics(Lcom/miui/networkassistant/model/TrafficUsedStatus;)V

    return-void
.end method

.method private constructor <init>(Lcom/miui/networkassistant/service/tm/TrafficManageService;Ljava/lang/String;)V
    .locals 4

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v2, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mCacheLeisureUsed:J

    iput-wide v2, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mCacheLeisureTime:J

    iput-boolean v1, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mIsSimLocationError:Z

    iput-boolean v1, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mIsTcDiagnostic:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mUpdateAutoCorrectionLock:Ljava/lang/Object;

    iput-boolean v1, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mShouldUpdateTcEngine:Z

    new-instance v0, Lcom/miui/networkassistant/service/tm/TrafficSimManager$1;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager$1;-><init>(Lcom/miui/networkassistant/service/tm/TrafficSimManager;)V

    iput-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mTrafficCorrectionListener:Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection$TrafficCorrectionListener;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mDataUsageIgnoreUidListSelfLocked:Ljava/util/HashSet;

    iput-object p1, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mService:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-virtual {p1}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mCurrentImsi:Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/networkassistant/config/CommonConfig;->getInstance(Landroid/content/Context;)Lcom/miui/networkassistant/config/CommonConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mCommonConfig:Lcom/miui/networkassistant/config/CommonConfig;

    new-instance v0, Lcom/miui/networkassistant/traffic/statistic/MiSimHelper;

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/miui/networkassistant/traffic/statistic/MiSimHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mMiSimHelper:Lcom/miui/networkassistant/traffic/statistic/MiSimHelper;

    return-void
.end method

.method private checkCorrectionType(I)I
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->isDailyUsedCardEnable()Z

    move-result v0

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v1}, Lcom/miui/networkassistant/config/SimUserInfo;->isNotLimitCardEnable()Z

    move-result v1

    or-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    return v0

    :cond_0
    return p1
.end method

.method private checkDailyUsedTrafficStatus()V
    .locals 12

    const/4 v1, 0x0

    const-wide/16 v10, 0x0

    invoke-virtual {p0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->getCorrectedMonthTotalUsed()J

    move-result-wide v4

    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->getNormalMonthTotalPackage()J

    move-result-wide v2

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getMonthStart()I

    move-result v0

    invoke-static {v0}, Lcom/miui/networkassistant/utils/DateUtil;->getThisMonthBeginTimeMillis(I)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mMonthStartTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v8, v4, v2

    cmp-long v0, v8, v10

    if-ltz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mIsDataUsageOverNormalPkg:Z

    iget-boolean v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mIsDataUsageOverNormalPkg:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getDailyUsedCardStopNetworkCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    int-to-long v2, v0

    iget-wide v4, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mDailyCardPackage:J

    mul-long/2addr v2, v4

    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->getTodayCorrectDataUsageUsed()J

    move-result-wide v4

    long-to-float v2, v2

    iget-wide v8, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mDailyCardPackage:J

    long-to-float v3, v8

    const v8, 0x3dccccd0    # 0.100000024f

    mul-float/2addr v3, v8

    sub-float/2addr v2, v3

    long-to-float v3, v4

    cmpl-float v2, v3, v2

    if-ltz v2, :cond_0

    iget-object v2, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v2}, Lcom/miui/networkassistant/config/SimUserInfo;->getDailyUsedCardStopNetworkTime()J

    move-result-wide v2

    invoke-static {}, Lcom/miui/networkassistant/utils/DateUtil;->getTodayTimeMillis()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    iget-object v2, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v2, v6, v7}, Lcom/miui/networkassistant/config/SimUserInfo;->setDailyUsedCardStopNetworkTime(J)Z

    iget-object v2, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v2, v6, v7}, Lcom/miui/networkassistant/config/SimUserInfo;->setDailyUsedCardDataUpdateTime(J)Z

    iget-object v2, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v2}, Lcom/miui/networkassistant/config/SimUserInfo;->getDailyUsedCardStopNetworkOn()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/miui/networkassistant/config/SimUserInfo;->setOverDataUsageStopNetworkType(I)Z

    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->onNormalTrafficOverLimit()V

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/networkassistant/utils/NotificationUtil;->cancelDataUsageOverLimit(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/config/SimUserInfo;->setMobilePolicyEnable(Z)Z

    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/miui/networkassistant/utils/NotificationUtil;->sendDailyCardDataUsageOverLimit(Landroid/content/Context;I)V

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v1, v0}, Lcom/miui/networkassistant/config/SimUserInfo;->setDailyUsedCardStopNetworkCount(I)Z

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0, v10, v11}, Lcom/miui/networkassistant/config/SimUserInfo;->setDailyUsedCardStopNetworkTime(J)Z

    goto :goto_1

    :cond_3
    cmp-long v0, v2, v10

    if-lez v0, :cond_0

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->checkNormalTrafficStatus(JJJ)V

    goto :goto_1
.end method

.method private checkLeisureTrafficStatus(JJ)V
    .locals 5

    iget-wide v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mLeisureDataUsageTotal:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mIsLeisureDataUsageOverLimitOn:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getLeisureDataUsageOverLimitWarningTime()J

    move-result-wide v0

    const-wide/32 v2, 0x5265c00

    add-long/2addr v0, v2

    cmp-long v0, p3, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0, p3, p4}, Lcom/miui/networkassistant/config/SimUserInfo;->saveLeisureDataUsageOverLimitWarningTime(J)Z

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/networkassistant/utils/NotificationUtil;->sendLeisureDataUsageWarning(Landroid/content/Context;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getLeisureOverLimitStopNetworkTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mMonthStartTime:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0, p3, p4}, Lcom/miui/networkassistant/config/SimUserInfo;->saveLeisureOverLimitStopNetworkTime(J)Z

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/config/SimUserInfo;->setOverDataUsageStopNetworkType(I)Z

    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->onNormalTrafficOverLimit()V

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/config/SimUserInfo;->setMobilePolicyEnable(Z)Z

    goto :goto_0
.end method

.method private checkNormalAndLeisureTrafficStatus()V
    .locals 8

    const-string/jumbo v0, "TrafficManageService"

    const-string/jumbo v1, "mina checkNormalAndLeisureTrafficStatus "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getMonthStart()I

    move-result v0

    invoke-static {v0}, Lcom/miui/networkassistant/utils/DateUtil;->getThisMonthBeginTimeMillis(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mMonthStartTime:J

    invoke-virtual {p0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->getCorrectedNormalAndLeisureMonthTotalUsed()[J

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v2, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mDataUsageTotalPackage:J

    const/4 v1, 0x0

    aget-wide v4, v0, v1

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->checkNormalTrafficStatus(JJJ)V

    const/4 v1, 0x1

    aget-wide v0, v0, v1

    invoke-direct {p0, v0, v1, v6, v7}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->checkLeisureTrafficStatus(JJ)V

    return-void
.end method

.method private checkNormalTrafficStatus()V
    .locals 8

    const-string/jumbo v0, "TrafficManageService"

    const-string/jumbo v1, "mina checkNormalTrafficStatus "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->getCorrectedNormalMonthTotalUsed()J

    move-result-wide v4

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getMonthStart()I

    move-result v0

    invoke-static {v0}, Lcom/miui/networkassistant/utils/DateUtil;->getThisMonthBeginTimeMillis(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mMonthStartTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v2, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mDataUsageTotalPackage:J

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->checkNormalTrafficStatus(JJJ)V

    return-void
.end method

.method private checkNormalTrafficStatus(JJJ)V
    .locals 7

    const/4 v0, 0x0

    cmp-long v1, p3, p1

    if-ltz v1, :cond_2

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v1}, Lcom/miui/networkassistant/config/SimUserInfo;->getDataUsageOverLimitStopNetworkTime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mMonthStartTime:J

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v1, p5, p6}, Lcom/miui/networkassistant/config/SimUserInfo;->saveDataUsageOverLimitStopNetworkTime(J)Z

    iget-boolean v1, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mIsDataUsageOverLimitOn:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v1, v0}, Lcom/miui/networkassistant/config/SimUserInfo;->setOverDataUsageStopNetworkType(I)Z

    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->onNormalTrafficOverLimit()V

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/miui/networkassistant/utils/NotificationUtil;->cancelDataUsageOverLimit(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v1, v0}, Lcom/miui/networkassistant/config/SimUserInfo;->setMobilePolicyEnable(Z)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/networkassistant/utils/NotificationUtil;->sendNormalDataUsageOverWarning(Landroid/content/Context;)V

    goto :goto_0

    :cond_2
    iget-wide v2, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mDataUsageTotalPackageWarning:J

    cmp-long v1, p3, v2

    if-ltz v1, :cond_0

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v1}, Lcom/miui/networkassistant/config/SimUserInfo;->getDataUsageOverLimitStopNetworkWarningTime()J

    move-result-wide v2

    cmp-long v1, p5, v2

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    const/4 v2, 0x1

    invoke-static {v2}, Lcom/miui/networkassistant/utils/DateUtil;->getThisMonthEndTimeMillis(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/miui/networkassistant/config/SimUserInfo;->saveDataUsageOverLimitStopNetworkWarningTime(J)Z

    iget-boolean v1, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mIsTrafficPurchaseAvailable:Z

    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->isDailyUsedCardEffective()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    :cond_3
    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/miui/networkassistant/utils/NotificationUtil;->sendNormalDataUsageWarning(Landroid/content/Context;Z)V

    goto :goto_0
.end method

.method private checkOperatorConfig()V
    .locals 4

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->isSimLocationAlertIgnore()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getPhoneNumber()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v1}, Lcom/miui/networkassistant/config/SimUserInfo;->getSlotNum()I

    move-result v1

    iget-object v2, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mService:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    iget-object v2, v2, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/miui/networkassistant/service/tm/TrafficSimManager$5;

    invoke-direct {v3, p0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager$5;-><init>(Lcom/miui/networkassistant/service/tm/TrafficSimManager;)V

    invoke-static {v0, v1, v2, v3}, Lcom/miui/networkassistant/utils/TelephonyUtil;->getPhoneNumber(Landroid/content/Context;ILandroid/os/Handler;Lcom/miui/networkassistant/utils/TelephonyUtil$PhoneNumberLoadedListener;)V

    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, v0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->checkOperatorConfig(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private checkOperatorConfig(Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, -0x1

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->getSimLocation(Ljava/lang/String;)[I

    move-result-object v0

    const/4 v1, 0x0

    aget v1, v0, v1

    aget v0, v0, v3

    if-le v1, v2, :cond_1

    if-le v0, v2, :cond_1

    iget-object v2, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v2}, Lcom/miui/networkassistant/config/SimUserInfo;->getCity()I

    move-result v2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v1}, Lcom/miui/networkassistant/config/SimUserInfo;->getProvince()I

    move-result v1

    if-eq v0, v1, :cond_1

    :cond_0
    iput-boolean v3, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mIsSimLocationError:Z

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v1}, Lcom/miui/networkassistant/config/SimUserInfo;->getSlotNum()I

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/networkassistant/utils/NotificationUtil;->sendSimLocationErrorNotify(Landroid/content/Context;I)V

    :cond_1
    return-void
.end method

.method private checkPackagesConfig(Lcom/miui/networkassistant/model/TrafficUsedStatus;)Z
    .locals 14

    const-wide/32 v12, 0x100000

    const-wide/16 v10, 0x0

    const/4 v6, 0x2

    const/4 v2, 0x0

    const/4 v7, 0x1

    if-eqz p1, :cond_e

    invoke-virtual {p1}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->isNormalStable()Z

    move-result v0

    if-eqz v0, :cond_e

    const-string/jumbo v0, ""

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v1}, Lcom/miui/networkassistant/config/SimUserInfo;->getDataUsageTotal()J

    move-result-wide v4

    invoke-virtual {p1}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->getTotalTrafficB()J

    move-result-wide v8

    sub-long/2addr v4, v8

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    cmp-long v1, v4, v12

    if-lez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mContext:Landroid/content/Context;

    const v3, 0x7f0702e7

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->getTotalTrafficB()J

    move-result-wide v8

    invoke-static {v4, v8, v9}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->formatBytesByMB(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    iget-object v4, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v5}, Lcom/miui/networkassistant/config/SimUserInfo;->getDataUsageTotal()J

    move-result-wide v8

    invoke-static {v4, v8, v9}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->formatBytesByMB(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->isLeisureEnable()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->isLeisureStable()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v1}, Lcom/miui/networkassistant/config/SimUserInfo;->isLeisureDataUsageOn()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v1}, Lcom/miui/networkassistant/config/SimUserInfo;->getLeisureDataUsageTotal()J

    move-result-wide v4

    invoke-virtual {p1}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->getLeisureTotalB()J

    move-result-wide v8

    sub-long/2addr v4, v8

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    cmp-long v1, v4, v12

    if-lez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mContext:Landroid/content/Context;

    const v3, 0x7f0702e8

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->getLeisureTotalB()J

    move-result-wide v8

    invoke-static {v4, v8, v9}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->formatBytesByMB(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    iget-object v4, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v5}, Lcom/miui/networkassistant/config/SimUserInfo;->getLeisureDataUsageTotal()J

    move-result-wide v8

    invoke-static {v4, v8, v9}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->formatBytesByMB(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->isExtraEnable()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p1}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->isExtraStable()Z

    move-result v1

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v1}, Lcom/miui/networkassistant/config/SimUserInfo;->getDataUsageOverlayPackage()J

    move-result-wide v4

    cmp-long v1, v4, v10

    if-lez v1, :cond_7

    move v1, v7

    :goto_1
    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v1}, Lcom/miui/networkassistant/config/SimUserInfo;->getDataUsageOverlayPackageTime()J

    move-result-wide v4

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v1}, Lcom/miui/networkassistant/config/SimUserInfo;->getMonthStart()I

    move-result v1

    invoke-static {v1}, Lcom/miui/networkassistant/utils/DateUtil;->getThisMonthBeginTimeMillis(I)J

    move-result-wide v8

    iput-wide v8, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mMonthStartTime:J

    iget-wide v8, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mMonthStartTime:J

    cmp-long v1, v4, v8

    if-ltz v1, :cond_9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    cmp-long v1, v4, v8

    if-gtz v1, :cond_8

    move v1, v7

    :cond_2
    :goto_2
    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v1}, Lcom/miui/networkassistant/config/SimUserInfo;->getDataUsageOverlayPackage()J

    move-result-wide v4

    invoke-virtual {p1}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->getExtraTotalB()J

    move-result-wide v8

    sub-long/2addr v4, v8

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    cmp-long v1, v4, v12

    if-lez v1, :cond_f

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mContext:Landroid/content/Context;

    const v3, 0x7f0702ea

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->getExtraTotalB()J

    move-result-wide v8

    invoke-static {v4, v8, v9}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->formatBytesByMB(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    iget-object v4, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v5}, Lcom/miui/networkassistant/config/SimUserInfo;->getDataUsageOverlayPackage()J

    move-result-wide v8

    invoke-static {v4, v8, v9}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->formatBytesByMB(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    :goto_3
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->isTrafficCorrectionAutoModify()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p0, p1, v7}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->saveCorrectedPkgsAndUsageValues(Lcom/miui/networkassistant/model/TrafficUsedStatus;Z)V

    :cond_3
    :goto_4
    iget-boolean v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mIsUserCorrection:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/miui/networkassistant/config/SimUserInfo;->setPackageChangeUpdateTime(J)Z

    :cond_4
    return v7

    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mContext:Landroid/content/Context;

    const v3, 0x7f0702e9

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v3, v7, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->getLeisureTotalB()J

    move-result-wide v8

    invoke-static {v4, v8, v9}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->formatBytesByMB(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_6
    move-object v3, v0

    goto :goto_3

    :cond_7
    move v1, v2

    goto/16 :goto_1

    :cond_8
    move v1, v2

    goto/16 :goto_2

    :cond_9
    move v1, v2

    goto/16 :goto_2

    :cond_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mContext:Landroid/content/Context;

    const v3, 0x7f0702eb

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v3, v7, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->getExtraTotalB()J

    move-result-wide v8

    invoke-static {v4, v8, v9}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->formatBytesByMB(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    goto/16 :goto_3

    :cond_b
    invoke-virtual {p1}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->getTotalTrafficB()J

    move-result-wide v0

    cmp-long v0, v0, v10

    if-gez v0, :cond_c

    invoke-virtual {p1}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->getLeisureTotalB()J

    move-result-wide v0

    cmp-long v0, v0, v10

    if-lez v0, :cond_3

    :cond_c
    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/networkassistant/utils/PackageUtil;->isRunningForeground(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-direct {p0, v3, v7, p1}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->startTrafficConfigAlertActivity(Ljava/lang/String;ZLcom/miui/networkassistant/model/TrafficUsedStatus;)V

    goto/16 :goto_4

    :cond_d
    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mContext:Landroid/content/Context;

    const v1, 0x7f0702e0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mContext:Landroid/content/Context;

    const v2, 0x7f0702e1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v4}, Lcom/miui/networkassistant/config/SimUserInfo;->getSlotNum()I

    move-result v4

    iget-object v5, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v5}, Lcom/miui/networkassistant/config/SimUserInfo;->getImsi()Ljava/lang/String;

    move-result-object v5

    move-object v6, p1

    invoke-static/range {v0 .. v7}, Lcom/miui/networkassistant/utils/NotificationUtil;->sendPackageChangeNotify(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;ILjava/lang/String;Lcom/miui/networkassistant/model/TrafficUsedStatus;Z)V

    goto/16 :goto_4

    :cond_e
    return v2

    :cond_f
    move-object v3, v0

    goto/16 :goto_3
.end method

.method private checkTotalLimitError(Lcom/miui/networkassistant/model/TrafficUsedStatus;)Z
    .locals 9

    const-wide/32 v4, 0x100000

    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->getCurrentMonthTotalPackage()J

    move-result-wide v0

    div-long/2addr v0, v4

    invoke-virtual {p1}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->getRemainTrafficB()J

    move-result-wide v2

    div-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->isTotalLimitError()Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->isTrafficCorrectionAutoModify()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1, v8}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->saveCorrectedPkgsAndUsageValues(Lcom/miui/networkassistant/model/TrafficUsedStatus;Z)V

    :goto_1
    return v8

    :cond_0
    move v0, v7

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mContext:Landroid/content/Context;

    const v1, 0x7f0702ef

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->getRemainTrafficB()J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->formatBytesByMB(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    iget-object v2, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v3}, Lcom/miui/networkassistant/config/SimUserInfo;->getDataUsageTotal()J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->formatBytesByMB(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v8

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/networkassistant/utils/PackageUtil;->isRunningForeground(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, v3, v7, p1}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->startTrafficConfigAlertActivity(Ljava/lang/String;ZLcom/miui/networkassistant/model/TrafficUsedStatus;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mContext:Landroid/content/Context;

    const v1, 0x7f0702e2

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mContext:Landroid/content/Context;

    const v2, 0x7f0702e3

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v4}, Lcom/miui/networkassistant/config/SimUserInfo;->getSlotNum()I

    move-result v4

    iget-object v5, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v5}, Lcom/miui/networkassistant/config/SimUserInfo;->getImsi()Ljava/lang/String;

    move-result-object v5

    move-object v6, p1

    invoke-static/range {v0 .. v7}, Lcom/miui/networkassistant/utils/NotificationUtil;->sendPackageChangeNotify(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;ILjava/lang/String;Lcom/miui/networkassistant/model/TrafficUsedStatus;Z)V

    goto :goto_1

    :cond_3
    return v7
.end method

.method private finishCorrection(Z)V
    .locals 4

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mIsUserCorrection:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mService:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    iget-object v1, v0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_2

    const/16 v0, 0x11

    :goto_0
    iget-object v2, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v2}, Lcom/miui/networkassistant/config/SimUserInfo;->getSlotNum()I

    move-result v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mService:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    iget-object v1, v1, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iput-boolean v3, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mIsUserCorrection:Z

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/miui/networkassistant/config/SimUserInfo;->saveDataUsageCorrectedTime(J)Z

    :cond_1
    return-void

    :cond_2
    const/16 v0, 0x12

    goto :goto_0
.end method

.method private getCorrectedOffsetValue()J
    .locals 4

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getDataUsageCorrectedTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mMonthStartTime:J

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getCorrectedOffsetValue()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method private getDailyLimitTraffic()J
    .locals 8

    const-wide/32 v6, 0x100000

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getTrafficLimitValue()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getCustomizeDailyLimitWarning()J

    move-result-wide v0

    return-wide v0

    :cond_0
    iget-wide v2, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mDataUsageTotalPackage:J

    const-wide/32 v4, 0x2200000

    cmp-long v1, v2, v4

    if-gtz v1, :cond_1

    sparse-switch v0, :sswitch_data_0

    return-wide v6

    :sswitch_0
    return-wide v6

    :sswitch_1
    const-wide/32 v0, 0x200000

    return-wide v0

    :sswitch_2
    const-wide/32 v0, 0x300000

    return-wide v0

    :cond_1
    iget-wide v2, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mDataUsageTotalPackage:J

    int-to-long v0, v0

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x64

    div-long/2addr v0, v2

    div-long/2addr v0, v6

    mul-long/2addr v0, v6

    return-wide v0

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x5 -> :sswitch_1
        0xa -> :sswitch_2
    .end sparse-switch
.end method

.method private getDataUsageForUidByFromTo(IJJ)J
    .locals 8

    :try_start_0
    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mMiuiNetworkSessionStats:Lcom/miui/net/MiuiNetworkSessionStats;

    iget-object v2, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mCurrentImsi:Ljava/lang/String;

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-virtual/range {v1 .. v7}, Lcom/miui/net/MiuiNetworkSessionStats;->getMobileHistoryForUid(Ljava/lang/String;IJJ)[J

    move-result-object v0

    const/4 v1, 0x0

    aget-wide v2, v0, v1

    const/4 v1, 0x1

    aget-wide v0, v0, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-long/2addr v0, v2

    return-wide v0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "TrafficManageService"

    const-string/jumbo v2, "get data usage failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static declared-synchronized getInstance(Lcom/miui/networkassistant/service/tm/TrafficManageService;Ljava/lang/String;)Lcom/miui/networkassistant/service/tm/TrafficSimManager;
    .locals 3

    const-class v1, Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->sInstanceMap:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->sInstanceMap:Ljava/util/HashMap;

    :cond_0
    sget-object v0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->sInstanceMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    if-nez v0, :cond_1

    new-instance v0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    invoke-direct {v0, p0, p1}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;-><init>(Lcom/miui/networkassistant/service/tm/TrafficManageService;Ljava/lang/String;)V

    sget-object v2, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->sInstanceMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-direct {v0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->initImsiRelated()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getLeisureMonthDataUsage()J
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Lcom/miui/networkassistant/utils/DateUtil;->getTodayTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mCacheLeisureTime:J

    cmp-long v4, v4, v2

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v4}, Lcom/miui/networkassistant/config/SimUserInfo;->getMonthStart()I

    move-result v4

    invoke-static {v4}, Lcom/miui/networkassistant/utils/DateUtil;->getThisMonthBeginTimeMillis(I)J

    move-result-wide v4

    iput-wide v2, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mCacheLeisureTime:J

    invoke-virtual {p0, v4, v5, v2, v3}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->getInternalLeisureUsed(JJ)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mCacheLeisureUsed:J

    :cond_0
    invoke-virtual {p0, v2, v3, v0, v1}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->getInternalLeisureUsed(JJ)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mCacheLeisureUsed:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method private getMonthDataUsageUsed()J
    .locals 6

    const-wide/16 v2, 0x0

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v1}, Lcom/miui/networkassistant/config/SimUserInfo;->getSlotNum()I

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/networkassistant/utils/MiSimUtil;->isMiSimEnable(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mMiSimHelper:Lcom/miui/networkassistant/traffic/statistic/MiSimHelper;

    invoke-virtual {v0}, Lcom/miui/networkassistant/traffic/statistic/MiSimHelper;->refreshMiSimFlowData()V

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mMiSimHelper:Lcom/miui/networkassistant/traffic/statistic/MiSimHelper;

    invoke-virtual {v0}, Lcom/miui/networkassistant/traffic/statistic/MiSimHelper;->getTotalMonthFlow()J

    move-result-wide v0

    iget-object v4, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mMiSimHelper:Lcom/miui/networkassistant/traffic/statistic/MiSimHelper;

    invoke-virtual {v4}, Lcom/miui/networkassistant/traffic/statistic/MiSimHelper;->getTotalRemainedFlow()J

    move-result-wide v4

    sub-long/2addr v0, v4

    :goto_0
    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    :goto_1
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mMonthStartTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {p0, v0, v1, v4, v5}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->getDataUsageByFromTo(JJ)J

    move-result-wide v0

    goto :goto_0

    :cond_1
    move-wide v0, v2

    goto :goto_1
.end method

.method private getNormalMonthDataUsageUsed()J
    .locals 5

    const-wide/16 v2, 0x0

    iget-boolean v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mDailyCardEnable:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mIsDataUsageOverNormalPkg:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->getNormalTodayDataUsageUsed()J

    move-result-wide v0

    :goto_0
    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    :goto_1
    return-wide v0

    :cond_0
    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->getMonthDataUsageUsed()J

    move-result-wide v0

    goto :goto_0

    :cond_1
    move-wide v0, v2

    goto :goto_1
.end method

.method private getNormalMonthTotalPackage()J
    .locals 4

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v1}, Lcom/miui/networkassistant/config/SimUserInfo;->getSlotNum()I

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/networkassistant/utils/MiSimUtil;->isMiSimEnable(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mMiSimHelper:Lcom/miui/networkassistant/traffic/statistic/MiSimHelper;

    invoke-virtual {v0}, Lcom/miui/networkassistant/traffic/statistic/MiSimHelper;->refreshMiSimFlowData()V

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mMiSimHelper:Lcom/miui/networkassistant/traffic/statistic/MiSimHelper;

    invoke-virtual {v0}, Lcom/miui/networkassistant/traffic/statistic/MiSimHelper;->getTotalMonthFlow()J

    move-result-wide v0

    :goto_0
    invoke-virtual {p0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->getCurrentMonthExtraPackage()J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getDataUsageTotal()J

    move-result-wide v0

    goto :goto_0
.end method

.method private getRoamingTodayDataUsage()J
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getRoamingBeginTime()J

    move-result-wide v0

    const-wide/32 v4, 0x5265c00

    sub-long v4, v2, v4

    cmp-long v4, v4, v0

    if-lez v4, :cond_0

    invoke-static {}, Lcom/miui/networkassistant/utils/DateUtil;->getTodayTimeMillis()J

    move-result-wide v0

    :cond_0
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->getDataUsageByFromTo(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method private getSimLocation(Ljava/lang/String;)[I
    .locals 3

    const/4 v0, -0x1

    filled-new-array {v0, v0}, [I

    move-result-object v0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/miui/a/c/b;->btI(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    :try_start_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mTrafficCorrection:Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection;

    const/4 v2, 0x0

    aget v2, v0, v2

    invoke-interface {v1, v2}, Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection;->getProvinceCodeByCityCode(I)I

    move-result v1

    const/4 v2, 0x1

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    const-string/jumbo v1, "TrafficManageService"

    const-string/jumbo v2, "parse city code exception."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getTodayCorrectDataUsageUsed()J
    .locals 6

    const-wide/16 v0, 0x0

    invoke-virtual {p0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->getNormalTodayDataUsageUsed()J

    move-result-wide v2

    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->getCorrectedOffsetValue()J

    move-result-wide v4

    add-long/2addr v2, v4

    cmp-long v4, v2, v0

    if-gez v4, :cond_0

    :goto_0
    return-wide v0

    :cond_0
    move-wide v0, v2

    goto :goto_0
.end method

.method private initDailyCardInfo()V
    .locals 6

    const-wide/16 v4, 0x0

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->isDailyUsedCardEffective()Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mDailyCardEnable:Z

    iget-boolean v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mDailyCardEnable:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->isTotalDataUsageSetted()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0, v4, v5}, Lcom/miui/networkassistant/config/SimUserInfo;->saveDataUsageTotal(J)Z

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getDailyUsedCardPackage()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mDailyCardPackage:J

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getDailyUsedCardDataUpdateTime()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/miui/networkassistant/utils/DateUtil;->isTheSameDay(JJ)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0, v4, v5}, Lcom/miui/networkassistant/config/SimUserInfo;->setDailyUsedCardDataUpdateTime(J)Z

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0, v4, v5}, Lcom/miui/networkassistant/config/SimUserInfo;->saveCorrectedOffsetValue(J)Z

    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->getTodayCorrectDataUsageUsed()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mDailyCardPackage:J

    div-long/2addr v0, v2

    long-to-int v0, v0

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v1, v0}, Lcom/miui/networkassistant/config/SimUserInfo;->setDailyUsedCardStopNetworkCount(I)Z

    :cond_1
    return-void
.end method

.method private initImsiRelated()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->initSimInfo()V

    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->initTrafficCorrection()V

    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->initMobileStatistic()V

    invoke-virtual {p0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->initTrafficStatusMonitorVariable()V

    return-void
.end method

.method private initMobileStatistic()V
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mCurrentImsi:Ljava/lang/String;

    const-string/jumbo v1, "default"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/miui/net/MiuiNetworkSessionStats;

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/miui/net/MiuiNetworkSessionStats;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mMiuiNetworkSessionStats:Lcom/miui/net/MiuiNetworkSessionStats;

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mMiuiNetworkSessionStats:Lcom/miui/net/MiuiNetworkSessionStats;

    invoke-virtual {v0}, Lcom/miui/net/MiuiNetworkSessionStats;->openSession()V

    return-void
.end method

.method private initSimInfo()V
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mCurrentImsi:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/miui/networkassistant/config/SimUserInfo;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/miui/networkassistant/config/SimUserInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->isSimInserted()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->hasImsi()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->checkNormalTotalPackageSetted()V

    :cond_0
    return-void
.end method

.method private initTrafficCorrection()V
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v1}, Lcom/miui/networkassistant/config/SimUserInfo;->getImsi()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v2}, Lcom/miui/networkassistant/config/SimUserInfo;->getSlotNum()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/miui/networkassistant/traffic/correction/TrafficCorrectionManager;->getTrafficCorrectionInstance(Landroid/content/Context;Ljava/lang/String;I)Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mTrafficCorrection:Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection;

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mTrafficCorrection:Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection;

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mTrafficCorrectionListener:Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection$TrafficCorrectionListener;

    invoke-interface {v0, v1}, Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection;->registerLisener(Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection$TrafficCorrectionListener;)V

    return-void
.end method

.method private notifyBillPackageChange()V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "%s/%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "com.miui.networkassistant.provider"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string/jumbo v3, "bill_detail"

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    return-void
.end method

.method private notifyCallTimePackageChange()V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "%s/%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "com.miui.networkassistant.provider"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string/jumbo v3, "calltime_detail"

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    return-void
.end method

.method private notifyTrafficPackageChange()V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "%s/%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "com.miui.networkassistant.provider"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string/jumbo v3, "datausage_status"

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    return-void
.end method

.method private onNormalTrafficOverLimit()V
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/miui/networkassistant/utils/TelephonyUtil;->setMobileDataState(Landroid/content/Context;Z)V

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "mobile_policy"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/miui/networkassistant/utils/TelephonyUtil;->isPhoneIdleState(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mContext:Landroid/content/Context;

    const-class v2, Lcom/miui/networkassistant/ui/activity/NetworkOverLimitActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/miui/common/b/f;->aHS()Landroid/os/UserHandle;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/miui/common/b/n;->aIJ(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v1}, Lcom/miui/networkassistant/config/SimUserInfo;->getOverDataUsageStopNetworkType()I

    move-result v1

    iget-boolean v2, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mDailyCardEnable:Z

    if-eqz v2, :cond_1

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getDailyUsedCardStopNetworkCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    :cond_1
    iget-object v2, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mContext:Landroid/content/Context;

    invoke-static {v2, v1, v0}, Lcom/miui/networkassistant/utils/NotificationUtil;->sendDataUsageOverLimit(Landroid/content/Context;II)V

    goto :goto_0
.end method

.method private saveAnalytics(Lcom/miui/networkassistant/model/TrafficUsedStatus;)V
    .locals 4

    invoke-static {p1}, Lcom/miui/networkassistant/utils/AnalyticsHelper;->trackTrafficCorrectionResult(Lcom/miui/networkassistant/model/TrafficUsedStatus;)V

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getBrand()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v1}, Lcom/miui/networkassistant/config/SimUserInfo;->getProvince()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->getReturnCode()I

    move-result v2

    invoke-virtual {p1}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->getCorrectionType()I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/miui/networkassistant/utils/AnalyticsHelper;->trackTrafficSmsCorrection(Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method private saveBillAndCallTimeResult(Lcom/miui/networkassistant/model/TrafficUsedStatus;)V
    .locals 4

    invoke-virtual {p1}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->isBillEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {p1}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->getBillTotal()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/miui/networkassistant/config/SimUserInfo;->setBillPackageTotal(J)Z

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {p1}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->getBillRemained()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/miui/networkassistant/config/SimUserInfo;->setBillPackageRemained(J)Z

    :cond_0
    invoke-virtual {p1}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->isCallTimeEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {p1}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->getCallTimeTotal()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/miui/networkassistant/config/SimUserInfo;->setCallTimePackageTotal(J)Z

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {p1}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->getCallTimeRemained()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/miui/networkassistant/config/SimUserInfo;->setCallTimePackageRemained(J)Z

    :cond_1
    return-void
.end method

.method private saveCorrectedPkgs(Lcom/miui/networkassistant/model/TrafficUsedStatus;)V
    .locals 8

    const-wide/32 v6, 0x100000

    invoke-virtual {p1}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->isTotalLimitError()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->getRemainTrafficB()J

    move-result-wide v0

    div-long/2addr v0, v6

    mul-long/2addr v0, v6

    iget-object v2, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v2}, Lcom/miui/networkassistant/config/SimUserInfo;->getPackageChangeUpdateTime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mMonthStartTime:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_4

    iget-object v2, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/miui/networkassistant/config/SimUserInfo;->setPackageChangeUpdateTime(J)Z

    iget-object v2, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v2, v0, v1}, Lcom/miui/networkassistant/config/SimUserInfo;->saveDataUsageTotal(J)Z

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->isNormalStable()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->getTotalTrafficB()J

    move-result-wide v0

    div-long/2addr v0, v6

    mul-long/2addr v0, v6

    iget-object v2, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v2, v0, v1}, Lcom/miui/networkassistant/config/SimUserInfo;->saveDataUsageTotal(J)Z

    :cond_1
    invoke-virtual {p1}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->isLeisureEnable()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->isLeisureStable()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/config/SimUserInfo;->toggleLeisureDataUsageOn(Z)Z

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {p1}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->getLeisureTotalB()J

    move-result-wide v2

    div-long/2addr v2, v6

    mul-long/2addr v2, v6

    invoke-virtual {v0, v2, v3}, Lcom/miui/networkassistant/config/SimUserInfo;->saveLeisureDataUsageTotal(J)Z

    :cond_2
    invoke-virtual {p1}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->isExtraEnable()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->isExtraStable()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->getExtraTotalB()J

    move-result-wide v0

    div-long/2addr v0, v6

    mul-long/2addr v0, v6

    iget-object v2, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v2, v0, v1}, Lcom/miui/networkassistant/config/SimUserInfo;->saveDataUsageOverlayPackage(J)Z

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/miui/networkassistant/config/SimUserInfo;->saveDataUsageOverlayPackageTime(J)Z

    :cond_3
    invoke-virtual {p0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->updateTrafficCorrectionTotalLimit()V

    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->showAutoModifyPackageAlert()V

    return-void

    :cond_4
    iget-object v2, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v2}, Lcom/miui/networkassistant/config/SimUserInfo;->getDataUsageTotal()J

    move-result-wide v2

    sub-long/2addr v0, v2

    iget-object v2, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v2, v0, v1}, Lcom/miui/networkassistant/config/SimUserInfo;->saveDataUsageOverlayPackage(J)Z

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/miui/networkassistant/config/SimUserInfo;->saveDataUsageOverlayPackageTime(J)Z

    goto :goto_0
.end method

.method private saveCorrectedUsageValues(Lcom/miui/networkassistant/model/TrafficUsedStatus;)V
    .locals 10

    const/4 v7, 0x1

    const/4 v6, 0x0

    const-wide/16 v4, 0x0

    invoke-virtual {p1}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->getUsedTrafficB()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->isExtraEnable()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->getExtraUsedB()J

    move-result-wide v2

    add-long/2addr v0, v2

    :cond_0
    iget-object v2, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v2}, Lcom/miui/networkassistant/config/SimUserInfo;->isLeisureDataUsageEffective()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->getCorrectedNormalAndLeisureMonthTotalUsed()[J

    move-result-object v4

    aget-wide v2, v4, v6

    aget-wide v4, v4, v7

    :goto_0
    invoke-virtual {p1}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->isNormalJustOver()Z

    move-result v8

    if-eqz v8, :cond_5

    cmp-long v2, v2, v0

    if-lez v2, :cond_5

    move v2, v6

    :goto_1
    invoke-virtual {p1}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->getLeisureUsedB()J

    move-result-wide v8

    invoke-virtual {p1}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->isLeisureJustOver()Z

    move-result v3

    if-eqz v3, :cond_1

    cmp-long v3, v4, v8

    if-lez v3, :cond_1

    move v7, v6

    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {p0, v0, v1}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->saveLatestCorrectedNormalDataUsage(J)V

    :cond_2
    invoke-virtual {p1}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->isLeisureEnable()Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz v7, :cond_3

    invoke-virtual {p0, v8, v9}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->saveLatestCorrectedLeisureDataUsage(J)V

    :cond_3
    return-void

    :cond_4
    invoke-virtual {p0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->getCorrectedNormalMonthTotalUsed()J

    move-result-wide v2

    goto :goto_0

    :cond_5
    move v2, v7

    goto :goto_1
.end method

.method private shouldUpdateTcEngine(Lcom/miui/networkassistant/model/TrafficUsedStatus;)V
    .locals 2

    iget-boolean v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mShouldUpdateTcEngine:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->getCorrectionType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mShouldUpdateTcEngine:Z

    new-instance v0, Lcom/miui/networkassistant/service/tm/TrafficSimManager$6;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager$6;-><init>(Lcom/miui/networkassistant/service/tm/TrafficSimManager;)V

    invoke-static {v0}, Lcom/miui/common/a/b/a;->aGz(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private showAutoModifyPackageAlert()V
    .locals 6

    iget-boolean v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mIsUserCorrection:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->isTrafficCorrectionAutoModify()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/networkassistant/utils/PackageUtil;->isRunningForeground(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mContext:Landroid/content/Context;

    const v1, 0x7f0702f1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mContext:Landroid/content/Context;

    const v2, 0x7f0702f2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->getCurrentMonthTotalPackage()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->formatBytesByMB(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v3}, Lcom/miui/networkassistant/config/SimUserInfo;->getSlotNum()I

    move-result v3

    invoke-static {v2, v0, v1, v3}, Lcom/miui/networkassistant/utils/NotificationUtil;->sendCorrectionAlertNotify(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mService:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    iget-object v0, v0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v1}, Lcom/miui/networkassistant/config/SimUserInfo;->getSlotNum()I

    move-result v1

    const/16 v2, 0x14

    const v3, 0x7f0702ec

    invoke-virtual {v0, v2, v1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mService:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    iget-object v1, v1, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private showCorrectionFailedToast()V
    .locals 4

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mService:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    iget-object v0, v0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v1}, Lcom/miui/networkassistant/config/SimUserInfo;->getSlotNum()I

    move-result v1

    const/16 v2, 0x12

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mService:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    iget-object v1, v1, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private showCorrectionStartedToast()V
    .locals 4

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mService:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    iget-object v0, v0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v1}, Lcom/miui/networkassistant/config/SimUserInfo;->getSlotNum()I

    move-result v1

    const/16 v2, 0x10

    const v3, 0x7f0702d8

    invoke-virtual {v0, v2, v1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mService:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    iget-object v1, v1, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private showDataUsageCorrectionFailureNotify(Landroid/content/Context;I)V
    .locals 3

    iget-boolean v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mIsUserCorrection:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070317

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070318

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1, p2}, Lcom/miui/networkassistant/utils/NotificationUtil;->sendDataUsageCorrectionTimeOutOrFailureNotify(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method private showDataUsageCorrectionTimeOutNotify(Landroid/content/Context;I)V
    .locals 3

    iget-boolean v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mIsUserCorrection:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0702c1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070318

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1, p2}, Lcom/miui/networkassistant/utils/NotificationUtil;->sendDataUsageCorrectionTimeOutOrFailureNotify(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method private showTrafficInStatusBar()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mCommonConfig:Lcom/miui/networkassistant/config/CommonConfig;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/CommonConfig;->isStatusBarShowTrafficUpdate()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "status_bar_show_network_assistant"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mCommonConfig:Lcom/miui/networkassistant/config/CommonConfig;

    invoke-virtual {v1, v3}, Lcom/miui/networkassistant/config/CommonConfig;->setStatusBarShowTrafficUpdate(Z)Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "status_bar_show_network_assistant"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    return-void
.end method

.method private startTrafficConfigAlertActivity(Ljava/lang/String;ZLcom/miui/networkassistant/model/TrafficUsedStatus;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mContext:Landroid/content/Context;

    const-class v2, Lcom/miui/networkassistant/ui/activity/TrafficConfigAlertActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "bundle_key_is_stable_pkg"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v1, "bundle_key_body"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "sim_slot_num_tag"

    iget-object v2, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v2}, Lcom/miui/networkassistant/config/SimUserInfo;->getSlotNum()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v1, "bundle_key_imsi"

    iget-object v2, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v2}, Lcom/miui/networkassistant/config/SimUserInfo;->getImsi()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "bundle_key_traffic_used_status"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/miui/common/b/f;->aHS()Landroid/os/UserHandle;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/miui/common/b/n;->aIJ(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method private startTrafficCorrection(ZJI)V
    .locals 8

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->isCustomizedSms()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->isDailyUsedCardEffective()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getCustomizedSmsNum()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v1}, Lcom/miui/networkassistant/config/SimUserInfo;->getCustomizedSmsContent()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-direct {p0, p4}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->checkCorrectionType(I)I

    move-result v6

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mTrafficCorrection:Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection;

    move v2, p1

    move-wide v4, p2

    invoke-interface/range {v1 .. v6}, Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection;->startCorrection(ZLjava/util/Map;JI)Z

    move-result v0

    xor-int/lit8 v1, p1, 0x1

    iput-boolean v1, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mIsUserCorrection:Z

    iget-boolean v1, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mIsUserCorrection:Z

    if-eqz v1, :cond_1

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mService:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    iget-object v0, v0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v1}, Lcom/miui/networkassistant/config/SimUserInfo;->getSlotNum()I

    move-result v1

    const/16 v2, 0x10

    const v3, 0x7f0702d9

    invoke-virtual {v0, v2, v1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mService:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    iget-object v1, v1, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    return-void
.end method

.method private updateTrafficCorrectionEngine()Z
    .locals 7

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->isOperatorSetted()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    :cond_0
    return v6

    :cond_1
    :try_start_0
    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->checkOperatorConfig()V

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mTrafficCorrection:Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection;

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v1}, Lcom/miui/networkassistant/config/SimUserInfo;->getProvince()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v2}, Lcom/miui/networkassistant/config/SimUserInfo;->getCity()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v3}, Lcom/miui/networkassistant/config/SimUserInfo;->getOperator()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection;->updateSMSTemplate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/miui/networkassistant/config/SimUserInfo;->setTrafficCorrectionEngineUpdateTime(J)Z

    :cond_2
    const-string/jumbo v1, "TrafficManageService"

    const-string/jumbo v2, "mina update correction engine, result:%b, slotNum:%d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v4}, Lcom/miui/networkassistant/config/SimUserInfo;->getSlotNum()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "TrafficManageService"

    const-string/jumbo v2, "update engine exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v6
.end method


# virtual methods
.method BillAndCallTimePackage()V
    .locals 4

    const-wide/16 v2, -0x1

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0, v2, v3}, Lcom/miui/networkassistant/config/SimUserInfo;->setBillPackageTotal(J)Z

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0, v2, v3}, Lcom/miui/networkassistant/config/SimUserInfo;->setBillPackageRemained(J)Z

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0, v2, v3}, Lcom/miui/networkassistant/config/SimUserInfo;->setCallTimePackageTotal(J)Z

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0, v2, v3}, Lcom/miui/networkassistant/config/SimUserInfo;->setCallTimePackageRemained(J)Z

    return-void
.end method

.method checkActiveSlotTraffic()V
    .locals 4

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getMonthStart()I

    move-result v0

    invoke-static {v0}, Lcom/miui/networkassistant/utils/DateUtil;->getThisMonthBeginTimeMillis(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mMonthStartTime:J

    iget-boolean v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mIsDataUsageOverLimitOn:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getDataUsageOverLimitStopNetworkTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mMonthStartTime:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->isMobilePolicyEnable()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mService:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-virtual {v0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->getMobileDataPolicy()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lmiui/util/Log;->getFullLogger()Lmiui/util/Log$Facade;

    move-result-object v0

    const-string/jumbo v1, "TrafficManageService"

    const-string/jumbo v2, "checkActiveSlotTraffic"

    invoke-virtual {v0, v1, v2}, Lmiui/util/Log$Facade;->info(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->onNormalTrafficOverLimit()V

    :cond_0
    return-void
.end method

.method checkDailyLimit()V
    .locals 7

    const/4 v6, 0x0

    const/4 v1, 0x1

    const-string/jumbo v0, "TrafficManageService"

    const-string/jumbo v2, "daily limit traffic %s"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->getNormalTodayDataUsageNoLeisureUsed()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/miui/networkassistant/utils/DateUtil;->isLastDayOfMonth()Z

    move-result v0

    invoke-virtual {p0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->getCorrectedNormalMonthTotalUsed()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mDataUsageTotalPackage:J

    sub-long v2, v4, v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    xor-int/lit8 v0, v0, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->getNormalTodayDataUsageNoLeisureUsed()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mDailyLimitTraffic:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mOverDailyLimitWarningType:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v1

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getDataUsageOverDailyLimitTime()J

    move-result-wide v0

    invoke-static {}, Lcom/miui/networkassistant/utils/DateUtil;->getTodayTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/miui/networkassistant/config/SimUserInfo;->setDataUsageOverDailyLimitTime(J)Z

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/networkassistant/utils/NotificationUtil;->sendDailyLimitWarning(Landroid/content/Context;)V

    goto :goto_1

    :pswitch_1
    const-string/jumbo v0, "TrafficManageService"

    const-string/jumbo v2, "policy %d"

    new-array v3, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mService:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-virtual {v4}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->getMobileDataPolicy()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mService:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-virtual {v0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->getMobileDataPolicy()I

    move-result v0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getDataUsageOverDailyLimitTime()J

    move-result-wide v2

    invoke-static {}, Lcom/miui/networkassistant/utils/DateUtil;->getTodayTimeMillis()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/miui/networkassistant/config/SimUserInfo;->setDataUsageOverDailyLimitTime(J)Z

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/config/SimUserInfo;->setOverDataUsageStopNetworkType(I)Z

    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->onNormalTrafficOverLimit()V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method checkMiMobileOperatorConfig()V
    .locals 1

    invoke-static {}, Lcom/miui/networkassistant/utils/PrivacyDeclareAndAllowNetworkUtil;->isAllowNetwork()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/common/network/f;->aMa(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->isSimInserted()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->hasImsi()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->isMiMobileOperatorModify()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->isOversea()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->isDataRoaming()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->isTotalDataUsageSetted()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    return-void

    :cond_3
    new-instance v0, Lcom/miui/networkassistant/service/tm/TrafficSimManager$4;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager$4;-><init>(Lcom/miui/networkassistant/service/tm/TrafficSimManager;)V

    invoke-static {v0}, Lcom/miui/common/a/b/a;->aGz(Ljava/lang/Runnable;)V

    return-void
.end method

.method checkNormalTotalPackageSetted()V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/networkassistant/utils/LoadConfigUtil;->isDataUsageLimitAlertEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-boolean v0, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_DUAL_CARD:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/miui/networkassistant/dual/Sim;->getCurrentActiveSlotNum()I

    move-result v0

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v1}, Lcom/miui/networkassistant/config/SimUserInfo;->getSlotNum()I

    move-result v1

    if-eq v0, v1, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v1}, Lcom/miui/networkassistant/config/SimUserInfo;->getSlotNum()I

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/networkassistant/utils/MiSimUtil;->isMiSimEnable(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->isSimInserted()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->isTotalDataUsageSetted()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mService:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-virtual {v0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->isDeviceProvisioned()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->isOversea()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->isDataUsageTotalNotSetNotified()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v1}, Lcom/miui/networkassistant/config/SimUserInfo;->getSlotNum()I

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/networkassistant/utils/NotificationUtil;->sendNormalTotalPackageNotSetted(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0, v2}, Lcom/miui/networkassistant/config/SimUserInfo;->setDataUsageTotalNotSetNotified(Z)Z

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0, v2}, Lcom/miui/networkassistant/config/SimUserInfo;->setNATipsEnable(Z)Z

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0, v2}, Lcom/miui/networkassistant/config/SimUserInfo;->setUserTrafficSettingGuideEnable(Z)Z

    :cond_3
    return-void
.end method

.method checkRoamingDailyLimit()V
    .locals 6

    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->getRoamingTodayDataUsage()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mRoamingDailyLimitTraffic:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    iget-wide v2, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mRoamingDailyLimitTraffic:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mRoamingOverLimitOptType:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getDataUsageOverRoamingDailyLimitTime()J

    move-result-wide v0

    invoke-static {}, Lcom/miui/networkassistant/utils/DateUtil;->getTodayTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/miui/networkassistant/config/SimUserInfo;->setDataUsageOverRoamingDailyLimitTime(J)Z

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/networkassistant/utils/NotificationUtil;->sendRoamingDailyLimitWarning(Landroid/content/Context;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mService:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-virtual {v0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->getMobileDataPolicy()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getDataUsageOverRoamingDailyLimitTime()J

    move-result-wide v0

    invoke-static {}, Lcom/miui/networkassistant/utils/DateUtil;->getTodayTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/miui/networkassistant/config/SimUserInfo;->setDataUsageOverRoamingDailyLimitTime(J)Z

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/config/SimUserInfo;->setOverDataUsageStopNetworkType(I)Z

    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->onNormalTrafficOverLimit()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method checkTrafficCorrectionEngineUpdate()V
    .locals 4

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->isOperatorSetted()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getTrafficCorrectionEngineUpdateTime()J

    move-result-wide v0

    const-wide/32 v2, 0x240c8400

    add-long/2addr v0, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->updateTrafficCorrectionEngine()Z

    :cond_0
    return-void
.end method

.method checkTrafficSettingAndSendNotification()V
    .locals 18

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v2}, Lcom/miui/networkassistant/config/SimUserInfo;->isTrafficManageControlEnable()Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mIsMiSim:Z

    if-eqz v2, :cond_2

    :cond_1
    return-void

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->getCorrectedNormalMonthTotalUsed()J

    move-result-wide v4

    invoke-virtual/range {p0 .. p0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->getNormalTodayDataUsageUsed()J

    move-result-wide v6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v2}, Lcom/miui/networkassistant/config/SimUserInfo;->isTotalDataUsageSetted()Z

    move-result v8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v2}, Lcom/miui/networkassistant/config/SimUserInfo;->isOperatorSetted()Z

    move-result v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    if-eqz v8, :cond_3

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_5

    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v2}, Lcom/miui/networkassistant/config/SimUserInfo;->isOversea()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_5

    invoke-static {}, Lcom/miui/networkassistant/utils/DateUtil;->getTodayTimeMillis()J

    move-result-wide v2

    const-wide/32 v12, 0x44aa200

    add-long/2addr v2, v12

    cmp-long v2, v10, v2

    if-ltz v2, :cond_9

    const/4 v2, 0x1

    :goto_0
    const/4 v3, 0x0

    invoke-static {v3}, Lcom/miui/networkassistant/utils/DateUtil;->getThisMonthBeginTimeMillis(I)J

    move-result-wide v12

    invoke-static {}, Lcom/miui/networkassistant/utils/DateUtil;->getDayOfMonth()I

    move-result v3

    const/16 v9, 0x12

    if-ne v3, v9, :cond_4

    if-eqz v2, :cond_4

    const-wide/32 v2, 0x100000

    cmp-long v2, v4, v2

    if-ltz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v2}, Lcom/miui/networkassistant/config/SimUserInfo;->getTrafficSettingMonthlyNotifyUpdateTime()J

    move-result-wide v2

    cmp-long v2, v2, v12

    if-gez v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/miui/networkassistant/utils/NotificationUtil;->cancelNormalTotalPackageNotSetted(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mContext:Landroid/content/Context;

    invoke-static {v2, v4, v5}, Lcom/miui/networkassistant/utils/NotificationUtil;->sendTrafficSettingMonthlyNotify(Landroid/content/Context;J)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/miui/networkassistant/config/SimUserInfo;->setNATipsEnable(Z)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/miui/networkassistant/config/SimUserInfo;->setUserTrafficSettingGuideEnable(Z)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-virtual {v2, v12, v13}, Lcom/miui/networkassistant/config/SimUserInfo;->setTrafficSettingMonthlyNotifyUpdateTime(J)Z

    :cond_4
    const-wide/32 v2, 0x1400000

    cmp-long v2, v6, v2

    if-ltz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v2}, Lcom/miui/networkassistant/config/SimUserInfo;->getTrafficSettingDailyNotifyUpdateTime()Z

    move-result v2

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/miui/networkassistant/utils/NotificationUtil;->cancelNormalTotalPackageNotSetted(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mContext:Landroid/content/Context;

    invoke-static {v2, v6, v7}, Lcom/miui/networkassistant/utils/NotificationUtil;->sendTrafficSettingDailyNotify(Landroid/content/Context;J)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/miui/networkassistant/config/SimUserInfo;->setNATipsEnable(Z)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/miui/networkassistant/config/SimUserInfo;->setUserTrafficSettingGuideEnable(Z)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/miui/networkassistant/config/SimUserInfo;->setTrafficSettingDailyNotifyUpdateTime(Z)Z

    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v2}, Lcom/miui/networkassistant/config/SimUserInfo;->getDailyLimitEnabled()Z

    move-result v9

    invoke-virtual/range {p0 .. p0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->getCurrentMonthTotalPackage()J

    move-result-wide v12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v2}, Lcom/miui/networkassistant/config/SimUserInfo;->getTrafficSettingDailyLimitNotifyUpdateTime()J

    move-result-wide v14

    long-to-double v2, v12

    const-wide v16, 0x3fa999999999999aL    # 0.05

    mul-double v2, v2, v16

    const-wide/high16 v16, 0x417e000000000000L    # 3.145728E7

    cmpl-double v2, v2, v16

    if-lez v2, :cond_a

    long-to-double v2, v12

    const-wide v16, 0x3fa999999999999aL    # 0.05

    mul-double v2, v2, v16

    :goto_1
    if-eqz v8, :cond_6

    xor-int/lit8 v9, v9, 0x1

    if-eqz v9, :cond_6

    const-wide v16, 0x80000000L

    cmp-long v9, v12, v16

    if-gez v9, :cond_6

    long-to-double v12, v6

    cmpl-double v2, v12, v2

    if-lez v2, :cond_6

    cmp-long v2, v10, v14

    if-lez v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mContext:Landroid/content/Context;

    invoke-static {v2, v6, v7}, Lcom/miui/networkassistant/utils/NotificationUtil;->sendSettingDailyLimitNotify(Landroid/content/Context;J)V

    const/4 v2, 0x1

    invoke-static {v2}, Lcom/miui/networkassistant/utils/DateUtil;->getThisMonthEndTimeMillis(I)J

    move-result-wide v2

    const-wide/32 v6, 0x5265c00

    add-long/2addr v2, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v6, v2, v3}, Lcom/miui/networkassistant/config/SimUserInfo;->setTrafficSettingDailyLimitNotifyUpdateTime(J)Z

    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v2}, Lcom/miui/networkassistant/config/SimUserInfo;->getMonthStart()I

    move-result v2

    invoke-static {v2}, Lcom/miui/networkassistant/utils/DateUtil;->getThisMonthBeginTimeMillis(I)J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mMonthStartTime:J

    sget-boolean v2, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_INTERNATIONAL_BUILD:Z

    if-nez v2, :cond_8

    if-eqz v8, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v2}, Lcom/miui/networkassistant/config/SimUserInfo;->getDataUsageOverLimitStopNetworkTime()J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mMonthStartTime:J

    cmp-long v2, v2, v6

    if-lez v2, :cond_8

    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v2}, Lcom/miui/networkassistant/config/SimUserInfo;->isDailyUsedCardEnable()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v2}, Lcom/miui/networkassistant/config/SimUserInfo;->isNotLimitCardEnable()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_8

    const-wide v2, 0x140000000L

    cmp-long v2, v4, v2

    if-ltz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v2}, Lcom/miui/networkassistant/config/SimUserInfo;->getTrafficProtectedStopNetTime()J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mMonthStartTime:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_8

    const/4 v2, 0x1

    invoke-static {v2}, Lcom/miui/networkassistant/utils/DateUtil;->getThisMonthEndTimeMillis(I)J

    move-result-wide v2

    const-wide/32 v4, 0x5265c00

    add-long/2addr v2, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v4, v2, v3}, Lcom/miui/networkassistant/config/SimUserInfo;->setTrafficProtectedStopNetTime(J)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Lcom/miui/networkassistant/config/SimUserInfo;->setOverDataUsageStopNetworkType(I)Z

    invoke-direct/range {p0 .. p0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->onNormalTrafficOverLimit()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/miui/networkassistant/config/SimUserInfo;->setMobilePolicyEnable(Z)Z

    :cond_8
    return-void

    :cond_9
    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_a
    const-wide/high16 v2, 0x417e000000000000L    # 3.145728E7

    goto/16 :goto_1
.end method

.method checkTrafficStatus()V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->isTrafficManageControlEnable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mIsMiSim:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->isNotLimitCardEnable()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    iget-boolean v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mIsTotalPackageSetted:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mDailyCardEnable:Z

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->checkDailyUsedTrafficStatus()V

    :cond_3
    :goto_0
    iget-boolean v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mIsRoamingDailyLimitEnabled:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->isDataRoaming()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->checkRoamingDailyLimit()V

    :cond_4
    :goto_1
    return-void

    :cond_5
    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->isLeisureDataUsageEffective()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->checkNormalAndLeisureTrafficStatus()V

    goto :goto_0

    :cond_6
    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->checkNormalTrafficStatus()V

    goto :goto_0

    :cond_7
    iget-boolean v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mIsDailyLimitEnabled:Z

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->checkDailyLimit()V

    goto :goto_1
.end method

.method clearAllLimitTime()V
    .locals 4

    const-wide/16 v2, 0x0

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0, v2, v3}, Lcom/miui/networkassistant/config/SimUserInfo;->saveDataUsageOverLimitStopNetworkWarningTime(J)Z

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0, v2, v3}, Lcom/miui/networkassistant/config/SimUserInfo;->saveDataUsageOverLimitStopNetworkTime(J)Z

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0, v2, v3}, Lcom/miui/networkassistant/config/SimUserInfo;->saveLeisureDataUsageOverLimitWarningTime(J)Z

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0, v2, v3}, Lcom/miui/networkassistant/config/SimUserInfo;->saveLeisureOverLimitStopNetworkTime(J)Z

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0, v2, v3}, Lcom/miui/networkassistant/config/SimUserInfo;->setDataUsageOverDailyLimitTime(J)Z

    return-void
.end method

.method clearDailyLimitTime()V
    .locals 4

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/miui/networkassistant/config/SimUserInfo;->setDataUsageOverDailyLimitTime(J)Z

    return-void
.end method

.method clearRoamingDailyLimitTime()V
    .locals 4

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/miui/networkassistant/config/SimUserInfo;->setDataUsageOverRoamingDailyLimitTime(J)Z

    return-void
.end method

.method clearTrafficCorrectionFailureTimes()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getMonthStart()I

    move-result v0

    invoke-static {v0}, Lcom/miui/networkassistant/utils/DateUtil;->isCycleDay(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/config/SimUserInfo;->setTrafficCorrectionFailureCount(I)Z

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/config/SimUserInfo;->setShouldTcDiagnostic(Z)Z

    :cond_0
    return-void
.end method

.method forceUpdateTraffic()V
    .locals 1

    new-instance v0, Lcom/miui/networkassistant/service/tm/TrafficSimManager$2;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager$2;-><init>(Lcom/miui/networkassistant/service/tm/TrafficSimManager;)V

    invoke-static {v0}, Lcom/miui/common/a/b/a;->aGz(Ljava/lang/Runnable;)V

    return-void
.end method

.method getCorrectedMonthTotalUsed()J
    .locals 6

    const-wide/16 v0, 0x0

    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->getMonthDataUsageUsed()J

    move-result-wide v2

    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->getCorrectedOffsetValue()J

    move-result-wide v4

    add-long/2addr v2, v4

    cmp-long v4, v2, v0

    if-gez v4, :cond_0

    :goto_0
    return-wide v0

    :cond_0
    move-wide v0, v2

    goto :goto_0
.end method

.method getCorrectedNormalAndLeisureMonthTotalUsed()[J
    .locals 12

    const-wide/16 v10, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x1

    invoke-virtual {p0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->getCorrectedNormalAndLeisureMonthTotalUsedNoAligned()[J

    move-result-object v0

    aget-wide v2, v0, v9

    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->getCorrectedOffsetValue()J

    move-result-wide v4

    add-long/2addr v2, v4

    aput-wide v2, v0, v9

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v1}, Lcom/miui/networkassistant/config/SimUserInfo;->getLeisureDataUsageCorrectedTime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mMonthStartTime:J

    cmp-long v1, v2, v4

    if-ltz v1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-gtz v1, :cond_0

    aget-wide v2, v0, v8

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v1}, Lcom/miui/networkassistant/config/SimUserInfo;->getLeisureDataUsageCorrectedValue()J

    move-result-wide v4

    add-long/2addr v2, v4

    aput-wide v2, v0, v8

    :cond_0
    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v1}, Lcom/miui/networkassistant/config/SimUserInfo;->getLeisureDataUsageTotal()J

    move-result-wide v2

    aget-wide v4, v0, v8

    cmp-long v1, v4, v2

    if-lez v1, :cond_1

    aget-wide v4, v0, v9

    aget-wide v6, v0, v8

    sub-long/2addr v6, v2

    add-long/2addr v4, v6

    aput-wide v4, v0, v9

    aput-wide v2, v0, v8

    :cond_1
    aget-wide v2, v0, v9

    cmp-long v1, v2, v10

    if-gez v1, :cond_2

    aput-wide v10, v0, v9

    :cond_2
    aget-wide v2, v0, v8

    cmp-long v1, v2, v10

    if-gez v1, :cond_3

    aput-wide v10, v0, v8

    :cond_3
    return-object v0
.end method

.method getCorrectedNormalAndLeisureMonthTotalUsedNoAligned()[J
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v0, 0x2

    new-array v0, v0, [J

    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->getNormalMonthDataUsageUsed()J

    move-result-wide v2

    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->getLeisureMonthDataUsage()J

    move-result-wide v4

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v1}, Lcom/miui/networkassistant/config/SimUserInfo;->getLeisureDataUsageTotal()J

    move-result-wide v6

    cmp-long v1, v4, v6

    if-lez v1, :cond_0

    sub-long/2addr v2, v6

    aput-wide v2, v0, v8

    aput-wide v6, v0, v9

    :goto_0
    return-object v0

    :cond_0
    sub-long/2addr v2, v4

    aput-wide v2, v0, v8

    aput-wide v4, v0, v9

    goto :goto_0
.end method

.method getCorrectedNormalMonthTotalUsed()J
    .locals 6

    const-wide/16 v0, 0x0

    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->getNormalMonthDataUsageUsed()J

    move-result-wide v2

    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->getCorrectedOffsetValue()J

    move-result-wide v4

    add-long/2addr v2, v4

    cmp-long v4, v2, v0

    if-gez v4, :cond_0

    :goto_0
    return-wide v0

    :cond_0
    move-wide v0, v2

    goto :goto_0
.end method

.method getCurrentMonthExtraPackage()J
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getDataUsageOverlayPackageTime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v2}, Lcom/miui/networkassistant/config/SimUserInfo;->getMonthStart()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/miui/networkassistant/utils/DateUtil;->isCurrentCycleMonth(JI)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getDataUsageOverlayPackage()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method getCurrentMonthTotalPackage()J
    .locals 4

    iget-boolean v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mDailyCardEnable:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mIsDataUsageOverNormalPkg:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getDailyUsedCardStopNetworkCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    int-to-long v0, v0

    iget-object v2, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v2}, Lcom/miui/networkassistant/config/SimUserInfo;->getDailyUsedCardPackage()J

    move-result-wide v2

    mul-long/2addr v0, v2

    :goto_0
    return-wide v0

    :cond_0
    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->getNormalMonthTotalPackage()J

    move-result-wide v0

    goto :goto_0
.end method

.method getDataUsageByFromTo(JJ)J
    .locals 11

    const-wide/16 v6, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mMiuiNetworkSessionStats:Lcom/miui/net/MiuiNetworkSessionStats;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mMiuiNetworkSessionStats:Lcom/miui/net/MiuiNetworkSessionStats;

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mCurrentImsi:Ljava/lang/String;

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/miui/net/MiuiNetworkSessionStats;->getNetworkMobileTotalBytes(Ljava/lang/String;JJ)J
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v2

    :try_start_1
    iget-object v8, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mDataUsageIgnoreUidListSelfLocked:Ljava/util/HashSet;

    monitor-enter v8
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mDataUsageIgnoreUidListSelfLocked:Ljava/util/HashSet;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v9

    move-wide v6, v2

    :goto_0
    :try_start_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->getDataUsageForUidByFromTo(IJJ)J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-wide v0

    sub-long/2addr v6, v0

    goto :goto_0

    :cond_0
    :try_start_4
    monitor-exit v8
    :try_end_4
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_1

    const-wide/16 v0, 0x0

    cmp-long v0, v6, v0

    if-gez v0, :cond_1

    const-wide/16 v6, 0x0

    :cond_1
    :goto_1
    return-wide v6

    :catchall_0
    move-exception v0

    :goto_2
    :try_start_5
    monitor-exit v8

    throw v0
    :try_end_5
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception v0

    move-wide v6, v2

    :goto_3
    const-string/jumbo v1, "TrafficManageService"

    const-string/jumbo v2, "get data usage failed."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_3

    :catchall_1
    move-exception v0

    move-wide v2, v6

    goto :goto_2
.end method

.method getInternalLeisureUsed(JJ)J
    .locals 15

    const-wide/16 v6, 0x0

    iget-wide v2, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mLeisureFromTime:J

    add-long v4, p1, v2

    iget-wide v2, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mLeisureToTime:J

    add-long v2, v2, p1

    iget-wide v8, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mLeisureFromTime:J

    iget-wide v10, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mLeisureToTime:J

    cmp-long v8, v8, v10

    if-lez v8, :cond_2

    move-wide/from16 v0, p1

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->getDataUsageByFromTo(JJ)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    add-long/2addr v6, v8

    const-wide/32 v8, 0x5265c00

    add-long/2addr v2, v8

    move-wide v12, v2

    move-wide v2, v6

    move-wide v6, v4

    move-wide v4, v12

    :goto_0
    cmp-long v8, v4, p3

    if-gez v8, :cond_0

    invoke-virtual {p0, v6, v7, v4, v5}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->getDataUsageByFromTo(JJ)J

    move-result-wide v8

    add-long/2addr v8, v2

    const-wide/32 v2, 0x5265c00

    add-long/2addr v6, v2

    const-wide/32 v2, 0x5265c00

    add-long/2addr v2, v4

    move-wide v4, v2

    move-wide v2, v8

    goto :goto_0

    :cond_0
    cmp-long v4, v6, p3

    if-gez v4, :cond_1

    move-wide/from16 v0, p3

    invoke-virtual {p0, v6, v7, v0, v1}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->getDataUsageByFromTo(JJ)J

    move-result-wide v4

    add-long/2addr v2, v4

    :cond_1
    return-wide v2

    :cond_2
    move-wide v12, v2

    move-wide v2, v6

    move-wide v6, v4

    move-wide v4, v12

    goto :goto_0
.end method

.method getNormalTodayDataUsageNoLeisureUsed()J
    .locals 6

    invoke-static {}, Lcom/miui/networkassistant/utils/DateUtil;->getTodayTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x5265c00

    add-long/2addr v2, v0

    iget-object v4, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v4}, Lcom/miui/networkassistant/config/SimUserInfo;->isLeisureDataUsageEffective()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->getDataUsageByFromTo(JJ)J

    move-result-wide v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->getInternalLeisureUsed(JJ)J

    move-result-wide v0

    sub-long v0, v4, v0

    :goto_0
    return-wide v0

    :cond_0
    invoke-virtual {p0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->getNormalTodayDataUsageUsed()J

    move-result-wide v0

    goto :goto_0
.end method

.method getNormalTodayDataUsageUsed()J
    .locals 4

    invoke-static {}, Lcom/miui/networkassistant/utils/DateUtil;->getTodayTimeMillis()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->getDataUsageByFromTo(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method getTodayLeisureDataUsage()J
    .locals 5

    invoke-static {}, Lcom/miui/networkassistant/utils/DateUtil;->getTodayTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x5265c00

    add-long/2addr v2, v0

    iget-object v4, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v4}, Lcom/miui/networkassistant/config/SimUserInfo;->isLeisureDataUsageEffective()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->getInternalLeisureUsed(JJ)J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method initDataUsageIgnoreAppList()V
    .locals 4

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mDataUsageIgnoreUidListSelfLocked:Ljava/util/HashSet;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->hasImsi()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mCurrentImsi:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/miui/networkassistant/config/DataUsageIgnoreAppListConfig;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/miui/networkassistant/config/DataUsageIgnoreAppListConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mIgnoreAppListConfig:Lcom/miui/networkassistant/config/DataUsageIgnoreAppListConfig;

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mIgnoreAppListConfig:Lcom/miui/networkassistant/config/DataUsageIgnoreAppListConfig;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mIgnoreAppListConfig:Lcom/miui/networkassistant/config/DataUsageIgnoreAppListConfig;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/DataUsageIgnoreAppListConfig;->getIgnoreList()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mDataUsageIgnoreUidListSelfLocked:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v3, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mContext:Landroid/content/Context;

    invoke-static {v3, v0}, Lcom/miui/networkassistant/utils/PackageUtil;->getUidByPackageName(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    iget-object v3, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mDataUsageIgnoreUidListSelfLocked:Ljava/util/HashSet;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_1
    monitor-exit v1

    return-void
.end method

.method initTrafficStatusMonitorVariable()V
    .locals 10

    const-wide/16 v8, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getMonthStart()I

    move-result v0

    invoke-static {v0}, Lcom/miui/networkassistant/utils/DateUtil;->getThisMonthBeginTimeMillis(I)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mMonthStartTime:J

    invoke-virtual {p0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->getCorrectedMonthTotalUsed()J

    move-result-wide v4

    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->getNormalMonthTotalPackage()J

    move-result-wide v6

    sub-long/2addr v4, v6

    cmp-long v0, v4, v8

    if-ltz v0, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mIsDataUsageOverNormalPkg:Z

    invoke-virtual {p0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->getCurrentMonthTotalPackage()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mDataUsageTotalPackage:J

    iget-wide v4, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mDataUsageTotalPackage:J

    cmp-long v0, v4, v8

    if-ltz v0, :cond_2

    :goto_1
    iput-boolean v1, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mIsTotalPackageSetted:Z

    iget-boolean v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mIsTotalPackageSetted:Z

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v1}, Lcom/miui/networkassistant/config/SimUserInfo;->isDataUsageOverLimitStopNetwork()Z

    move-result v1

    and-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mIsDataUsageOverLimitOn:Z

    iget-wide v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mDataUsageTotalPackage:J

    long-to-float v0, v0

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v1}, Lcom/miui/networkassistant/config/SimUserInfo;->getDataUsageWarning()F

    move-result v1

    mul-float/2addr v0, v1

    float-to-long v0, v0

    iput-wide v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mDataUsageTotalPackageWarning:J

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v1}, Lcom/miui/networkassistant/config/SimUserInfo;->getSlotNum()I

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/networkassistant/utils/MiSimUtil;->isMiSimEnable(Landroid/content/Context;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mIsMiSim:Z

    invoke-virtual {p0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->updateTrafficCorrectionTotalLimit()V

    iget-boolean v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mIsTotalPackageSetted:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->isLeisureDataUsageOverLimitWarning()Z

    move-result v0

    :goto_2
    iput-boolean v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mIsLeisureDataUsageOverLimitOn:Z

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getLeisureDataUsageTotal()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mLeisureDataUsageTotal:J

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->isLeisureDataUsageEffective()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getLeisureDataUsageFromTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mLeisureFromTime:J

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getLeisureDataUsageToTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mLeisureToTime:J

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getDailyLimitEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mIsDailyLimitEnabled:Z

    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->getDailyLimitTraffic()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mDailyLimitTraffic:J

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getDailyLimitWarningType()I

    move-result v0

    iput v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mOverDailyLimitWarningType:I

    invoke-virtual {p0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->initDataUsageIgnoreAppList()V

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-static {v0, v1, v2}, Lcom/miui/networkassistant/traffic/purchase/CooperationManager;->isTrafficPurchaseAvailable(Landroid/content/Context;Lcom/miui/networkassistant/config/SimUserInfo;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mIsTrafficPurchaseAvailable:Z

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getRoamingDailyLimitTraffic()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mRoamingDailyLimitTraffic:J

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getRoamingDailyLimitEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mIsRoamingDailyLimitEnabled:Z

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getRoamingOverLimitOptType()I

    move-result v0

    iput v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mRoamingOverLimitOptType:I

    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->showTrafficInStatusBar()V

    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->initDailyCardInfo()V

    return-void

    :cond_1
    move v0, v2

    goto/16 :goto_0

    :cond_2
    move v1, v2

    goto/16 :goto_1

    :cond_3
    move v0, v2

    goto :goto_2
.end method

.method reportSms()V
    .locals 2

    const-string/jumbo v0, "TrafficManageService"

    const-string/jumbo v1, "reportSms"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getTcSmsReportCache()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    new-instance v1, Lcom/miui/networkassistant/service/tm/TrafficSimManager$7;

    invoke-direct {v1, p0, v0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager$7;-><init>(Lcom/miui/networkassistant/service/tm/TrafficSimManager;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/miui/common/a/b/a;->aGz(Ljava/lang/Runnable;)V

    return-void
.end method

.method resetTrafficPurchaseStatus()V
    .locals 2

    const-string/jumbo v0, "TrafficManageService"

    const-string/jumbo v1, "update purchase traffic status true"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/config/SimUserInfo;->setTrafficPurchaseStatus(Z)Z

    return-void
.end method

.method saveCorrectedPkgsAndUsageValues(Lcom/miui/networkassistant/model/TrafficUsedStatus;Z)V
    .locals 1

    if-eqz p2, :cond_0

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->saveCorrectedPkgs(Lcom/miui/networkassistant/model/TrafficUsedStatus;)V

    invoke-virtual {p0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->clearAllLimitTime()V

    :cond_0
    invoke-virtual {p0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->initTrafficStatusMonitorVariable()V

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->saveCorrectedUsageValues(Lcom/miui/networkassistant/model/TrafficUsedStatus;)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->finishCorrection(Z)V

    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->notifyTrafficPackageChange()V

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mService:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-virtual {v0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->broadCastDataUsageUpdated()V

    return-void
.end method

.method public saveCorrectionResult(Lcom/miui/networkassistant/model/TrafficUsedStatus;)V
    .locals 4

    invoke-virtual {p1}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->getCorrectionType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {p1}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->toTrafficString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/config/SimUserInfo;->setTrafficTcResult(Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {p1}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->getReturnCode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/config/SimUserInfo;->setTrafficTcResultCode(I)Z

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {p1}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->getUsedTrafficB()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/miui/networkassistant/config/SimUserInfo;->saveLastTcUsed(J)Z

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {p1}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->getRemainTrafficB()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/miui/networkassistant/config/SimUserInfo;->saveLastTcRemain(J)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->getCorrectionType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {p1}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->toBillString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/config/SimUserInfo;->setBillTcResult(Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {p1}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->getReturnCode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/config/SimUserInfo;->setBillTcResultCode(I)Z

    goto :goto_0
.end method

.method saveLatestCorrectedLeisureDataUsage(J)V
    .locals 5

    invoke-virtual {p0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->getCorrectedNormalAndLeisureMonthTotalUsedNoAligned()[J

    move-result-object v0

    const/4 v1, 0x1

    aget-wide v0, v0, v1

    sub-long v0, p1, v0

    iget-object v2, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v2, v0, v1}, Lcom/miui/networkassistant/config/SimUserInfo;->saveLeisureDataUsageCorrectedValue(J)Z

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/miui/networkassistant/config/SimUserInfo;->saveLeisureDataUsageCorrectedTime(J)Z

    return-void
.end method

.method saveLatestCorrectedNormalDataUsage(J)V
    .locals 5

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->isDailyUsedCardEffective()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->getNormalMonthTotalPackage()J

    move-result-wide v0

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    sub-long v0, p1, v0

    iget-wide v2, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mDailyCardPackage:J

    div-long/2addr v0, v2

    long-to-int v0, v0

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v1, v0}, Lcom/miui/networkassistant/config/SimUserInfo;->setDailyUsedCardStopNetworkCount(I)Z

    invoke-virtual {p0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->getNormalTodayDataUsageUsed()J

    move-result-wide v0

    :goto_0
    sub-long v0, p1, v0

    iget-object v2, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v2, v0, v1}, Lcom/miui/networkassistant/config/SimUserInfo;->saveCorrectedOffsetValue(J)Z

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/miui/networkassistant/config/SimUserInfo;->saveDataUsageCorrectedTime(J)Z

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->getNormalMonthDataUsageUsed()J

    move-result-wide v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->isLeisureDataUsageEffective()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->getCorrectedNormalAndLeisureMonthTotalUsedNoAligned()[J

    move-result-object v0

    const/4 v1, 0x0

    aget-wide v0, v0, v1

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->getNormalMonthDataUsageUsed()J

    move-result-wide v0

    goto :goto_0
.end method

.method public startCorrection(ZZI)Z
    .locals 5

    const/4 v4, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mTrafficCorrection:Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection;

    invoke-interface {v0}, Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->isSupportCorrection()Z

    move-result v0

    if-nez v0, :cond_1

    return v4

    :cond_1
    iput-boolean v1, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mIsSimLocationError:Z

    iput-boolean v1, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mIsTcDiagnostic:Z

    if-nez p1, :cond_2

    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->showCorrectionStartedToast()V

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/miui/networkassistant/config/SimUserInfo;->saveWebCorrectionStatusRefreshTime(J)Z

    :cond_2
    new-instance v0, Lcom/miui/networkassistant/service/tm/TrafficSimManager$3;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/miui/networkassistant/service/tm/TrafficSimManager$3;-><init>(Lcom/miui/networkassistant/service/tm/TrafficSimManager;ZZI)V

    invoke-static {v0}, Lcom/miui/common/a/b/a;->aGz(Ljava/lang/Runnable;)V

    return v4
.end method

.method startCorrectionDiagnostic()Z
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mIsTcDiagnostic:Z

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mTrafficCorrection:Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection;->startCorrection(ZLjava/util/Map;)Z

    move-result v0

    return v0
.end method

.method updateAutoCorrectionConfig()V
    .locals 4

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->isSimInserted()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->hasImsi()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->isOversea()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-static {}, Lmiui/util/Log;->getFullLogger()Lmiui/util/Log$Facade;

    move-result-object v0

    const-string/jumbo v1, "TrafficManageService"

    iget-object v2, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v2}, Lcom/miui/networkassistant/config/SimUserInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmiui/util/Log$Facade;->info(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mUpdateAutoCorrectionLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->isDataRoaming()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/miui/networkassistant/config/SimUserInfo;->toggleDataUsageAutoCorrection(Z)Z

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/miui/networkassistant/config/SimUserInfo;->setDataRoamingStopUpdateTime(J)Z

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/miui/networkassistant/config/SimUserInfo;->setDataRoamingStopChanged(Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_0
    monitor-exit v1

    invoke-static {}, Lmiui/util/Log;->getFullLogger()Lmiui/util/Log$Facade;

    move-result-object v0

    const-string/jumbo v1, "TrafficManageService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Correction : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v3}, Lcom/miui/networkassistant/config/SimUserInfo;->isCorrectionEffective()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmiui/util/Log$Facade;->info(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getDataRoamingStopChanged()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/miui/networkassistant/config/SimUserInfo;->setDataRoamingStopUpdateTime(J)Z

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/miui/networkassistant/config/SimUserInfo;->toggleDataUsageAutoCorrection(Z)Z

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/miui/networkassistant/config/SimUserInfo;->setDataRoamingStopChanged(Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method updateRoamingBeginTime()V
    .locals 4

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->isSimInserted()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->hasImsi()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->isDataRoaming()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getRoamingNetworkState()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    const-string/jumbo v0, "TrafficManageService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateRoamingBeginTime : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/miui/networkassistant/config/SimUserInfo;->setRoamingBeginTime(J)Z

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/config/SimUserInfo;->setRoamingNetworkState(Z)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/miui/networkassistant/config/SimUserInfo;->setRoamingBeginTime(J)Z

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/config/SimUserInfo;->setRoamingNetworkState(Z)Z

    goto :goto_0
.end method

.method updateTrafficCorrectionEngine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->isOperatorSetted()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    const-string/jumbo v0, "TrafficManageService"

    const-string/jumbo v1, "diagnostic update correction engine"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mTrafficCorrection:Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection;

    invoke-interface {v0, p1, p2, p3}, Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection;->updateSMSTemplate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method updateTrafficCorrectionTotalLimit()V
    .locals 4

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mTrafficCorrection:Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection;

    invoke-virtual {p0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->getCurrentMonthTotalPackage()J

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection;->setTotalLimit(J)V

    return-void
.end method
