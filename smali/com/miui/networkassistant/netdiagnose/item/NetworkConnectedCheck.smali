.class public Lcom/miui/networkassistant/netdiagnose/item/NetworkConnectedCheck;
.super Lcom/miui/networkassistant/netdiagnose/AbstractNetworkDiagoneItem;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String; = "NetworkDiagnostics_NetworkConnectedCheck"


# instance fields
.field mBssid:Ljava/lang/String;

.field private mCurNetworkState:Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils$NetworkState;

.field mSolution:Ljava/lang/String;

.field mSsid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/netdiagnose/AbstractNetworkDiagoneItem;-><init>(Landroid/content/Context;)V

    sget-object v0, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils$NetworkState;->UNKNOWN:Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils$NetworkState;

    iput-object v0, p0, Lcom/miui/networkassistant/netdiagnose/item/NetworkConnectedCheck;->mCurNetworkState:Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils$NetworkState;

    return-void
.end method

.method private openWifiLogin()V
    .locals 4

    const/4 v1, 0x0

    invoke-static {}, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils;->getDefaultCaptivePortalServer()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v0, p0, Lcom/miui/networkassistant/netdiagnose/item/NetworkConnectedCheck;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "wifi"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/miui/networkassistant/netdiagnose/item/NetworkConnectedCheck;->mBssid:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/high16 v1, 0x10800000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string/jumbo v1, "com.miui.action.OPEN_WIFI_LOGIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "miui.intent.extra.OPEN_WIFI_SSID"

    iget-object v3, p0, Lcom/miui/networkassistant/netdiagnose/item/NetworkConnectedCheck;->mSsid:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "miui.intent.extra.BSSID"

    iget-object v3, p0, Lcom/miui/networkassistant/netdiagnose/item/NetworkConnectedCheck;->mBssid:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/networkassistant/netdiagnose/item/NetworkConnectedCheck;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public check()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v1, 0x0

    iput-boolean v4, p0, Lcom/miui/networkassistant/netdiagnose/item/NetworkConnectedCheck;->mIsStatusNormal:Z

    iget-object v0, p0, Lcom/miui/networkassistant/netdiagnose/item/NetworkConnectedCheck;->mDiagnosticsManager:Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsManager;

    invoke-virtual {v0}, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsManager;->checkNetworkState()Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils$NetworkState;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/netdiagnose/item/NetworkConnectedCheck;->mCurNetworkState:Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils$NetworkState;

    iget-object v0, p0, Lcom/miui/networkassistant/netdiagnose/item/NetworkConnectedCheck;->mDiagnosticsManager:Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsManager;

    iget-object v2, p0, Lcom/miui/networkassistant/netdiagnose/item/NetworkConnectedCheck;->mCurNetworkState:Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils$NetworkState;

    invoke-virtual {v0, v2}, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsManager;->setCurNetworkState(Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils$NetworkState;)V

    iget-object v0, p0, Lcom/miui/networkassistant/netdiagnose/item/NetworkConnectedCheck;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/common/network/f;->aLT(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/networkassistant/netdiagnose/item/NetworkConnectedCheck;->mCurNetworkState:Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils$NetworkState;

    sget-object v2, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils$NetworkState;->CAPTIVEPORTAL:Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils$NetworkState;

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/miui/networkassistant/netdiagnose/item/NetworkConnectedCheck;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "wifi"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/networkassistant/netdiagnose/item/NetworkConnectedCheck;->mSsid:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/netdiagnose/item/NetworkConnectedCheck;->mBssid:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/miui/networkassistant/netdiagnose/item/NetworkConnectedCheck;->mCurNetworkState:Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils$NetworkState;

    sget-object v1, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils$NetworkState;->CONNECTED:Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils$NetworkState;

    if-ne v0, v1, :cond_3

    iput-boolean v3, p0, Lcom/miui/networkassistant/netdiagnose/item/NetworkConnectedCheck;->mIsStatusNormal:Z

    :cond_2
    :goto_1
    return-void

    :cond_3
    iget-object v0, p0, Lcom/miui/networkassistant/netdiagnose/item/NetworkConnectedCheck;->mCurNetworkState:Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils$NetworkState;

    sget-object v1, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils$NetworkState;->CAPTIVEPORTAL:Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils$NetworkState;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/miui/networkassistant/netdiagnose/item/NetworkConnectedCheck;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/common/network/f;->aLT(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    iput-boolean v3, p0, Lcom/miui/networkassistant/netdiagnose/item/NetworkConnectedCheck;->mIsStatusNormal:Z

    invoke-virtual {p0}, Lcom/miui/networkassistant/netdiagnose/item/NetworkConnectedCheck;->networkChanged()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v4}, Ljava/util/HashMap;-><init>(I)V

    const-string/jumbo v1, "wifi"

    const-string/jumbo v2, "captivePortal"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lcom/miui/networkassistant/utils/AnalyticsHelper;->trackNetworkDiagnosticsStep(Ljava/util/Map;)V

    goto :goto_1

    :cond_4
    move-object v0, v1

    goto :goto_0
.end method

.method public fix()Lcom/miui/networkassistant/netdiagnose/AbstractNetworkDiagoneItem$FixedResult;
    .locals 1

    invoke-direct {p0}, Lcom/miui/networkassistant/netdiagnose/item/NetworkConnectedCheck;->openWifiLogin()V

    sget-object v0, Lcom/miui/networkassistant/netdiagnose/AbstractNetworkDiagoneItem$FixedResult;->SUCCESS:Lcom/miui/networkassistant/netdiagnose/AbstractNetworkDiagoneItem$FixedResult;

    return-object v0
.end method

.method public getIsContinueDiagnose()Z
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/netdiagnose/item/NetworkConnectedCheck;->mCurNetworkState:Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils$NetworkState;

    sget-object v1, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils$NetworkState;->CONNECTED:Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils$NetworkState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/miui/networkassistant/netdiagnose/item/NetworkConnectedCheck;->mIsStatusNormal:Z

    return v0
.end method

.method public getItemName()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/netdiagnose/item/NetworkConnectedCheck;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07038b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getItemSolution()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/netdiagnose/item/NetworkConnectedCheck;->mSolution:Ljava/lang/String;

    return-object v0
.end method

.method public getItemSummary()Ljava/lang/String;
    .locals 3

    const-string/jumbo v0, ""

    const-string/jumbo v1, ""

    iput-object v1, p0, Lcom/miui/networkassistant/netdiagnose/item/NetworkConnectedCheck;->mSolution:Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/networkassistant/netdiagnose/item/NetworkConnectedCheck;->mCurNetworkState:Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils$NetworkState;

    sget-object v2, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils$NetworkState;->CONNECTED:Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils$NetworkState;

    if-ne v1, v2, :cond_1

    iget-object v0, p0, Lcom/miui/networkassistant/netdiagnose/item/NetworkConnectedCheck;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070366

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/miui/networkassistant/netdiagnose/item/NetworkConnectedCheck;->mCurNetworkState:Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils$NetworkState;

    sget-object v2, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils$NetworkState;->CAPTIVEPORTAL:Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils$NetworkState;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/miui/networkassistant/netdiagnose/item/NetworkConnectedCheck;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/miui/common/network/f;->aLT(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/netdiagnose/item/NetworkConnectedCheck;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07038a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/netdiagnose/item/NetworkConnectedCheck;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070377

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/networkassistant/netdiagnose/item/NetworkConnectedCheck;->mSolution:Ljava/lang/String;

    goto :goto_0
.end method
