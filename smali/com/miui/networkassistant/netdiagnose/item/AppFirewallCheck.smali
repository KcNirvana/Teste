.class public Lcom/miui/networkassistant/netdiagnose/item/AppFirewallCheck;
.super Lcom/miui/networkassistant/netdiagnose/AbstractNetworkDiagoneItem;
.source ""


# instance fields
.field restrictAppCount:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/netdiagnose/AbstractNetworkDiagoneItem;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/networkassistant/netdiagnose/item/AppFirewallCheck;->restrictAppCount:I

    return-void
.end method

.method private getMobileRestrictAppCount(Ljava/util/ArrayList;)I
    .locals 4

    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/networkassistant/model/AppInfo;

    iget-object v3, p0, Lcom/miui/networkassistant/netdiagnose/item/AppFirewallCheck;->mContext:Landroid/content/Context;

    iget-object v0, v0, Lcom/miui/networkassistant/model/AppInfo;->packageName:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lmiui/provider/ExtraNetwork;->isMobileRestrict(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    add-int/lit8 v0, v1, 0x1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method private getWifiRestrictAppCount(Ljava/util/ArrayList;)I
    .locals 4

    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/networkassistant/model/AppInfo;

    iget-object v3, p0, Lcom/miui/networkassistant/netdiagnose/item/AppFirewallCheck;->mContext:Landroid/content/Context;

    iget-object v0, v0, Lcom/miui/networkassistant/model/AppInfo;->packageName:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lmiui/provider/ExtraNetwork;->isWifiRestrict(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    add-int/lit8 v0, v1, 0x1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method private trackNetworkDiagnosticsStep(IZ)V
    .locals 3

    invoke-virtual {p0}, Lcom/miui/networkassistant/netdiagnose/item/AppFirewallCheck;->networkChanged()Z

    move-result v0

    if-nez v0, :cond_0

    if-lez p1, :cond_0

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    if-eqz p2, :cond_1

    const-string/jumbo v1, "other"

    const-string/jumbo v2, "restrict"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    invoke-static {v0}, Lcom/miui/networkassistant/utils/AnalyticsHelper;->trackNetworkDiagnosticsStep(Ljava/util/Map;)V

    :cond_0
    return-void

    :cond_1
    const-string/jumbo v1, "wifi"

    const-string/jumbo v2, "restrict"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method public check()V
    .locals 3

    const/4 v2, 0x0

    iput v2, p0, Lcom/miui/networkassistant/netdiagnose/item/AppFirewallCheck;->restrictAppCount:I

    iget-object v0, p0, Lcom/miui/networkassistant/netdiagnose/item/AppFirewallCheck;->mDiagnosticsManager:Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsManager;

    invoke-virtual {v0}, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsManager;->getCurNetworkState()Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils$NetworkState;

    move-result-object v0

    sget-object v1, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils$NetworkState;->CONNECTED:Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils$NetworkState;

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/netdiagnose/item/AppFirewallCheck;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/common/network/f;->aMj(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/miui/networkassistant/netdiagnose/item/AppFirewallCheck;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;->getInstance(Landroid/content/Context;)Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;->getFilteredAppInfosList()Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    iget-object v1, p0, Lcom/miui/networkassistant/netdiagnose/item/AppFirewallCheck;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/miui/common/network/f;->aMh(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-direct {p0, v0}, Lcom/miui/networkassistant/netdiagnose/item/AppFirewallCheck;->getMobileRestrictAppCount(Ljava/util/ArrayList;)I

    move-result v0

    iput v0, p0, Lcom/miui/networkassistant/netdiagnose/item/AppFirewallCheck;->restrictAppCount:I

    iget v0, p0, Lcom/miui/networkassistant/netdiagnose/item/AppFirewallCheck;->restrictAppCount:I

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/miui/networkassistant/netdiagnose/item/AppFirewallCheck;->trackNetworkDiagnosticsStep(IZ)V

    :cond_3
    :goto_0
    iget v0, p0, Lcom/miui/networkassistant/netdiagnose/item/AppFirewallCheck;->restrictAppCount:I

    if-lez v0, :cond_4

    iput-boolean v2, p0, Lcom/miui/networkassistant/netdiagnose/item/AppFirewallCheck;->mIsStatusNormal:Z

    :cond_4
    return-void

    :cond_5
    iget-object v1, p0, Lcom/miui/networkassistant/netdiagnose/item/AppFirewallCheck;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/miui/common/network/f;->aLT(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0, v0}, Lcom/miui/networkassistant/netdiagnose/item/AppFirewallCheck;->getWifiRestrictAppCount(Ljava/util/ArrayList;)I

    move-result v0

    iput v0, p0, Lcom/miui/networkassistant/netdiagnose/item/AppFirewallCheck;->restrictAppCount:I

    iget v0, p0, Lcom/miui/networkassistant/netdiagnose/item/AppFirewallCheck;->restrictAppCount:I

    invoke-direct {p0, v0, v2}, Lcom/miui/networkassistant/netdiagnose/item/AppFirewallCheck;->trackNetworkDiagnosticsStep(IZ)V

    goto :goto_0
.end method

.method public fix()Lcom/miui/networkassistant/netdiagnose/AbstractNetworkDiagoneItem$FixedResult;
    .locals 4

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/networkassistant/netdiagnose/item/AppFirewallCheck;->mContext:Landroid/content/Context;

    const-class v2, Lcom/miui/networkassistant/ui/activity/FirewallActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iget-object v2, p0, Lcom/miui/networkassistant/netdiagnose/item/AppFirewallCheck;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/miui/common/network/f;->aLT(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "VisibleItemIndex"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_0
    const/high16 v1, 0x10800000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/networkassistant/netdiagnose/item/AppFirewallCheck;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    sget-object v0, Lcom/miui/networkassistant/netdiagnose/AbstractNetworkDiagoneItem$FixedResult;->SUCCESS:Lcom/miui/networkassistant/netdiagnose/AbstractNetworkDiagoneItem$FixedResult;

    return-object v0
.end method

.method public getItemName()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/netdiagnose/item/AppFirewallCheck;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070397

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getItemSolution()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/netdiagnose/item/AppFirewallCheck;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070377

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getItemSummary()Ljava/lang/String;
    .locals 5

    const/4 v4, 0x0

    const-string/jumbo v0, ""

    iget v1, p0, Lcom/miui/networkassistant/netdiagnose/item/AppFirewallCheck;->restrictAppCount:I

    if-lez v1, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/netdiagnose/item/AppFirewallCheck;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/miui/networkassistant/netdiagnose/item/AppFirewallCheck;->restrictAppCount:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/miui/networkassistant/netdiagnose/item/AppFirewallCheck;->restrictAppCount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    const v3, 0x7f0c0011

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method
