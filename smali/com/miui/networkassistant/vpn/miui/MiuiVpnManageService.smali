.class public Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;
.super Landroid/app/Service;
.source ""


# static fields
.field private static final CONTENT_URI_GET_SETTINGS_YUNYOU:Landroid/net/Uri;

.field private static final MIUI_VPN_INFOS:Ljava/lang/String; = "miui_vpn_infos"

.field private static final MIUI_VPN_NAME_XUNYOU:Ljava/lang/String; = "xunyou"

.field private static final MIUI_VPN_TYPE_UNKNOWN:I = 0x0

.field private static final MIUI_VPN_TYPE_XUNYOU:I = 0x4

.field private static final MSG_RESTART_SERVICE:I = 0x106

.field protected static TAG:Ljava/lang/String; = null

.field private static final VPN_PROC_NAME:Ljava/lang/String; = "com.miui.vpnsdkmanager"

.field private static final VPN_STATE_CONNECTED:I = 0x1

.field private static final VPN_STATE_DISCONNECTED:I = 0x3

.field private static final VPN_STATE_NONE:I = 0x0

.field private static final VPN_STATE_PAUSE:I = 0x2


# instance fields
.field private mAppUid:I

.field private final mBackgroundHandler:Landroid/os/Handler;

.field private mBackgroundHandlerCallback:Landroid/os/Handler$Callback;

.field private mCallbackList:Landroid/os/RemoteCallbackList;

.field private final mCloudDataObserver:Landroid/database/ContentObserver;

.field private mCommonConfig:Lcom/miui/networkassistant/config/CommonConfig;

.field private mContext:Landroid/content/Context;

.field private final mHandlerThread:Landroid/os/HandlerThread;

.field private mMiuiVpnDetailInfos:Ljava/util/List;

.field private mMiuiVpnInfos:Ljava/util/Map;

.field private mMiuiVpnManageServiceBinder:Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$MiuiVpnManageServiceBinder;

.field private mMiuiVpnManageServiceCallback:Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$MiuiVpnManageServiceCallback;

.field private mMiuiVpnSdkService:Lcom/miui/vpnsdkmanager/IMiuiVpnSdkService;

.field private mMiuiVpnSdkServiceConnection:Landroid/content/ServiceConnection;

.field private mNetworkConnectivityReceiver:Landroid/content/BroadcastReceiver;

.field private mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

.field private mPendingDestAppInfo:Lcom/miui/networkassistant/vpn/miui/MiuiVpnUtils$WatchPackageInfo;

.field private mProcessObserver:Landroid/app/IProcessObserver;

.field private mScNetworkStatusReceiver:Landroid/content/BroadcastReceiver;

.field private mSuportVpn:Z

.field private mVpnInfoLock:Ljava/lang/Object;

.field private mVpnPkgUid:I

.field private mVpnProcPid:I

.field private mVpnSdkServiceLocker:Ljava/lang/Object;

.field private mVpnState:I

.field private mVpnType:I

.field private mWatchPackages:Ljava/util/Map;


# direct methods
.method static synthetic -get0(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;)I
    .locals 1

    iget v0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mAppUid:I

    return v0
.end method

