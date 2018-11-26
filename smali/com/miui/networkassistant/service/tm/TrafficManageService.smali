.class public Lcom/miui/networkassistant/service/tm/TrafficManageService;
.super Landroid/app/Service;
.source ""


# static fields
.field private static final CMCC_NET_AUTO_CORRECTION:I = 0x3

.field private static final DAILY_AUTO_CORRECTION:I = 0x0

.field private static final MAX_RETRY_TIME:I = 0xa

.field private static final MAX_TRAFFIC_RATE:I = 0x7a120

.field static final MSG_DEVICE_PROVISIONED_CHANGED:I = 0x20

.field static final MSG_FORCE_CHECK_DAILY_LIMIT_STATUS:I = 0x40

.field static final MSG_FORCE_CHECK_LOCK_SCREEN_STATUS:I = 0x42

.field static final MSG_FORCE_CHECK_ROAMING_DAILY_LIMIT_STATUS:I = 0x41

.field static final MSG_FORCE_CHECK_TETHERING_SETTING_STATUS:I = 0x42

.field static final MSG_FORCE_CHECK_TRAFFIC_STATUS:I = 0x2

.field static final MSG_INIT_SIM_STATE:I = 0x50

.field private static final MSG_TRACK_USER_DATA:I = 0x30

.field static final MSG_TRAFFIC_AUTO_CORRECTION_LAUNCH:I = 0x13

.field static final MSG_TRAFFIC_CORRECTION_FAILED:I = 0x12

.field static final MSG_TRAFFIC_CORRECTION_SAVE_PKG:I = 0x14

.field static final MSG_TRAFFIC_CORRECTION_STARTED:I = 0x10

.field static final MSG_TRAFFIC_CORRECTION_SUCCEED:I = 0x11

.field private static final MSG_UPDATE_TC_ENGINE:I = 0x31

.field static final MSG_UPDATE_TRAFFIC_STATS_DAILY:I = 0x15

.field static final MSG_UPDATE_TRAFFIC_STATUS_MONITOR:I = 0x1

.field static final MSG_UPLOAD_DATA_USAGE_DAILY:I = 0x16

.field static final MSG_WIFI_TO_MOBILE:I = 0x60

.field static final MSG_WIFI_TO_MOBILE_DELAY:I = 0x61

.field private static final NET_AUTO_CORRECTION:I = 0x1

.field private static final PURCHASE_SUCCESS_AUTO_CORRECTION:I = 0x2

.field private static final TAG:Ljava/lang/String; = "TrafficManageService"

.field private static final WIFI_TO_MOBILE_DELAY:I = 0x5

.field private static final WIFI_TO_MOBILE_RANGE:I = 0x4


# instance fields
.field private mActiveSlotNum:I

.field private mAnalyticsManager:Lcom/miui/networkassistant/service/tm/TrackAnalyticsManager;

