.class public Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;
.super Landroid/app/Service;
.source ""


# static fields
.field public static final MSG_REMOVE_FLOAT_TIPS:I = 0x4

.field private static final MSG_SENSOR_SHAKE:I = 0x1

.field private static final MSG_UPDATE_CONFIG:I = 0x2

.field private static final MSG_UPLOAD_SETTING_SWITCH_STATE:I = 0x3

.field private static final SPEED_THRESHOLD:I = 0x1518

.field private static final TAG:Ljava/lang/String;

.field private static final UPDATE_INTERVAL_TIME:I = 0x32


# instance fields
.field private mAssistantFloatView:Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;

.field private mBusinessConfig:Lcom/miui/luckymoney/model/config/BaseConfiguration;

.field private mBusinessPipeline:Lcom/miui/luckymoney/controller/Pipeline;

.field private mCloudControlReceiver:Lcom/miui/luckymoney/service/CloudControlReceiver;

.field private mCommonConfig:Lcom/miui/luckymoney/config/CommonConfig;

.field private mConfigChangedReceiver:Landroid/content/BroadcastReceiver;

.field private mConfigUpdateReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mFloatViewLock:Ljava/lang/Object;

.field private mHandlerCallback:Landroid/os/Handler$Callback;

.field private mHitsTime:I

.field private mLastShakeX:F

.field private mLastShakeY:F

.field private mLastShakeZ:F

.field private mLastUpdateTime:J

.field private mLockScreenReceiver:Landroid/content/BroadcastReceiver;

.field private mLuckyAlarmReceiver:Lcom/miui/luckymoney/service/LuckyAlarmReceiver;

.field public mMainHandler:Landroid/os/Handler;

.field private mMessageConfig:Lcom/miui/luckymoney/model/config/BaseConfiguration;

.field private mMiTalkConfig:Lcom/miui/luckymoney/model/config/BaseConfiguration;

.field private mMitalkPipeline:Lcom/miui/luckymoney/controller/Pipeline;

.field private mNoticationListenerBinder:Lcom/miui/gamebooster/service/INotificationListener;

.field private mNotificationListenerCallback:Lcom/miui/gamebooster/service/NotificationListenerCallback;

.field private mNotificationListenerConn:Landroid/content/ServiceConnection;

.field private mPackageReceiver:Landroid/content/BroadcastReceiver;

.field private mPhoneStateMonitor:Lcom/miui/luckymoney/service/LuckyMoneyMonitorService$PhoneRingMonitor;

.field private mRefreshFloatTipsDailyReceiver:Landroid/content/BroadcastReceiver;

.field private mSensorEventListener:Landroid/hardware/SensorEventListener;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mWeixinPipeline:Lcom/miui/luckymoney/controller/Pipeline;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;)Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;
    .locals 1

    iget-object v0, p0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->mAssistantFloatView:Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;

    return-object v0
.end method

.method static synthetic -get10(Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;)Lcom/miui/luckymoney/controller/Pipeline;
    .locals 1

    iget-object v0, p0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->mMitalkPipeline:Lcom/miui/luckymoney/controller/Pipeline;

    return-object v0
.end method

.method static synthetic -get11(Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;)Lcom/miui/gamebooster/service/INotificationListener;
    .locals 1

    iget-object v0, p0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->mNoticationListenerBinder:Lcom/miui/gamebooster/service/INotificationListener;

    return-object v0
.end method

.method static synthetic -get12(Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;)Lcom/miui/gamebooster/service/NotificationListenerCallback;
    .locals 1

    iget-object v0, p0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->mNotificationListenerCallback:Lcom/miui/gamebooster/service/NotificationListenerCallback;

    return-object v0
.end method

.method static synthetic -get13(Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;)Lcom/miui/luckymoney/controller/Pipeline;
    .locals 1

    iget-object v0, p0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->mWeixinPipeline:Lcom/miui/luckymoney/controller/Pipeline;

    return-object v0
.end method

.method static synthetic -get2(Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;)Lcom/miui/luckymoney/controller/Pipeline;
    .locals 1

    iget-object v0, p0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->mBusinessPipeline:Lcom/miui/luckymoney/controller/Pipeline;

    return-object v0
.end method

