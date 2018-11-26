.class public Lcom/miui/networkassistant/service/FirewallService;
.super Landroid/app/Service;
.source ""


# static fields
.field private static final MAP_KEY_TAG_MOBILE:Ljava/lang/String; = "mobile"

.field private static final MAP_KEY_TAG_WIFI:Ljava/lang/String; = "wifi"

.field private static final MSG_KEY_SEND_NETWORK_BLOCKED_NETWORK_TYPE:Ljava/lang/String; = "network_blocked_network_type"

.field private static final MSG_KEY_SEND_NETWORK_BLOCKED_PKGNAME:Ljava/lang/String; = "network_blocked_pkgname"

.field private static final MSG_KEY_TEMP_RULE_PACKAGE:Ljava/lang/String; = "temp_rule_package"

.field private static final MSG_KEY_TEMP_RULE_REASON:Ljava/lang/String; = "temp_rule_reason"

.field private static final MSG_SAVE_RULE_DATA:I = 0x2

.field private static final MSG_SAVE_RULE_DATA_SLOT:I = 0x1

.field private static final MSG_SEND_NETWORK_BLOCKED:I = 0x100

.field private static final MSG_SHOWING_TEMP_RULE_REASON:I = 0x21

.field private static final MSG_SHOW_TEMP_RULE_REASON:I = 0x20

.field private static final MSG_UPDATE_FIREWALL_CHANGED:I = 0x30

.field private static final TAG:Ljava/lang/String; = "FireWallService"


# instance fields
.field private mActiveSlotNum:I

.field private mAllowFirewallReceiver:Landroid/content/BroadcastReceiver;

.field private mCancelFloatNotificationReceiver:Landroid/content/BroadcastReceiver;

.field private mCommonConfig:Lcom/miui/networkassistant/config/CommonConfig;

.field private mContext:Landroid/content/Context;

.field private mFirewall:Lcom/miui/networkassistant/firewall/IFirewall;

.field private mFirewallBinder:Lcom/miui/networkassistant/service/FirewallService$FirewallBinder;

.field private mHandler:Landroid/os/Handler;

.field private mIFirewallListener:Lcom/miui/networkassistant/firewall/IFirewallListener;