.field private mAppMonitor:[Lcom/miui/networkassistant/service/tm/AppMonitor;

.field private mAutoCorrectionReceiver:Landroid/content/BroadcastReceiver;

.field private final mBackgroundHandler:Landroid/os/Handler;

.field private mBackgroundHandlerCallback:Landroid/os/Handler$Callback;

.field private mCommonConfig:Lcom/miui/networkassistant/config/CommonConfig;

.field private mCurrentUserIndex:I

.field private mDeviceProvisionedObserver:Landroid/database/ContentObserver;

.field private mExtraNetworkReceiver:Landroid/content/BroadcastReceiver;

.field mHandler:Landroid/os/Handler;

.field private final mHandlerThread:Landroid/os/HandlerThread;

.field private mIsDeviceProvisioned:Z

.field private mLockScreenManager:Lcom/miui/networkassistant/service/tm/LockScreenManager;

.field private mLockScreenReceiver:Landroid/content/BroadcastReceiver;

.field private final mMiSimCloudDataObserver:Landroid/database/ContentObserver;

.field private final mMobileDataEnableObserver:Landroid/database/ContentObserver;

.field private mMobileDataPolicy:I

.field private final mMobileDataPolicyObserver:Landroid/database/ContentObserver;

.field private mMonthReportTrafficManager:Lcom/miui/networkassistant/service/tm/DataUsageReportManager;

.field private mNetworkCheckStateManager:Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager;

.field private mNetworkConnectivityReceiver:Landroid/content/BroadcastReceiver;

.field private mPackageReceiver:Landroid/content/BroadcastReceiver;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPreByte:J

.field private mPurchaseSmsManager:Lcom/miui/networkassistant/service/tm/PurchaseSmsManager;

.field private mPurchaseSuccessReceiver:Landroid/content/BroadcastReceiver;

.field private mRefreshDataUsageDailyReceiver:Landroid/content/BroadcastReceiver;

.field private mRetryTime:I

.field private mScNetworkStatusReceiver:Landroid/content/BroadcastReceiver;

.field private mSimCardHelper:Lcom/miui/networkassistant/dual/SimCardHelper;

.field private mSimInfoChangeListener:Lcom/miui/networkassistant/dual/DualSimInfoManager$ISimInfoChangeListener;

.field private mSimStateDataSlotReceiver:Landroid/content/BroadcastReceiver;

.field private mSimStateReceiver:Landroid/content/BroadcastReceiver;

.field private mSmsReceiver:Landroid/content/BroadcastReceiver;

.field private mTetherStatsManager:Lcom/miui/networkassistant/service/tm/TetherStatsManager;

.field private mTrafficCornBinders:[Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficCornBinder;

.field private mTrafficManageBinder:Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficManageBinder;

.field private mTrafficManagers:[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

.field private mTrafficStatsReceiver:Landroid/content/BroadcastReceiver;

.field private mUserSwitchReceiver:Landroid/content/BroadcastReceiver;

.field private mWifiApStateReceiver:Landroid/content/BroadcastReceiver;

.field private mWifiNetworkStatusReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static synthetic -get0(Lcom/miui/networkassistant/service/tm/TrafficManageService;)I
    .locals 1

    iget v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mActiveSlotNum:I

    return v0
.end method

.method static synthetic -get1(Lcom/miui/networkassistant/service/tm/TrafficManageService;)Lcom/miui/networkassistant/service/tm/TrackAnalyticsManager;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mAnalyticsManager:Lcom/miui/networkassistant/service/tm/TrackAnalyticsManager;

    return-object v0
.end method

.method static synthetic -get10(Lcom/miui/networkassistant/service/tm/TrafficManageService;)Lcom/miui/networkassistant/service/tm/PurchaseSmsManager;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mPurchaseSmsManager:Lcom/miui/networkassistant/service/tm/PurchaseSmsManager;

    return-object v0
.end method

.method static synthetic -get11(Lcom/miui/networkassistant/service/tm/TrafficManageService;)Lcom/miui/networkassistant/dual/SimCardHelper;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mSimCardHelper:Lcom/miui/networkassistant/dual/SimCardHelper;

    return-object v0
.end method

.method static synthetic -get12(Lcom/miui/networkassistant/service/tm/TrafficManageService;)Lcom/miui/networkassistant/service/tm/TetherStatsManager;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mTetherStatsManager:Lcom/miui/networkassistant/service/tm/TetherStatsManager;

    return-object v0
.end method

.method static synthetic -get13(Lcom/miui/networkassistant/service/tm/TrafficManageService;)[Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficCornBinder;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mTrafficCornBinders:[Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficCornBinder;

    return-object v0
.end method

.method static synthetic -get14(Lcom/miui/networkassistant/service/tm/TrafficManageService;)[Lcom/miui/networkassistant/service/tm/TrafficSimManager;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mTrafficManagers:[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    return-object v0
.end method

.method static synthetic -get2(Lcom/miui/networkassistant/service/tm/TrafficManageService;)[Lcom/miui/networkassistant/service/tm/AppMonitor;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mAppMonitor:[Lcom/miui/networkassistant/service/tm/AppMonitor;

    return-object v0
.end method

.method static synthetic -get3(Lcom/miui/networkassistant/service/tm/TrafficManageService;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mBackgroundHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get4(Lcom/miui/networkassistant/service/tm/TrafficManageService;)Lcom/miui/networkassistant/config/CommonConfig;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mCommonConfig:Lcom/miui/networkassistant/config/CommonConfig;

    return-object v0
.end method

.method static synthetic -get5(Lcom/miui/networkassistant/service/tm/TrafficManageService;)I
    .locals 1

    iget v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mCurrentUserIndex:I

    return v0
.end method

.method static synthetic -get6(Lcom/miui/networkassistant/service/tm/TrafficManageService;)Lcom/miui/networkassistant/service/tm/LockScreenManager;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mLockScreenManager:Lcom/miui/networkassistant/service/tm/LockScreenManager;

    return-object v0
.end method

.method static synthetic -get7(Lcom/miui/networkassistant/service/tm/TrafficManageService;)Lcom/miui/networkassistant/service/tm/DataUsageReportManager;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mMonthReportTrafficManager:Lcom/miui/networkassistant/service/tm/DataUsageReportManager;

    return-object v0
.end method

.method static synthetic -get8(Lcom/miui/networkassistant/service/tm/TrafficManageService;)Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mNetworkCheckStateManager:Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager;

    return-object v0
.end method

.method static synthetic -get9(Lcom/miui/networkassistant/service/tm/TrafficManageService;)J
    .locals 2

    iget-wide v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mPreByte:J

    return-wide v0
.end method

.method static synthetic -set0(Lcom/miui/networkassistant/service/tm/TrafficManageService;I)I
    .locals 0

    iput p1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mCurrentUserIndex:I

    return p1
.end method

.method static synthetic -set1(Lcom/miui/networkassistant/service/tm/TrafficManageService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mIsDeviceProvisioned:Z

    return p1
.end method

.method static synthetic -set2(Lcom/miui/networkassistant/service/tm/TrafficManageService;I)I
    .locals 0

    iput p1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mMobileDataPolicy:I

    return p1
.end method

.method static synthetic -set3(Lcom/miui/networkassistant/service/tm/TrafficManageService;J)J
    .locals 1

    iput-wide p1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mPreByte:J

    return-wide p1
.end method

.method static synthetic -wrap0(Lcom/miui/networkassistant/service/tm/TrafficManageService;IJ)Z
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->checkSmsShouldAutoCorrection(IJ)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/miui/networkassistant/service/tm/TrafficManageService;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->cancelNotificationWhenSimChanged()V

    return-void
.end method

.method static synthetic -wrap10(Lcom/miui/networkassistant/service/tm/TrafficManageService;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->postTrackUserDataDaily()V

    return-void
.end method

.method static synthetic -wrap11(Lcom/miui/networkassistant/service/tm/TrafficManageService;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->postUpdateTrafficCorrectionEngine()V

    return-void
.end method

.method static synthetic -wrap12(Lcom/miui/networkassistant/service/tm/TrafficManageService;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->postWifiToMobile()V

    return-void
.end method

.method static synthetic -wrap13(Lcom/miui/networkassistant/service/tm/TrafficManageService;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->startAutoCorrection()V

    return-void
.end method

.method static synthetic -wrap14(Lcom/miui/networkassistant/service/tm/TrafficManageService;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->startCmccAutoCorrection()V

    return-void
.end method

.method static synthetic -wrap15(Lcom/miui/networkassistant/service/tm/TrafficManageService;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->updateActiveSlotNum()V

    return-void
.end method

.method static synthetic -wrap16(Lcom/miui/networkassistant/service/tm/TrafficManageService;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->updateNormalTotalPackageSetted(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic -wrap17(Lcom/miui/networkassistant/service/tm/TrafficManageService;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->updateRoamingStateChanged()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/miui/networkassistant/service/tm/TrafficManageService;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->checkAllTrafficCorrectionEngineUpdate()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/miui/networkassistant/service/tm/TrafficManageService;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->checkAutoCorrectionConfig()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/miui/networkassistant/service/tm/TrafficManageService;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->checkCachedTcSmsReport()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/miui/networkassistant/service/tm/TrafficManageService;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->checkMiMobileConfig()V

    return-void
.end method

.method static synthetic -wrap6(Lcom/miui/networkassistant/service/tm/TrafficManageService;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->handleAutoCorrectionMsg(II)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/miui/networkassistant/service/tm/TrafficManageService;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->initInternationalRoaming()V

    return-void
.end method

.method static synthetic -wrap8(Lcom/miui/networkassistant/service/tm/TrafficManageService;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->initSim()V

    return-void
.end method

.method static synthetic -wrap9(Lcom/miui/networkassistant/service/tm/TrafficManageService;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->postInitSimMsgDelayed()V

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    iput v3, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mActiveSlotNum:I

    iput v3, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mRetryTime:I

    new-instance v0, Lcom/miui/networkassistant/service/tm/TrafficManageService$1;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/service/tm/TrafficManageService$1;-><init>(Lcom/miui/networkassistant/service/tm/TrafficManageService;)V

    iput-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mBackgroundHandlerCallback:Landroid/os/Handler$Callback;

    new-instance v0, Lcom/miui/networkassistant/service/tm/TrafficManageService$2;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/service/tm/TrafficManageService$2;-><init>(Lcom/miui/networkassistant/service/tm/TrafficManageService;)V

    iput-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/miui/networkassistant/service/tm/TrafficManageService$3;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/service/tm/TrafficManageService$3;-><init>(Lcom/miui/networkassistant/service/tm/TrafficManageService;)V

    iput-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mSmsReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/miui/networkassistant/service/tm/TrafficManageService$4;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/service/tm/TrafficManageService$4;-><init>(Lcom/miui/networkassistant/service/tm/TrafficManageService;)V

    iput-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mPurchaseSuccessReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/miui/networkassistant/service/tm/TrafficManageService$5;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/service/tm/TrafficManageService$5;-><init>(Lcom/miui/networkassistant/service/tm/TrafficManageService;)V

    iput-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mAutoCorrectionReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/miui/networkassistant/service/tm/TrafficManageService$6;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/service/tm/TrafficManageService$6;-><init>(Lcom/miui/networkassistant/service/tm/TrafficManageService;)V

    iput-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mRefreshDataUsageDailyReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/miui/networkassistant/service/tm/TrafficManageService$7;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/service/tm/TrafficManageService$7;-><init>(Lcom/miui/networkassistant/service/tm/TrafficManageService;)V

    iput-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mTrafficStatsReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/miui/networkassistant/service/tm/TrafficManageService$8;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/service/tm/TrafficManageService$8;-><init>(Lcom/miui/networkassistant/service/tm/TrafficManageService;)V

    iput-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mSimStateReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/miui/networkassistant/service/tm/TrafficManageService$9;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/service/tm/TrafficManageService$9;-><init>(Lcom/miui/networkassistant/service/tm/TrafficManageService;)V

    iput-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mSimInfoChangeListener:Lcom/miui/networkassistant/dual/DualSimInfoManager$ISimInfoChangeListener;

    new-instance v0, Lcom/miui/networkassistant/service/tm/TrafficManageService$10;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/service/tm/TrafficManageService$10;-><init>(Lcom/miui/networkassistant/service/tm/TrafficManageService;)V

    iput-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mSimStateDataSlotReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/miui/networkassistant/service/tm/TrafficManageService$11;

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/miui/networkassistant/service/tm/TrafficManageService$11;-><init>(Lcom/miui/networkassistant/service/tm/TrafficManageService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mDeviceProvisionedObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/miui/networkassistant/service/tm/TrafficManageService$12;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/service/tm/TrafficManageService$12;-><init>(Lcom/miui/networkassistant/service/tm/TrafficManageService;)V

    iput-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mUserSwitchReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/miui/networkassistant/service/tm/TrafficManageService$13;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/service/tm/TrafficManageService$13;-><init>(Lcom/miui/networkassistant/service/tm/TrafficManageService;)V

    iput-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mNetworkConnectivityReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/miui/networkassistant/service/tm/TrafficManageService$14;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/service/tm/TrafficManageService$14;-><init>(Lcom/miui/networkassistant/service/tm/TrafficManageService;)V

    iput-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mWifiNetworkStatusReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/miui/networkassistant/service/tm/TrafficManageService$15;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/service/tm/TrafficManageService$15;-><init>(Lcom/miui/networkassistant/service/tm/TrafficManageService;)V

    iput-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/miui/networkassistant/service/tm/TrafficManageService$16;

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/miui/networkassistant/service/tm/TrafficManageService$16;-><init>(Lcom/miui/networkassistant/service/tm/TrafficManageService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mMobileDataEnableObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/miui/networkassistant/service/tm/TrafficManageService$17;

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/miui/networkassistant/service/tm/TrafficManageService$17;-><init>(Lcom/miui/networkassistant/service/tm/TrafficManageService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mMobileDataPolicyObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/miui/networkassistant/service/tm/TrafficManageService$18;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/service/tm/TrafficManageService$18;-><init>(Lcom/miui/networkassistant/service/tm/TrafficManageService;)V

    iput-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mLockScreenReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/miui/networkassistant/service/tm/TrafficManageService$19;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/service/tm/TrafficManageService$19;-><init>(Lcom/miui/networkassistant/service/tm/TrafficManageService;)V

    iput-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mExtraNetworkReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/miui/networkassistant/service/tm/TrafficManageService$20;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/service/tm/TrafficManageService$20;-><init>(Lcom/miui/networkassistant/service/tm/TrafficManageService;)V

    iput-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mScNetworkStatusReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/miui/networkassistant/service/tm/TrafficManageService$21;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/service/tm/TrafficManageService$21;-><init>(Lcom/miui/networkassistant/service/tm/TrafficManageService;)V

    iput-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    new-instance v0, Lcom/miui/networkassistant/service/tm/TrafficManageService$22;

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/miui/networkassistant/service/tm/TrafficManageService$22;-><init>(Lcom/miui/networkassistant/service/tm/TrafficManageService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mMiSimCloudDataObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/miui/networkassistant/service/tm/TrafficManageService$23;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/service/tm/TrafficManageService$23;-><init>(Lcom/miui/networkassistant/service/tm/TrafficManageService;)V

    iput-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mWifiApStateReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "TrafficManageService"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mHandlerThread:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mBackgroundHandlerCallback:Landroid/os/Handler$Callback;

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mBackgroundHandler:Landroid/os/Handler;

    new-array v0, v4, [Lcom/miui/networkassistant/service/tm/AppMonitor;

    iput-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mAppMonitor:[Lcom/miui/networkassistant/service/tm/AppMonitor;

    new-array v0, v4, [Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    iput-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mTrafficManagers:[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    new-array v0, v4, [Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficCornBinder;

    iput-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mTrafficCornBinders:[Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficCornBinder;

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mTrafficCornBinders:[Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficCornBinder;

    new-instance v1, Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficCornBinder;

    invoke-direct {v1, p0, v5}, Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficCornBinder;-><init>(Lcom/miui/networkassistant/service/tm/TrafficManageService;Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficCornBinder;)V

    aput-object v1, v0, v3

    sget-boolean v0, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_DUAL_CARD:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mTrafficCornBinders:[Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficCornBinder;

    new-instance v1, Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficCornBinder;

    invoke-direct {v1, p0, v5}, Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficCornBinder;-><init>(Lcom/miui/networkassistant/service/tm/TrafficManageService;Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficCornBinder;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    :cond_0
    return-void
.end method

.method private cancelNotificationWhenSimChanged()V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mSimCardHelper:Lcom/miui/networkassistant/dual/SimCardHelper;

    invoke-virtual {v0}, Lcom/miui/networkassistant/dual/SimCardHelper;->isSimInserted()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/networkassistant/utils/NotificationUtil;->cancelNormalTotalPackageNotSetted(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/networkassistant/utils/NotificationUtil;->cancelSimLocationErrorNotify(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/networkassistant/utils/NotificationUtil;->cancelTcSmsReceivedNotify(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/networkassistant/utils/NotificationUtil;->cancelTcSmsTimeOutOrFailureNotify(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/networkassistant/utils/NotificationUtil;->cancelAllLowPriorityNotify(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->cancelNotificationWhenSlotChanged()V

    :cond_0
    return-void
.end method

.method private cancelNotificationWhenSlotChanged()V
    .locals 1

    invoke-virtual {p0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/networkassistant/utils/NotificationUtil;->cancelDataUsageOverLimit(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/networkassistant/utils/NotificationUtil;->cancelNormalDataUsageWarning(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/networkassistant/utils/NotificationUtil;->cancelDailyLimitWarning(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/networkassistant/utils/NotificationUtil;->cancelRoamingDailyLimitWarning(Landroid/content/Context;)V

    return-void
.end method

.method private checkAllTrafficCorrectionEngineUpdate()V
    .locals 2

    invoke-virtual {p0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/common/network/f;->aLZ(Landroid/content/Context;)Lcom/miui/common/network/NetworkUtils$NetworkState;

    move-result-object v0

    sget-object v1, Lcom/miui/common/network/NetworkUtils$NetworkState;->aBS:Lcom/miui/common/network/NetworkUtils$NetworkState;

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/miui/networkassistant/service/tm/TrafficManageService$24;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/service/tm/TrafficManageService$24;-><init>(Lcom/miui/networkassistant/service/tm/TrafficManageService;)V

    invoke-static {v0}, Lcom/miui/common/a/b/a;->aGz(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private checkAutoCorrectionConfig()V
    .locals 2

    const-string/jumbo v0, "TrafficManageService"

    const-string/jumbo v1, "checkAutoCorrectionConfig"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mTrafficManagers:[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->updateAutoCorrectionConfig()V

    sget-boolean v0, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_DUAL_CARD:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mTrafficManagers:[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->updateAutoCorrectionConfig()V

    :cond_0
    return-void
.end method

.method private checkCachedTcSmsReport()V
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mTrafficManagers:[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->reportSms()V

    sget-boolean v0, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_DUAL_CARD:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mTrafficManagers:[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->reportSms()V

    :cond_0
    return-void
.end method

.method private checkMiMobileConfig()V
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mTrafficManagers:[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->checkMiMobileOperatorConfig()V

    sget-boolean v0, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_DUAL_CARD:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mTrafficManagers:[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->checkMiMobileOperatorConfig()V

    :cond_0
    return-void
.end method

.method private checkSmsShouldAutoCorrection(IJ)Z
    .locals 4

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mTrafficManagers:[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    const-string/jumbo v1, "TrafficManageService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "check sim auto correction: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getDataUsageAutoCorrectedTime()J

    move-result-wide v2

    invoke-direct {p0, v2, v3, p2, p3}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->checkTimeEffective(JJ)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getDataUsageCorrectedTime()J

    move-result-wide v2

    invoke-direct {p0, v2, v3, p2, p3}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->checkTimeEffective(JJ)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->isCorrectionEffective()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->isDataUsageAutoCorrectionEffective()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getDataRoamingStopUpdateTime()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p2, p3}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->checkTimeEffective(JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/miui/networkassistant/traffic/correction/WebCorrectionManager;->getInstance(Landroid/content/Context;)Lcom/miui/networkassistant/traffic/correction/WebCorrectionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mTrafficManagers:[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    aget-object v1, v1, p1

    iget-object v1, v1, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v1}, Lcom/miui/networkassistant/config/SimUserInfo;->getImsi()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/traffic/correction/WebCorrectionManager;->isCmccWebCorrectSupported(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkTimeEffective(JJ)Z
    .locals 7

    const/4 v0, 0x1

    const-string/jumbo v1, "TrafficManageService"

    const-string/jumbo v2, "checkTimeEffective\uff0cstartTime\uff1a%s, endTime : %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    cmp-long v1, p1, p3

    if-ltz v1, :cond_0

    invoke-static {p1, p2, p3, p4, v0}, Lcom/miui/networkassistant/utils/DateUtil;->isLargerOffsetDay(JJI)Z

    move-result v0

    :cond_0
    return v0
.end method

.method private checkWebShouldCorrection(IJ)Z
    .locals 6

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mTrafficManagers:[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    aget-object v0, v0, p1

    iget-object v1, v0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v1}, Lcom/miui/networkassistant/config/SimUserInfo;->getShouldWebCorrection()J

    move-result-wide v2

    invoke-direct {p0, v2, v3, p2, p3}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->checkTimeEffective(JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Lcom/miui/networkassistant/config/SimUserInfo;->isCorrectionEffective()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Lcom/miui/networkassistant/config/SimUserInfo;->isDataUsageAutoCorrectionEffective()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Lcom/miui/networkassistant/config/SimUserInfo;->getDataUsageCorrectedTime()J

    move-result-wide v2

    invoke-direct {p0, v2, v3, p2, p3}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->checkTimeEffective(JJ)Z

    move-result v0

    :goto_0
    invoke-static {}, Lcom/miui/networkassistant/utils/DateUtil;->getTodayTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x5265c00

    add-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Lcom/miui/networkassistant/config/SimUserInfo;->setShouldWebCorrection(J)Z

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private createDataUsageAutoCorrectionIntent()Landroid/app/PendingIntent;
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "com.miui.action.DATA_USAGE_AUTO_CORRECTION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p0, v2, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private createRefreshDataUsageDailyIntent()Landroid/app/PendingIntent;
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "com.miui.action.REFRESH_DATA_USAGE_DAILY"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p0, v2, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private handleAutoCorrectionMsg(II)V
    .locals 3

    const/4 v2, 0x7

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mTrafficManagers:[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    packed-switch p2, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0, p1, v2}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->startAutoCorrectionChecked(II)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getOperator()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/networkassistant/utils/TelephonyUtil;->isSupportSmsCorrection(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/common/network/f;->aLT(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, v1}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->startAutoCorrectionChecked(II)V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, p1, v1}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->startAutoCorrectionChecked(II)V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0, p1, v2}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->startAutoCorrectionChecked(II)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private initFloatNotificationEnable()V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mCommonConfig:Lcom/miui/networkassistant/config/CommonConfig;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/CommonConfig;->isFloatNotificationEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Lcom/miui/a/a/a;->btl(Landroid/content/Context;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mCommonConfig:Lcom/miui/networkassistant/config/CommonConfig;

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/config/CommonConfig;->setFloatNotificationEnabled(Z)Z

    :cond_0
    return-void
.end method

.method private initInternationalRoaming()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mTrafficManagers:[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    iget v1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mActiveSlotNum:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mTrafficManagers:[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    iget v1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mActiveSlotNum:I

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->isSimInserted()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->hasImsi()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/networkassistant/utils/TelephonyUtil;->getDataRoamingEnabled(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mActiveSlotNum:I

    invoke-static {v1, v2}, Lcom/miui/networkassistant/utils/TelephonyUtil;->isNetworkRoaming(Landroid/content/Context;I)Z

    move-result v1

    if-nez v0, :cond_0

    if-eqz v1, :cond_0

    const-string/jumbo v0, "TrafficManageService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mina roaming active slot num :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mActiveSlotNum:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/networkassistant/utils/NotificationUtil;->sendOpenDataRoamingNotify(Landroid/content/Context;)V

    invoke-static {p0, v3}, Lcom/miui/networkassistant/utils/TelephonyUtil;->setMobileDataState(Landroid/content/Context;Z)V

    invoke-virtual {p0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "mobile_policy"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    return-void
.end method

.method private initLockScreenMonitor()V
    .locals 2

    new-instance v0, Lcom/miui/networkassistant/service/tm/LockScreenManager;

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mTrafficManagers:[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    invoke-direct {v0, p0, v1}, Lcom/miui/networkassistant/service/tm/LockScreenManager;-><init>(Lcom/miui/networkassistant/service/tm/TrafficManageService;[Lcom/miui/networkassistant/service/tm/TrafficSimManager;)V

    iput-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mLockScreenManager:Lcom/miui/networkassistant/service/tm/LockScreenManager;

    return-void
.end method

.method private initMobileDataPolicyObserver()V
    .locals 3

    invoke-virtual {p0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "mobile_policy"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mMobileDataPolicy:I

    return-void
.end method

.method private initMonthReport()V
    .locals 4

    new-instance v0, Lcom/miui/networkassistant/service/tm/DataUsageReportManager;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/service/tm/DataUsageReportManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mMonthReportTrafficManager:Lcom/miui/networkassistant/service/tm/DataUsageReportManager;

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mBackgroundHandler:Landroid/os/Handler;

    const/16 v1, 0x16

    const-wide/32 v2, 0x493e0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private initNetworkBackgroundRestrict()V
    .locals 1

    new-instance v0, Lcom/miui/networkassistant/service/tm/TrafficManageService$25;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/service/tm/TrafficManageService$25;-><init>(Lcom/miui/networkassistant/service/tm/TrafficManageService;)V

    invoke-static {v0}, Lcom/miui/common/a/b/a;->aGz(Ljava/lang/Runnable;)V

    return-void
.end method

.method private initNetworkStatsConfig()V
    .locals 4

    const-wide/32 v2, 0x36ee80

    invoke-virtual {p0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "netstats_uid_bucket_duration"

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Global;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    invoke-virtual {p0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "netstats_uid_tag_bucket_duration"

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Global;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    return-void
.end method

.method private initRefreshDataUsageDaily()V
    .locals 7

    invoke-static {}, Lcom/miui/networkassistant/utils/DateUtil;->getTodayTimeMillis()J

    move-result-wide v2

    const-string/jumbo v0, "alarm"

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->createRefreshDataUsageDailyIntent()Landroid/app/PendingIntent;

    move-result-object v6

    const/4 v1, 0x1

    const-wide/32 v4, 0x5265c00

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    const-string/jumbo v0, "TrafficManageService"

    const-string/jumbo v1, "mina refresh data usage setted"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private initSim()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string/jumbo v0, "TrafficManageService"

    const-string/jumbo v1, "initSim"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mSimCardHelper:Lcom/miui/networkassistant/dual/SimCardHelper;

    invoke-virtual {v0}, Lcom/miui/networkassistant/dual/SimCardHelper;->updateSimState()Z

    move-result v0

    sget-boolean v1, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_DUAL_CARD:Z

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->updateActiveSlotNum()V

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mTrafficManagers:[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    iget-object v2, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mSimCardHelper:Lcom/miui/networkassistant/dual/SimCardHelper;

    invoke-virtual {v2}, Lcom/miui/networkassistant/dual/SimCardHelper;->getSim2Imsi()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->getInstance(Lcom/miui/networkassistant/service/tm/TrafficManageService;Ljava/lang/String;)Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    move-result-object v2

    aput-object v2, v1, v4

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mTrafficCornBinders:[Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficCornBinder;

    aget-object v1, v1, v4

    iget-object v2, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mTrafficManagers:[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    aget-object v2, v2, v4

    iget-object v2, v2, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mTrafficCorrection:Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection;

    invoke-virtual {v1, v2}, Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficCornBinder;->setTrafficCorrection(Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection;)V

    :cond_0
    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mTrafficManagers:[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    iget-object v2, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mSimCardHelper:Lcom/miui/networkassistant/dual/SimCardHelper;

    invoke-virtual {v2}, Lcom/miui/networkassistant/dual/SimCardHelper;->getSim1Imsi()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->getInstance(Lcom/miui/networkassistant/service/tm/TrafficManageService;Ljava/lang/String;)Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    move-result-object v2

    aput-object v2, v1, v3

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mTrafficCornBinders:[Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficCornBinder;

    aget-object v1, v1, v3

    iget-object v2, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mTrafficManagers:[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    aget-object v2, v2, v3

    iget-object v2, v2, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mTrafficCorrection:Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection;

    invoke-virtual {v1, v2}, Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficCornBinder;->setTrafficCorrection(Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection;)V

    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->checkMiMobileConfig()V

    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->checkAutoCorrectionConfig()V

    invoke-virtual {p0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->initDataUsageAutoCorrection()V

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->retryInitSim()V

    :cond_1
    return-void
.end method

.method private initTrackAnalyticsManager()V
    .locals 3

    new-instance v0, Lcom/miui/networkassistant/service/tm/TrackAnalyticsManager;

    invoke-virtual {p0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mTrafficManagers:[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    invoke-direct {v0, v1, v2}, Lcom/miui/networkassistant/service/tm/TrackAnalyticsManager;-><init>(Landroid/content/Context;[Lcom/miui/networkassistant/service/tm/TrafficSimManager;)V

    iput-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mAnalyticsManager:Lcom/miui/networkassistant/service/tm/TrackAnalyticsManager;

    return-void
.end method

.method private postInitSimMsgDelayed()V
    .locals 5

    const/16 v4, 0x50

    const-string/jumbo v0, "TrafficManageService"

    const-string/jumbo v1, "postInitSimMsgDelayed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private postTrackUserDataDaily()V
    .locals 4

    const/16 v1, 0x30

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mBackgroundHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mBackgroundHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mBackgroundHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private postUpdateTrafficCorrectionEngine()V
    .locals 4

    const/16 v1, 0x31

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mBackgroundHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mBackgroundHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mBackgroundHandler:Landroid/os/Handler;

    const-wide/32 v2, 0x1b7740

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private postWifiToMobile()V
    .locals 5

    const/16 v4, 0x60

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mBackgroundHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mBackgroundHandler:Landroid/os/Handler;

    const/16 v1, 0x61

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    const-string/jumbo v0, "TrafficManageService"

    const-string/jumbo v1, "wifi2mobile: postWifiToMobile"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mBackgroundHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private registerAutoCorrectionReceiver()V
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "com.miui.action.DATA_USAGE_AUTO_CORRECTION"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mAutoCorrectionReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private registerCloudDataObserver()V
    .locals 4

    invoke-virtual {p0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {}, Landroid/provider/MiuiSettings$SettingsCloudData;->getCloudDataNotifyUri()Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mMiSimCloudDataObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method private registerDeviceProvisionedObserver()V
    .locals 4

    invoke-virtual {p0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "device_provisioned"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mDeviceProvisionedObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method private registerExtraNetworkReceiver()V
    .locals 2

    const-string/jumbo v0, "TrafficManageService"

    const-string/jumbo v1, "mExtraNetworkReceiver registerExtraNetworkReceiver "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "miui.intent.action.NETWORK_BLOCKED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "miui.intent.action.NETWORK_CONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mExtraNetworkReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private registerMobileDataEnableObserver()V
    .locals 7

    const/4 v4, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string/jumbo v0, "android.app.MobileDataUtils"

    invoke-static {v0}, Lcom/miui/a/c/d;->btN(Ljava/lang/String;)Lcom/miui/a/c/d;

    move-result-object v0

    const-string/jumbo v1, "getInstance"

    new-array v2, v5, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/miui/a/c/d;->btO(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Lcom/miui/a/c/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/a/c/d;->btS()Lcom/miui/a/c/d;

    move-result-object v0

    const-string/jumbo v1, "registerContentObserver"

    new-array v2, v4, [Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    aput-object v3, v2, v5

    const-class v3, Landroid/database/ContentObserver;

    aput-object v3, v2, v6

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mMobileDataEnableObserver:Landroid/database/ContentObserver;

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/a/c/d;->btQ(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Lcom/miui/a/c/d;

    return-void
.end method

.method private registerMobileDataPolicyObserver()V
    .locals 4

    invoke-virtual {p0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "mobile_policy"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mMobileDataPolicyObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method private registerNetworkConnectivityReceiver()V
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mNetworkConnectivityReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private registerPackageReceiver()V
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {}, Lcom/miui/common/b/f;->aIf()Landroid/os/UserHandle;

    move-result-object v2

    invoke-static {p0, v1, v2, v0}, Lcom/miui/common/b/n;->aIM(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;)V

    return-void
.end method

.method private registerPhoneStateListener()V
    .locals 3

    const-string/jumbo v0, "phone"

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x100

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    return-void
.end method

.method private registerPurchaseSuccessReceiver()V
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "miui.intent.action.PURCHASE_SUCCESS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mPurchaseSuccessReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private registerRefreshDataUsageDailyReceiver()V
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "com.miui.action.REFRESH_DATA_USAGE_DAILY"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mRefreshDataUsageDailyReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private registerScNetworkStatusReceiver()V
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "action_update_sc_network_allow"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mScNetworkStatusReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private registerScreenReceiver()V
    .locals 4

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mLockScreenReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mBackgroundHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v0, v3, v2}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method private registerSimDataSlotStateReceiver()V
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "miui.intent.action.ACTION_DEFAULT_DATA_SLOT_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mSimStateDataSlotReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private registerSimStateReceiver()V
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mSimStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mSimInfoChangeListener:Lcom/miui/networkassistant/dual/DualSimInfoManager$ISimInfoChangeListener;

    invoke-static {p0, v0}, Lcom/miui/networkassistant/dual/DualSimInfoManager;->registerChangeListener(Landroid/content/Context;Lmiui/securitycenter/DualSim/DualSimInfoManagerWrapper$ISimInfoChangeWrapperListener;)V

    return-void
.end method

.method private registerSmsReceiver()V
    .locals 4

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "android.provider.Telephony.SMS_RECEIVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    const-string/jumbo v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mSmsReceiver:Landroid/content/BroadcastReceiver;

    const-string/jumbo v2, "android.permission.BROADCAST_SMS"

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method private registerTrafficStatsReceiver()V
    .locals 4

    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "com.android.server.action.NETWORK_STATS_UPDATED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mTrafficStatsReceiver:Landroid/content/BroadcastReceiver;

    const-string/jumbo v2, "android.permission.READ_NETWORK_USAGE_HISTORY"

    iget-object v3, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mBackgroundHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method private registerUserSwitchReceiver()V
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "android.intent.action.USER_FOREGROUND"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.USER_BACKGROUND"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mUserSwitchReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private registerWifiApReceiver()V
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mWifiApStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private registerWifiNetworkStatusReceiver()V
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mWifiNetworkStatusReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private retryInitSim()V
    .locals 6

    const/16 v5, 0x50

    const-string/jumbo v0, "TrafficManageService"

    const-string/jumbo v1, "retryInitSim, retryTime:%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mRetryTime:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mRetryTime:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mRetryTime:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v5, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method

.method private startAutoCorrection()V
    .locals 10

    const-wide/32 v8, 0xea60

    const/16 v6, 0x13

    const/4 v4, 0x0

    const/4 v5, 0x1

    const-string/jumbo v0, "TrafficManageService"

    const-string/jumbo v1, "startAutoCorrection"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/miui/networkassistant/utils/DateUtil;->getTodayTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v4, v0, v1}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->checkWebShouldCorrection(IJ)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    iput v4, v3, Landroid/os/Message;->arg1:I

    iput v5, v3, Landroid/os/Message;->arg2:I

    iget-object v4, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v3, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    sget-boolean v3, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_DUAL_CARD:Z

    if-eqz v3, :cond_1

    invoke-direct {p0, v5, v0, v1}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->checkWebShouldCorrection(IJ)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz v2, :cond_2

    const-wide/32 v0, 0x86470

    :goto_0
    iget-object v2, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    iput v5, v2, Landroid/os/Message;->arg1:I

    iput v5, v2, Landroid/os/Message;->arg2:I

    iget-object v3, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_1
    return-void

    :cond_2
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method private startAutoCorrectionChecked(II)V
    .locals 4

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mTrafficManagers:[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/miui/networkassistant/config/SimUserInfo;->saveDataUsageAutoCorrectedTime(J)Z

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mTrafficManagers:[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    aget-object v0, v0, p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p2}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->startCorrection(ZZI)Z

    return-void
.end method

.method private startCmccAutoCorrection()V
    .locals 6

    const-wide/32 v4, 0xea60

    const-string/jumbo v0, "TrafficManageService"

    const-string/jumbo v1, "startCmccAutoCorrection"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/miui/networkassistant/utils/DateUtil;->getTodayTimeMillis()J

    move-result-wide v0

    iget v2, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mActiveSlotNum:I

    invoke-direct {p0, v2, v0, v1}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->checkWebShouldCorrection(IJ)Z

    move-result v0

    invoke-static {p0}, Lcom/miui/networkassistant/traffic/correction/WebCorrectionManager;->getInstance(Landroid/content/Context;)Lcom/miui/networkassistant/traffic/correction/WebCorrectionManager;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mTrafficManagers:[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    iget v3, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mActiveSlotNum:I

    aget-object v2, v2, v3

    iget-object v2, v2, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v2}, Lcom/miui/networkassistant/config/SimUserInfo;->getImsi()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/networkassistant/traffic/correction/WebCorrectionManager;->isCmccWebCorrectSupported(Ljava/lang/String;)Z

    move-result v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget v1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mActiveSlotNum:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->arg2:I

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    return-void
.end method

.method private unRegisterAutoCorrectionReceiver()V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mAutoCorrectionReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method private unRegisterDeviceProvisionedObserver()V
    .locals 2

    invoke-virtual {p0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mDeviceProvisionedObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method private unRegisterExtraNetworkReceiver()V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mExtraNetworkReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method private unRegisterMobileDataEnableObserver()V
    .locals 2

    invoke-virtual {p0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mMobileDataEnableObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method private unRegisterMobileDataPolicyObserver()V
    .locals 2

    invoke-virtual {p0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mMobileDataPolicyObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method private unRegisterNetworkConnectivityReceiver()V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mNetworkConnectivityReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method private unRegisterPackageReceiver()V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method private unRegisterPhoneStateListener()V
    .locals 3

    const-string/jumbo v0, "phone"

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    return-void
.end method

.method private unRegisterPurchaseSuccessReceiver()V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mPurchaseSuccessReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method private unRegisterRefreshDataUsageDailyReceiver()V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mRefreshDataUsageDailyReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method private unRegisterScNetworkStatusReceiver()V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mScNetworkStatusReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method private unRegisterScreenReceiver()V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mLockScreenReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method private unRegisterSimDataSlotStateReceiver()V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mSimStateDataSlotReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method private unRegisterSimStateReceiver()V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mSimStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mSimInfoChangeListener:Lcom/miui/networkassistant/dual/DualSimInfoManager$ISimInfoChangeListener;

    invoke-static {p0, v0}, Lcom/miui/networkassistant/dual/DualSimInfoManager;->unRegisterChangeListener(Landroid/content/Context;Lmiui/securitycenter/DualSim/DualSimInfoManagerWrapper$ISimInfoChangeWrapperListener;)V

    return-void
.end method

.method private unRegisterSmsReceiver()V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mSmsReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method private unRegisterTrafficStatsReceiver()V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mTrafficStatsReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method private unRegisterUserSwitchReceiver()V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mUserSwitchReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method private unRegisterWifiApReceiver()V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mWifiApStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method private unRegisterWifiNetworkStatusReceiver()V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mWifiNetworkStatusReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method private updateActiveSlotNum()V
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mSimCardHelper:Lcom/miui/networkassistant/dual/SimCardHelper;

    invoke-virtual {v0}, Lcom/miui/networkassistant/dual/SimCardHelper;->getCurrentMobileSlotNum()I

    move-result v0

    iget v1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mActiveSlotNum:I

    if-eq v0, v1, :cond_0

    iput v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mActiveSlotNum:I

    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->cancelNotificationWhenSlotChanged()V

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mTrafficManagers:[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    iget v1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mActiveSlotNum:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getImsi()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/miui/networkassistant/traffic/statistic/MiServiceFrameworkHelper;->updateSim(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private updateNormalTotalPackageSetted(Landroid/content/Intent;)V
    .locals 6

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mIsDeviceProvisioned:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "android.intent.action.USER_PRESENT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/32 v4, 0x36ee80

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iget-object v2, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mTrafficManagers:[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    iget v3, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mActiveSlotNum:I

    aget-object v2, v2, v3

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mTrafficManagers:[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    iget v2, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mActiveSlotNum:I

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->checkNormalTotalPackageSetted()V

    iput-boolean v1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mIsDeviceProvisioned:Z

    :cond_0
    return-void

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private updateRoamingStateChanged()V
    .locals 1

    invoke-virtual {p0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/common/network/f;->aMf(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->initInternationalRoaming()V

    :cond_0
    return-void
.end method


# virtual methods
.method broadCastDataUsageUpdated()V
    .locals 1

    invoke-virtual {p0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/networkassistant/utils/TrafficUpdateUtil;->broadCastTrafficUpdated(Landroid/content/Context;)V

    return-void
.end method

.method cancelDataUsageAutoCorrection()V
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mTrafficManagers:[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->isDataUsageAutoCorrectionEffective()Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_DUAL_CARD:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mTrafficManagers:[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->isDataUsageAutoCorrectionEffective()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->createDataUsageAutoCorrectionIntent()Landroid/app/PendingIntent;

    move-result-object v1

    const-string/jumbo v0, "alarm"

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    const-string/jumbo v0, "TrafficManageService"

    const-string/jumbo v1, "mina auto correction canceled"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public getMobileDataPolicy()I
    .locals 1

    iget v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mMobileDataPolicy:I

    return v0
.end method

.method initDataUsageAutoCorrection()V
    .locals 8

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mTrafficManagers:[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v2}, Lcom/miui/networkassistant/config/SimUserInfo;->isDataUsageAutoCorrectionEffective()Z

    move-result v2

    if-nez v2, :cond_0

    sget-boolean v2, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_DUAL_CARD:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mTrafficManagers:[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v2}, Lcom/miui/networkassistant/config/SimUserInfo;->isDataUsageAutoCorrectionEffective()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    invoke-static {}, Lcom/miui/networkassistant/utils/DateUtil;->getTodayTimeMillis()J

    move-result-wide v4

    invoke-direct {p0, v0, v4, v5}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->checkSmsShouldAutoCorrection(IJ)Z

    move-result v2

    sget-boolean v3, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_DUAL_CARD:Z

    if-eqz v3, :cond_1

    invoke-direct {p0, v1, v4, v5}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->checkSmsShouldAutoCorrection(IJ)Z

    move-result v3

    or-int/2addr v2, v3

    :cond_1
    if-eqz v2, :cond_3

    :goto_0
    add-int/lit8 v0, v0, 0x8

    int-to-long v2, v0

    const-wide/32 v6, 0x36ee80

    mul-long/2addr v2, v6

    add-long/2addr v2, v4

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    const-wide v6, 0x4184997000000000L    # 4.32E7

    mul-double/2addr v4, v6

    double-to-long v4, v4

    add-long/2addr v2, v4

    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->createDataUsageAutoCorrectionIntent()Landroid/app/PendingIntent;

    move-result-object v6

    const-string/jumbo v0, "alarm"

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    const-wide/32 v4, 0x5265c00

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    const-string/jumbo v0, "TrafficManageService"

    const-string/jumbo v1, "mina auto correction setted"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void

    :cond_3
    const/16 v0, 0x18

    goto :goto_0
.end method

.method isDeviceProvisioned()Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "device_provisioned"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mTrafficManageBinder:Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficManageBinder;

    invoke-virtual {v0}, Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficManageBinder;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    const-string/jumbo v0, "TrafficManageService"

    const-string/jumbo v1, "mina onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/miui/networkassistant/traffic/statistic/PreSetGroup;->initGroupMap(Landroid/content/Context;)V

    invoke-static {}, Lcom/miui/common/b/f;->aHO()I

    move-result v0

    invoke-static {v0}, Lcom/miui/common/b/f;->aIe(I)I

    move-result v0

    iput v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mCurrentUserIndex:I

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mAppMonitor:[Lcom/miui/networkassistant/service/tm/AppMonitor;

    new-instance v1, Lcom/miui/networkassistant/service/tm/AppMonitor;

    invoke-virtual {p0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/miui/networkassistant/service/tm/AppMonitor;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mAppMonitor:[Lcom/miui/networkassistant/service/tm/AppMonitor;

    new-instance v1, Lcom/miui/networkassistant/service/tm/AppMonitor;

    invoke-virtual {p0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/miui/networkassistant/service/tm/AppMonitor;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mAppMonitor:[Lcom/miui/networkassistant/service/tm/AppMonitor;

    iget v1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mCurrentUserIndex:I

    aget-object v0, v0, v1

    invoke-static {}, Lcom/miui/common/b/f;->aHO()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/service/tm/AppMonitor;->initData(I)V

    invoke-static {p0}, Lcom/miui/networkassistant/config/CommonConfig;->getInstance(Landroid/content/Context;)Lcom/miui/networkassistant/config/CommonConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mCommonConfig:Lcom/miui/networkassistant/config/CommonConfig;

    invoke-static {p0}, Lcom/miui/networkassistant/dual/SimCardHelper;->getInstance(Landroid/content/Context;)Lcom/miui/networkassistant/dual/SimCardHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mSimCardHelper:Lcom/miui/networkassistant/dual/SimCardHelper;

    new-instance v0, Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficManageBinder;

    invoke-direct {v0, p0, v3}, Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficManageBinder;-><init>(Lcom/miui/networkassistant/service/tm/TrafficManageService;Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficManageBinder;)V

    iput-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mTrafficManageBinder:Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficManageBinder;

    sget-boolean v0, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mNetworkCheckStateManager:Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager;

    :goto_0
    new-instance v0, Lcom/miui/networkassistant/service/tm/PurchaseSmsManager;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/service/tm/PurchaseSmsManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mPurchaseSmsManager:Lcom/miui/networkassistant/service/tm/PurchaseSmsManager;

    new-instance v0, Lcom/miui/networkassistant/service/tm/TetherStatsManager;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/service/tm/TetherStatsManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mTetherStatsManager:Lcom/miui/networkassistant/service/tm/TetherStatsManager;

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mTetherStatsManager:Lcom/miui/networkassistant/service/tm/TetherStatsManager;

    invoke-virtual {v0}, Lcom/miui/networkassistant/service/tm/TetherStatsManager;->initTetheringStatus()V

    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->initSim()V

    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->initNetworkStatsConfig()V

    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->initMobileDataPolicyObserver()V

    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->initLockScreenMonitor()V

    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->initMonthReport()V

    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->initFloatNotificationEnable()V

    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->initTrackAnalyticsManager()V

    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->initRefreshDataUsageDaily()V

    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->initNetworkBackgroundRestrict()V

    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->registerTrafficStatsReceiver()V

    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->registerSimStateReceiver()V

    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->registerSimDataSlotStateReceiver()V

    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->registerAutoCorrectionReceiver()V

    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->registerDeviceProvisionedObserver()V

    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->registerNetworkConnectivityReceiver()V

    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->registerMobileDataEnableObserver()V

    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->registerMobileDataPolicyObserver()V

    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->registerScreenReceiver()V

    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->registerRefreshDataUsageDailyReceiver()V

    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->registerExtraNetworkReceiver()V

    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->registerPackageReceiver()V

    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->registerSmsReceiver()V

    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->registerUserSwitchReceiver()V

    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->registerScNetworkStatusReceiver()V

    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->registerPurchaseSuccessReceiver()V

    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->registerPhoneStateListener()V

    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->registerCloudDataObserver()V

    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->registerWifiApReceiver()V

    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->registerWifiNetworkStatusReceiver()V

    return-void

    :cond_0
    iput-object v3, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mNetworkCheckStateManager:Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager;

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->unRegisterTrafficStatsReceiver()V

    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->unRegisterSimStateReceiver()V

    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->unRegisterSimDataSlotStateReceiver()V

    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->unRegisterAutoCorrectionReceiver()V

    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->unRegisterDeviceProvisionedObserver()V

    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->unRegisterNetworkConnectivityReceiver()V

    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->unRegisterMobileDataEnableObserver()V

    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->unRegisterMobileDataPolicyObserver()V

    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->unRegisterScreenReceiver()V

    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->unRegisterRefreshDataUsageDailyReceiver()V

    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->unRegisterExtraNetworkReceiver()V

    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->unRegisterPackageReceiver()V

    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->unRegisterSmsReceiver()V

    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->unRegisterUserSwitchReceiver()V

    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->unRegisterScNetworkStatusReceiver()V

    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->unRegisterPurchaseSuccessReceiver()V

    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->unRegisterPhoneStateListener()V

    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->unRegisterWifiApReceiver()V

    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->unRegisterWifiNetworkStatusReceiver()V

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mNetworkCheckStateManager:Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mNetworkCheckStateManager:Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager;

    invoke-virtual {v0}, Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager;->onDestroy()V

    :cond_0
    return-void
.end method