.method static synthetic -get1(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mBackgroundHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get10(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;)I
    .locals 1

    iget v0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mVpnPkgUid:I

    return v0
.end method

.method static synthetic -get11(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;)I
    .locals 1

    iget v0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mVpnProcPid:I

    return v0
.end method

.method static synthetic -get12(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mVpnSdkServiceLocker:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get13(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;)I
    .locals 1

    iget v0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mVpnState:I

    return v0
.end method

.method static synthetic -get14(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;)I
    .locals 1

    iget v0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mVpnType:I

    return v0
.end method

.method static synthetic -get15(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mWatchPackages:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic -get2(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;)Lcom/miui/networkassistant/config/CommonConfig;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mCommonConfig:Lcom/miui/networkassistant/config/CommonConfig;

    return-object v0
.end method

.method static synthetic -get3(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get4(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mMiuiVpnDetailInfos:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -get5(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mMiuiVpnInfos:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic -get6(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;)Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$MiuiVpnManageServiceCallback;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mMiuiVpnManageServiceCallback:Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$MiuiVpnManageServiceCallback;

    return-object v0
.end method

.method static synthetic -get7(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;)Lcom/miui/vpnsdkmanager/IMiuiVpnSdkService;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mMiuiVpnSdkService:Lcom/miui/vpnsdkmanager/IMiuiVpnSdkService;

    return-object v0
.end method

.method static synthetic -get8(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;)Lcom/miui/networkassistant/vpn/miui/MiuiVpnUtils$WatchPackageInfo;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mPendingDestAppInfo:Lcom/miui/networkassistant/vpn/miui/MiuiVpnUtils$WatchPackageInfo;

    return-object v0
.end method

.method static synthetic -get9(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mVpnInfoLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -set0(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;Lcom/miui/vpnsdkmanager/IMiuiVpnSdkService;)Lcom/miui/vpnsdkmanager/IMiuiVpnSdkService;
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mMiuiVpnSdkService:Lcom/miui/vpnsdkmanager/IMiuiVpnSdkService;

    return-object p1
.end method

.method static synthetic -set1(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;Lcom/miui/networkassistant/vpn/miui/MiuiVpnUtils$WatchPackageInfo;)Lcom/miui/networkassistant/vpn/miui/MiuiVpnUtils$WatchPackageInfo;
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mPendingDestAppInfo:Lcom/miui/networkassistant/vpn/miui/MiuiVpnUtils$WatchPackageInfo;

    return-object p1
.end method

.method static synthetic -set2(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;I)I
    .locals 0

    iput p1, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mVpnProcPid:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->getVpnEnabled(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->setSettingEx(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap10(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->getSettingEx(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap11(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->getSetting(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap12(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->getSupportVpn()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap13(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;Ljava/lang/String;)Ljava/util/List;
    .locals 1

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->getSupportApps(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap14(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->forceUpdateCloudData()V

    return-void
.end method

.method static synthetic -wrap15(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->getCoupons()V

    return-void
.end method

.method static synthetic -wrap16(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;ILjava/util/List;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->onQueryCouponsResult(ILjava/util/List;)V

    return-void
.end method

.method static synthetic -wrap17(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->onVpnStateChanged(IILjava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap18(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->onWatchPackageDied(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap19(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->parseMiuiVpnInfos(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap20(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageServiceCallback;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->registerCallback(Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageServiceCallback;)V

    return-void
.end method

.method static synthetic -wrap21(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->restartService()V

    return-void
.end method

.method static synthetic -wrap22(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->unbindVpnSdkService()V

    return-void
.end method

.method static synthetic -wrap23(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageServiceCallback;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->unregisterCallback(Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageServiceCallback;)V

    return-void
.end method

.method static synthetic -wrap24(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->updateMiuiVpnInfos(Z)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;I)Lcom/miui/networkassistant/vpn/miui/MiuiVpnUtils$MiuiVpnDetailInfo;
    .locals 1

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->getMiuiVpnDetailInfo(I)Lcom/miui/networkassistant/vpn/miui/MiuiVpnUtils$MiuiVpnDetailInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap4(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->connectVpn(I)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap5(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;Ljava/lang/String;)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->connectVpn(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap6(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;)I
    .locals 1

    invoke-direct {p0}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->disconnectVpn()I

    move-result v0

    return v0
.end method

.method static synthetic -wrap7(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->init(I)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap8(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;Ljava/lang/String;)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->init(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap9(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;Ljava/lang/String;Ljava/lang/String;Z)I
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->setVpnEnabled(Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "content://com.miui.vpnsdkmanager/settings/xunyou"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->CONTENT_URI_GET_SETTINGS_YUNYOU:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    iput v0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mVpnType:I

    iput v0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mVpnState:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mAppUid:I

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mWatchPackages:Ljava/util/Map;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mMiuiVpnInfos:Ljava/util/Map;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mMiuiVpnDetailInfos:Ljava/util/List;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mVpnInfoLock:Ljava/lang/Object;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mVpnSdkServiceLocker:Ljava/lang/Object;

    iput v0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mVpnProcPid:I

    iput v0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mVpnPkgUid:I

    new-instance v1, Landroid/os/RemoteCallbackList;

    invoke-direct {v1}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v1, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mCallbackList:Landroid/os/RemoteCallbackList;

    new-instance v1, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$1;

    invoke-direct {v1, p0}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$1;-><init>(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;)V

    iput-object v1, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mNetworkConnectivityReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$2;

    invoke-direct {v1, p0}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$2;-><init>(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;)V

    iput-object v1, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mScNetworkStatusReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$3;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$3;-><init>(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mCloudDataObserver:Landroid/database/ContentObserver;

    new-instance v1, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$4;

    invoke-direct {v1, p0}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$4;-><init>(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;)V

    iput-object v1, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mProcessObserver:Landroid/app/IProcessObserver;

    new-instance v1, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$5;

    invoke-direct {v1, p0}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$5;-><init>(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;)V

    iput-object v1, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mBackgroundHandlerCallback:Landroid/os/Handler$Callback;

    new-instance v1, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$MiuiVpnPackageMonitor;

    invoke-direct {v1, p0, v3}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$MiuiVpnPackageMonitor;-><init>(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$MiuiVpnPackageMonitor;)V

    iput-object v1, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    new-instance v1, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$6;

    invoke-direct {v1, p0}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$6;-><init>(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;)V

    iput-object v1, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mMiuiVpnSdkServiceConnection:Landroid/content/ServiceConnection;

    new-instance v1, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$MiuiVpnManageServiceCallback;

    invoke-direct {v1, p0, v3}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$MiuiVpnManageServiceCallback;-><init>(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$MiuiVpnManageServiceCallback;)V

    iput-object v1, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mMiuiVpnManageServiceCallback:Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$MiuiVpnManageServiceCallback;

    new-instance v1, Landroid/os/HandlerThread;

    sget-object v2, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->TAG:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mHandlerThread:Landroid/os/HandlerThread;

    iget-object v1, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mBackgroundHandlerCallback:Landroid/os/Handler$Callback;

    invoke-direct {v1, v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mBackgroundHandler:Landroid/os/Handler;

    sget-boolean v1, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_INTERNATIONAL_BUILD:Z

    if-nez v1, :cond_0

    sget-boolean v0, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_L_OR_LATER:Z

    :cond_0
    iput-boolean v0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mSuportVpn:Z

    return-void
.end method

.method private bindVpnSdkService()V
    .locals 5

    iget-boolean v0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mSuportVpn:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mVpnSdkServiceLocker:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mMiuiVpnSdkService:Lcom/miui/vpnsdkmanager/IMiuiVpnSdkService;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Vpn sdk service already bound"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :cond_1
    monitor-exit v1

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.miui.vpnsdkmanager.SDK_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "com.miui.vpnsdkmanager"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mMiuiVpnSdkServiceConnection:Landroid/content/ServiceConnection;

    invoke-static {}, Lcom/miui/common/b/f;->aHT()Landroid/os/UserHandle;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v1, v0, v2, v4, v3}, Lcom/miui/common/b/n;->aIK(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)V

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private checkNetworkPolicy(I)Z
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Lcom/miui/networkassistant/utils/PrivacyDeclareAndAllowNetworkUtil;->isAllowNetwork()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "checkNetworkPolicy. SecurityCenter is not allow connect network"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_0
    const-string/jumbo v0, "com.miui.vpnsdkmanager"

    invoke-static {v0}, Lmiui/securitycenter/NetworkUtils;->vpnPrepareAndAuthorize(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/miui/networkassistant/utils/PackageUtil;->getUidByPackageName(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mVpnPkgUid:I

    iget v1, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mVpnPkgUid:I

    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/miui/networkassistant/firewall/BackgroundPolicyService;->getInstance(Landroid/content/Context;)Lcom/miui/networkassistant/firewall/BackgroundPolicyService;

    move-result-object v1

    iget v2, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mVpnPkgUid:I

    invoke-virtual {v1, v0, v2}, Lcom/miui/networkassistant/firewall/BackgroundPolicyService;->isAppRestrictBackground(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mVpnPkgUid:I

    invoke-virtual {v1, v2, v3}, Lcom/miui/networkassistant/firewall/BackgroundPolicyService;->setAppRestrictBackground(IZ)V

    :cond_1
    iget-object v1, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lmiui/provider/ExtraNetwork;->isMobileRestrict(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mContext:Landroid/content/Context;

    invoke-static {v1, v0, v3}, Lmiui/provider/ExtraNetwork;->setMobileRestrict(Landroid/content/Context;Ljava/lang/String;Z)Z

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method private connectVpn(I)I
    .locals 6

    const/4 v0, 0x0

    sget-object v1, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "connectVpn. uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mAppUid:I

    const/4 v1, 0x1

    iput v1, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mVpnState:I

    iget-object v2, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mVpnSdkServiceLocker:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mMiuiVpnSdkService:Lcom/miui/vpnsdkmanager/IMiuiVpnSdkService;

    if-nez v1, :cond_0

    sget-object v1, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "connectVpn. sdkService is null. please call init first."

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v2

    return v0

    :cond_0
    :try_start_1
    iget v1, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mVpnType:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    packed-switch v1, :pswitch_data_0

    move v1, v0

    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mMiuiVpnSdkService:Lcom/miui/vpnsdkmanager/IMiuiVpnSdkService;

    invoke-interface {v0}, Lcom/miui/vpnsdkmanager/IMiuiVpnSdkService;->bxD()I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    :try_start_3
    sget-object v1, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "connectVpn. ret="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v5, v1

    move v1, v0

    move-object v0, v5

    :goto_1
    :try_start_4
    sget-object v3, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "connectVpn"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move v0, v1

    goto :goto_0

    :pswitch_0
    :try_start_5
    iget-object v1, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mMiuiVpnSdkService:Lcom/miui/vpnsdkmanager/IMiuiVpnSdkService;

    invoke-interface {v1, p1}, Lcom/miui/vpnsdkmanager/IMiuiVpnSdkService;->bxF(I)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result v1

    :try_start_6
    sget-object v0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "parpareApp. ret="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v1, :cond_1

    monitor-exit v2

    return v1

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :catch_1
    move-exception v0

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method private connectVpn(Ljava/lang/String;)I
    .locals 10

    const/4 v9, -0x1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v9

    :cond_0
    iget v0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mVpnType:I

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "connectVpn: vpnSdkService is null. please call init first."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v9

    :pswitch_0
    iget v0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mVpnType:I

    invoke-direct {p0, v0}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->getMiuiVpnDetailInfo(I)Lcom/miui/networkassistant/vpn/miui/MiuiVpnUtils$MiuiVpnDetailInfo;

    move-result-object v0

    if-nez v0, :cond_1

    return v9

    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/miui/common/b/k;->aIr(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v1

    if-nez v1, :cond_2

    sget-object v0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "connectVpn. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " not installed."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v9

    :cond_2
    invoke-virtual {v0, p1}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnUtils$MiuiVpnDetailInfo;->addPackage(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mWatchPackages:Ljava/util/Map;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mWatchPackages:Ljava/util/Map;

    iget-object v3, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Lcom/miui/networkassistant/vpn/miui/MiuiVpnUtils$WatchPackageInfo;

    iget-object v5, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v6, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnUtils$WatchPackageInfo;-><init>(ILjava/lang/String;ZI)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v2

    iget-object v0, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-direct {p0, v0}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->connectVpn(I)I

    move-result v0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "connectVpn. An exception occurred!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v9

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method private convertVpnNameToType(Ljava/lang/String;)I
    .locals 1

    const-string/jumbo v0, "xunyou"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private disconnectVpn()I
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "disconnectVpn. mVpnType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mVpnType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x3

    iput v0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mVpnState:I

    iput v3, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mVpnType:I

    invoke-direct {p0}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->unbindVpnSdkService()V

    return v3
.end method

.method private forceUpdateCloudData()V
    .locals 2

    sget-object v0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "forceUpdateCloudData"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/miui/securitycenter/a;->brN()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$7;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$7;-><init>(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;)V

    invoke-static {v0}, Lcom/miui/common/a/b/a;->aGz(Ljava/lang/Runnable;)V

    return-void
.end method

.method private getCoupons()V
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mMiuiVpnSdkService:Lcom/miui/vpnsdkmanager/IMiuiVpnSdkService;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mMiuiVpnSdkService:Lcom/miui/vpnsdkmanager/IMiuiVpnSdkService;

    invoke-interface {v0}, Lcom/miui/vpnsdkmanager/IMiuiVpnSdkService;->getCoupons()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "getCoupons: An exception occurred!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "getCoupons: vpnSdkService is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getMiuiVpnDetailInfo(I)Lcom/miui/networkassistant/vpn/miui/MiuiVpnUtils$MiuiVpnDetailInfo;
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p1, :cond_0

    return-object v1

    :cond_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-gt v2, v3, :cond_1

    sget-object v0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unsupported VPN. type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " SDK_INT="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_1
    iget-object v3, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mVpnInfoLock:Ljava/lang/Object;

    monitor-enter v3

    move v2, v0

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mMiuiVpnDetailInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_4

    iget-object v0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mMiuiVpnDetailInfos:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnUtils$MiuiVpnDetailInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnUtils$MiuiVpnDetailInfo;->getType()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-ne v4, p1, :cond_3

    :goto_1
    monitor-exit v3

    if-nez v0, :cond_2

    sget-object v1, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unsupported VPN. type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-object v0

    :cond_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0

    :cond_4
    move-object v0, v1

    goto :goto_1
.end method

.method private getSetting(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mMiuiVpnSdkService:Lcom/miui/vpnsdkmanager/IMiuiVpnSdkService;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mMiuiVpnSdkService:Lcom/miui/vpnsdkmanager/IMiuiVpnSdkService;

    invoke-interface {v0, p1, p2}, Lcom/miui/vpnsdkmanager/IMiuiVpnSdkService;->getSetting(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "getSetting: An exception occurred!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-object p2

    :cond_0
    sget-object v0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "getSetting: vpnSdkService is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getSettingEx(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->convertVpnNameToType(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->getMiuiVpnDetailInfo(I)Lcom/miui/networkassistant/vpn/miui/MiuiVpnUtils$MiuiVpnDetailInfo;

    move-result-object v1

    if-nez v1, :cond_0

    const-string/jumbo v0, ""

    return-object v0

    :cond_0
    packed-switch v0, :pswitch_data_0

    :goto_0
    if-nez v2, :cond_1

    sget-object v0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "getSettingEx return null!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p3

    :pswitch_0
    iget-object v0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->CONTENT_URI_GET_SETTINGS_YUNYOU:Landroid/net/Uri;

    move-object v3, p2

    move-object v4, v2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    return-object v0

    :cond_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    return-object p3

    :catchall_0
    move-exception v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method private getSupportApps(Ljava/lang/String;)Ljava/util/List;
    .locals 6

    const/4 v5, 0x0

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->convertVpnNameToType(Ljava/lang/String;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    return-object v5

    :pswitch_0
    iget-object v3, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mVpnInfoLock:Ljava/lang/Object;

    monitor-enter v3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mMiuiVpnDetailInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mMiuiVpnDetailInfos:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnUtils$MiuiVpnDetailInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnUtils$MiuiVpnDetailInfo;->getType()I

    move-result v4

    if-ne v4, v2, :cond_0

    invoke-virtual {v0}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnUtils$MiuiVpnDetailInfo;->getPackages()Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v3

    return-object v0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    monitor-exit v3

    return-object v5

    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method private getSupportVpn()Ljava/lang/String;
    .locals 5

    const-string/jumbo v0, ""

    iget-object v2, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mVpnInfoLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mMiuiVpnInfos:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v0, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-object v0

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mMiuiVpnInfos:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnInfo;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v0}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnInfo;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_1
    move-object v1, v0

    goto :goto_0

    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnInfo;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_1

    :cond_2
    monitor-exit v2

    return-object v1

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method private getVpnEnabled(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mCommonConfig:Lcom/miui/networkassistant/config/CommonConfig;

    invoke-virtual {v0, p1, p2}, Lcom/miui/networkassistant/config/CommonConfig;->getVpnState(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private init(I)I
    .locals 5

    const/4 v1, -0x1

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->checkNetworkPolicy(I)Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->getMiuiVpnDetailInfo(I)Lcom/miui/networkassistant/vpn/miui/MiuiVpnUtils$MiuiVpnDetailInfo;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    iput p1, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mVpnType:I

    iget-object v1, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mVpnSdkServiceLocker:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mMiuiVpnSdkService:Lcom/miui/vpnsdkmanager/IMiuiVpnSdkService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_2

    :try_start_1
    invoke-virtual {v0}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnUtils$MiuiVpnDetailInfo;->getPackages()Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mMiuiVpnSdkService:Lcom/miui/vpnsdkmanager/IMiuiVpnSdkService;

    iget v3, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mVpnType:I

    invoke-interface {v2, v3, v0}, Lcom/miui/vpnsdkmanager/IMiuiVpnSdkService;->bxG(ILjava/util/List;)I

    move-result v0

    sget-object v2, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "prepareVpn. ret="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return v0

    :catch_0
    move-exception v0

    :try_start_2
    sget-object v2, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "init: An exception occurred!"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    monitor-exit v1

    const/4 v0, 0x0

    return v0

    :cond_2
    :try_start_3
    invoke-direct {p0}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->bindVpnSdkService()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private init(Ljava/lang/String;)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->convertVpnNameToType(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->init(I)I

    move-result v0

    return v0
.end method

.method private onQueryCouponsResult(ILjava/util/List;)V
    .locals 5

    iget-object v2, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mCallbackList:Landroid/os/RemoteCallbackList;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mCallbackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    :goto_0
    if-lez v0, :cond_0

    add-int/lit8 v1, v0, -0x1

    :try_start_1
    iget-object v0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mCallbackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageServiceCallback;

    invoke-interface {v0, p1, p2}, Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageServiceCallback;->onQueryCouponsResult(ILjava/util/List;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    sget-object v3, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "onQueryCouponsResult. an exception occurred!"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_0
    :try_start_3
    iget-object v0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mCallbackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v2

    return-void
.end method

.method private onVpnStateChanged(IILjava/lang/String;)V
    .locals 5

    iget v0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mVpnType:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mVpnType:I

    if-ne v0, p1, :cond_0

    iput p2, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mVpnState:I

    :cond_0
    iget-object v2, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mCallbackList:Landroid/os/RemoteCallbackList;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mCallbackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    :goto_0
    if-lez v0, :cond_1

    add-int/lit8 v1, v0, -0x1

    :try_start_1
    iget-object v0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mCallbackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageServiceCallback;

    invoke-interface {v0, p1, p2, p3}, Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageServiceCallback;->onVpnStateChanged(IILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    sget-object v3, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "onVpnStateChanged. an exception occurred!"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_1
    :try_start_3
    iget-object v0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mCallbackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v2

    return-void
.end method

.method private onWatchPackageDied(ILjava/lang/String;)V
    .locals 1

    iget v0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mVpnType:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$9;

    invoke-direct {v0, p0, p1}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$9;-><init>(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;I)V

    invoke-static {v0}, Lcom/miui/common/a/b/a;->aGz(Ljava/lang/Runnable;)V

    return-void
.end method

.method private parseMiuiVpnInfos(Ljava/lang/String;)V
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "version"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    const-string/jumbo v1, "version"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    invoke-direct {p0, v0}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->parseMiuiVpnInfos(Lorg/json/JSONObject;)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    invoke-static {}, Lcom/miui/networkassistant/utils/DeviceUtil;->getMiuiVersionType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    return-void

    :cond_4
    invoke-direct {p0, v0}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->parseMiuiVpnInfos(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "parseMiuiVpnInfos"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private parseMiuiVpnInfos(Lorg/json/JSONObject;)V
    .locals 18

    :try_start_0
    const-string/jumbo v1, "miuiVpnInfos"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const-string/jumbo v1, "miuiVpnInfos"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v12

    if-nez v12, :cond_1

    return-void

    :cond_1
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v11, v1

    :goto_0
    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v11, v1, :cond_b

    invoke-virtual {v12, v11}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    if-nez v1, :cond_3

    :cond_2
    :goto_1
    add-int/lit8 v1, v11, 0x1

    move v11, v1

    goto :goto_0

    :cond_3
    const-string/jumbo v2, "id"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "name"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_2

    const-string/jumbo v2, "id"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string/jumbo v3, "name"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    packed-switch v2, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const-string/jumbo v4, "xunyou"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string/jumbo v4, "describe"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "detailInfoUrl"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "operator"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v16

    const-string/jumbo v6, "supportPkgs"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string/jumbo v6, "minAndroidSdk"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    const-string/jumbo v6, "minAndroidSdk"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    :goto_2
    const-string/jumbo v6, "purchaseNotificationTitle"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    const-string/jumbo v6, "purchaseNotificationTitle"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    :goto_3
    const-string/jumbo v6, "purchaseNotificationSummary"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    const-string/jumbo v6, "purchaseNotificationSummary"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    :goto_4
    const-string/jumbo v6, "autoStart"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    const-string/jumbo v6, "autoStart"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    :goto_5
    new-instance v1, Lcom/miui/networkassistant/vpn/miui/MiuiVpnInfo;

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnInfo;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v4, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "parseMiuiVpnInfos. id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " name="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v3, ","

    move-object/from16 v0, v17

    invoke-static {v0, v3}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    new-instance v3, Lcom/miui/networkassistant/vpn/miui/MiuiVpnUtils$MiuiVpnDetailInfo;

    invoke-static/range {v17 .. v17}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    move v4, v2

    move/from16 v5, v16

    invoke-direct/range {v3 .. v10}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnUtils$MiuiVpnDetailInfo;-><init>(IILjava/util/List;IZLjava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v14, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v15, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v8, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "second_user_id"

    const/16 v3, -0x2710

    invoke-static {v1, v2, v3}, Lcom/miui/a/e/b;->bud(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v3, "xspace_enabled"

    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Landroid/provider/MiuiSettings$Secure;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v3

    const/4 v1, 0x0

    :goto_6
    move-object/from16 v0, v17

    array-length v4, v0

    if-ge v1, v4, :cond_2

    aget-object v4, v17, v1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mContext:Landroid/content/Context;

    invoke-static {v5, v4}, Lcom/miui/common/b/k;->aIr(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v5

    if-eqz v5, :cond_4

    iget-object v6, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-instance v7, Lcom/miui/networkassistant/vpn/miui/MiuiVpnUtils$WatchPackageInfo;

    iget-object v8, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct {v7, v8, v5, v9, v10}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnUtils$WatchPackageInfo;-><init>(ILjava/lang/String;ZI)V

    invoke-interface {v13, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    const/16 v5, -0x2710

    if-eq v2, v5, :cond_5

    const/4 v5, 0x0

    invoke-static {v4, v5, v2}, Lcom/miui/a/d/a/a;->bub(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v5

    if-eqz v5, :cond_5

    iget-object v6, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-instance v7, Lcom/miui/networkassistant/vpn/miui/MiuiVpnUtils$WatchPackageInfo;

    iget-object v8, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct {v7, v8, v5, v9, v10}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnUtils$WatchPackageInfo;-><init>(ILjava/lang/String;ZI)V

    invoke-interface {v13, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    if-eqz v3, :cond_6

    const/4 v5, 0x0

    const/16 v6, 0x3e7

    invoke-static {v4, v5, v6}, Lcom/miui/a/d/a/a;->bub(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v4

    if-eqz v4, :cond_6

    iget-object v5, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Lcom/miui/networkassistant/vpn/miui/MiuiVpnUtils$WatchPackageInfo;

    iget-object v7, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct {v6, v7, v4, v8, v9}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnUtils$WatchPackageInfo;-><init>(ILjava/lang/String;ZI)V

    invoke-interface {v13, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_7
    const/4 v7, 0x0

    goto/16 :goto_2

    :cond_8
    const/4 v9, 0x0

    goto/16 :goto_3

    :cond_9
    const/4 v10, 0x0

    goto/16 :goto_4

    :cond_a
    const/4 v8, 0x1

    goto/16 :goto_5

    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mVpnInfoLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mMiuiVpnInfos:Ljava/util/Map;

    invoke-interface {v1, v14}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mMiuiVpnDetailInfos:Ljava/util/List;

    invoke-interface {v1, v15}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mWatchPackages:Ljava/util/Map;

    monitor-enter v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mWatchPackages:Ljava/util/Map;

    invoke-interface {v1, v13}, Ljava/util/Map;->putAll(Ljava/util/Map;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    monitor-exit v2

    :goto_7
    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v1

    sget-object v2, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "parseMiuiVpnInfos"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7

    :catchall_1
    move-exception v1

    :try_start_5
    monitor-exit v2

    throw v1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method private registerCallback(Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageServiceCallback;)V
    .locals 2

    sget-object v0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "registerCallback"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mCallbackList:Landroid/os/RemoteCallbackList;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mCallbackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private registerCloudDataObserver()V
    .locals 4

    invoke-virtual {p0}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {}, Landroid/provider/MiuiSettings$SettingsCloudData;->getCloudDataNotifyUri()Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mCloudDataObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method private registerNetworkConnectivityReceiver()V
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mNetworkConnectivityReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private registerProcessObserver()V
    .locals 2

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mProcessObserver:Landroid/app/IProcessObserver;

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->registerProcessObserver(Landroid/app/IProcessObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "registerProcessObserver: could not get IActivityManager"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private registerScNetworkStatusReceiver()V
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "action_update_sc_network_allow"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mScNetworkStatusReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private restartService()V
    .locals 2

    sget-object v0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "restartService"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$11;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$11;-><init>(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;)V

    invoke-static {v0}, Lcom/miui/common/a/b/a;->aGz(Ljava/lang/Runnable;)V

    return-void
.end method

.method private setSetting(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mMiuiVpnSdkService:Lcom/miui/vpnsdkmanager/IMiuiVpnSdkService;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mMiuiVpnSdkService:Lcom/miui/vpnsdkmanager/IMiuiVpnSdkService;

    invoke-interface {v0, p1, p2}, Lcom/miui/vpnsdkmanager/IMiuiVpnSdkService;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setSetting: An exception occurred!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 v0, 0x0

    return v0

    :cond_0
    sget-object v0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setSetting: vpnSdkService is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setSettingEx(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    const/4 v4, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->convertVpnNameToType(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->getMiuiVpnDetailInfo(I)Lcom/miui/networkassistant/vpn/miui/MiuiVpnUtils$MiuiVpnDetailInfo;

    move-result-object v2

    if-nez v2, :cond_0

    return v0

    :cond_0
    packed-switch v1, :pswitch_data_0

    return v0

    :pswitch_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v1, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->CONTENT_URI_GET_SETTINGS_YUNYOU:Landroid/net/Uri;

    invoke-virtual {v2, v3, v1, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method private setVpnEnabled(Ljava/lang/String;Ljava/lang/String;Z)I
    .locals 3

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mCommonConfig:Lcom/miui/networkassistant/config/CommonConfig;

    if-eqz p3, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, p1, p2, v0}, Lcom/miui/networkassistant/config/CommonConfig;->setVpnState(Ljava/lang/String;Ljava/lang/String;I)Z

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->convertVpnNameToType(Ljava/lang/String;)I

    move-result v0

    new-instance v2, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$8;

    invoke-direct {v2, p0, p3, v0}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$8;-><init>(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;ZI)V

    invoke-static {v2}, Lcom/miui/common/a/b/a;->aGz(Ljava/lang/Runnable;)V

    return v1

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method private unRegisterNetworkConnectivityReceiver()V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mNetworkConnectivityReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method private unRegisterProcessObserver()V
    .locals 2

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mProcessObserver:Landroid/app/IProcessObserver;

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->unregisterProcessObserver(Landroid/app/IProcessObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "unRegisterProcessObserver: could not get IActivityManager"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private unRegisterScNetworkStatusReceiver()V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mScNetworkStatusReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method private unbindVpnSdkService()V
    .locals 4

    iget-boolean v0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mSuportVpn:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mVpnSdkServiceLocker:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mMiuiVpnSdkService:Lcom/miui/vpnsdkmanager/IMiuiVpnSdkService;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_1

    :try_start_1
    iget-object v0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mMiuiVpnSdkService:Lcom/miui/vpnsdkmanager/IMiuiVpnSdkService;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcom/miui/vpnsdkmanager/IMiuiVpnSdkService;->registerCallback(Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageServiceCallback;)V

    iget-object v0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mMiuiVpnSdkService:Lcom/miui/vpnsdkmanager/IMiuiVpnSdkService;

    invoke-interface {v0}, Lcom/miui/vpnsdkmanager/IMiuiVpnSdkService;->disconnectVpn()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_0
    :try_start_2
    iget-object v0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mMiuiVpnSdkServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_1
    const/4 v0, 0x0

    :try_start_3
    iput v0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mVpnProcPid:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mPendingDestAppInfo:Lcom/miui/networkassistant/vpn/miui/MiuiVpnUtils$WatchPackageInfo;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mMiuiVpnSdkService:Lcom/miui/vpnsdkmanager/IMiuiVpnSdkService;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    monitor-exit v1

    return-void

    :catch_0
    move-exception v0

    :try_start_4
    sget-object v2, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "unbindVpnSdkService"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_5
    sget-object v2, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "unbindVpnSdkService"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    const/4 v0, 0x0

    :try_start_6
    iput v0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mVpnProcPid:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mPendingDestAppInfo:Lcom/miui/networkassistant/vpn/miui/MiuiVpnUtils$WatchPackageInfo;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mMiuiVpnSdkService:Lcom/miui/vpnsdkmanager/IMiuiVpnSdkService;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :catchall_1
    move-exception v0

    const/4 v2, 0x0

    :try_start_7
    iput v2, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mVpnProcPid:I

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mPendingDestAppInfo:Lcom/miui/networkassistant/vpn/miui/MiuiVpnUtils$WatchPackageInfo;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mMiuiVpnSdkService:Lcom/miui/vpnsdkmanager/IMiuiVpnSdkService;

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
.end method

.method private unregisterCallback(Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageServiceCallback;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mCallbackList:Landroid/os/RemoteCallbackList;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mCallbackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private updateMiuiVpnInfos(Z)V
    .locals 2

    sget-object v0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "updateMiuiVpnInfos"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$10;

    invoke-direct {v0, p0, p1}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$10;-><init>(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;Z)V

    invoke-static {v0}, Lcom/miui/common/a/b/a;->aGz(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    iget-boolean v0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mSuportVpn:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mMiuiVpnManageServiceBinder:Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$MiuiVpnManageServiceBinder;

    invoke-virtual {v0}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$MiuiVpnManageServiceBinder;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()V
    .locals 5

    const/4 v4, 0x0

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    sget-object v0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/networkassistant/config/CommonConfig;->getInstance(Landroid/content/Context;)Lcom/miui/networkassistant/config/CommonConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mCommonConfig:Lcom/miui/networkassistant/config/CommonConfig;

    new-instance v0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$MiuiVpnManageServiceBinder;

    invoke-direct {v0, p0, v4}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$MiuiVpnManageServiceBinder;-><init>(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$MiuiVpnManageServiceBinder;)V

    iput-object v0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mMiuiVpnManageServiceBinder:Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$MiuiVpnManageServiceBinder;

    iget-boolean v0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mSuportVpn:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->registerProcessObserver()V

    iget-object v0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    iget-object v1, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->updateMiuiVpnInfos(Z)V

    invoke-direct {p0}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->registerCloudDataObserver()V

    :cond_0
    invoke-direct {p0}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->registerNetworkConnectivityReceiver()V

    invoke-direct {p0}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->registerScNetworkStatusReceiver()V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    invoke-direct {p0}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->unbindVpnSdkService()V

    invoke-direct {p0}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->unRegisterNetworkConnectivityReceiver()V

    invoke-direct {p0}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->unRegisterScNetworkStatusReceiver()V

    iget-boolean v0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mSuportVpn:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->unRegisterProcessObserver()V

    iget-object v0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {v0}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    :cond_0
    return-void
.end method

.method public refreshUserState()I
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mMiuiVpnSdkService:Lcom/miui/vpnsdkmanager/IMiuiVpnSdkService;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->mMiuiVpnSdkService:Lcom/miui/vpnsdkmanager/IMiuiVpnSdkService;

    invoke-interface {v0}, Lcom/miui/vpnsdkmanager/IMiuiVpnSdkService;->refreshUserState()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "refreshUserState: An exception occurred!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 v0, 0x0

    return v0

    :cond_0
    sget-object v0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "refreshUserState: vpnSdkService is null. please call init first."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
