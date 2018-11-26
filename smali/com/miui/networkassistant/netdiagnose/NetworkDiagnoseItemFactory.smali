.class public Lcom/miui/networkassistant/netdiagnose/NetworkDiagnoseItemFactory;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static sInstance:Lcom/miui/networkassistant/netdiagnose/NetworkDiagnoseItemFactory;


# instance fields
.field private mApnCheck:Lcom/miui/networkassistant/netdiagnose/AbstractNetworkDiagoneItem;

.field private mBgNetworkCheck:Lcom/miui/networkassistant/netdiagnose/AbstractNetworkDiagoneItem;

.field private mContext:Landroid/content/Context;

.field private mDnsCheckItem:Lcom/miui/networkassistant/netdiagnose/AbstractNetworkDiagoneItem;

.field private mGatewayCheck:Lcom/miui/networkassistant/netdiagnose/AbstractNetworkDiagoneItem;

.field private mNeedCharge:Lcom/miui/networkassistant/netdiagnose/AbstractNetworkDiagoneItem;

.field private mNetworkChangedCheck:Lcom/miui/networkassistant/netdiagnose/AbstractNetworkDiagoneItem;

.field private mNetworkConnectedCheck:Lcom/miui/networkassistant/netdiagnose/AbstractNetworkDiagoneItem;

.field private mNetworkPermissionCheck:Lcom/miui/networkassistant/netdiagnose/AbstractNetworkDiagoneItem;

.field private mProtocolCheck:Lcom/miui/networkassistant/netdiagnose/AbstractNetworkDiagoneItem;

.field private mSignalStrengthCheck:Lcom/miui/networkassistant/netdiagnose/AbstractNetworkDiagoneItem;

.field private mUsbShareNetCheck:Lcom/miui/networkassistant/netdiagnose/AbstractNetworkDiagoneItem;

