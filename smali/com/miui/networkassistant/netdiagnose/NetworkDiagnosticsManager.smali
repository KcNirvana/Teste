.class public Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsManager;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String; = "NetworkDiagnostics_Manager"

.field private static mNetworkDiagnosticManager:Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurNetworkState:Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils$NetworkState;

.field private mDiagnosingNetworkInterface:Ljava/lang/String;

.field private mDiagnosingNetworkType:I

.field private mIsInternetByUsbShareNetEnable:Z

.field private mServers:[Ljava/lang/String;


# direct methods
.method static synthetic -get0(Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsManager;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsManager;->mContext:Landroid/content/Context;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsManager;->mServers:[Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsManager;->mServers:[Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils;->getCaptivePortalServer(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v0, p0, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsManager;->mServers:[Ljava/lang/String;

    invoke-static {}, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils;->getDefaultCaptivePortalServer()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsManager;->mDiagnosingNetworkType:I

    sget-object v0, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils$NetworkState;->UNKNOWN:Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils$NetworkState;

    iput-object v0, p0, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsManager;->mCurNetworkState:Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils$NetworkState;

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsManager;
    .locals 3

    const-class v1, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsManager;->mNetworkDiagnosticManager:Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsManager;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsManager;->mNetworkDiagnosticManager:Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsManager;

    :cond_0
    sget-object v0, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsManager;->mNetworkDiagnosticManager:Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getMobileDataDNS1()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "net.dns1"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getMobileDataDNS2()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "net.dns2"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getWlanDns1()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object v0

    iget v0, v0, Landroid/net/DhcpInfo;->dns1:I

    invoke-static {v0}, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils;->intToStrIpAddress(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getWlanDns2()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object v0

    iget v0, v0, Landroid/net/DhcpInfo;->dns2:I

    invoke-static {v0}, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils;->intToStrIpAddress(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private showVpn()Ljava/lang/String;
    .locals 4

    const-string/jumbo v0, "vpn.dns1"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "vpn.dns2"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "vpn.dns1="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "vpn.dns2="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public checkNetworkState()Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils$NetworkState;
    .locals 5

    sget-object v1, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils$NetworkState;->UNKNOWN:Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils$NetworkState;

    :try_start_0
    new-instance v2, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsManager$CheckNetworkStateTask;

    iget-object v0, p0, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsManager;->mServers:[Ljava/lang/String;

    invoke-direct {v2, p0, v0}, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsManager$CheckNetworkStateTask;-><init>(Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsManager;[Ljava/lang/String;)V

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/util/concurrent/Callable;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/concurrent/ExecutorService;->invokeAll(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    const/4 v0, 0x0

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v0, "NetworkDiagnostics_Manager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "checkNetworkState isCancelled......task=."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils$NetworkState;->CANCELLED:Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils$NetworkState;

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils$NetworkState;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->printStackTrace()V

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    move-object v0, v1

    goto :goto_0
.end method

.method public checkWlanConnected()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/common/network/f;->aLT(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public getActiveNetworkState()Landroid/net/NetworkInfo$DetailedState;
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {p0}, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsManager;->getActiveNetworkType()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    return-object v0
.end method

.method public getActiveNetworkType()I
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public getCurNetworkState()Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils$NetworkState;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsManager;->mCurNetworkState:Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils$NetworkState;

    return-object v0
.end method

.method public getDiagnosingNetworkInterface()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsManager;->mDiagnosingNetworkInterface:Ljava/lang/String;

    return-object v0
.end method

.method public getDiagnosingNetworkType()I
    .locals 1

    iget v0, p0, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsManager;->mDiagnosingNetworkType:I

    return v0
.end method

.method public isInternetByUsbshareNetEnable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsManager;->mIsInternetByUsbShareNetEnable:Z

    return v0
.end method

.method public isMobileDataEnable()Z
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/common/network/f;->aMf(Landroid/content/Context;)Z

    move-result v0

    iget-object v1, p0, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/miui/networkassistant/utils/TelephonyUtil;->isAirModeOn(Landroid/content/Context;)Z

    move-result v1

    if-eqz v0, :cond_0

    xor-int/lit8 v0, v1, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isWifiEnable()Z
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    return v0
.end method

.method public reopenWifi()Ljava/lang/Boolean;
    .locals 6

    const/4 v5, 0x0

    :try_start_0
    new-instance v0, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsManager$reopenTask;

    const-wide/16 v2, 0x5

    invoke-direct {v0, p0, v2, v3}, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsManager$reopenTask;-><init>(Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsManager;J)V

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/util/concurrent/Callable;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-wide/16 v2, 0x2710

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v0, v2, v3, v4}, Ljava/util/concurrent/ExecutorService;->invokeAll(Ljava/util/Collection;JLjava/util/concurrent/TimeUnit;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public setCurNetworkState(Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils$NetworkState;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsManager;->mCurNetworkState:Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils$NetworkState;

    return-void
.end method

.method public setDiagnosingNetworkInterface(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsManager;->mDiagnosingNetworkInterface:Ljava/lang/String;

    return-void
.end method

.method public setDiagnosingNetworkType(I)V
    .locals 0

    iput p1, p0, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsManager;->mDiagnosingNetworkType:I

    return-void
.end method

.method public setInternetByUsbShareNetEnable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsManager;->mIsInternetByUsbShareNetEnable:Z

    return-void
.end method