.field private mMobileFireWallConfig:[Lcom/miui/networkassistant/config/FireWallConfig;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPackageReceiver:Landroid/content/BroadcastReceiver;

.field private mRoamingFirewallConfig:Lcom/miui/networkassistant/config/FireWallConfig;

.field private mSimStateDataSlotReceiver:Landroid/content/BroadcastReceiver;

.field private mSimStateReceiver:Landroid/content/BroadcastReceiver;

.field private mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

.field private mToastedAppMap:Lmiui/util/ArrayMap;

.field private mWifiFirewallConfig:Lcom/miui/networkassistant/config/FireWallConfig;


# direct methods
.method static synthetic -get0(Lcom/miui/networkassistant/service/FirewallService;)I
    .locals 1

    iget v0, p0, Lcom/miui/networkassistant/service/FirewallService;->mActiveSlotNum:I

    return v0
.end method

.method static synthetic -get1(Lcom/miui/networkassistant/service/FirewallService;)Lcom/miui/networkassistant/config/CommonConfig;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/service/FirewallService;->mCommonConfig:Lcom/miui/networkassistant/config/CommonConfig;

    return-object v0
.end method

.method static synthetic -get2(Lcom/miui/networkassistant/service/FirewallService;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/service/FirewallService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get3(Lcom/miui/networkassistant/service/FirewallService;)Lcom/miui/networkassistant/firewall/IFirewall;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/service/FirewallService;->mFirewall:Lcom/miui/networkassistant/firewall/IFirewall;

    return-object v0
.end method

.method static synthetic -get4(Lcom/miui/networkassistant/service/FirewallService;)Lcom/miui/networkassistant/service/FirewallService$FirewallBinder;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/service/FirewallService;->mFirewallBinder:Lcom/miui/networkassistant/service/FirewallService$FirewallBinder;

    return-object v0
.end method

.method static synthetic -get5(Lcom/miui/networkassistant/service/FirewallService;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/service/FirewallService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get6(Lcom/miui/networkassistant/service/FirewallService;)[Lcom/miui/networkassistant/config/FireWallConfig;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/service/FirewallService;->mMobileFireWallConfig:[Lcom/miui/networkassistant/config/FireWallConfig;

    return-object v0
.end method

.method static synthetic -get7(Lcom/miui/networkassistant/service/FirewallService;)Landroid/content/pm/PackageManager;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/service/FirewallService;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic -get8(Lcom/miui/networkassistant/service/FirewallService;)Lcom/miui/networkassistant/config/FireWallConfig;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/service/FirewallService;->mRoamingFirewallConfig:Lcom/miui/networkassistant/config/FireWallConfig;

    return-object v0
.end method

.method static synthetic -get9(Lcom/miui/networkassistant/service/FirewallService;)Lcom/miui/networkassistant/config/FireWallConfig;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/service/FirewallService;->mWifiFirewallConfig:Lcom/miui/networkassistant/config/FireWallConfig;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/miui/networkassistant/service/FirewallService;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/service/FirewallService;->checkFirewallRuleChangedDelay(Z)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/miui/networkassistant/service/FirewallService;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/networkassistant/service/FirewallService;->loadActiveFirewallConfig()V

    return-void
.end method

.method static synthetic -wrap10(Lcom/miui/networkassistant/service/FirewallService;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/networkassistant/service/FirewallService;->setNewInstallAppMobileRule(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic -wrap11(Lcom/miui/networkassistant/service/FirewallService;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/service/FirewallService;->setNewInstallAppWifiRule(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap12(Lcom/miui/networkassistant/service/FirewallService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/networkassistant/service/FirewallService;->showAllowFirewallToast(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/miui/networkassistant/service/FirewallService;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/networkassistant/service/FirewallService;->loadMobileFirewall()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/miui/networkassistant/service/FirewallService;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/service/FirewallService;->removePackage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/miui/networkassistant/service/FirewallService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/networkassistant/service/FirewallService;->removePkgFromAppBlockedMap(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/miui/networkassistant/service/FirewallService;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/networkassistant/service/FirewallService;->resolveAppBlocked(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/miui/networkassistant/service/FirewallService;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/networkassistant/service/FirewallService;->saveRuleDataDelay()V

    return-void
.end method

.method static synthetic -wrap7(Lcom/miui/networkassistant/service/FirewallService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/service/FirewallService;->saveRuleDataDelay(I)V

    return-void
.end method

.method static synthetic -wrap8(Lcom/miui/networkassistant/service/FirewallService;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/networkassistant/service/FirewallService;->saveRuleData()V

    return-void
.end method

.method static synthetic -wrap9(Lcom/miui/networkassistant/service/FirewallService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/service/FirewallService;->saveRuleData(I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Lcom/miui/networkassistant/service/FirewallService$1;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/service/FirewallService$1;-><init>(Lcom/miui/networkassistant/service/FirewallService;)V

    iput-object v0, p0, Lcom/miui/networkassistant/service/FirewallService;->mCancelFloatNotificationReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/miui/networkassistant/service/FirewallService$2;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/service/FirewallService$2;-><init>(Lcom/miui/networkassistant/service/FirewallService;)V

    iput-object v0, p0, Lcom/miui/networkassistant/service/FirewallService;->mSimStateDataSlotReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/miui/networkassistant/service/FirewallService$3;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/service/FirewallService$3;-><init>(Lcom/miui/networkassistant/service/FirewallService;)V

    iput-object v0, p0, Lcom/miui/networkassistant/service/FirewallService;->mSimStateReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/miui/networkassistant/service/FirewallService$4;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/service/FirewallService$4;-><init>(Lcom/miui/networkassistant/service/FirewallService;)V

    iput-object v0, p0, Lcom/miui/networkassistant/service/FirewallService;->mIFirewallListener:Lcom/miui/networkassistant/firewall/IFirewallListener;

    new-instance v0, Lcom/miui/networkassistant/service/FirewallService$5;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/service/FirewallService$5;-><init>(Lcom/miui/networkassistant/service/FirewallService;)V

    iput-object v0, p0, Lcom/miui/networkassistant/service/FirewallService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/miui/networkassistant/service/FirewallService$6;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/service/FirewallService$6;-><init>(Lcom/miui/networkassistant/service/FirewallService;)V

    iput-object v0, p0, Lcom/miui/networkassistant/service/FirewallService;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/miui/networkassistant/service/FirewallService$7;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/service/FirewallService$7;-><init>(Lcom/miui/networkassistant/service/FirewallService;)V

    iput-object v0, p0, Lcom/miui/networkassistant/service/FirewallService;->mAllowFirewallReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private checkFirewallRuleChangedDelay(Z)V
    .locals 4

    const/16 v1, 0x30

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/service/FirewallService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/networkassistant/service/FirewallService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    iget-object v0, p0, Lcom/miui/networkassistant/service/FirewallService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/service/FirewallService;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x64

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private createFireWall()V
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/miui/networkassistant/config/FireWallConfig;

    iput-object v0, p0, Lcom/miui/networkassistant/service/FirewallService;->mMobileFireWallConfig:[Lcom/miui/networkassistant/config/FireWallConfig;

    new-instance v0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;

    invoke-virtual {p0}, Lcom/miui/networkassistant/service/FirewallService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/networkassistant/service/FirewallService;->mFirewall:Lcom/miui/networkassistant/firewall/IFirewall;

    invoke-direct {p0}, Lcom/miui/networkassistant/service/FirewallService;->loadWifiAndRoamingFirewall()V

    invoke-direct {p0}, Lcom/miui/networkassistant/service/FirewallService;->loadMobileFirewall()V

    invoke-direct {p0}, Lcom/miui/networkassistant/service/FirewallService;->setWhiteListAppAllow()V

    return-void
.end method

.method private loadActiveFirewallConfig()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-static {}, Lcom/miui/networkassistant/utils/TelephonyUtil;->getCurrentMobileSlotNum()I

    move-result v0

    iget v1, p0, Lcom/miui/networkassistant/service/FirewallService;->mActiveSlotNum:I

    if-eq v0, v1, :cond_1

    iput v0, p0, Lcom/miui/networkassistant/service/FirewallService;->mActiveSlotNum:I

    const-string/jumbo v0, "FireWallService"

    const-string/jumbo v1, "ActiveSlot %d"

    new-array v2, v5, [Ljava/lang/Object;

    iget v3, p0, Lcom/miui/networkassistant/service/FirewallService;->mActiveSlotNum:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/miui/networkassistant/service/FirewallService;->mActiveSlotNum:I

    if-nez v0, :cond_2

    invoke-direct {p0, v4, v5}, Lcom/miui/networkassistant/service/FirewallService;->makeActiveSlotFirewall(II)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/miui/networkassistant/service/FirewallService;->mToastedAppMap:Lmiui/util/ArrayMap;

    invoke-virtual {v0}, Lmiui/util/ArrayMap;->clear()V

    :cond_1
    return-void

    :cond_2
    iget v0, p0, Lcom/miui/networkassistant/service/FirewallService;->mActiveSlotNum:I

    if-ne v0, v5, :cond_0

    invoke-direct {p0, v5, v4}, Lcom/miui/networkassistant/service/FirewallService;->makeActiveSlotFirewall(II)V

    goto :goto_0
.end method

.method private loadMobileFirewall()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/miui/networkassistant/service/FirewallService;->loadMobileFirewallBySlot(I)V

    sget-boolean v0, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_DUAL_CARD:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/miui/networkassistant/service/FirewallService;->loadMobileFirewallBySlot(I)V

    :cond_0
    return-void
.end method

.method private loadMobileFirewallBySlot(I)V
    .locals 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lcom/miui/networkassistant/utils/TelephonyUtil;->getCurrentMobileSlotNum()I

    move-result v0

    iput v0, p0, Lcom/miui/networkassistant/service/FirewallService;->mActiveSlotNum:I

    iget-object v0, p0, Lcom/miui/networkassistant/service/FirewallService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "default"

    invoke-static {v0, p1, v3}, Lcom/miui/networkassistant/utils/TelephonyUtil;->getSubscriberId(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget v0, p0, Lcom/miui/networkassistant/service/FirewallService;->mActiveSlotNum:I

    if-ne v0, p1, :cond_0

    move v0, v1

    :goto_0
    const-string/jumbo v4, "FireWallService"

    const-string/jumbo v5, "firewall config %d, %b"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/miui/networkassistant/service/FirewallService;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget-object v4, p0, Lcom/miui/networkassistant/service/FirewallService;->mContext:Landroid/content/Context;

    invoke-static {v4, p1}, Lcom/miui/networkassistant/config/SimUserInfo;->getInstance(Landroid/content/Context;I)Lcom/miui/networkassistant/config/SimUserInfo;

    move-result-object v4

    aput-object v4, v1, p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "_fire_wall_config2.db"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/miui/networkassistant/service/FirewallService;->mMobileFireWallConfig:[Lcom/miui/networkassistant/config/FireWallConfig;

    iget-object v4, p0, Lcom/miui/networkassistant/service/FirewallService;->mContext:Landroid/content/Context;

    invoke-static {v4, v1}, Lcom/miui/networkassistant/config/FireWallConfig;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/miui/networkassistant/config/FireWallConfig;

    move-result-object v1

    aput-object v1, v3, p1

    invoke-direct {p0, p1, v0, v2}, Lcom/miui/networkassistant/service/FirewallService;->updateMobileRuleMap(IZZ)V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method private loadWifiAndRoamingFirewall()V
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/service/FirewallService;->mWifiFirewallConfig:Lcom/miui/networkassistant/config/FireWallConfig;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/FireWallConfig;->getPairMap()Lmiui/util/ArrayMap;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/service/FirewallService;->mFirewall:Lcom/miui/networkassistant/firewall/IFirewall;

    invoke-interface {v1, v0}, Lcom/miui/networkassistant/firewall/IFirewall;->loadWifiRules(Lmiui/util/ArrayMap;)V

    iget-object v1, p0, Lcom/miui/networkassistant/service/FirewallService;->mRoamingFirewallConfig:Lcom/miui/networkassistant/config/FireWallConfig;

    invoke-virtual {v1}, Lcom/miui/networkassistant/config/FireWallConfig;->getPairMap()Lmiui/util/ArrayMap;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/networkassistant/service/FirewallService;->mFirewall:Lcom/miui/networkassistant/firewall/IFirewall;

    invoke-interface {v2, v1}, Lcom/miui/networkassistant/firewall/IFirewall;->loadRoamingRules(Lmiui/util/ArrayMap;)V

    iget-object v1, p0, Lcom/miui/networkassistant/service/FirewallService;->mFirewall:Lcom/miui/networkassistant/firewall/IFirewall;

    iget-object v2, p0, Lcom/miui/networkassistant/service/FirewallService;->mCommonConfig:Lcom/miui/networkassistant/config/CommonConfig;

    invoke-virtual {v2}, Lcom/miui/networkassistant/config/CommonConfig;->getDataRoamingWhiteListEnable()Z

    move-result v2

    invoke-interface {v1, v2}, Lcom/miui/networkassistant/firewall/IFirewall;->setRoamingWhiteListEnable(Z)V

    invoke-direct {p0, v0}, Lcom/miui/networkassistant/service/FirewallService;->setSystemAppWifiRuleAllow(Lmiui/util/ArrayMap;)V

    iget-object v0, p0, Lcom/miui/networkassistant/service/FirewallService;->mFirewall:Lcom/miui/networkassistant/firewall/IFirewall;

    iget-object v1, p0, Lcom/miui/networkassistant/service/FirewallService;->mIFirewallListener:Lcom/miui/networkassistant/firewall/IFirewallListener;

    invoke-interface {v0, v1}, Lcom/miui/networkassistant/firewall/IFirewall;->setListener(Lcom/miui/networkassistant/firewall/IFirewallListener;)V

    iget-object v0, p0, Lcom/miui/networkassistant/service/FirewallService;->mFirewall:Lcom/miui/networkassistant/firewall/IFirewall;

    invoke-interface {v0}, Lcom/miui/networkassistant/firewall/IFirewall;->start()Z

    const-string/jumbo v0, "FireWallService"

    const-string/jumbo v1, "loadWifiAndRoamingFirewall over"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private makeActiveSlotFirewall(II)V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0, p2, v1, v1}, Lcom/miui/networkassistant/service/FirewallService;->updateMobileRuleMap(IZZ)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcom/miui/networkassistant/service/FirewallService;->updateMobileRuleMap(IZZ)V

    return-void
.end method

.method private registerAllowFirewallReceiver()V
    .locals 6

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v0, "action_broadcast_allow_app_firewall"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/networkassistant/service/FirewallService;->mAllowFirewallReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {}, Lcom/miui/common/b/f;->aIf()Landroid/os/UserHandle;

    move-result-object v2

    const-string/jumbo v4, "miui.permission.EXTRA_NETWORK"

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/miui/common/b/n;->aIV(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)V

    return-void
.end method

.method private registerCancelFloatNotificationReceiver()V
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "action_broadcast_cancel_notification"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/networkassistant/service/FirewallService;->mCancelFloatNotificationReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {}, Lcom/miui/common/b/f;->aIf()Landroid/os/UserHandle;

    move-result-object v2

    invoke-static {p0, v1, v2, v0}, Lcom/miui/common/b/n;->aIM(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;)V

    return-void
.end method

.method private registerPackageReceiver()V
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/networkassistant/service/FirewallService;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {}, Lcom/miui/common/b/f;->aIf()Landroid/os/UserHandle;

    move-result-object v2

    invoke-static {p0, v1, v2, v0}, Lcom/miui/common/b/n;->aIM(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;)V

    return-void
.end method

.method private registerSimDataSlotStateReceiver()V
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "miui.intent.action.ACTION_DEFAULT_DATA_SLOT_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/networkassistant/service/FirewallService;->mSimStateDataSlotReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/miui/networkassistant/service/FirewallService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private registerSimStateReceiver()V
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/networkassistant/service/FirewallService;->mSimStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/miui/networkassistant/service/FirewallService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private removeMobileData(Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/service/FirewallService;->mFirewall:Lcom/miui/networkassistant/firewall/IFirewall;

    invoke-interface {v0, p1, p2}, Lcom/miui/networkassistant/firewall/IFirewall;->removePackage(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/miui/networkassistant/service/FirewallService;->mMobileFireWallConfig:[Lcom/miui/networkassistant/config/FireWallConfig;

    aget-object v0, v0, p2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/service/FirewallService;->mMobileFireWallConfig:[Lcom/miui/networkassistant/config/FireWallConfig;

    aget-object v0, v0, p2

    invoke-virtual {v0, p1}, Lcom/miui/networkassistant/config/FireWallConfig;->remove(Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/miui/networkassistant/service/FirewallService;->saveRuleDataDelay(I)V

    :cond_0
    return-void
.end method

.method private removePackage(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/networkassistant/service/FirewallService;->removeMobileData(Ljava/lang/String;I)V

    sget-boolean v0, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_DUAL_CARD:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/miui/networkassistant/service/FirewallService;->removeMobileData(Ljava/lang/String;I)V

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/service/FirewallService;->mRoamingFirewallConfig:Lcom/miui/networkassistant/config/FireWallConfig;

    invoke-virtual {v0, p1}, Lcom/miui/networkassistant/config/FireWallConfig;->remove(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/networkassistant/service/FirewallService;->mWifiFirewallConfig:Lcom/miui/networkassistant/config/FireWallConfig;

    invoke-virtual {v0, p1}, Lcom/miui/networkassistant/config/FireWallConfig;->remove(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/miui/networkassistant/service/FirewallService;->saveRuleDataDelay()V

    return-void
.end method

.method private removePkgFromAppBlockedMap(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string/jumbo v0, "%s_%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/service/FirewallService;->mToastedAppMap:Lmiui/util/ArrayMap;

    invoke-virtual {v1, v0}, Lmiui/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private resolveAppBlocked(Ljava/lang/String;I)V
    .locals 13

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string/jumbo v1, "%s_%s"

    new-array v2, v12, [Ljava/lang/Object;

    aput-object p1, v2, v10

    sget-object v0, Lcom/miui/common/network/NetworkUtils$NetworkState;->aBP:Lcom/miui/common/network/NetworkUtils$NetworkState;

    invoke-virtual {v0}, Lcom/miui/common/network/NetworkUtils$NetworkState;->ordinal()I

    move-result v0

    if-ne p2, v0, :cond_2

    const-string/jumbo v0, "mobile"

    :goto_0
    aput-object v0, v2, v11

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v0, p0, Lcom/miui/networkassistant/service/FirewallService;->mToastedAppMap:Lmiui/util/ArrayMap;

    invoke-virtual {v0, v1}, Lmiui/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-static {p1}, Lcom/miui/networkassistant/utils/PackageUtil;->getRealPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long v6, v2, v6

    const-wide/32 v8, 0x5265c00

    cmp-long v0, v6, v8

    if-lez v0, :cond_6

    :cond_1
    const-string/jumbo v0, "android"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/miui/networkassistant/service/FirewallService;->mContext:Landroid/content/Context;

    invoke-static {v0, v4}, Lcom/miui/networkassistant/utils/PackageUtil;->isRunningForeground(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_4

    return-void

    :cond_2
    sget-object v0, Lcom/miui/common/network/NetworkUtils$NetworkState;->aBS:Lcom/miui/common/network/NetworkUtils$NetworkState;

    invoke-virtual {v0}, Lcom/miui/common/network/NetworkUtils$NetworkState;->ordinal()I

    move-result v0

    if-ne p2, v0, :cond_3

    const-string/jumbo v0, "wifi"

    goto :goto_0

    :cond_3
    const-string/jumbo v0, ""

    goto :goto_0

    :cond_4
    invoke-static {p0, v4}, Lcom/miui/networkassistant/utils/PackageUtil;->getLableByPackageName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    sget-object v4, Lcom/miui/common/network/NetworkUtils$NetworkState;->aBP:Lcom/miui/common/network/NetworkUtils$NetworkState;

    invoke-virtual {v4}, Lcom/miui/common/network/NetworkUtils$NetworkState;->ordinal()I

    move-result v4

    if-ne p2, v4, :cond_8

    invoke-virtual {p0}, Lcom/miui/networkassistant/service/FirewallService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iget v5, p0, Lcom/miui/networkassistant/service/FirewallService;->mActiveSlotNum:I

    invoke-static {v4, v5}, Lcom/miui/networkassistant/utils/TelephonyUtil;->isNetworkRoaming(Landroid/content/Context;I)Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/miui/networkassistant/service/FirewallService;->mCommonConfig:Lcom/miui/networkassistant/config/CommonConfig;

    invoke-virtual {v4}, Lcom/miui/networkassistant/config/CommonConfig;->getDataRoamingWhiteListEnable()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-direct {p0, v0}, Lcom/miui/networkassistant/service/FirewallService;->startRoamingStateAlertActivity(Ljava/lang/CharSequence;)V

    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/miui/networkassistant/service/FirewallService;->mToastedAppMap:Lmiui/util/ArrayMap;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lmiui/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "FireWallService"

    const-string/jumbo v4, "ToastedAppMap put, key:%s, value:%d"

    new-array v5, v12, [Ljava/lang/Object;

    aput-object v1, v5, v10

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v5, v11

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    return-void

    :cond_7
    invoke-direct {p0, v0, p1, p2}, Lcom/miui/networkassistant/service/FirewallService;->showNetworkRestrictNotify(Ljava/lang/CharSequence;Ljava/lang/String;I)V

    goto :goto_1

    :cond_8
    sget-object v4, Lcom/miui/common/network/NetworkUtils$NetworkState;->aBS:Lcom/miui/common/network/NetworkUtils$NetworkState;

    invoke-virtual {v4}, Lcom/miui/common/network/NetworkUtils$NetworkState;->ordinal()I

    move-result v4

    if-ne p2, v4, :cond_5

    invoke-direct {p0, v0, p1, p2}, Lcom/miui/networkassistant/service/FirewallService;->showNetworkRestrictNotify(Ljava/lang/CharSequence;Ljava/lang/String;I)V

    goto :goto_1
.end method

.method private saveRuleData()V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/service/FirewallService;->mWifiFirewallConfig:Lcom/miui/networkassistant/config/FireWallConfig;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/FireWallConfig;->saveNow()V

    iget-object v0, p0, Lcom/miui/networkassistant/service/FirewallService;->mRoamingFirewallConfig:Lcom/miui/networkassistant/config/FireWallConfig;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/FireWallConfig;->saveNow()V

    return-void
.end method

.method private saveRuleData(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/service/FirewallService;->mMobileFireWallConfig:[Lcom/miui/networkassistant/config/FireWallConfig;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/FireWallConfig;->saveNow()V

    return-void
.end method

.method private saveRuleDataDelay()V
    .locals 4

    const/4 v1, 0x2

    iget-object v0, p0, Lcom/miui/networkassistant/service/FirewallService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/service/FirewallService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/service/FirewallService;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private saveRuleDataDelay(I)V
    .locals 4

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/miui/networkassistant/service/FirewallService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/service/FirewallService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/service/FirewallService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/miui/networkassistant/service/FirewallService;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x64

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private setNewInstallAppMobileRule(Ljava/lang/String;I)V
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/service/FirewallService;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    aget-object v0, v0, p2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/service/FirewallService;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    aget-object v0, v0, p2

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->isSimInserted()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/service/FirewallService;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    aget-object v0, v0, p2

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getFirewallMobilePreConfig()I

    move-result v0

    invoke-static {v0}, Lcom/miui/networkassistant/model/FirewallRule;->parse(I)Lcom/miui/networkassistant/model/FirewallRule;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/service/FirewallService;->mFirewallBinder:Lcom/miui/networkassistant/service/FirewallService$FirewallBinder;

    invoke-virtual {v1, p1, v0, p2}, Lcom/miui/networkassistant/service/FirewallService$FirewallBinder;->setMobileRule(Ljava/lang/String;Lcom/miui/networkassistant/model/FirewallRule;I)Z

    :cond_0
    return-void
.end method

.method private setNewInstallAppWifiRule(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/service/FirewallService;->mCommonConfig:Lcom/miui/networkassistant/config/CommonConfig;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/CommonConfig;->getFirewallWifiPreConfig()I

    move-result v0

    invoke-static {v0}, Lcom/miui/networkassistant/model/FirewallRule;->parse(I)Lcom/miui/networkassistant/model/FirewallRule;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/service/FirewallService;->mFirewallBinder:Lcom/miui/networkassistant/service/FirewallService$FirewallBinder;

    invoke-virtual {v1, p1, v0}, Lcom/miui/networkassistant/service/FirewallService$FirewallBinder;->setWifiRule(Ljava/lang/String;Lcom/miui/networkassistant/model/FirewallRule;)Z

    return-void
.end method

.method private setSystemAppWifiRuleAllow(Lmiui/util/ArrayMap;)V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p1}, Lmiui/util/ArrayMap;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    invoke-virtual {p1, v1}, Lmiui/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/miui/networkassistant/utils/PackageUtil;->getRealPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/service/FirewallService;->mContext:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/miui/networkassistant/utils/PackageUtil;->isSystemApp(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, v1}, Lmiui/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/networkassistant/model/FirewallRule;

    if-eqz v0, :cond_0

    sget-object v3, Lcom/miui/networkassistant/model/FirewallRule;->Restrict:Lcom/miui/networkassistant/model/FirewallRule;

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/service/FirewallService;->mFirewall:Lcom/miui/networkassistant/firewall/IFirewall;

    sget-object v3, Lcom/miui/networkassistant/model/FirewallRule;->Allow:Lcom/miui/networkassistant/model/FirewallRule;

    invoke-interface {v0, v2, v3}, Lcom/miui/networkassistant/firewall/IFirewall;->setWifiRule(Ljava/lang/String;Lcom/miui/networkassistant/model/FirewallRule;)V

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/miui/networkassistant/service/FirewallService;->saveRuleDataDelay()V

    return-void
.end method

.method private setWhiteListAppAllow()V
    .locals 7

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {}, Lcom/miui/networkassistant/traffic/statistic/PreSetGroup;->getPreFirewallWhiteList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/networkassistant/service/FirewallService;->mFirewall:Lcom/miui/networkassistant/firewall/IFirewall;

    sget-object v5, Lcom/miui/networkassistant/model/FirewallRule;->Allow:Lcom/miui/networkassistant/model/FirewallRule;

    invoke-interface {v1, v0, v5}, Lcom/miui/networkassistant/firewall/IFirewall;->setWifiRule(Ljava/lang/String;Lcom/miui/networkassistant/model/FirewallRule;)V

    iget-object v5, p0, Lcom/miui/networkassistant/service/FirewallService;->mFirewall:Lcom/miui/networkassistant/firewall/IFirewall;

    sget-object v6, Lcom/miui/networkassistant/model/FirewallRule;->Allow:Lcom/miui/networkassistant/model/FirewallRule;

    iget v1, p0, Lcom/miui/networkassistant/service/FirewallService;->mActiveSlotNum:I

    if-nez v1, :cond_1

    move v1, v2

    :goto_1
    invoke-interface {v5, v0, v6, v3, v1}, Lcom/miui/networkassistant/firewall/IFirewall;->setMobileRule(Ljava/lang/String;Lcom/miui/networkassistant/model/FirewallRule;IZ)V

    sget-boolean v1, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_DUAL_CARD:Z

    if-eqz v1, :cond_0

    iget-object v5, p0, Lcom/miui/networkassistant/service/FirewallService;->mFirewall:Lcom/miui/networkassistant/firewall/IFirewall;

    sget-object v6, Lcom/miui/networkassistant/model/FirewallRule;->Allow:Lcom/miui/networkassistant/model/FirewallRule;

    iget v1, p0, Lcom/miui/networkassistant/service/FirewallService;->mActiveSlotNum:I

    if-ne v1, v2, :cond_2

    move v1, v2

    :goto_2
    invoke-interface {v5, v0, v6, v2, v1}, Lcom/miui/networkassistant/firewall/IFirewall;->setMobileRule(Ljava/lang/String;Lcom/miui/networkassistant/model/FirewallRule;IZ)V

    :cond_0
    iget-object v1, p0, Lcom/miui/networkassistant/service/FirewallService;->mFirewall:Lcom/miui/networkassistant/firewall/IFirewall;

    sget-object v5, Lcom/miui/networkassistant/model/FirewallRule;->Allow:Lcom/miui/networkassistant/model/FirewallRule;

    invoke-interface {v1, v0, v5}, Lcom/miui/networkassistant/firewall/IFirewall;->setRoamingRule(Ljava/lang/String;Lcom/miui/networkassistant/model/FirewallRule;)V

    goto :goto_0

    :cond_1
    move v1, v3

    goto :goto_1

    :cond_2
    move v1, v3

    goto :goto_2

    :cond_3
    return-void
.end method

.method private showAllowFirewallToast(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x0

    if-eqz p2, :cond_0

    invoke-static {p1}, Lcom/miui/networkassistant/utils/PackageUtil;->getRealPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/networkassistant/service/FirewallService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/miui/networkassistant/utils/PackageUtil;->getLableByPackageName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    const v1, 0x7f07021f

    invoke-virtual {p0, v1}, Lcom/miui/networkassistant/service/FirewallService;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object p2, v2, v0

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/networkassistant/service/FirewallService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method

.method private showNetworkRestrictNotify(Ljava/lang/CharSequence;Ljava/lang/String;I)V
    .locals 3

    const v0, 0x7f070217

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/service/FirewallService;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f070219

    invoke-virtual {p0, v1}, Lcom/miui/networkassistant/service/FirewallService;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/networkassistant/service/FirewallService;->mContext:Landroid/content/Context;

    invoke-static {v2, v0, v1, p2, p3}, Lcom/miui/networkassistant/utils/NotificationUtil;->sendNetworkRestrictNotify(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method private startRoamingStateAlertActivity(Ljava/lang/CharSequence;)V
    .locals 4

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/miui/networkassistant/service/FirewallService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070334

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    aput-object p1, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f070335

    invoke-virtual {p0, v1}, Lcom/miui/networkassistant/service/FirewallService;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/miui/networkassistant/ui/activity/RoamingStateAlertActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v3, "dialog_title"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v0, "dialog_message"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    invoke-virtual {v2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v2}, Lcom/miui/networkassistant/service/FirewallService;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private unRegisterAllowFirewallReceiver()V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/service/FirewallService;->mAllowFirewallReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/service/FirewallService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method private unRegisterCancelFloatNotificationReceiver()V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/service/FirewallService;->mCancelFloatNotificationReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/service/FirewallService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method private unRegisterPackageReceiver()V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/service/FirewallService;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/service/FirewallService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method private unRegisterSimDataSlotStateReceiver()V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/service/FirewallService;->mSimStateDataSlotReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/service/FirewallService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method private unRegisterSimStateReceiver()V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/service/FirewallService;->mSimStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/service/FirewallService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method private updateMobileRuleMap(IZZ)V
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/service/FirewallService;->mMobileFireWallConfig:[Lcom/miui/networkassistant/config/FireWallConfig;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/service/FirewallService;->mFirewall:Lcom/miui/networkassistant/firewall/IFirewall;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/service/FirewallService;->mMobileFireWallConfig:[Lcom/miui/networkassistant/config/FireWallConfig;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/FireWallConfig;->getPairMap()Lmiui/util/ArrayMap;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/service/FirewallService;->mFirewall:Lcom/miui/networkassistant/firewall/IFirewall;

    invoke-interface {v1, v0, p1, p2, p3}, Lcom/miui/networkassistant/firewall/IFirewall;->loadMobileRules(Lmiui/util/ArrayMap;IZZ)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2

    const-string/jumbo v0, "FireWallService"

    const-string/jumbo v1, "onBind"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/networkassistant/service/FirewallService;->mFirewallBinder:Lcom/miui/networkassistant/service/FirewallService$FirewallBinder;

    invoke-virtual {v0}, Lcom/miui/networkassistant/service/FirewallService$FirewallBinder;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    invoke-virtual {p0}, Lcom/miui/networkassistant/service/FirewallService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/service/FirewallService;->mContext:Landroid/content/Context;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/miui/networkassistant/config/SimUserInfo;

    iput-object v0, p0, Lcom/miui/networkassistant/service/FirewallService;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget-object v0, p0, Lcom/miui/networkassistant/service/FirewallService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/networkassistant/config/CommonConfig;->getInstance(Landroid/content/Context;)Lcom/miui/networkassistant/config/CommonConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/service/FirewallService;->mCommonConfig:Lcom/miui/networkassistant/config/CommonConfig;

    iget-object v0, p0, Lcom/miui/networkassistant/service/FirewallService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "fire_wall_wifi_config.db"

    invoke-static {v0, v1}, Lcom/miui/networkassistant/config/FireWallConfig;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/miui/networkassistant/config/FireWallConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/service/FirewallService;->mWifiFirewallConfig:Lcom/miui/networkassistant/config/FireWallConfig;

    iget-object v0, p0, Lcom/miui/networkassistant/service/FirewallService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "fire_wall_roaming_config.db"

    invoke-static {v0, v1}, Lcom/miui/networkassistant/config/FireWallConfig;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/miui/networkassistant/config/FireWallConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/service/FirewallService;->mRoamingFirewallConfig:Lcom/miui/networkassistant/config/FireWallConfig;

    new-instance v0, Lmiui/util/ArrayMap;

    invoke-direct {v0}, Lmiui/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/miui/networkassistant/service/FirewallService;->mToastedAppMap:Lmiui/util/ArrayMap;

    invoke-virtual {p0}, Lcom/miui/networkassistant/service/FirewallService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/service/FirewallService;->mPackageManager:Landroid/content/pm/PackageManager;

    new-instance v0, Lcom/miui/networkassistant/service/FirewallService$FirewallBinder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/networkassistant/service/FirewallService$FirewallBinder;-><init>(Lcom/miui/networkassistant/service/FirewallService;Lcom/miui/networkassistant/service/FirewallService$FirewallBinder;)V

    iput-object v0, p0, Lcom/miui/networkassistant/service/FirewallService;->mFirewallBinder:Lcom/miui/networkassistant/service/FirewallService$FirewallBinder;

    invoke-direct {p0}, Lcom/miui/networkassistant/service/FirewallService;->createFireWall()V

    invoke-direct {p0}, Lcom/miui/networkassistant/service/FirewallService;->registerPackageReceiver()V

    invoke-direct {p0}, Lcom/miui/networkassistant/service/FirewallService;->registerAllowFirewallReceiver()V

    invoke-direct {p0}, Lcom/miui/networkassistant/service/FirewallService;->registerSimDataSlotStateReceiver()V

    invoke-direct {p0}, Lcom/miui/networkassistant/service/FirewallService;->registerSimStateReceiver()V

    invoke-direct {p0}, Lcom/miui/networkassistant/service/FirewallService;->registerCancelFloatNotificationReceiver()V

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    invoke-direct {p0}, Lcom/miui/networkassistant/service/FirewallService;->unRegisterPackageReceiver()V

    invoke-direct {p0}, Lcom/miui/networkassistant/service/FirewallService;->unRegisterAllowFirewallReceiver()V

    invoke-direct {p0}, Lcom/miui/networkassistant/service/FirewallService;->unRegisterSimDataSlotStateReceiver()V

    invoke-direct {p0}, Lcom/miui/networkassistant/service/FirewallService;->unRegisterSimStateReceiver()V

    invoke-direct {p0}, Lcom/miui/networkassistant/service/FirewallService;->unRegisterCancelFloatNotificationReceiver()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1

    const/4 v0, 0x1

    invoke-super {p0, p1, v0, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    return v0
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method