.field private mWifiConnectedCheck:Lcom/miui/networkassistant/netdiagnose/AbstractNetworkDiagoneItem;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnoseItemFactory;->sInstance:Lcom/miui/networkassistant/netdiagnose/NetworkDiagnoseItemFactory;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnoseItemFactory;->mDnsCheckItem:Lcom/miui/networkassistant/netdiagnose/AbstractNetworkDiagoneItem;

    iput-object v0, p0, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnoseItemFactory;->mSignalStrengthCheck:Lcom/miui/networkassistant/netdiagnose/AbstractNetworkDiagoneItem;

    iput-object v0, p0, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnoseItemFactory;->mWifiConnectedCheck:Lcom/miui/networkassistant/netdiagnose/AbstractNetworkDiagoneItem;

    iput-object v0, p0, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnoseItemFactory;->mNetworkConnectedCheck:Lcom/miui/networkassistant/netdiagnose/AbstractNetworkDiagoneItem;

    iput-object v0, p0, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnoseItemFactory;->mNetworkPermissionCheck:Lcom/miui/networkassistant/netdiagnose/AbstractNetworkDiagoneItem;

    iput-object v0, p0, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnoseItemFactory;->mNetworkChangedCheck:Lcom/miui/networkassistant/netdiagnose/AbstractNetworkDiagoneItem;

    iput-object v0, p0, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnoseItemFactory;->mApnCheck:Lcom/miui/networkassistant/netdiagnose/AbstractNetworkDiagoneItem;

    iput-object v0, p0, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnoseItemFactory;->mNeedCharge:Lcom/miui/networkassistant/netdiagnose/AbstractNetworkDiagoneItem;

    iput-object v0, p0, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnoseItemFactory;->mGatewayCheck:Lcom/miui/networkassistant/netdiagnose/AbstractNetworkDiagoneItem;

    iput-object v0, p0, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnoseItemFactory;->mUsbShareNetCheck:Lcom/miui/networkassistant/netdiagnose/AbstractNetworkDiagoneItem;

    iput-object v0, p0, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnoseItemFactory;->mProtocolCheck:Lcom/miui/networkassistant/netdiagnose/AbstractNetworkDiagoneItem;

    iput-object v0, p0, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnoseItemFactory;->mBgNetworkCheck:Lcom/miui/networkassistant/netdiagnose/AbstractNetworkDiagoneItem;

    iput-object p1, p0, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnoseItemFactory;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/miui/networkassistant/netdiagnose/NetworkDiagnoseItemFactory;
    .locals 3

    const-class v1, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnoseItemFactory;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnoseItemFactory;->sInstance:Lcom/miui/networkassistant/netdiagnose/NetworkDiagnoseItemFactory;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnoseItemFactory;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnoseItemFactory;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnoseItemFactory;->sInstance:Lcom/miui/networkassistant/netdiagnose/NetworkDiagnoseItemFactory;

    :cond_0
    sget-object v0, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnoseItemFactory;->sInstance:Lcom/miui/networkassistant/netdiagnose/NetworkDiagnoseItemFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public getAllBrokenMobileDataItem()Ljava/util/List;
    .locals 4

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnoseItemFactory;->getAllMobileDataItem()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/networkassistant/netdiagnose/AbstractNetworkDiagoneItem;

    invoke-virtual {v0}, Lcom/miui/networkassistant/netdiagnose/AbstractNetworkDiagoneItem;->getIsStatusNormal()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Lcom/miui/networkassistant/netdiagnose/AbstractNetworkDiagoneItem;->getItemSummary()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public getAllBrokenUsbShareItem()Ljava/util/List;
    .locals 4

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnoseItemFactory;->getAllUsbShareItem()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/networkassistant/netdiagnose/AbstractNetworkDiagoneItem;

    invoke-virtual {v0}, Lcom/miui/networkassistant/netdiagnose/AbstractNetworkDiagoneItem;->getIsStatusNormal()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Lcom/miui/networkassistant/netdiagnose/AbstractNetworkDiagoneItem;->getItemSummary()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public getAllBrokenWifiItem()Ljava/util/List;
    .locals 4

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnoseItemFactory;->getAllWifiItem()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/networkassistant/netdiagnose/AbstractNetworkDiagoneItem;

    invoke-virtual {v0}, Lcom/miui/networkassistant/netdiagnose/AbstractNetworkDiagoneItem;->getIsStatusNormal()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Lcom/miui/networkassistant/netdiagnose/AbstractNetworkDiagoneItem;->getItemSummary()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public getAllMobileDataItem()Ljava/util/List;
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnoseItemFactory;->mApnCheck:Lcom/miui/networkassistant/netdiagnose/AbstractNetworkDiagoneItem;

    if-nez v1, :cond_0

    new-instance v1, Lcom/miui/networkassistant/netdiagnose/item/ApnCheck;

    iget-object v2, p0, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnoseItemFactory;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/miui/networkassistant/netdiagnose/item/ApnCheck;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnoseItemFactory;->mApnCheck:Lcom/miui/networkassistant/netdiagnose/AbstractNetworkDiagoneItem;

    :cond_0
    iget-object v1, p0, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnoseItemFactory;->mProtocolCheck:Lcom/miui/networkassistant/netdiagnose/AbstractNetworkDiagoneItem;

    if-nez v1, :cond_1

    new-instance v1, Lcom/miui/networkassistant/netdiagnose/item/ProtocolCheck;

    iget-object v2, p0, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnoseItemFactory;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/miui/networkassistant/netdiagnose/item/ProtocolCheck;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnoseItemFactory;->mProtocolCheck:Lcom/miui/networkassistant/netdiagnose/AbstractNetworkDiagoneItem;

    :cond_1
    iget-object v1, p0, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnoseItemFactory;->mNetworkConnectedCheck:Lcom/miui/networkassistant/netdiagnose/AbstractNetworkDiagoneItem;

    if-nez v1, :cond_2

    new-instance v1, Lcom/miui/networkassistant/netdiagnose/item/NetworkConnectedCheck;

    iget-object v2, p0, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnoseItemFactory;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/miui/networkassistant/netdiagnose/item/NetworkConnectedCheck;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnoseItemFactory;->mNetworkConnectedCheck:Lcom/miui/networkassistant/netdiagnose/AbstractNetworkDiagoneItem;

    :cond_2
    iget-object v1, p0, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnoseItemFactory;->mNetworkPermissionCheck:Lcom/miui/networkassistant/netdiagnose/AbstractNetworkDiagoneItem;

    if-nez v1, :cond_3

    new-instance v1, Lcom/miui/networkassistant/netdiagnose/item/AppFirewallCheck;

    iget-object v2, p0, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnoseItemFactory;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/miui/networkassistant/netdiagnose/item/AppFirewallCheck;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnoseItemFactory;->mNetworkPermissionCheck:Lcom/miui/networkassistant/netdiagnose/AbstractNetworkDiagoneItem;

    :cond_3
    iget-object v1, p0, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnoseItemFactory;->mSignalStrengthCheck:Lcom/miui/networkassistant/netdiagnose/AbstractNetworkDiagoneItem;

    if-nez v1, :cond_4

    new-instance v1, Lcom/miui/networkassistant/netdiagnose/item/SignalStrengthCheck;

    iget-object v2, p0, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnoseItemFactory;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/miui/networkassistant/netdiagnose/item/SignalStrengthCheck;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnoseItemFactory;->mSignalStrengthCheck:Lcom/miui/networkassistant/netdiagnose/AbstractNetworkDiagoneItem;

    :cond_4
    iget-object v1, p0, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnoseItemFactory;->mNeedCharge:Lcom/miui/networkassistant/netdiagnose/AbstractNetworkDiagoneItem;

    if-nez v1, :cond_5

    new-instance v1, Lcom/miui/networkassistant/netdiagnose/item/NeedCharge;

    iget-object v2, p0, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnoseItemFactory;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/miui/networkassistant/netdiagnose/item/NeedCharge;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnoseItemFactory;->mNeedCharge:Lcom/miui/networkassistant/netdiagnose/AbstractNetworkDiagoneItem;

    :cond_5
    iget-object v1, p0, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnoseItemFactory;->mBgNetworkCheck:Lcom/miui/networkassistant/netdiagnose/AbstractNetworkDiagoneItem;

    if-nez v1, :cond_6

    new-instance v1, Lcom/miui/networkassistant/netdiagnose/item/BgNetworkCheck;

    iget-object v2, p0, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnoseItemFactory;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/miui/networkassistant/netdiagnose/item/BgNetworkCheck;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnoseItemFactory;->mBgNetworkCheck:Lcom/miui/networkassistant/netdiagnose/AbstractNetworkDiagoneItem;

    :cond_6
    iget-object v1, p0, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnoseItemFactory;->mSignalStrengthCheck:Lcom/miui/networkassistant/netdiagnose/AbstractNetworkDiagoneItem;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnoseItemFactory;->mProtocolCheck:Lcom/miui/networkassistant/netdiagnose/AbstractNetworkDiagoneItem;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnoseItemFactory;->mNetworkConnectedCheck:Lcom/miui/networkassistant/netdiagnose/AbstractNetworkDiagoneItem;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnoseItemFactory;->mNetworkPermissionCheck:Lcom/miui/networkassistant/netdiagnose/AbstractNetworkDiagoneItem;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnoseItemFactory;->mBgNetworkCheck:Lcom/miui/networkassistant/netdiagnose/AbstractNetworkDiagoneItem;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnoseItemFactory;->mApnCheck:Lcom/miui/networkassistant/netdiagnose/AbstractNetworkDiagoneItem;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnoseItemFactory;->mNeedCharge:Lcom/miui/networkassistant/netdiagnose/AbstractNetworkDiagoneItem;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public getAllUsbShareItem()Ljava/util/List;
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnoseItemFactory;->mNetworkConnectedCheck:Lcom/miui/networkassistant/netdiagnose/AbstractNetworkDiagoneItem;

    if-nez v1, :cond_0

    new-instance v1, Lcom/miui/networkassistant/netdiagnose/item/NetworkConnectedCheck;

    iget-object v2, p0, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnoseItemFactory;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/miui/networkassistant/netdiagnose/item/NetworkConnectedCheck;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnoseItemFactory;->mNetworkConnectedCheck:Lcom/miui/networkassistant/netdiagnose/AbstractNetworkDiagoneItem;

    :cond_0
    iget-object v1, p0, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnoseItemFactory;->mUsbShareNetCheck:Lcom/miui/networkassistant/netdiagnose/AbstractNetworkDiagoneItem;

    if-nez v1, :cond_1

    new-instance v1, Lcom/miui/networkassistant/netdiagnose/item/UsbShareNetCheck;

    iget-object v2, p0, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnoseItemFactory;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/miui/networkassistant/netdiagnose/item/UsbShareNetCheck;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnoseItemFactory;->mUsbShareNetCheck:Lcom/miui/networkassistant/netdiagnose/AbstractNetworkDiagoneItem;

    :cond_1
    iget-object v1, p0, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnoseItemFactory;->mNetworkConnectedCheck:Lcom/miui/networkassistant/netdiagnose/AbstractNetworkDiagoneItem;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnoseItemFactory;->mUsbShareNetCheck:Lcom/miui/networkassistant/netdiagnose/AbstractNetworkDiagoneItem;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public getAllWifiItem()Ljava/util/List;
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnoseItemFactory;->mWifiConnectedCheck:Lcom/miui/networkassistant/netdiagnose/AbstractNetworkDiagoneItem;

    if-nez v1, :cond_0

    new-instance v1, Lcom/miui/networkassistant/netdiagnose/item/WifiConnectedCheck;

    iget-object v2, p0, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnoseItemFactory;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/miui/networkassistant/netdiagnose/item/WifiConnectedCheck;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnoseItemFactory;->mWifiConnectedCheck:Lcom/miui/networkassistant/netdiagnose/AbstractNetworkDiagoneItem;

    :cond_0
    iget-object v1, p0, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnoseItemFactory;->mWifiConnectedCheck:Lcom/miui/networkassistant/netdiagnose/AbstractNetworkDiagoneItem;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnoseItemFactory;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/miui/common/network/f;->aLT(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnoseItemFactory;->mProtocolCheck:Lcom/miui/networkassistant/netdiagnose/AbstractNetworkDiagoneItem;

    if-nez v1, :cond_1

    new-instance v1, Lcom/miui/networkassistant/netdiagnose/item/ProtocolCheck;

    iget-object v2, p0, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnoseItemFactory;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/miui/networkassistant/netdiagnose/item/ProtocolCheck;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnoseItemFactory;->mProtocolCheck:Lcom/miui/networkassistant/netdiagnose/AbstractNetworkDiagoneItem;

    :cond_1
    iget-object v1, p0, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnoseItemFactory;->mNetworkConnectedCheck:Lcom/miui/networkassistant/netdiagnose/AbstractNetworkDiagoneItem;

    if-nez v1, :cond_2

    new-instance v1, Lcom/miui/networkassistant/netdiagnose/item/NetworkConnectedCheck;

    iget-object v2, p0, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnoseItemFactory;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/miui/networkassistant/netdiagnose/item/NetworkConnectedCheck;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnoseItemFactory;->mNetworkConnectedCheck:Lcom/miui/networkassistant/netdiagnose/AbstractNetworkDiagoneItem;

    :cond_2
    iget-object v1, p0, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnoseItemFactory;->mNetworkPermissionCheck:Lcom/miui/networkassistant/netdiagnose/AbstractNetworkDiagoneItem;

    if-nez v1, :cond_3

    new-instance v1, Lcom/miui/networkassistant/netdiagnose/item/AppFirewallCheck;

    iget-object v2, p0, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnoseItemFactory;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/miui/networkassistant/netdiagnose/item/AppFirewallCheck;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnoseItemFactory;->mNetworkPermissionCheck:Lcom/miui/networkassistant/netdiagnose/AbstractNetworkDiagoneItem;

    :cond_3
    iget-object v1, p0, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnoseItemFactory;->mDnsCheckItem:Lcom/miui/networkassistant/netdiagnose/AbstractNetworkDiagoneItem;

    if-nez v1, :cond_4

    new-instance v1, Lcom/miui/networkassistant/netdiagnose/item/DNSCheck;

    iget-object v2, p0, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnoseItemFactory;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/miui/networkassistant/netdiagnose/item/DNSCheck;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnoseItemFactory;->mDnsCheckItem:Lcom/miui/networkassistant/netdiagnose/AbstractNetworkDiagoneItem;

    :cond_4
    iget-object v1, p0, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnoseItemFactory;->mGatewayCheck:Lcom/miui/networkassistant/netdiagnose/AbstractNetworkDiagoneItem;

    if-nez v1, :cond_5

    new-instance v1, Lcom/miui/networkassistant/netdiagnose/item/GatewayCheck;

    iget-object v2, p0, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnoseItemFactory;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/miui/networkassistant/netdiagnose/item/GatewayCheck;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnoseItemFactory;->mGatewayCheck:Lcom/miui/networkassistant/netdiagnose/AbstractNetworkDiagoneItem;

    :cond_5
    iget-object v1, p0, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnoseItemFactory;->mBgNetworkCheck:Lcom/miui/networkassistant/netdiagnose/AbstractNetworkDiagoneItem;

    if-nez v1, :cond_6

    new-instance v1, Lcom/miui/networkassistant/netdiagnose/item/BgNetworkCheck;

    iget-object v2, p0, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnoseItemFactory;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/miui/networkassistant/netdiagnose/item/BgNetworkCheck;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnoseItemFactory;->mBgNetworkCheck:Lcom/miui/networkassistant/netdiagnose/AbstractNetworkDiagoneItem;

    :cond_6
    iget-object v1, p0, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnoseItemFactory;->mProtocolCheck:Lcom/miui/networkassistant/netdiagnose/AbstractNetworkDiagoneItem;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnoseItemFactory;->mNetworkConnectedCheck:Lcom/miui/networkassistant/netdiagnose/AbstractNetworkDiagoneItem;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnoseItemFactory;->mNetworkPermissionCheck:Lcom/miui/networkassistant/netdiagnose/AbstractNetworkDiagoneItem;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnoseItemFactory;->mBgNetworkCheck:Lcom/miui/networkassistant/netdiagnose/AbstractNetworkDiagoneItem;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnoseItemFactory;->mDnsCheckItem:Lcom/miui/networkassistant/netdiagnose/AbstractNetworkDiagoneItem;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnoseItemFactory;->mGatewayCheck:Lcom/miui/networkassistant/netdiagnose/AbstractNetworkDiagoneItem;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    return-object v0
.end method

.method public getNetworkChangedCheckItem()Lcom/miui/networkassistant/netdiagnose/AbstractNetworkDiagoneItem;
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnoseItemFactory;->mNetworkChangedCheck:Lcom/miui/networkassistant/netdiagnose/AbstractNetworkDiagoneItem;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/networkassistant/netdiagnose/item/NetworkChangedCheck;

    iget-object v1, p0, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnoseItemFactory;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/miui/networkassistant/netdiagnose/item/NetworkChangedCheck;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnoseItemFactory;->mNetworkChangedCheck:Lcom/miui/networkassistant/netdiagnose/AbstractNetworkDiagoneItem;

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnoseItemFactory;->mNetworkChangedCheck:Lcom/miui/networkassistant/netdiagnose/AbstractNetworkDiagoneItem;

    return-object v0
.end method