.method static synthetic -get3(Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;)Lcom/miui/luckymoney/config/CommonConfig;
    .locals 1

    iget-object v0, p0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->mCommonConfig:Lcom/miui/luckymoney/config/CommonConfig;

    return-object v0
.end method

.method static synthetic -get4(Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get5(Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;)I
    .locals 1

    iget v0, p0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->mHitsTime:I

    return v0
.end method

.method static synthetic -get6(Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;)F
    .locals 1

    iget v0, p0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->mLastShakeX:F

    return v0
.end method

.method static synthetic -get7(Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;)F
    .locals 1

    iget v0, p0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->mLastShakeY:F

    return v0
.end method

.method static synthetic -get8(Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;)F
    .locals 1

    iget v0, p0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->mLastShakeZ:F

    return v0
.end method

.method static synthetic -get9(Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;)J
    .locals 2

    iget-wide v0, p0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->mLastUpdateTime:J

    return-wide v0
.end method

.method static synthetic -set0(Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;I)I
    .locals 0

    iput p1, p0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->mHitsTime:I

    return p1
.end method

.method static synthetic -set1(Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;F)F
    .locals 0

    iput p1, p0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->mLastShakeX:F

    return p1
.end method

.method static synthetic -set2(Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;F)F
    .locals 0

    iput p1, p0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->mLastShakeY:F

    return p1
.end method

.method static synthetic -set3(Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;F)F
    .locals 0

    iput p1, p0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->mLastShakeZ:F

    return p1
.end method

.method static synthetic -set4(Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;J)J
    .locals 1

    iput-wide p1, p0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->mLastUpdateTime:J

    return-wide p1
.end method

.method static synthetic -set5(Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;Lcom/miui/gamebooster/service/INotificationListener;)Lcom/miui/gamebooster/service/INotificationListener;
    .locals 0

    iput-object p1, p0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->mNoticationListenerBinder:Lcom/miui/gamebooster/service/INotificationListener;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->addAssistantFloatView()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->checkFloatTipsConfigUpdate()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->checkLuckyAlarmLocalConfig()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->registerSensorListener()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->removeAssistantFloatView()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->unRegisterSensorListener()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    iput-object v0, p0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->mMainHandler:Landroid/os/Handler;

    iput-object v0, p0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->mMessageConfig:Lcom/miui/luckymoney/model/config/BaseConfiguration;

    iput-object v0, p0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->mMiTalkConfig:Lcom/miui/luckymoney/model/config/BaseConfiguration;

    iput-object v0, p0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->mBusinessConfig:Lcom/miui/luckymoney/model/config/BaseConfiguration;

    iput-object v0, p0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->mWeixinPipeline:Lcom/miui/luckymoney/controller/Pipeline;

    iput-object v0, p0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->mMitalkPipeline:Lcom/miui/luckymoney/controller/Pipeline;

    iput-object v0, p0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->mBusinessPipeline:Lcom/miui/luckymoney/controller/Pipeline;

    new-instance v0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService$1;

    invoke-direct {v0, p0}, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService$1;-><init>(Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;)V

    iput-object v0, p0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->mNotificationListenerCallback:Lcom/miui/gamebooster/service/NotificationListenerCallback;

    new-instance v0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService$2;

    invoke-direct {v0, p0}, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService$2;-><init>(Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;)V

    iput-object v0, p0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->mNotificationListenerConn:Landroid/content/ServiceConnection;

    new-instance v0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService$3;

    invoke-direct {v0, p0}, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService$3;-><init>(Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;)V

    iput-object v0, p0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->mRefreshFloatTipsDailyReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService$4;

    invoke-direct {v0, p0}, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService$4;-><init>(Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;)V

    iput-object v0, p0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->mConfigChangedReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->mFloatViewLock:Ljava/lang/Object;

    new-instance v0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService$5;

    invoke-direct {v0, p0}, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService$5;-><init>(Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;)V

    iput-object v0, p0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->mLockScreenReceiver:Landroid/content/BroadcastReceiver;

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->mHitsTime:I

    new-instance v0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService$6;

    invoke-direct {v0, p0}, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService$6;-><init>(Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;)V

    iput-object v0, p0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    new-instance v0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService$7;

    invoke-direct {v0, p0}, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService$7;-><init>(Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;)V

    iput-object v0, p0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->mHandlerCallback:Landroid/os/Handler$Callback;

    new-instance v0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService$8;

    invoke-direct {v0, p0}, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService$8;-><init>(Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;)V

    iput-object v0, p0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->mConfigUpdateReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/miui/luckymoney/service/CloudControlReceiver;

    invoke-direct {v0}, Lcom/miui/luckymoney/service/CloudControlReceiver;-><init>()V

    iput-object v0, p0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->mCloudControlReceiver:Lcom/miui/luckymoney/service/CloudControlReceiver;

    new-instance v0, Lcom/miui/luckymoney/service/LuckyAlarmReceiver;

    invoke-direct {v0}, Lcom/miui/luckymoney/service/LuckyAlarmReceiver;-><init>()V

    iput-object v0, p0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->mLuckyAlarmReceiver:Lcom/miui/luckymoney/service/LuckyAlarmReceiver;

    new-instance v0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService$9;

    invoke-direct {v0, p0}, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService$9;-><init>(Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;)V

    iput-object v0, p0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private addAssistantFloatView()V
    .locals 2

    iget-object v1, p0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->mFloatViewLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->mAssistantFloatView:Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;

    invoke-direct {v0, p0}, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;-><init>(Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;)V

    iput-object v0, p0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->mAssistantFloatView:Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;

    iget-object v0, p0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->mAssistantFloatView:Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;

    invoke-virtual {v0}, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;->createFloatView()V
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

.method private checkFloatTipsConfigUpdate()V
    .locals 0

    invoke-static {p0}, Lcom/miui/luckymoney/webapi/FloatResourceHelper;->checkFloatTipsConfigLocalUpdate(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->initRefreshFloatTipsDaily()V

    return-void
.end method

.method private checkLuckyAlarmLocalConfig()V
    .locals 3

    new-instance v0, Lcom/miui/luckymoney/webapi/LuckyAlarmResult;

    iget-object v1, p0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->mCommonConfig:Lcom/miui/luckymoney/config/CommonConfig;

    invoke-virtual {v1}, Lcom/miui/luckymoney/config/CommonConfig;->getLuckyAlarmConfig()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/miui/luckymoney/webapi/LuckyAlarmResult;-><init>(Ljava/lang/String;Z)V

    return-void
.end method

.method private createRefreshFloatTipsDailyIntent()Landroid/app/PendingIntent;
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "action_refresh_data_usage_daily"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p0, v2, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private getTriggerAtMillisByIMEI()J
    .locals 8

    const-wide/16 v6, 0x4

    iget-object v0, p0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->mCommonConfig:Lcom/miui/luckymoney/config/CommonConfig;

    invoke-virtual {v0}, Lcom/miui/luckymoney/config/CommonConfig;->getFloatTipsStartTime()J

    move-result-wide v2

    iget-object v0, p0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->mCommonConfig:Lcom/miui/luckymoney/config/CommonConfig;

    invoke-virtual {v0}, Lcom/miui/luckymoney/config/CommonConfig;->getFloatTipsStopTime()J

    move-result-wide v0

    invoke-static {p0}, Lcom/miui/common/b/e;->aHy(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    sub-long/2addr v0, v2

    long-to-double v0, v0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    mul-double/2addr v0, v4

    double-to-long v0, v0

    add-long/2addr v0, v2

    return-wide v0

    :cond_0
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    packed-switch v4, :pswitch_data_0

    sub-long/2addr v0, v2

    long-to-double v0, v0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    mul-double/2addr v0, v4

    double-to-long v0, v0

    :goto_0
    add-long/2addr v0, v2

    return-wide v0

    :pswitch_0
    const-wide/16 v0, 0x0

    goto :goto_0

    :pswitch_1
    sub-long/2addr v0, v2

    div-long/2addr v0, v6

    goto :goto_0

    :pswitch_2
    sub-long/2addr v0, v2

    const-wide/16 v4, 0x2

    div-long/2addr v0, v4

    goto :goto_0

    :pswitch_3
    sub-long/2addr v0, v2

    div-long/2addr v0, v6

    const-wide/16 v4, 0x3

    mul-long/2addr v0, v4

    goto :goto_0

    :pswitch_4
    sub-long/2addr v0, v2

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method private initRefreshFloatTipsDaily()V
    .locals 5

    iget-object v0, p0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->mCommonConfig:Lcom/miui/luckymoney/config/CommonConfig;

    invoke-virtual {v0}, Lcom/miui/luckymoney/config/CommonConfig;->isDesktopFloatWindowEnable()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "initRefreshFloatTipsDaily:DesktopFloatWindow disable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->shouldPerparFloatTipsAlerm()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "initRefreshFloatTipsDaily:shouldPerparFloatTipsAlerm false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->getTriggerAtMillisByIMEI()J

    move-result-wide v2

    const-string/jumbo v0, "alarm"

    invoke-virtual {p0, v0}, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    invoke-direct {p0}, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->createRefreshFloatTipsDailyIntent()Landroid/app/PendingIntent;

    move-result-object v1

    const/4 v4, 0x1

    invoke-virtual {v0, v4, v2, v3, v1}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    sget-object v0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mina refresh float tips setted:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private registerCloudControlReceiver()V
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->mCloudControlReceiver:Lcom/miui/luckymoney/service/CloudControlReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private registerConfigChangedReceiver()V
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "miui.intent.action.config_changed"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->mConfigChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private registerConfigUpdateReceiver()V
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "com.miui.luckymoney.ACTION_UPDATE_TIPS_CONFIG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "com.miui.luckymoney.ACTION_UPDATE_ALARM_CONFIG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "float_tips_activity_end"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->mConfigUpdateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private registerLuckyAlarmReceiver()V
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "com.miui.luckymoney.ACTION_LUCKY_ALARM"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->mLuckyAlarmReceiver:Lcom/miui/luckymoney/service/LuckyAlarmReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private registerPackageReceiver()V
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private registerPhoneStateMonitor()V
    .locals 1

    iget-object v0, p0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->mPhoneStateMonitor:Lcom/miui/luckymoney/service/LuckyMoneyMonitorService$PhoneRingMonitor;

    invoke-static {v0}, Lcom/miui/luckymoney/service/PhoneStateMonitor;->registerListener(Landroid/telephony/PhoneStateListener;)V

    return-void
.end method

.method private registerRefreshFloatTipsDailyReceiver()V
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "action_refresh_data_usage_daily"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->mRefreshFloatTipsDailyReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private registerScreenReceiver()V
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->mLockScreenReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private registerSensorListener()V
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "registerSensorListener"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    :cond_0
    return-void
.end method

.method private removeAssistantFloatView()V
    .locals 2

    iget-object v1, p0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->mFloatViewLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->mAssistantFloatView:Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->mAssistantFloatView:Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;

    invoke-virtual {v0}, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;->removeFloatView()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->mAssistantFloatView:Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;
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

.method private resetAlarmStatus()V
    .locals 3

    new-instance v0, Lcom/miui/luckymoney/webapi/LuckyAlarmResult;

    iget-object v1, p0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->mCommonConfig:Lcom/miui/luckymoney/config/CommonConfig;

    invoke-virtual {v1}, Lcom/miui/luckymoney/config/CommonConfig;->getLuckyAlarmConfig()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/miui/luckymoney/webapi/LuckyAlarmResult;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v0}, Lcom/miui/luckymoney/webapi/LuckyAlarmResult;->disableAllItemTimer()V

    return-void
.end method

.method private shouldPerparFloatTipsAlerm()Z
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->mCommonConfig:Lcom/miui/luckymoney/config/CommonConfig;

    invoke-virtual {v2}, Lcom/miui/luckymoney/config/CommonConfig;->getFloatTipsStopTime()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private unRegisterCloudControlReceiver()V
    .locals 1

    iget-object v0, p0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->mCloudControlReceiver:Lcom/miui/luckymoney/service/CloudControlReceiver;

    invoke-virtual {p0, v0}, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method private unRegisterConfigUpdateReceiver()V
    .locals 1

    iget-object v0, p0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->mConfigUpdateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method private unRegisterLuckyAlarmReceiver()V
    .locals 1

    iget-object v0, p0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->mLuckyAlarmReceiver:Lcom/miui/luckymoney/service/LuckyAlarmReceiver;

    invoke-virtual {p0, v0}, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method private unRegisterPackageReceiver()V
    .locals 1

    iget-object v0, p0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method private unRegisterRefreshFloatTipsDailyReceiver()V
    .locals 1

    iget-object v0, p0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->mRefreshFloatTipsDailyReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method private unRegisterScreenReceiver()V
    .locals 1

    iget-object v0, p0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->mLockScreenReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method private unRegisterSensorListener()V
    .locals 2

    iget-object v0, p0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    :cond_0
    return-void
.end method

.method private unregisterConfigChangedReceiver()V
    .locals 1

    iget-object v0, p0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->mConfigChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method private unregisterPhoneStateMonitor()V
    .locals 1

    iget-object v0, p0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->mPhoneStateMonitor:Lcom/miui/luckymoney/service/LuckyMoneyMonitorService$PhoneRingMonitor;

    invoke-static {v0}, Lcom/miui/luckymoney/service/PhoneStateMonitor;->unregisterListener(Landroid/telephony/PhoneStateListener;)V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    sget-object v0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/luckymoney/config/CommonConfig;->getInstance(Landroid/content/Context;)Lcom/miui/luckymoney/config/CommonConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->mCommonConfig:Lcom/miui/luckymoney/config/CommonConfig;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->mHandlerCallback:Landroid/os/Handler$Callback;

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->mMainHandler:Landroid/os/Handler;

    new-instance v0, Lcom/miui/luckymoney/model/config/impl/DefaultConfiguration;

    invoke-direct {v0, p0}, Lcom/miui/luckymoney/model/config/impl/DefaultConfiguration;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->mMessageConfig:Lcom/miui/luckymoney/model/config/BaseConfiguration;

    new-instance v0, Lcom/miui/luckymoney/model/config/impl/MiTalkConfiguration;

    invoke-direct {v0, p0}, Lcom/miui/luckymoney/model/config/impl/MiTalkConfiguration;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->mMiTalkConfig:Lcom/miui/luckymoney/model/config/BaseConfiguration;

    new-instance v0, Lcom/miui/luckymoney/model/config/impl/BusinessConfiguration;

    invoke-direct {v0, p0}, Lcom/miui/luckymoney/model/config/impl/BusinessConfiguration;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->mBusinessConfig:Lcom/miui/luckymoney/model/config/BaseConfiguration;

    iget-object v0, p0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->mMessageConfig:Lcom/miui/luckymoney/model/config/BaseConfiguration;

    new-instance v1, Lcom/miui/luckymoney/ui/view/GeneralMessageViewCreator;

    iget-object v2, p0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->mMessageConfig:Lcom/miui/luckymoney/model/config/BaseConfiguration;

    invoke-direct {v1, v2}, Lcom/miui/luckymoney/ui/view/GeneralMessageViewCreator;-><init>(Lcom/miui/luckymoney/model/config/BaseConfiguration;)V

    invoke-static {v0, v1}, Lcom/miui/luckymoney/controller/Pipeline;->create(Lcom/miui/luckymoney/model/config/BaseConfiguration;Lcom/miui/luckymoney/ui/view/messageview/MessageViewCreator;)Lcom/miui/luckymoney/controller/Pipeline;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->mWeixinPipeline:Lcom/miui/luckymoney/controller/Pipeline;

    iget-object v0, p0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->mMiTalkConfig:Lcom/miui/luckymoney/model/config/BaseConfiguration;

    new-instance v1, Lcom/miui/luckymoney/ui/view/GeneralMessageViewCreator;

    iget-object v2, p0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->mMiTalkConfig:Lcom/miui/luckymoney/model/config/BaseConfiguration;

    invoke-direct {v1, v2}, Lcom/miui/luckymoney/ui/view/GeneralMessageViewCreator;-><init>(Lcom/miui/luckymoney/model/config/BaseConfiguration;)V

    invoke-static {v0, v1}, Lcom/miui/luckymoney/controller/Pipeline;->create(Lcom/miui/luckymoney/model/config/BaseConfiguration;Lcom/miui/luckymoney/ui/view/messageview/MessageViewCreator;)Lcom/miui/luckymoney/controller/Pipeline;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->mMitalkPipeline:Lcom/miui/luckymoney/controller/Pipeline;

    iget-object v0, p0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->mBusinessConfig:Lcom/miui/luckymoney/model/config/BaseConfiguration;

    new-instance v1, Lcom/miui/luckymoney/ui/view/GeneralMessageViewCreator;

    iget-object v2, p0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->mBusinessConfig:Lcom/miui/luckymoney/model/config/BaseConfiguration;

    invoke-direct {v1, v2}, Lcom/miui/luckymoney/ui/view/GeneralMessageViewCreator;-><init>(Lcom/miui/luckymoney/model/config/BaseConfiguration;)V

    invoke-static {v0, v1}, Lcom/miui/luckymoney/controller/Pipeline;->create(Lcom/miui/luckymoney/model/config/BaseConfiguration;Lcom/miui/luckymoney/ui/view/messageview/MessageViewCreator;)Lcom/miui/luckymoney/controller/Pipeline;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->mBusinessPipeline:Lcom/miui/luckymoney/controller/Pipeline;

    const-string/jumbo v0, "sensor"

    invoke-virtual {p0, v0}, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->mSensorManager:Landroid/hardware/SensorManager;

    new-instance v0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService$PhoneRingMonitor;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService$PhoneRingMonitor;-><init>(Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;Lcom/miui/luckymoney/service/LuckyMoneyMonitorService$PhoneRingMonitor;)V

    iput-object v0, p0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->mPhoneStateMonitor:Lcom/miui/luckymoney/service/LuckyMoneyMonitorService$PhoneRingMonitor;

    invoke-direct {p0}, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->registerConfigChangedReceiver()V

    iget-object v0, p0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->mCommonConfig:Lcom/miui/luckymoney/config/CommonConfig;

    invoke-virtual {v0}, Lcom/miui/luckymoney/config/CommonConfig;->isDesktopFloatWindowEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->addAssistantFloatView()V

    :cond_0
    invoke-direct {p0}, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->registerScreenReceiver()V

    iget-object v0, p0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->mCommonConfig:Lcom/miui/luckymoney/config/CommonConfig;

    invoke-virtual {v0}, Lcom/miui/luckymoney/config/CommonConfig;->isShakeSendStickerEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/miui/luckymoney/utils/ScreenUtil;->isScreenLocked(Landroid/content/Context;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->registerSensorListener()V

    :cond_1
    invoke-direct {p0}, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->registerConfigUpdateReceiver()V

    invoke-direct {p0}, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->registerCloudControlReceiver()V

    invoke-direct {p0}, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->registerLuckyAlarmReceiver()V

    invoke-direct {p0}, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->registerPackageReceiver()V

    iget-object v0, p0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/luckymoney/service/PhoneStateMonitor;->startMonitor(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->registerPhoneStateMonitor()V

    invoke-direct {p0}, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->resetAlarmStatus()V

    invoke-direct {p0}, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->initRefreshFloatTipsDaily()V

    invoke-direct {p0}, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->registerRefreshFloatTipsDailyReceiver()V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/gamebooster/service/NotificationListener;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->mNotificationListenerConn:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method public onDestroy()V
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->unRegisterSensorListener()V

    invoke-direct {p0}, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->unRegisterConfigUpdateReceiver()V

    invoke-direct {p0}, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->unRegisterCloudControlReceiver()V

    invoke-direct {p0}, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->unRegisterLuckyAlarmReceiver()V

    invoke-direct {p0}, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->unRegisterPackageReceiver()V

    invoke-direct {p0}, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->unRegisterScreenReceiver()V

    invoke-direct {p0}, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->removeAssistantFloatView()V

    invoke-direct {p0}, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->unregisterConfigChangedReceiver()V

    invoke-direct {p0}, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->unregisterPhoneStateMonitor()V

    invoke-direct {p0}, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->unRegisterRefreshFloatTipsDailyReceiver()V

    iget-object v0, p0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/luckymoney/service/PhoneStateMonitor;->stopMonitor(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->mMitalkPipeline:Lcom/miui/luckymoney/controller/Pipeline;

    invoke-static {v0}, Lcom/miui/luckymoney/controller/Pipeline;->recycle(Lcom/miui/luckymoney/controller/Pipeline;)V

    iget-object v0, p0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->mWeixinPipeline:Lcom/miui/luckymoney/controller/Pipeline;

    invoke-static {v0}, Lcom/miui/luckymoney/controller/Pipeline;->recycle(Lcom/miui/luckymoney/controller/Pipeline;)V

    iget-object v0, p0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->mBusinessPipeline:Lcom/miui/luckymoney/controller/Pipeline;

    invoke-static {v0}, Lcom/miui/luckymoney/controller/Pipeline;->recycle(Lcom/miui/luckymoney/controller/Pipeline;)V

    iput-object v2, p0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->mMitalkPipeline:Lcom/miui/luckymoney/controller/Pipeline;

    iput-object v2, p0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->mWeixinPipeline:Lcom/miui/luckymoney/controller/Pipeline;

    iput-object v2, p0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->mBusinessPipeline:Lcom/miui/luckymoney/controller/Pipeline;

    iget-object v0, p0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->mNotificationListenerConn:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->unbindService(Landroid/content/ServiceConnection;)V

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onNotificationPosted(Landroid/service/notification/StatusBarNotification;)V
    .locals 8

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->mMainHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v0, "com.tencent.mm"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :try_start_0
    new-instance v0, Lcom/miui/luckymoney/model/message/Impl/WechatMessage;

    new-instance v3, Lcom/miui/luckymoney/model/Notification;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v5

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v7

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/miui/luckymoney/model/Notification;-><init>(Ljava/lang/String;ILjava/lang/String;Landroid/app/Notification;)V

    invoke-direct {v0, p0, v3}, Lcom/miui/luckymoney/model/message/Impl/WechatMessage;-><init>(Landroid/content/Context;Lcom/miui/luckymoney/model/Notification;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    if-nez v0, :cond_1

    return-void

    :catch_0
    move-exception v0

    sget-object v3, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "failed to create WechatMessage object"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Lcom/miui/luckymoney/model/message/AppMessage;->isHongbao()Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v3, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "mm message is lucky money message, continue"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->mMainHandler:Landroid/os/Handler;

    new-instance v4, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService$10;

    invoke-direct {v4, p0, v0}, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService$10;-><init>(Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;Lcom/miui/luckymoney/model/message/AppMessage;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    const-string/jumbo v0, "com.xiaomi.channel"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :try_start_1
    new-instance v0, Lcom/miui/luckymoney/model/message/Impl/MiTalkMessage;

    new-instance v3, Lcom/miui/luckymoney/model/Notification;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v5

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v7

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/miui/luckymoney/model/Notification;-><init>(Ljava/lang/String;ILjava/lang/String;Landroid/app/Notification;)V

    invoke-direct {v0, p0, v3}, Lcom/miui/luckymoney/model/message/Impl/MiTalkMessage;-><init>(Landroid/content/Context;Lcom/miui/luckymoney/model/Notification;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    if-nez v0, :cond_3

    return-void

    :catch_1
    move-exception v0

    sget-object v3, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "failed to create MiTalkMessage object"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    goto :goto_1

    :cond_3
    invoke-interface {v0}, Lcom/miui/luckymoney/model/message/AppMessage;->isHongbao()Z

    move-result v3

    if-eqz v3, :cond_4

    sget-object v3, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "mitalk message is lucky money message, continue"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->mMainHandler:Landroid/os/Handler;

    new-instance v4, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService$11;

    invoke-direct {v4, p0, v0}, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService$11;-><init>(Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;Lcom/miui/luckymoney/model/message/AppMessage;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_4
    const-string/jumbo v0, "com.xiaomi.xmsf"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    :try_start_2
    new-instance v0, Lcom/miui/luckymoney/model/message/Impl/BusinessMessage;

    new-instance v2, Lcom/miui/luckymoney/model/Notification;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v4

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v6

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/miui/luckymoney/model/Notification;-><init>(Ljava/lang/String;ILjava/lang/String;Landroid/app/Notification;)V

    invoke-direct {v0, p0, v2}, Lcom/miui/luckymoney/model/message/Impl/BusinessMessage;-><init>(Landroid/content/Context;Lcom/miui/luckymoney/model/Notification;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    if-nez v0, :cond_5

    return-void

    :catch_2
    move-exception v0

    sget-object v2, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "failed to create BusinessMessage object"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    goto :goto_2

    :cond_5
    invoke-interface {v0}, Lcom/miui/luckymoney/model/message/AppMessage;->isHongbao()Z

    move-result v1

    if-eqz v1, :cond_6

    sget-object v1, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "business message is lucky money message, continue"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->mMainHandler:Landroid/os/Handler;

    new-instance v2, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService$12;

    invoke-direct {v2, p0, v0}, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService$12;-><init>(Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;Lcom/miui/luckymoney/model/message/AppMessage;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_6
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
