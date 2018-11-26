.class public Lcom/miui/networkassistant/netdiagnose/item/NeedCharge;
.super Lcom/miui/networkassistant/netdiagnose/AbstractNetworkDiagoneItem;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String; = "NetworkDiagnostics_NeedCharge"


# instance fields
.field mIpAddress:Ljava/net/InetAddress;

.field mPingRet:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/netdiagnose/AbstractNetworkDiagoneItem;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/networkassistant/netdiagnose/item/NeedCharge;->mPingRet:Z

    return-void
.end method


# virtual methods
.method public check()V
    .locals 4

    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    iput-object v2, p0, Lcom/miui/networkassistant/netdiagnose/item/NeedCharge;->mIpAddress:Ljava/net/InetAddress;

    iput-boolean v0, p0, Lcom/miui/networkassistant/netdiagnose/item/NeedCharge;->mIsStatusNormal:Z

    const-string/jumbo v2, "netcfg"

    invoke-static {v2}, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils;->doExec(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/miui/networkassistant/netdiagnose/item/NeedCharge;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/miui/common/network/f;->aMh(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v0, "NetworkDiagnostics_NeedCharge"

    const-string/jumbo v1, "check() isMobileConnected = false "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v2, p0, Lcom/miui/networkassistant/netdiagnose/item/NeedCharge;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveLinkProperties()Landroid/net/LinkProperties;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-static {v2}, Lcom/miui/common/network/f;->aMc(Landroid/net/LinkProperties;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v2}, Lcom/miui/common/network/f;->aMd(Landroid/net/LinkProperties;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    move v0, v1

    :cond_2
    if-eqz v0, :cond_5

    sget v0, Lcom/miui/common/a;->aCv:I

    invoke-static {v0}, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils;->getCurrentNetworkIp(I)Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/netdiagnose/item/NeedCharge;->mIpAddress:Ljava/net/InetAddress;

    :goto_0
    iget-object v0, p0, Lcom/miui/networkassistant/netdiagnose/item/NeedCharge;->mIpAddress:Ljava/net/InetAddress;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/networkassistant/netdiagnose/item/NeedCharge;->mIpAddress:Ljava/net/InetAddress;

    invoke-static {v0, v1}, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils;->isIpAvailable(Ljava/net/InetAddress;I)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/networkassistant/netdiagnose/item/NeedCharge;->mPingRet:Z

    const-string/jumbo v0, "NetworkDiagnostics_NeedCharge"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "check() ping "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/networkassistant/netdiagnose/item/NeedCharge;->mIpAddress:Ljava/net/InetAddress;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ret="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/miui/networkassistant/netdiagnose/item/NeedCharge;->mPingRet:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-virtual {p0}, Lcom/miui/networkassistant/netdiagnose/item/NeedCharge;->networkChanged()Z

    move-result v0

    if-nez v0, :cond_4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iget-object v1, p0, Lcom/miui/networkassistant/netdiagnose/item/NeedCharge;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/miui/common/network/f;->aLT(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string/jumbo v1, "wifi"

    const-string/jumbo v2, "unknown"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    invoke-static {v0}, Lcom/miui/networkassistant/utils/AnalyticsHelper;->trackNetworkDiagnosticsStep(Ljava/util/Map;)V

    :cond_4
    return-void

    :cond_5
    sget v0, Lcom/miui/common/a;->aCu:I

    invoke-static {v0}, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils;->getCurrentNetworkIp(I)Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/netdiagnose/item/NeedCharge;->mIpAddress:Ljava/net/InetAddress;

    goto :goto_0

    :cond_6
    const-string/jumbo v1, "other"

    const-string/jumbo v2, "unknown"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public fix()Lcom/miui/networkassistant/netdiagnose/AbstractNetworkDiagoneItem$FixedResult;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/networkassistant/netdiagnose/item/NeedCharge;->mContext:Landroid/content/Context;

    const-class v2, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsTipActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10800000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string/jumbo v1, "title"

    invoke-virtual {p0}, Lcom/miui/networkassistant/netdiagnose/item/NeedCharge;->getItemName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "detail"

    const v2, 0x7f070394

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/networkassistant/netdiagnose/item/NeedCharge;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    sget-object v0, Lcom/miui/networkassistant/netdiagnose/AbstractNetworkDiagoneItem$FixedResult;->SUCCESS:Lcom/miui/networkassistant/netdiagnose/AbstractNetworkDiagoneItem$FixedResult;

    return-object v0
.end method

.method public getItemName()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/netdiagnose/item/NeedCharge;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070375

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getItemSolution()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/netdiagnose/item/NeedCharge;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070377

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getItemSummary()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/netdiagnose/item/NeedCharge;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070376

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
