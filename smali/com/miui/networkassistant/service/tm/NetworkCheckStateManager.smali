.class public Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final MSG_NETWORK_BLOCKED:I = 0x2

.field private static final MSG_NETWORK_CONNECTED:I = 0x1

.field private static final MSG_NETWORK_DIAGNOSTICS_RESULT:I = 0x10

.field private static final NETWORK_CHECK_INTERVAL:J = 0x493e0L

.field private static final TAG:Ljava/lang/String; = "NetworkDiagnostics_CheckStateManager"

.field private static final XM_SF_PACKAGE_NAME:Ljava/lang/String; = "com.xiaomi.xmsf"

.field private static final synthetic sY:[I


# instance fields
.field private mCallState:I

.field private mCheckNetworkThread:Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager$CheckNetworkThread;

.field private mCheckingNetworkType:Lcom/miui/common/network/NetworkUtils$NetworkState;

.field private mCommonConfig:Lcom/miui/networkassistant/config/CommonConfig;

.field private mContext:Landroid/content/Context;

.field private mCurNetworkInterface:Ljava/lang/String;

.field private mCurNetworkState:Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils$NetworkState;

.field private mCurNetworkType:Lcom/miui/common/network/NetworkUtils$NetworkState;

.field mHandler:Landroid/os/Handler;

.field private mNeedCheckedInBackground:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mServers:[Ljava/lang/String;

.field private mSignalStrength:I

.field private mSimCardHelper:Lcom/miui/networkassistant/dual/SimCardHelper;


# direct methods
.method static synthetic -get0(Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager;->mNeedCheckedInBackground:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic -get2(Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager;->mServers:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get3(Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager;)Lcom/miui/networkassistant/dual/SimCardHelper;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager;->mSimCardHelper:Lcom/miui/networkassistant/dual/SimCardHelper;

    return-object v0
.end method

.method static synthetic -set0(Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager;I)I
    .locals 0

    iput p1, p0, Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager;->mCallState:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager;Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils$NetworkState;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager;->onDiagnosticsResult(Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils$NetworkState;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/miui/common/network/NetworkUtils$NetworkState;->aBO:Lcom/miui/common/network/NetworkUtils$NetworkState;

    iput-object v0, p0, Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager;->mCurNetworkType:Lcom/miui/common/network/NetworkUtils$NetworkState;

    iput-object v1, p0, Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager;->mCurNetworkInterface:Ljava/lang/String;

    iput v3, p0, Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager;->mCallState:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager;->mSignalStrength:I

    new-instance v0, Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager$1;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager$1;-><init>(Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager;)V

    iput-object v0, p0, Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager$2;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager$2;-><init>(Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager;)V

    iput-object v0, p0, Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    iput-object p1, p0, Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/networkassistant/dual/SimCardHelper;->getInstance(Landroid/content/Context;)Lcom/miui/networkassistant/dual/SimCardHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager;->mSimCardHelper:Lcom/miui/networkassistant/dual/SimCardHelper;

    iput-object v1, p0, Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager;->mCheckNetworkThread:Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager$CheckNetworkThread;

    sget-object v0, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils$NetworkState;->UNKNOWN:Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils$NetworkState;

    iput-object v0, p0, Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager;->mCurNetworkState:Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils$NetworkState;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager;->mServers:[Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager;->mServers:[Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils;->getCaptivePortalServer(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager;->mServers:[Ljava/lang/String;

    invoke-static {}, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils;->getDefaultCaptivePortalServer()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager;->mNeedCheckedInBackground:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager;->mNeedCheckedInBackground:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/networkassistant/config/CommonConfig;->getInstance(Landroid/content/Context;)Lcom/miui/networkassistant/config/CommonConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager;->mCommonConfig:Lcom/miui/networkassistant/config/CommonConfig;

    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager;->registerPhoneStateListener()V

    return-void
.end method

.method private checkNetworkState()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    const-string/jumbo v0, "NetworkDiagnostics_CheckStateManager"

    const-string/jumbo v1, "checkNetworkState"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager;->mCallState:I

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/common/network/f;->aLZ(Landroid/content/Context;)Lcom/miui/common/network/NetworkUtils$NetworkState;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager;->mCheckingNetworkType:Lcom/miui/common/network/NetworkUtils$NetworkState;

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/common/network/f;->aMa(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    :try_start_0
    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager;->mCheckNetworkThread:Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager$CheckNetworkThread;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager;->mCheckNetworkThread:Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager$CheckNetworkThread;

    invoke-virtual {v0}, Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager$CheckNetworkThread;->cancel()V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager;->mCheckNetworkThread:Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager$CheckNetworkThread;

    new-instance v0, Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager$CheckNetworkThread;

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager;->mServers:[Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager$CheckNetworkThread;-><init>(Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager;[Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager;->mCheckNetworkThread:Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager$CheckNetworkThread;

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager;->mCheckNetworkThread:Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager$CheckNetworkThread;

    invoke-virtual {v0}, Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager$CheckNetworkThread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "NetworkDiagnostics_CheckStateManager"

    const-string/jumbo v2, "NetworkChanged: an exception occured!! "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager;->mCheckNetworkThread:Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager$CheckNetworkThread;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager;->mCheckNetworkThread:Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager$CheckNetworkThread;

    invoke-virtual {v0}, Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager$CheckNetworkThread;->cancel()V

    :cond_3
    iput-object v2, p0, Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager;->mCheckNetworkThread:Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager$CheckNetworkThread;

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/networkassistant/utils/NotificationUtil;->cancelNetworkBlockedNotify(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager;->mNeedCheckedInBackground:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0
.end method

.method private onDiagnosticsResult(Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils$NetworkState;)V
    .locals 4

    const/4 v3, 0x2

    const-string/jumbo v0, "NetworkDiagnostics_CheckStateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDiagnosticsResult ret="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager;->mCurNetworkState:Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils$NetworkState;

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager;->mCheckingNetworkType:Lcom/miui/common/network/NetworkUtils$NetworkState;

    sget-object v1, Lcom/miui/common/network/NetworkUtils$NetworkState;->aBP:Lcom/miui/common/network/NetworkUtils$NetworkState;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager;->mNeedCheckedInBackground:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "com.xiaomi.xmsf"

    invoke-static {v1, v2}, Lmiui/provider/ExtraNetwork;->isMobileRestrict(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :goto_0
    invoke-static {}, Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager;->uU()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils$NetworkState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager;->mNeedCheckedInBackground:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/networkassistant/utils/NotificationUtil;->cancelNetworkBlockedNotify(Landroid/content/Context;)V

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/common/network/f;->aLZ(Landroid/content/Context;)Lcom/miui/common/network/NetworkUtils$NetworkState;

    move-result-object v0

    sget-object v1, Lcom/miui/common/network/NetworkUtils$NetworkState;->aBM:Lcom/miui/common/network/NetworkUtils$NetworkState;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager;->mCheckingNetworkType:Lcom/miui/common/network/NetworkUtils$NetworkState;

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager;->mCurNetworkType:Lcom/miui/common/network/NetworkUtils$NetworkState;

    if-eq v0, v1, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/networkassistant/utils/NotificationUtil;->cancelNetworkBlockedNotify(Landroid/content/Context;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager;->mCommonConfig:Lcom/miui/networkassistant/config/CommonConfig;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/CommonConfig;->isNetworkDiagnosticsFloatNotificationEnabled()Z

    move-result v0

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager;->mCheckingNetworkType:Lcom/miui/common/network/NetworkUtils$NetworkState;

    sget-object v2, Lcom/miui/common/network/NetworkUtils$NetworkState;->aBS:Lcom/miui/common/network/NetworkUtils$NetworkState;

    if-ne v1, v2, :cond_5

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/miui/networkassistant/utils/NotificationUtil;->sendWifiNetworkBlockedNotify(Landroid/content/Context;Z)V

    const-string/jumbo v0, "wifi"

    invoke-static {v0}, Lcom/miui/networkassistant/utils/AnalyticsHelper;->trackNetworkDiagnosticsNotificationShow(Ljava/lang/String;)V

    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager;->mNeedCheckedInBackground:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager;->mHandler:Landroid/os/Handler;

    const-wide/32 v2, 0x493e0

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1

    :cond_5
    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager;->mCheckingNetworkType:Lcom/miui/common/network/NetworkUtils$NetworkState;

    sget-object v2, Lcom/miui/common/network/NetworkUtils$NetworkState;->aBP:Lcom/miui/common/network/NetworkUtils$NetworkState;

    if-ne v1, v2, :cond_4

    iget v1, p0, Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager;->mSignalStrength:I

    const/4 v2, 0x1

    if-le v1, v2, :cond_4

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/miui/networkassistant/utils/NotificationUtil;->sendOtherNetworkBlockedNotify(Landroid/content/Context;Z)V

    const-string/jumbo v0, "other"

    invoke-static {v0}, Lcom/miui/networkassistant/utils/AnalyticsHelper;->trackNetworkDiagnosticsNotificationShow(Ljava/lang/String;)V

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private registerPhoneStateListener()V
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :cond_0
    return-void
.end method

.method private static synthetic uU()[I
    .locals 3

    sget-object v0, Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager;->sY:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager;->sY:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils$NetworkState;->values()[Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils$NetworkState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils$NetworkState;->BLOCKED:Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils$NetworkState;

    invoke-virtual {v1}, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils$NetworkState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    :goto_0
    :try_start_1
    sget-object v1, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils$NetworkState;->CANCELLED:Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils$NetworkState;

    invoke-virtual {v1}, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils$NetworkState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    :goto_1
    :try_start_2
    sget-object v1, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils$NetworkState;->CAPTIVEPORTAL:Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils$NetworkState;

    invoke-virtual {v1}, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils$NetworkState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    :try_start_3
    sget-object v1, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils$NetworkState;->CONNECTED:Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils$NetworkState;

    invoke-virtual {v1}, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils$NetworkState;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    :goto_3
    :try_start_4
    sget-object v1, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils$NetworkState;->UNKNOWN:Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils$NetworkState;

    invoke-virtual {v1}, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils$NetworkState;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_4
    sput-object v0, Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager;->sY:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_1

    :catch_4
    move-exception v1

    goto :goto_0
.end method

.method private unregisterPhoneStateListener()V
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public networkBlocked()V
    .locals 2

    const-string/jumbo v0, "NetworkDiagnostics_CheckStateManager"

    const-string/jumbo v1, "networkBlocked"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager;->mCurNetworkState:Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils$NetworkState;

    sget-object v1, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils$NetworkState;->BLOCKED:Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils$NetworkState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager;->mCurNetworkState:Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils$NetworkState;

    sget-object v1, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils$NetworkState;->CAPTIVEPORTAL:Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils$NetworkState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager;->mNeedCheckedInBackground:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager;->checkNetworkState()V

    :cond_0
    return-void
.end method

.method public networkChanged()V
    .locals 5

    const-string/jumbo v0, "NetworkDiagnostics_CheckStateManager"

    const-string/jumbo v1, "networkChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/common/network/f;->aLZ(Landroid/content/Context;)Lcom/miui/common/network/NetworkUtils$NetworkState;

    move-result-object v1

    sget-object v0, Lcom/miui/common/network/NetworkUtils$NetworkState;->aBM:Lcom/miui/common/network/NetworkUtils$NetworkState;

    if-eq v1, v0, :cond_2

    sget-object v0, Lcom/miui/common/network/NetworkUtils$NetworkState;->aBS:Lcom/miui/common/network/NetworkUtils$NetworkState;

    if-ne v1, v0, :cond_1

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/common/network/f;->aLV(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v2, p0, Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager;->mCurNetworkType:Lcom/miui/common/network/NetworkUtils$NetworkState;

    if-ne v1, v2, :cond_3

    iget-object v2, p0, Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager;->mCurNetworkInterface:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v0, Lcom/miui/common/network/NetworkUtils$NetworkState;->aBM:Lcom/miui/common/network/NetworkUtils$NetworkState;

    if-ne v1, v0, :cond_0

    sget-object v0, Lcom/miui/common/network/NetworkUtils$NetworkState;->aBO:Lcom/miui/common/network/NetworkUtils$NetworkState;

    iput-object v0, p0, Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager;->mCheckingNetworkType:Lcom/miui/common/network/NetworkUtils$NetworkState;

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/common/network/f;->getMobileIface(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string/jumbo v0, ""

    goto :goto_0

    :cond_3
    const-string/jumbo v2, "NetworkDiagnostics_CheckStateManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "NetworkChanged newType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " CurType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager;->mCurNetworkType:Lcom/miui/common/network/NetworkUtils$NetworkState;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils$NetworkState;->UNKNOWN:Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils$NetworkState;

    iput-object v2, p0, Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager;->mCurNetworkState:Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils$NetworkState;

    iput-object v1, p0, Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager;->mCurNetworkType:Lcom/miui/common/network/NetworkUtils$NetworkState;

    iput-object v0, p0, Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager;->mCurNetworkInterface:Ljava/lang/String;

    sget-object v0, Lcom/miui/common/network/NetworkUtils$NetworkState;->aBO:Lcom/miui/common/network/NetworkUtils$NetworkState;

    iput-object v0, p0, Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager;->mCheckingNetworkType:Lcom/miui/common/network/NetworkUtils$NetworkState;

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/networkassistant/utils/NotificationUtil;->cancelNetworkBlockedNotify(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager;->mNeedCheckedInBackground:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public networkConnected()V
    .locals 2

    const-string/jumbo v0, "NetworkDiagnostics_CheckStateManager"

    const-string/jumbo v1, "networkConnected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager;->mCurNetworkState:Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils$NetworkState;

    sget-object v1, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils$NetworkState;->CONNECTED:Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils$NetworkState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/networkassistant/utils/NotificationUtil;->cancelNetworkBlockedNotify(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager;->mNeedCheckedInBackground:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    sget-object v0, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils$NetworkState;->CONNECTED:Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils$NetworkState;

    iput-object v0, p0, Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager;->mCurNetworkState:Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils$NetworkState;

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager;->unregisterPhoneStateListener()V

    return-void
.end method

.method public onLockScreenChange(Landroid/content/Intent;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "android.intent.action.USER_PRESENT"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager;->mCurNetworkState:Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils$NetworkState;

    sget-object v1, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils$NetworkState;->BLOCKED:Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils$NetworkState;

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager;->checkNetworkState()V

    :cond_1
    return-void
.end method

.method public onSignalStrengthChanged(Landroid/telephony/SignalStrength;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils;->getSignalLevel(Landroid/telephony/SignalStrength;)I

    move-result v0

    iput v0, p0, Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager;->mSignalStrength:I

    :cond_0
    return-void
.end method
