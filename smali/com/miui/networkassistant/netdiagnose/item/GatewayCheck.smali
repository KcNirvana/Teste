.class public Lcom/miui/networkassistant/netdiagnose/item/GatewayCheck;
.super Lcom/miui/networkassistant/netdiagnose/AbstractNetworkDiagoneItem;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String; = "NetworkDiagnostics_GatewayCheck"


# instance fields
.field mGateWayIpAddress:Ljava/net/InetAddress;

.field mLocalIpAddress:Ljava/net/InetAddress;

.field mPingGatewayRet:Z

.field mPingLocalRet:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/netdiagnose/AbstractNetworkDiagoneItem;-><init>(Landroid/content/Context;)V

    iput-boolean v0, p0, Lcom/miui/networkassistant/netdiagnose/item/GatewayCheck;->mPingLocalRet:Z

    iput-boolean v0, p0, Lcom/miui/networkassistant/netdiagnose/item/GatewayCheck;->mPingGatewayRet:Z

    return-void
.end method


# virtual methods
.method public check()V
    .locals 5

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/networkassistant/netdiagnose/item/GatewayCheck;->mLocalIpAddress:Ljava/net/InetAddress;

    iput-object v0, p0, Lcom/miui/networkassistant/netdiagnose/item/GatewayCheck;->mGateWayIpAddress:Ljava/net/InetAddress;

    iget-object v0, p0, Lcom/miui/networkassistant/netdiagnose/item/GatewayCheck;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveLinkProperties()Landroid/net/LinkProperties;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-static {v0}, Lcom/miui/common/network/f;->aMc(Landroid/net/LinkProperties;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v0}, Lcom/miui/common/network/f;->aMd(Landroid/net/LinkProperties;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_4

    sget v0, Lcom/miui/common/a;->aCv:I

    invoke-static {v0}, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils;->getCurrentNetworkIp(I)Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/netdiagnose/item/GatewayCheck;->mLocalIpAddress:Ljava/net/InetAddress;

    :goto_1
    iget-object v0, p0, Lcom/miui/networkassistant/netdiagnose/item/GatewayCheck;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils;->getGateway(Landroid/content/Context;)Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/netdiagnose/item/GatewayCheck;->mGateWayIpAddress:Ljava/net/InetAddress;

    iget-object v0, p0, Lcom/miui/networkassistant/netdiagnose/item/GatewayCheck;->mLocalIpAddress:Ljava/net/InetAddress;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/networkassistant/netdiagnose/item/GatewayCheck;->mLocalIpAddress:Ljava/net/InetAddress;

    invoke-static {v0, v2}, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils;->isIpAvailable(Ljava/net/InetAddress;I)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/networkassistant/netdiagnose/item/GatewayCheck;->mPingLocalRet:Z

    :cond_1
    iget-object v0, p0, Lcom/miui/networkassistant/netdiagnose/item/GatewayCheck;->mGateWayIpAddress:Ljava/net/InetAddress;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/networkassistant/netdiagnose/item/GatewayCheck;->mGateWayIpAddress:Ljava/net/InetAddress;

    const/4 v3, 0x2

    invoke-static {v0, v3}, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils;->isIpAvailable(Ljava/net/InetAddress;I)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/networkassistant/netdiagnose/item/GatewayCheck;->mPingGatewayRet:Z

    :cond_2
    const-string/jumbo v0, "NetworkDiagnostics_GatewayCheck"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "check() ping "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/networkassistant/netdiagnose/item/GatewayCheck;->mLocalIpAddress:Ljava/net/InetAddress;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " ret="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/miui/networkassistant/netdiagnose/item/GatewayCheck;->mPingLocalRet:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "NetworkDiagnostics_GatewayCheck"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "check() ping "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/networkassistant/netdiagnose/item/GatewayCheck;->mGateWayIpAddress:Ljava/net/InetAddress;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " ret="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/miui/networkassistant/netdiagnose/item/GatewayCheck;->mPingGatewayRet:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "netcfg"

    invoke-static {v0}, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils;->doExec(Ljava/lang/String;)V

    iput-boolean v1, p0, Lcom/miui/networkassistant/netdiagnose/item/GatewayCheck;->mIsStatusNormal:Z

    invoke-virtual {p0}, Lcom/miui/networkassistant/netdiagnose/item/GatewayCheck;->networkChanged()Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    iget-boolean v1, p0, Lcom/miui/networkassistant/netdiagnose/item/GatewayCheck;->mPingGatewayRet:Z

    if-nez v1, :cond_5

    const-string/jumbo v1, "wifi"

    const-string/jumbo v2, "gateway"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    invoke-static {v0}, Lcom/miui/networkassistant/utils/AnalyticsHelper;->trackNetworkDiagnosticsStep(Ljava/util/Map;)V

    :cond_3
    return-void

    :cond_4
    sget v0, Lcom/miui/common/a;->aCu:I

    invoke-static {v0}, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils;->getCurrentNetworkIp(I)Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/netdiagnose/item/GatewayCheck;->mLocalIpAddress:Ljava/net/InetAddress;

    goto/16 :goto_1

    :cond_5
    const-string/jumbo v1, "wifi"

    const-string/jumbo v2, "unknown"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_6
    move v0, v1

    goto/16 :goto_0
.end method

.method public fix()Lcom/miui/networkassistant/netdiagnose/AbstractNetworkDiagoneItem$FixedResult;
    .locals 3

    iget-boolean v0, p0, Lcom/miui/networkassistant/netdiagnose/item/GatewayCheck;->mPingGatewayRet:Z

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/networkassistant/netdiagnose/item/GatewayCheck;->mContext:Landroid/content/Context;

    const-class v2, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsTipActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10800000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string/jumbo v1, "title"

    invoke-virtual {p0}, Lcom/miui/networkassistant/netdiagnose/item/GatewayCheck;->getItemName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "detail"

    const v2, 0x7f070396

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/networkassistant/netdiagnose/item/GatewayCheck;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_0
    sget-object v0, Lcom/miui/networkassistant/netdiagnose/AbstractNetworkDiagoneItem$FixedResult;->SUCCESS:Lcom/miui/networkassistant/netdiagnose/AbstractNetworkDiagoneItem$FixedResult;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/netdiagnose/item/GatewayCheck;->mDiagnosticsManager:Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsManager;

    invoke-virtual {v0}, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsManager;->reopenWifi()Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public getFixingWaitProgressDlgMsg()Ljava/lang/String;
    .locals 2

    iget-boolean v0, p0, Lcom/miui/networkassistant/netdiagnose/item/GatewayCheck;->mPingGatewayRet:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/netdiagnose/item/GatewayCheck;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07022c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/netdiagnose/item/GatewayCheck;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07035a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getItemName()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/netdiagnose/item/GatewayCheck;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070372

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getItemSolution()Ljava/lang/String;
    .locals 2

    iget-boolean v0, p0, Lcom/miui/networkassistant/netdiagnose/item/GatewayCheck;->mPingGatewayRet:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/netdiagnose/item/GatewayCheck;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070377

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/netdiagnose/item/GatewayCheck;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070365

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getItemSummary()Ljava/lang/String;
    .locals 2

    iget-boolean v0, p0, Lcom/miui/networkassistant/netdiagnose/item/GatewayCheck;->mPingGatewayRet:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/netdiagnose/item/GatewayCheck;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070373

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/netdiagnose/item/GatewayCheck;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070374

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
