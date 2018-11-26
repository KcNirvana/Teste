.class public Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/miui/networkassistant/firewall/IFirewall;


# static fields
.field private static final TAG:Ljava/lang/String; = "NetdFirewall"

.field private static final TYPE_ALL:I = 0x3

.field private static final TYPE_MOBILE:I = 0x0

.field private static final TYPE_OTHER:I = 0x4

.field private static final TYPE_ROAMING:I = 0x2

.field private static final TYPE_WIFI:I = 0x1

.field private static final synthetic te:[I


# instance fields
.field private mCommonConfig:Lcom/miui/networkassistant/config/CommonConfig;

.field private mContext:Landroid/content/Context;

.field private mCurrentNetworkState:Lcom/miui/common/network/NetworkUtils$NetworkState;

.field private mCurrentRoamingState:Z

.field private mFirewallReceiver:Landroid/content/BroadcastReceiver;

.field private mIsDataRoamingWhiteListEnable:Z

.field private volatile mIsStarted:Z

.field private mListener:Lcom/miui/networkassistant/firewall/IFirewallListener;

.field private mLock:Ljava/lang/Object;

.field private mMobileRuleArrMap:Landroid/util/SparseArray;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mRoamingRuleMap:Lmiui/util/ArrayMap;

.field private mRuleMapLock:Ljava/lang/Object;

.field private mSecurityManager:Lmiui/security/SecurityManager;

.field private mSimInfoChangeListener:Lcom/miui/networkassistant/dual/DualSimInfoManager$ISimInfoChangeListener;

.field private mTempMobileRule:Landroid/util/SparseArray;

.field private mTempWifiRule:Lmiui/util/ArrayMap;

.field private mWifiRuleMap:Lmiui/util/ArrayMap;


# direct methods
.method static synthetic -get0(Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;)Lcom/miui/common/network/NetworkUtils$NetworkState;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mCurrentNetworkState:Lcom/miui/common/network/NetworkUtils$NetworkState;

    return-object v0
.end method

.method static synthetic -get1(Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;)Lcom/miui/networkassistant/firewall/IFirewallListener;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mListener:Lcom/miui/networkassistant/firewall/IFirewallListener;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->refreshNetworkType()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/4 v1, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mRuleMapLock:Ljava/lang/Object;

    sget-object v0, Lcom/miui/common/network/NetworkUtils$NetworkState;->aBO:Lcom/miui/common/network/NetworkUtils$NetworkState;

    iput-object v0, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mCurrentNetworkState:Lcom/miui/common/network/NetworkUtils$NetworkState;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mMobileRuleArrMap:Landroid/util/SparseArray;

    new-instance v0, Lmiui/util/ArrayMap;

    invoke-direct {v0}, Lmiui/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mWifiRuleMap:Lmiui/util/ArrayMap;

    new-instance v0, Lmiui/util/ArrayMap;

    invoke-direct {v0}, Lmiui/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mRoamingRuleMap:Lmiui/util/ArrayMap;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mTempMobileRule:Landroid/util/SparseArray;

    new-instance v0, Lmiui/util/ArrayMap;

    invoke-direct {v0}, Lmiui/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mTempWifiRule:Lmiui/util/ArrayMap;

    iput-boolean v2, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mCurrentRoamingState:Z

    new-instance v0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall$1;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall$1;-><init>(Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;)V

    iput-object v0, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall$2;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall$2;-><init>(Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;)V

    iput-object v0, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mSimInfoChangeListener:Lcom/miui/networkassistant/dual/DualSimInfoManager$ISimInfoChangeListener;

    new-instance v0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall$3;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall$3;-><init>(Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;)V

    iput-object v0, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mFirewallReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/networkassistant/config/CommonConfig;->getInstance(Landroid/content/Context;)Lcom/miui/networkassistant/config/CommonConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mCommonConfig:Lcom/miui/networkassistant/config/CommonConfig;

    iget-object v0, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "security"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/security/SecurityManager;

    iput-object v0, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mSecurityManager:Lmiui/security/SecurityManager;

    iget-object v0, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mMobileRuleArrMap:Landroid/util/SparseArray;

    new-instance v1, Lmiui/util/ArrayMap;

    invoke-direct {v1}, Lmiui/util/ArrayMap;-><init>()V

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mTempMobileRule:Landroid/util/SparseArray;

    new-instance v1, Lmiui/util/ArrayMap;

    invoke-direct {v1}, Lmiui/util/ArrayMap;-><init>()V

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-boolean v0, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_DUAL_CARD:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mMobileRuleArrMap:Landroid/util/SparseArray;

    new-instance v1, Lmiui/util/ArrayMap;

    invoke-direct {v1}, Lmiui/util/ArrayMap;-><init>()V

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mTempMobileRule:Landroid/util/SparseArray;

    new-instance v1, Lmiui/util/ArrayMap;

    invoke-direct {v1}, Lmiui/util/ArrayMap;-><init>()V

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private getCurrentRoamingState()Z
    .locals 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-static {}, Lcom/miui/networkassistant/dual/Sim;->getCurrentActiveSlotNum()I

    move-result v2

    iget-object v3, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/provider/MiuiSettings$VirtualSim;->isVirtualSimEnabled(Landroid/content/Context;)Z

    move-result v3

    iget-object v4, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/provider/MiuiSettings$VirtualSim;->getVirtualSimStatus(Landroid/content/Context;)I

    move-result v4

    if-eq v4, v1, :cond_1

    :goto_0
    if-eqz v3, :cond_2

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/provider/MiuiSettings$VirtualSim;->getVirtualSimSlotId(Landroid/content/Context;)I

    move-result v1

    :cond_0
    :goto_1
    const-string/jumbo v1, "NetdFirewall"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "virtual sim disabled : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1
    move v1, v0

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mContext:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/miui/networkassistant/utils/TelephonyUtil;->isNetworkRoaming(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v0, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mIsDataRoamingWhiteListEnable:Z

    goto :goto_1
.end method

.method private getPackagesByRules(Lmiui/util/ArrayMap;Lcom/miui/networkassistant/model/FirewallRule;)Ljava/util/List;
    .locals 4

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lmiui/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lmiui/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/networkassistant/model/FirewallRule;

    if-ne v1, p2, :cond_0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method private getPackagesByTempRules(Lmiui/util/ArrayMap;Lcom/miui/networkassistant/model/FirewallRule;)Ljava/util/List;
    .locals 4

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lmiui/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lmiui/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/networkassistant/model/TempFirewallRule;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/miui/networkassistant/model/TempFirewallRule;->rule:Lcom/miui/networkassistant/model/FirewallRule;

    if-ne v1, p2, :cond_0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method private getUid(Ljava/lang/String;)I
    .locals 4

    invoke-static {p1}, Lcom/miui/networkassistant/utils/PackageUtil;->parseUidByPackageName(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/miui/networkassistant/utils/PackageUtil;->getUidByPackageName(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    :cond_0
    const-string/jumbo v1, "NetdFirewall"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "zlwzlw packageName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "uid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private refreshNetworkType()V
    .locals 3

    iget-object v1, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0}, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->shouldUpdateNetworkType()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->va()[I

    move-result-object v0

    iget-object v2, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mCurrentNetworkState:Lcom/miui/common/network/NetworkUtils$NetworkState;

    invoke-virtual {v2}, Lcom/miui/common/network/NetworkUtils$NetworkState;->ordinal()I

    move-result v2

    aget v0, v0, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    :pswitch_0
    :try_start_1
    invoke-direct {p0}, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->showRoamingStateNotification()V

    iget-boolean v0, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mCurrentRoamingState:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mSecurityManager:Lmiui/security/SecurityManager;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lmiui/security/SecurityManager;->setCurrentNetworkState(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mSecurityManager:Lmiui/security/SecurityManager;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lmiui/security/SecurityManager;->setCurrentNetworkState(I)Z

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mSecurityManager:Lmiui/security/SecurityManager;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lmiui/security/SecurityManager;->setCurrentNetworkState(I)Z

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mSecurityManager:Lmiui/security/SecurityManager;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lmiui/security/SecurityManager;->setCurrentNetworkState(I)Z

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mSecurityManager:Lmiui/security/SecurityManager;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lmiui/security/SecurityManager;->setCurrentNetworkState(I)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private registerFirewallReceiver()V
    .locals 4

    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "miui.intent.action.FIREWALL"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mFirewallReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {}, Lcom/miui/common/b/f;->aHT()Landroid/os/UserHandle;

    move-result-object v3

    invoke-static {v1, v2, v3, v0}, Lcom/miui/common/b/n;->aIM(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;)V

    return-void
.end method

.method private registerNetworkReceiver()V
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    sget-object v1, Lcom/miui/networkassistant/config/Constants$System;->CONNECTIVITY_ACTION_IMMEDIATE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private registerSimStateReceiver()V
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mSimInfoChangeListener:Lcom/miui/networkassistant/dual/DualSimInfoManager$ISimInfoChangeListener;

    invoke-static {v0, v1}, Lcom/miui/networkassistant/dual/DualSimInfoManager;->registerChangeListener(Landroid/content/Context;Lmiui/securitycenter/DualSim/DualSimInfoManagerWrapper$ISimInfoChangeWrapperListener;)V

    return-void
.end method

.method private shouldUpdateNetworkType()Z
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/common/network/f;->aLZ(Landroid/content/Context;)Lcom/miui/common/network/NetworkUtils$NetworkState;

    move-result-object v0

    invoke-direct {p0}, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->getCurrentRoamingState()Z

    move-result v1

    iget-object v2, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mCurrentNetworkState:Lcom/miui/common/network/NetworkUtils$NetworkState;

    if-ne v2, v0, :cond_0

    iget-boolean v2, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mCurrentRoamingState:Z

    if-eq v1, v2, :cond_1

    :cond_0
    iput-object v0, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mCurrentNetworkState:Lcom/miui/common/network/NetworkUtils$NetworkState;

    iput-boolean v1, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mCurrentRoamingState:Z

    return v6

    :cond_1
    const-string/jumbo v2, "NetdFirewall"

    const-string/jumbo v3, "network: %s, roaming:%b"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/miui/common/network/NetworkUtils$NetworkState;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v5
.end method

.method private showRoamingStateNotification()V
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mCommonConfig:Lcom/miui/networkassistant/config/CommonConfig;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/CommonConfig;->isRoamingWhiteListNotifyEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mCurrentRoamingState:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/networkassistant/utils/NotificationUtil;->sendOpenRoamingWhiteListNotify(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mCommonConfig:Lcom/miui/networkassistant/config/CommonConfig;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/config/CommonConfig;->setRoamingWhiteListNotifyEnable(Z)Z

    :cond_0
    return-void
.end method

.method private unRegisterFirewallReceiver()V
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mFirewallReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method private unRegisterNetworkReceiver()V
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method private unRegisterSimStateReceiver()V
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mSimInfoChangeListener:Lcom/miui/networkassistant/dual/DualSimInfoManager$ISimInfoChangeListener;

    invoke-static {v0, v1}, Lcom/miui/networkassistant/dual/DualSimInfoManager;->unRegisterChangeListener(Landroid/content/Context;Lmiui/securitycenter/DualSim/DualSimInfoManagerWrapper$ISimInfoChangeWrapperListener;)V

    return-void
.end method

.method private static synthetic va()[I
    .locals 3

    sget-object v0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->te:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->te:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/miui/common/network/NetworkUtils$NetworkState;->values()[Lcom/miui/common/network/NetworkUtils$NetworkState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/miui/common/network/NetworkUtils$NetworkState;->aBL:Lcom/miui/common/network/NetworkUtils$NetworkState;

    invoke-virtual {v1}, Lcom/miui/common/network/NetworkUtils$NetworkState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_7

    :goto_0
    :try_start_1
    sget-object v1, Lcom/miui/common/network/NetworkUtils$NetworkState;->aBM:Lcom/miui/common/network/NetworkUtils$NetworkState;

    invoke-virtual {v1}, Lcom/miui/common/network/NetworkUtils$NetworkState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_6

    :goto_1
    :try_start_2
    sget-object v1, Lcom/miui/common/network/NetworkUtils$NetworkState;->aBN:Lcom/miui/common/network/NetworkUtils$NetworkState;

    invoke-virtual {v1}, Lcom/miui/common/network/NetworkUtils$NetworkState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_5

    :goto_2
    :try_start_3
    sget-object v1, Lcom/miui/common/network/NetworkUtils$NetworkState;->aBO:Lcom/miui/common/network/NetworkUtils$NetworkState;

    invoke-virtual {v1}, Lcom/miui/common/network/NetworkUtils$NetworkState;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_4

    :goto_3
    :try_start_4
    sget-object v1, Lcom/miui/common/network/NetworkUtils$NetworkState;->aBP:Lcom/miui/common/network/NetworkUtils$NetworkState;

    invoke-virtual {v1}, Lcom/miui/common/network/NetworkUtils$NetworkState;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_3

    :goto_4
    :try_start_5
    sget-object v1, Lcom/miui/common/network/NetworkUtils$NetworkState;->aBQ:Lcom/miui/common/network/NetworkUtils$NetworkState;

    invoke-virtual {v1}, Lcom/miui/common/network/NetworkUtils$NetworkState;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_2

    :goto_5
    :try_start_6
    sget-object v1, Lcom/miui/common/network/NetworkUtils$NetworkState;->aBR:Lcom/miui/common/network/NetworkUtils$NetworkState;

    invoke-virtual {v1}, Lcom/miui/common/network/NetworkUtils$NetworkState;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_1

    :goto_6
    :try_start_7
    sget-object v1, Lcom/miui/common/network/NetworkUtils$NetworkState;->aBS:Lcom/miui/common/network/NetworkUtils$NetworkState;

    invoke-virtual {v1}, Lcom/miui/common/network/NetworkUtils$NetworkState;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_0

    :goto_7
    sput-object v0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->te:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_7

    :catch_1
    move-exception v1

    goto :goto_6

    :catch_2
    move-exception v1

    goto :goto_5

    :catch_3
    move-exception v1

    goto :goto_4

    :catch_4
    move-exception v1

    goto :goto_3

    :catch_5
    move-exception v1

    goto :goto_2

    :catch_6
    move-exception v1

    goto :goto_1

    :catch_7
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public getMobileRestrictPackages(I)Ljava/util/List;
    .locals 3

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iget-object v0, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mMobileRuleArrMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/util/ArrayMap;

    sget-object v2, Lcom/miui/networkassistant/model/FirewallRule;->Restrict:Lcom/miui/networkassistant/model/FirewallRule;

    invoke-direct {p0, v0, v2}, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->getPackagesByRules(Lmiui/util/ArrayMap;Lcom/miui/networkassistant/model/FirewallRule;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mTempMobileRule:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/util/ArrayMap;

    sget-object v2, Lcom/miui/networkassistant/model/FirewallRule;->Restrict:Lcom/miui/networkassistant/model/FirewallRule;

    invoke-direct {p0, v0, v2}, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->getPackagesByTempRules(Lmiui/util/ArrayMap;Lcom/miui/networkassistant/model/FirewallRule;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getMobileRule(Ljava/lang/String;I)Lcom/miui/networkassistant/model/FirewallRule;
    .locals 3

    iget-object v1, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mRuleMapLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->getTempMobileRule(Ljava/lang/String;I)Lcom/miui/networkassistant/model/FirewallRule;

    move-result-object v0

    sget-object v2, Lcom/miui/networkassistant/model/FirewallRule;->Restrict:Lcom/miui/networkassistant/model/FirewallRule;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v2, :cond_0

    monitor-exit v1

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mMobileRuleArrMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/util/ArrayMap;

    invoke-virtual {v0, p1}, Lmiui/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/networkassistant/model/FirewallRule;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    monitor-exit v1

    return-object v0

    :cond_1
    :try_start_2
    sget-object v0, Lcom/miui/networkassistant/model/FirewallRule;->Allow:Lcom/miui/networkassistant/model/FirewallRule;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getRoamingRule(Ljava/lang/String;)Lcom/miui/networkassistant/model/FirewallRule;
    .locals 2

    iget-object v1, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mRuleMapLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mRoamingRuleMap:Lmiui/util/ArrayMap;

    invoke-virtual {v0, p1}, Lmiui/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/networkassistant/model/FirewallRule;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit v1

    return-object v0

    :cond_0
    :try_start_1
    sget-object v0, Lcom/miui/networkassistant/model/FirewallRule;->Restrict:Lcom/miui/networkassistant/model/FirewallRule;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getRoamingWhiteListEnable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mIsDataRoamingWhiteListEnable:Z

    return v0
.end method

.method public getTempMobileRule(Ljava/lang/String;I)Lcom/miui/networkassistant/model/FirewallRule;
    .locals 2

    iget-object v1, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mRuleMapLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mTempMobileRule:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/util/ArrayMap;

    invoke-virtual {v0, p1}, Lmiui/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/networkassistant/model/TempFirewallRule;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    if-nez v0, :cond_0

    sget-object v0, Lcom/miui/networkassistant/model/FirewallRule;->Allow:Lcom/miui/networkassistant/model/FirewallRule;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_0
    iget-object v0, v0, Lcom/miui/networkassistant/model/TempFirewallRule;->rule:Lcom/miui/networkassistant/model/FirewallRule;

    return-object v0
.end method

.method public getTempMobileRuleSrcPkgName(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mRuleMapLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mTempMobileRule:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/util/ArrayMap;

    invoke-virtual {v0, p1}, Lmiui/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/networkassistant/model/TempFirewallRule;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    if-nez v0, :cond_0

    return-object v2

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_0
    iget-object v0, v0, Lcom/miui/networkassistant/model/TempFirewallRule;->srcPkgName:Ljava/lang/String;

    return-object v0
.end method

.method public getTempWifiRule(Ljava/lang/String;)Lcom/miui/networkassistant/model/FirewallRule;
    .locals 2

    iget-object v1, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mRuleMapLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mTempWifiRule:Lmiui/util/ArrayMap;

    invoke-virtual {v0, p1}, Lmiui/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/networkassistant/model/TempFirewallRule;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    if-nez v0, :cond_0

    sget-object v0, Lcom/miui/networkassistant/model/FirewallRule;->Allow:Lcom/miui/networkassistant/model/FirewallRule;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_0
    iget-object v0, v0, Lcom/miui/networkassistant/model/TempFirewallRule;->rule:Lcom/miui/networkassistant/model/FirewallRule;

    return-object v0
.end method

.method public getTempWifiRuleSrcPkgName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mRuleMapLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mTempWifiRule:Lmiui/util/ArrayMap;

    invoke-virtual {v0, p1}, Lmiui/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/networkassistant/model/TempFirewallRule;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    if-nez v0, :cond_0

    return-object v2

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_0
    iget-object v0, v0, Lcom/miui/networkassistant/model/TempFirewallRule;->srcPkgName:Ljava/lang/String;

    return-object v0
.end method

.method public getWifiRestrictPackages()Ljava/util/List;
    .locals 3

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mWifiRuleMap:Lmiui/util/ArrayMap;

    sget-object v2, Lcom/miui/networkassistant/model/FirewallRule;->Restrict:Lcom/miui/networkassistant/model/FirewallRule;

    invoke-direct {p0, v1, v2}, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->getPackagesByRules(Lmiui/util/ArrayMap;Lcom/miui/networkassistant/model/FirewallRule;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mTempWifiRule:Lmiui/util/ArrayMap;

    sget-object v2, Lcom/miui/networkassistant/model/FirewallRule;->Restrict:Lcom/miui/networkassistant/model/FirewallRule;

    invoke-direct {p0, v1, v2}, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->getPackagesByTempRules(Lmiui/util/ArrayMap;Lcom/miui/networkassistant/model/FirewallRule;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v1
.end method

.method public getWifiRule(Ljava/lang/String;)Lcom/miui/networkassistant/model/FirewallRule;
    .locals 3

    iget-object v1, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mRuleMapLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->getTempWifiRule(Ljava/lang/String;)Lcom/miui/networkassistant/model/FirewallRule;

    move-result-object v0

    sget-object v2, Lcom/miui/networkassistant/model/FirewallRule;->Restrict:Lcom/miui/networkassistant/model/FirewallRule;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v2, :cond_0

    monitor-exit v1

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mWifiRuleMap:Lmiui/util/ArrayMap;

    invoke-virtual {v0, p1}, Lmiui/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/networkassistant/model/FirewallRule;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    monitor-exit v1

    return-object v0

    :cond_1
    :try_start_2
    sget-object v0, Lcom/miui/networkassistant/model/FirewallRule;->Allow:Lcom/miui/networkassistant/model/FirewallRule;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public isStarted()Z
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mIsStarted:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public loadMobileRules(Lmiui/util/ArrayMap;IZZ)V
    .locals 8

    const/4 v1, 0x0

    iget-object v4, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mRuleMapLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    const-string/jumbo v0, "NetdFirewall"

    const-string/jumbo v2, "slotNum:%d, update: %b, revert:%b"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v3, v6

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v3, v6

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/4 v6, 0x2

    aput-object v5, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mMobileRuleArrMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/util/ArrayMap;

    move v3, v1

    :goto_0
    invoke-virtual {p1}, Lmiui/util/ArrayMap;->size()I

    move-result v1

    if-ge v3, v1, :cond_2

    invoke-virtual {p1, v3}, Lmiui/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v3}, Lmiui/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/networkassistant/model/FirewallRule;

    invoke-virtual {v0, v1, v2}, Lmiui/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p3, :cond_0

    if-eqz p4, :cond_1

    sget-object v5, Lcom/miui/networkassistant/model/FirewallRule;->Restrict:Lcom/miui/networkassistant/model/FirewallRule;

    if-ne v2, v5, :cond_1

    iget-object v2, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mSecurityManager:Lmiui/security/SecurityManager;

    invoke-direct {p0, v1}, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->getUid(Ljava/lang/String;)I

    move-result v5

    sget-object v6, Lcom/miui/networkassistant/model/FirewallRule;->Allow:Lcom/miui/networkassistant/model/FirewallRule;

    invoke-virtual {v6}, Lcom/miui/networkassistant/model/FirewallRule;->value()I

    move-result v6

    const/4 v7, 0x0

    invoke-virtual {v2, v1, v5, v6, v7}, Lmiui/security/SecurityManager;->setMiuiFirewallRule(Ljava/lang/String;III)Z

    :cond_0
    :goto_1
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_0

    :cond_1
    sget-object v5, Lcom/miui/networkassistant/model/FirewallRule;->Restrict:Lcom/miui/networkassistant/model/FirewallRule;

    if-ne v2, v5, :cond_0

    iget-object v5, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mSecurityManager:Lmiui/security/SecurityManager;

    invoke-direct {p0, v1}, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->getUid(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v2}, Lcom/miui/networkassistant/model/FirewallRule;->value()I

    move-result v2

    const/4 v7, 0x0

    invoke-virtual {v5, v1, v6, v2, v7}, Lmiui/security/SecurityManager;->setMiuiFirewallRule(Ljava/lang/String;III)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v4

    throw v0

    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mTempMobileRule:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/util/ArrayMap;

    invoke-virtual {v1}, Lmiui/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mTempMobileRule:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/util/ArrayMap;

    invoke-virtual {v2, v1}, Lmiui/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/networkassistant/model/TempFirewallRule;

    iget-object v2, v2, Lcom/miui/networkassistant/model/TempFirewallRule;->rule:Lcom/miui/networkassistant/model/FirewallRule;

    sget-object v5, Lcom/miui/networkassistant/model/FirewallRule;->Restrict:Lcom/miui/networkassistant/model/FirewallRule;

    if-ne v2, v5, :cond_3

    if-eqz p4, :cond_4

    iget-object v2, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mSecurityManager:Lmiui/security/SecurityManager;

    invoke-direct {p0, v1}, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->getUid(Ljava/lang/String;)I

    move-result v5

    sget-object v6, Lcom/miui/networkassistant/model/FirewallRule;->Allow:Lcom/miui/networkassistant/model/FirewallRule;

    invoke-virtual {v6}, Lcom/miui/networkassistant/model/FirewallRule;->value()I

    move-result v6

    const/4 v7, 0x0

    invoke-virtual {v2, v1, v5, v6, v7}, Lmiui/security/SecurityManager;->setMiuiFirewallRule(Ljava/lang/String;III)Z

    goto :goto_2

    :cond_4
    iget-object v5, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mSecurityManager:Lmiui/security/SecurityManager;

    invoke-direct {p0, v1}, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->getUid(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v2}, Lcom/miui/networkassistant/model/FirewallRule;->value()I

    move-result v2

    const/4 v7, 0x0

    invoke-virtual {v5, v1, v6, v2, v7}, Lmiui/security/SecurityManager;->setMiuiFirewallRule(Ljava/lang/String;III)Z

    goto :goto_2

    :cond_5
    iget-object v1, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mMobileRuleArrMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v4

    return-void
.end method

.method public loadRoamingRules(Lmiui/util/ArrayMap;)V
    .locals 7

    iget-object v3, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mRuleMapLock:Ljava/lang/Object;

    monitor-enter v3

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    :try_start_0
    invoke-virtual {p1}, Lmiui/util/ArrayMap;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    invoke-virtual {p1, v2}, Lmiui/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v2}, Lmiui/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/networkassistant/model/FirewallRule;

    iget-object v4, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mRoamingRuleMap:Lmiui/util/ArrayMap;

    invoke-virtual {v4, v0, v1}, Lmiui/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lcom/miui/networkassistant/model/FirewallRule;->Allow:Lcom/miui/networkassistant/model/FirewallRule;

    if-ne v1, v4, :cond_0

    iget-object v4, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mSecurityManager:Lmiui/security/SecurityManager;

    invoke-direct {p0, v0}, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->getUid(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v1}, Lcom/miui/networkassistant/model/FirewallRule;->value()I

    move-result v1

    const/4 v6, 0x2

    invoke-virtual {v4, v0, v5, v1, v6}, Lmiui/security/SecurityManager;->setMiuiFirewallRule(Ljava/lang/String;III)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    monitor-exit v3

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0
.end method

.method public loadWifiRules(Lmiui/util/ArrayMap;)V
    .locals 7

    iget-object v3, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mRuleMapLock:Ljava/lang/Object;

    monitor-enter v3

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    :try_start_0
    invoke-virtual {p1}, Lmiui/util/ArrayMap;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    invoke-virtual {p1, v2}, Lmiui/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v2}, Lmiui/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/networkassistant/model/FirewallRule;

    iget-object v4, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mWifiRuleMap:Lmiui/util/ArrayMap;

    invoke-virtual {v4, v0, v1}, Lmiui/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lcom/miui/networkassistant/model/FirewallRule;->Restrict:Lcom/miui/networkassistant/model/FirewallRule;

    if-ne v1, v4, :cond_0

    iget-object v4, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mSecurityManager:Lmiui/security/SecurityManager;

    invoke-direct {p0, v0}, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->getUid(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v1}, Lcom/miui/networkassistant/model/FirewallRule;->value()I

    move-result v1

    const/4 v6, 0x1

    invoke-virtual {v4, v0, v5, v1, v6}, Lmiui/security/SecurityManager;->setMiuiFirewallRule(Ljava/lang/String;III)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    monitor-exit v3

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0
.end method

.method public removePackage(Ljava/lang/String;I)V
    .locals 2

    iget-object v1, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mRuleMapLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mMobileRuleArrMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/util/ArrayMap;

    invoke-virtual {v0, p1}, Lmiui/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mWifiRuleMap:Lmiui/util/ArrayMap;

    invoke-virtual {v0, p1}, Lmiui/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mRoamingRuleMap:Lmiui/util/ArrayMap;

    invoke-virtual {v0, p1}, Lmiui/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setListener(Lcom/miui/networkassistant/firewall/IFirewallListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mListener:Lcom/miui/networkassistant/firewall/IFirewallListener;

    return-void
.end method

.method public setMobileRule(Ljava/lang/String;Lcom/miui/networkassistant/model/FirewallRule;IZ)V
    .locals 5

    iget-object v1, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mRuleMapLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/miui/networkassistant/model/FirewallRule;->Allow:Lcom/miui/networkassistant/model/FirewallRule;

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mMobileRuleArrMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/util/ArrayMap;

    invoke-virtual {v0, p1}, Lmiui/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    if-eqz p4, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mSecurityManager:Lmiui/security/SecurityManager;

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->getUid(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p2}, Lcom/miui/networkassistant/model/FirewallRule;->value()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, p1, v2, v3, v4}, Lmiui/security/SecurityManager;->setMiuiFirewallRule(Ljava/lang/String;III)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mMobileRuleArrMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Lmiui/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setRoamingRule(Ljava/lang/String;Lcom/miui/networkassistant/model/FirewallRule;)V
    .locals 5

    iget-object v1, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mRuleMapLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/miui/networkassistant/model/FirewallRule;->Restrict:Lcom/miui/networkassistant/model/FirewallRule;

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mRoamingRuleMap:Lmiui/util/ArrayMap;

    invoke-virtual {v0, p1}, Lmiui/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    iget-object v0, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mSecurityManager:Lmiui/security/SecurityManager;

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->getUid(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p2}, Lcom/miui/networkassistant/model/FirewallRule;->value()I

    move-result v3

    const/4 v4, 0x2

    invoke-virtual {v0, p1, v2, v3, v4}, Lmiui/security/SecurityManager;->setMiuiFirewallRule(Ljava/lang/String;III)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mRoamingRuleMap:Lmiui/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Lmiui/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setRoamingWhiteListEnable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mIsDataRoamingWhiteListEnable:Z

    invoke-direct {p0}, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->refreshNetworkType()V

    return-void
.end method

.method public setTempMobileRule(Ljava/lang/String;Lcom/miui/networkassistant/model/FirewallRule;Ljava/lang/String;IZ)Z
    .locals 5

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mRuleMapLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mTempMobileRule:Landroid/util/SparseArray;

    invoke-virtual {v0, p4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/util/ArrayMap;

    invoke-virtual {v0, p1}, Lmiui/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mTempMobileRule:Landroid/util/SparseArray;

    invoke-virtual {v0, p4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/util/ArrayMap;

    invoke-virtual {v0, p1}, Lmiui/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/networkassistant/model/TempFirewallRule;

    iget-object v0, v0, Lcom/miui/networkassistant/model/TempFirewallRule;->srcPkgName:Ljava/lang/String;

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const-string/jumbo v2, "NetdFirewall"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Package "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, " cannot set temp mobile rule, because it exists another rule. Set by package:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mTempMobileRule:Landroid/util/SparseArray;

    invoke-virtual {v0, p4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/util/ArrayMap;

    invoke-virtual {v0, p1}, Lmiui/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/networkassistant/model/TempFirewallRule;

    iget-object v0, v0, Lcom/miui/networkassistant/model/TempFirewallRule;->srcPkgName:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return v4

    :cond_0
    monitor-exit v1

    sget-object v0, Lcom/miui/networkassistant/model/FirewallRule;->Restrict:Lcom/miui/networkassistant/model/FirewallRule;

    if-ne p2, v0, :cond_2

    iget-object v1, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mRuleMapLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    iget-object v0, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mTempMobileRule:Landroid/util/SparseArray;

    invoke-virtual {v0, p4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/util/ArrayMap;

    new-instance v2, Lcom/miui/networkassistant/model/TempFirewallRule;

    invoke-direct {v2, p2, p3}, Lcom/miui/networkassistant/model/TempFirewallRule;-><init>(Lcom/miui/networkassistant/model/FirewallRule;Ljava/lang/String;)V

    invoke-virtual {v0, p1, v2}, Lmiui/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v1

    if-eqz p5, :cond_1

    iget-object v0, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mSecurityManager:Lmiui/security/SecurityManager;

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->getUid(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2}, Lcom/miui/networkassistant/model/FirewallRule;->value()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2, v4}, Lmiui/security/SecurityManager;->setMiuiFirewallRule(Ljava/lang/String;III)Z

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_2
    iget-object v1, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mRuleMapLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_2
    iget-object v0, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mTempMobileRule:Landroid/util/SparseArray;

    invoke-virtual {v0, p4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/util/ArrayMap;

    invoke-virtual {v0, p1}, Lmiui/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    monitor-exit v1

    if-eqz p5, :cond_1

    iget-object v0, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mSecurityManager:Lmiui/security/SecurityManager;

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->getUid(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, p1, p4}, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->getMobileRule(Ljava/lang/String;I)Lcom/miui/networkassistant/model/FirewallRule;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/networkassistant/model/FirewallRule;->value()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2, v4}, Lmiui/security/SecurityManager;->setMiuiFirewallRule(Ljava/lang/String;III)Z

    goto :goto_0

    :catchall_2
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setTempWifiRule(Ljava/lang/String;Lcom/miui/networkassistant/model/FirewallRule;Ljava/lang/String;)Z
    .locals 6

    const/4 v5, 0x1

    iget-object v1, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mRuleMapLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mTempWifiRule:Lmiui/util/ArrayMap;

    invoke-virtual {v0, p1}, Lmiui/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mTempWifiRule:Lmiui/util/ArrayMap;

    invoke-virtual {v0, p1}, Lmiui/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/networkassistant/model/TempFirewallRule;

    iget-object v0, v0, Lcom/miui/networkassistant/model/TempFirewallRule;->srcPkgName:Ljava/lang/String;

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const-string/jumbo v2, "NetdFirewall"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Package "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, " cannot set temp wifi rule, because it exists another rule. Set by package:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mTempWifiRule:Lmiui/util/ArrayMap;

    invoke-virtual {v0, p1}, Lmiui/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/networkassistant/model/TempFirewallRule;

    iget-object v0, v0, Lcom/miui/networkassistant/model/TempFirewallRule;->srcPkgName:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    monitor-exit v1

    return v0

    :cond_0
    :try_start_1
    sget-object v0, Lcom/miui/networkassistant/model/FirewallRule;->Allow:Lcom/miui/networkassistant/model/FirewallRule;

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mTempWifiRule:Lmiui/util/ArrayMap;

    invoke-virtual {v0, p1}, Lmiui/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mSecurityManager:Lmiui/security/SecurityManager;

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->getUid(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, p1}, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->getWifiRule(Ljava/lang/String;)Lcom/miui/networkassistant/model/FirewallRule;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/networkassistant/model/FirewallRule;->value()I

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {v0, p1, v2, v3, v4}, Lmiui/security/SecurityManager;->setMiuiFirewallRule(Ljava/lang/String;III)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit v1

    return v5

    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mTempWifiRule:Lmiui/util/ArrayMap;

    new-instance v2, Lcom/miui/networkassistant/model/TempFirewallRule;

    invoke-direct {v2, p2, p3}, Lcom/miui/networkassistant/model/TempFirewallRule;-><init>(Lcom/miui/networkassistant/model/FirewallRule;Ljava/lang/String;)V

    invoke-virtual {v0, p1, v2}, Lmiui/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mSecurityManager:Lmiui/security/SecurityManager;

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->getUid(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p2}, Lcom/miui/networkassistant/model/FirewallRule;->value()I

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {v0, p1, v2, v3, v4}, Lmiui/security/SecurityManager;->setMiuiFirewallRule(Ljava/lang/String;III)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setWifiRule(Ljava/lang/String;Lcom/miui/networkassistant/model/FirewallRule;)V
    .locals 5

    iget-object v1, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mRuleMapLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/miui/networkassistant/model/FirewallRule;->Allow:Lcom/miui/networkassistant/model/FirewallRule;

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mWifiRuleMap:Lmiui/util/ArrayMap;

    invoke-virtual {v0, p1}, Lmiui/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    iget-object v0, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mSecurityManager:Lmiui/security/SecurityManager;

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->getUid(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p2}, Lcom/miui/networkassistant/model/FirewallRule;->value()I

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {v0, p1, v2, v3, v4}, Lmiui/security/SecurityManager;->setMiuiFirewallRule(Ljava/lang/String;III)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mWifiRuleMap:Lmiui/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Lmiui/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public start()Z
    .locals 4

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mIsStarted:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mIsStarted:Z

    invoke-direct {p0}, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->registerNetworkReceiver()V

    invoke-direct {p0}, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->registerSimStateReceiver()V

    invoke-direct {p0}, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->registerFirewallReceiver()V

    const-string/jumbo v0, "NetdFirewall"

    const-string/jumbo v2, "netd firewall start"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    return v3

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public stop()Z
    .locals 3

    iget-object v1, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mIsStarted:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->mIsStarted:Z

    invoke-direct {p0}, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->unRegisterNetworkReceiver()V

    invoke-direct {p0}, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->unRegisterSimStateReceiver()V

    invoke-direct {p0}, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->unRegisterFirewallReceiver()V

    const-string/jumbo v0, "NetdFirewall"

    const-string/jumbo v2, "netd firewall stop"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
