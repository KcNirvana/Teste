.class public Lcom/miui/networkassistant/provider/NetworkAssistantProvider;
.super Landroid/content/ContentProvider;
.source ""


# static fields
.field private static final BILL_PACKAGE_DETAIL_CODE:I = 0x100

.field public static final BILL_PACKAGE_DETAIL_STR:Ljava/lang/String; = "bill_detail"

.field private static final CALL_TIME_PACKAGE_DETAIL_CODE:I = 0x101

.field public static final CALL_TIME_PACKAGE_DETAIL_STR:Ljava/lang/String; = "calltime_detail"

.field public static final DATAUSAGE_NOTI_STATUS_STR:Ljava/lang/String; = "datausage_noti_status"

.field public static final DATAUSAGE_STATUS_IMSI_STR:Ljava/lang/String; = "datausage_status/*"

.field public static final DATAUSAGE_STATUS_STR:Ljava/lang/String; = "datausage_status"

.field private static final DATA_USAGE_NOTI_STATUS_CODE:I = 0x31

.field private static final DATA_USAGE_STATUS_CODE:I = 0x30

.field private static final FAIL:I = 0x0

.field private static final FIREWALL_BACKGROUND_RESTRICT_STATUS_CODE:I = 0x27

.field public static final FIREWALL_BACKGROUND_RESTRICT_STR:Ljava/lang/String; = "firewall_background_restrict"

.field private static final FIREWALL_PACKAGENAME_CODE:I = 0x20

.field public static final FIREWALL_PACKAGENAME_STR:Ljava/lang/String; = "firewall/*"

.field private static final MOBILE_FIREWALL_PACKAGENAME_CODE:I = 0x23

.field public static final MOBILE_FIREWALL_PACKAGENAME_STR:Ljava/lang/String; = "mobile_firewall/*/*"

.field private static final MOBILE_RESTRICT_STATUS_CODE:I = 0x26

.field public static final MOBILE_RESTRICT_STR:Ljava/lang/String; = "mobile_restrict"

.field private static final NA_SETTINGS_INFO_STATUS_CODE:I = 0x40

.field public static final NA_SETTINGS_INFO_STATUS_STR:Ljava/lang/String; = "na_settings_info"

.field private static final SMS_CORRECTION_CODE:I = 0x102

.field public static final SMS_CORRECTION_STR:Ljava/lang/String; = "sms_correction"

.field private static final SUCCESS:I = 0x1

.field private static final TAG:Ljava/lang/String; = "NAProvider"

.field private static final TEMP_MOBILE_FIREWALL_PACKAGENAME_CODE:I = 0x21

.field public static final TEMP_MOBILE_FIREWALL_PACKAGENAME_STR:Ljava/lang/String; = "temp_mobile_firewall/*/*"

.field private static final TEMP_WIFI_FIREWALL_PACKAGENAME_CODE:I = 0x22

.field public static final TEMP_WIFI_FIREWALL_PACKAGENAME_STR:Ljava/lang/String; = "temp_wifi_firewall/*"

.field private static final TRAFFIC_DISTRIBUTION_CODE:I = 0x10

.field private static final TRAFFIC_DISTRIBUTION_ID_CODE:I = 0x11

.field public static final TRAFFIC_DISTRIBUTION_ID_STR:Ljava/lang/String; = "traffic_distribution/#"

.field public static final TRAFFIC_DISTRIBUTION_STR:Ljava/lang/String; = "traffic_distribution"

.field private static final TRAFFIC_PURCHASE_CODE:I = 0x60

.field private static final TRAFFIC_PURCHASE_CONFIG_CODE:I = 0x90

.field public static final TRAFFIC_PURCHASE_CONFIG_STR:Ljava/lang/String; = "traffic_purchase_config"

.field public static final TRAFFIC_PURCHASE_STATUS_DEFAULT_STR:Ljava/lang/String; = "na_traffic_purchase"

.field public static final TRAFFIC_PURCHASE_STATUS_STR:Ljava/lang/String; = "na_traffic_purchase/*/*"

.field private static final TRAFFIC_STATS_CODE:I = 0x50

.field public static final TRAFFIC_STATS_STR:Ljava/lang/String; = "na_traffic_stats"

.field public static final TRAFFIC_STATS_UID_STR:Ljava/lang/String; = "na_traffic_stats/*"

.field public static final TRAFFIC_USED_ALL_LIST_PARAM_STR:Ljava/lang/String; = "top_usage_app/*"

.field private static final TRAFFIC_USED_APP_LIST_CODE:I = 0x91

.field private static final WIFI_FIREWALL_PACKAGENAME_CODE:I = 0x24

.field public static final WIFI_FIREWALL_PACKAGENAME_STR:Ljava/lang/String; = "wifi_firewall/*"

.field private static final WLAN_RESTRICT_STATUS_CODE:I = 0x25

.field public static final WLAN_RESTRICT_STR:Ljava/lang/String; = "wlan_restrict"

.field private static sTrafficsProjectionMap:Ljava/util/HashMap;

.field private static final sUriMatcher:Landroid/content/UriMatcher;


# instance fields
.field private mCurrentActiveIface:Ljava/lang/String;

.field private mCurrentNetworkState:Lcom/miui/common/network/NetworkUtils$NetworkState;

.field private mDb:Landroid/database/sqlite/SQLiteDatabase;

.field private mFirewallBinder:Lcom/miui/networkassistant/service/IFirewallBinder;

.field private mFirewallServiceConn:Landroid/content/ServiceConnection;

.field private mNeedSetToZero:Z

.field private mOpenHelper:Lcom/miui/networkassistant/provider/DBHelper;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mTrafficManageBinder:Lcom/miui/networkassistant/service/ITrafficManageBinder;

.field private mTrafficManageConnection:Landroid/content/ServiceConnection;

.field private mTrafficStatsLock:Ljava/lang/Object;


# direct methods
.method static synthetic -set0(Lcom/miui/networkassistant/provider/NetworkAssistantProvider;Lcom/miui/networkassistant/service/IFirewallBinder;)Lcom/miui/networkassistant/service/IFirewallBinder;
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->mFirewallBinder:Lcom/miui/networkassistant/service/IFirewallBinder;

    return-object p1
.end method

.method static synthetic -set1(Lcom/miui/networkassistant/provider/NetworkAssistantProvider;Lcom/miui/networkassistant/service/ITrafficManageBinder;)Lcom/miui/networkassistant/service/ITrafficManageBinder;
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->mTrafficManageBinder:Lcom/miui/networkassistant/service/ITrafficManageBinder;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/miui/networkassistant/provider/NetworkAssistantProvider;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->refreshActiveIfaceIfNeed()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 7

    const/16 v6, 0x60

    const/16 v5, 0x50

    const/16 v4, 0x30

    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v0, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string/jumbo v1, "com.miui.networkassistant.provider"

    const-string/jumbo v2, "traffic_distribution"

    const/16 v3, 0x10

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string/jumbo v1, "com.miui.networkassistant.provider"

    const-string/jumbo v2, "traffic_distribution/#"

    const/16 v3, 0x11

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string/jumbo v1, "com.miui.networkassistant.provider"

    const-string/jumbo v2, "firewall/*"

    const/16 v3, 0x20

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string/jumbo v1, "com.miui.networkassistant.provider"

    const-string/jumbo v2, "temp_mobile_firewall/*/*"

    const/16 v3, 0x21

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string/jumbo v1, "com.miui.networkassistant.provider"

    const-string/jumbo v2, "temp_wifi_firewall/*"

    const/16 v3, 0x22

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string/jumbo v1, "com.miui.networkassistant.provider"

    const-string/jumbo v2, "mobile_firewall/*/*"

    const/16 v3, 0x23

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string/jumbo v1, "com.miui.networkassistant.provider"

    const-string/jumbo v2, "wifi_firewall/*"

    const/16 v3, 0x24

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string/jumbo v1, "com.miui.networkassistant.provider"

    const-string/jumbo v2, "wlan_restrict"

    const/16 v3, 0x25

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string/jumbo v1, "com.miui.networkassistant.provider"

    const-string/jumbo v2, "mobile_restrict"

    const/16 v3, 0x26

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string/jumbo v1, "com.miui.networkassistant.provider"

    const-string/jumbo v2, "firewall_background_restrict"

    const/16 v3, 0x27

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string/jumbo v1, "com.miui.networkassistant.provider"

    const-string/jumbo v2, "datausage_status"

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string/jumbo v1, "com.miui.networkassistant.provider"

    const-string/jumbo v2, "datausage_noti_status"

    const/16 v3, 0x31

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string/jumbo v1, "com.miui.networkassistant.provider"

    const-string/jumbo v2, "datausage_status/*"

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string/jumbo v1, "com.miui.networkassistant.provider"

    const-string/jumbo v2, "na_settings_info"

    const/16 v3, 0x40

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string/jumbo v1, "com.miui.networkassistant.provider"

    const-string/jumbo v2, "na_traffic_stats"

    invoke-virtual {v0, v1, v2, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string/jumbo v1, "com.miui.networkassistant.provider"

    const-string/jumbo v2, "na_traffic_stats/*"

    invoke-virtual {v0, v1, v2, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string/jumbo v1, "com.miui.networkassistant.provider"

    const-string/jumbo v2, "na_traffic_purchase"

    invoke-virtual {v0, v1, v2, v6}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string/jumbo v1, "com.miui.networkassistant.provider"

    const-string/jumbo v2, "na_traffic_purchase/*/*"

    invoke-virtual {v0, v1, v2, v6}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string/jumbo v1, "com.miui.networkassistant.provider"

    const-string/jumbo v2, "traffic_purchase_config"

    const/16 v3, 0x90

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string/jumbo v1, "com.miui.networkassistant.provider"

    const-string/jumbo v2, "top_usage_app/*"

    const/16 v3, 0x91

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string/jumbo v1, "com.miui.networkassistant.provider"

    const-string/jumbo v2, "bill_detail"

    const/16 v3, 0x100

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string/jumbo v1, "com.miui.networkassistant.provider"

    const-string/jumbo v2, "calltime_detail"

    const/16 v3, 0x101

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string/jumbo v1, "com.miui.networkassistant.provider"

    const-string/jumbo v2, "sms_correction"

    const/16 v3, 0x102

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->sTrafficsProjectionMap:Ljava/util/HashMap;

    sget-object v0, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->sTrafficsProjectionMap:Ljava/util/HashMap;

    const-string/jumbo v1, "_id"

    const-string/jumbo v2, "_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->sTrafficsProjectionMap:Ljava/util/HashMap;

    const-string/jumbo v1, "from_pkgname"

    const-string/jumbo v2, "from_pkgname"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->sTrafficsProjectionMap:Ljava/util/HashMap;

    const-string/jumbo v1, "to_pkgname"

    const-string/jumbo v2, "to_pkgname"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->sTrafficsProjectionMap:Ljava/util/HashMap;

    const-string/jumbo v1, "mobile_rxbytes"

    const-string/jumbo v2, "mobile_rxbytes"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->sTrafficsProjectionMap:Ljava/util/HashMap;

    const-string/jumbo v1, "mobile_txbytes"

    const-string/jumbo v2, "mobile_txbytes"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->sTrafficsProjectionMap:Ljava/util/HashMap;

    const-string/jumbo v1, "wifi_rxbytes"

    const-string/jumbo v2, "wifi_rxbytes"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->sTrafficsProjectionMap:Ljava/util/HashMap;

    const-string/jumbo v1, "wifi_txbytes"

    const-string/jumbo v2, "wifi_txbytes"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->sTrafficsProjectionMap:Ljava/util/HashMap;

    const-string/jumbo v1, "imsi"

    const-string/jumbo v2, "imsi"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->sTrafficsProjectionMap:Ljava/util/HashMap;

    const-string/jumbo v1, "storage_time"

    const-string/jumbo v2, "storage_time"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    iput-object v1, p0, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v0, Lcom/miui/networkassistant/provider/NetworkAssistantProvider$1;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/provider/NetworkAssistantProvider$1;-><init>(Lcom/miui/networkassistant/provider/NetworkAssistantProvider;)V

    iput-object v0, p0, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->mFirewallServiceConn:Landroid/content/ServiceConnection;

    new-instance v0, Lcom/miui/networkassistant/provider/NetworkAssistantProvider$2;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/provider/NetworkAssistantProvider$2;-><init>(Lcom/miui/networkassistant/provider/NetworkAssistantProvider;)V

    iput-object v0, p0, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->mTrafficManageConnection:Landroid/content/ServiceConnection;

    new-instance v0, Lcom/miui/networkassistant/provider/NetworkAssistantProvider$3;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/provider/NetworkAssistantProvider$3;-><init>(Lcom/miui/networkassistant/provider/NetworkAssistantProvider;)V

    iput-object v0, p0, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->mTrafficStatsLock:Ljava/lang/Object;

    sget-object v0, Lcom/miui/common/network/NetworkUtils$NetworkState;->aBO:Lcom/miui/common/network/NetworkUtils$NetworkState;

    iput-object v0, p0, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->mCurrentNetworkState:Lcom/miui/common/network/NetworkUtils$NetworkState;

    iput-object v1, p0, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->mCurrentActiveIface:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->mNeedSetToZero:Z

    const-string/jumbo v0, "NAProvider"

    const-string/jumbo v1, "constructor"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private bindFirewallService()V
    .locals 5

    invoke-virtual {p0}, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/miui/networkassistant/service/FirewallService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v2, p0, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->mFirewallServiceConn:Landroid/content/ServiceConnection;

    invoke-static {}, Lcom/miui/common/b/f;->aHT()Landroid/os/UserHandle;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v0, v1, v2, v4, v3}, Lcom/miui/common/b/n;->aIK(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)V

    return-void
.end method

.method private bindTrafficManageService()V
    .locals 5

    invoke-virtual {p0}, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v2, p0, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->mTrafficManageConnection:Landroid/content/ServiceConnection;

    invoke-static {}, Lcom/miui/common/b/f;->aHT()Landroid/os/UserHandle;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v0, v1, v2, v4, v3}, Lcom/miui/common/b/n;->aIK(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)V

    return-void
.end method

.method private checkParams(Landroid/net/Uri;)Z
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->mFirewallBinder:Lcom/miui/networkassistant/service/IFirewallBinder;

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->getPackageNameFromUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private checkParams(Landroid/net/Uri;Landroid/content/ContentValues;)Z
    .locals 1

    if-eqz p2, :cond_0

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->checkParams(Landroid/net/Uri;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private checkSlotNum(I)I
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    invoke-static {}, Lcom/miui/networkassistant/dual/Sim;->getCurrentActiveSlotNum()I

    move-result p1

    :cond_0
    return p1
.end method

.method private constructCursorByRestrictPackages(Lcom/miui/networkassistant/provider/DataCursor;Ljava/util/List;)V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0}, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/networkassistant/utils/UsageStateUtil;->getRecentApps(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->retainAll(Ljava/util/Collection;)Z

    invoke-interface {v1, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v3, Lcom/miui/networkassistant/provider/DataCursor$DataRow;

    new-array v4, v7, [Lcom/miui/networkassistant/provider/DataCursor$DataEntry;

    new-instance v5, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;

    invoke-direct {v5, v0}, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;-><init>(Ljava/lang/String;)V

    aput-object v5, v4, v6

    invoke-direct {v3, v4}, Lcom/miui/networkassistant/provider/DataCursor$DataRow;-><init>([Lcom/miui/networkassistant/provider/DataCursor$DataEntry;)V

    invoke-virtual {p1, v3}, Lcom/miui/networkassistant/provider/DataCursor;->addRow(Lcom/miui/networkassistant/provider/DataCursor$DataRow;)V

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v2, Lcom/miui/networkassistant/provider/DataCursor$DataRow;

    new-array v3, v7, [Lcom/miui/networkassistant/provider/DataCursor$DataEntry;

    new-instance v4, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;

    invoke-direct {v4, v0}, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;-><init>(Ljava/lang/String;)V

    aput-object v4, v3, v6

    invoke-direct {v2, v3}, Lcom/miui/networkassistant/provider/DataCursor$DataRow;-><init>([Lcom/miui/networkassistant/provider/DataCursor$DataEntry;)V

    invoke-virtual {p1, v2}, Lcom/miui/networkassistant/provider/DataCursor;->addRow(Lcom/miui/networkassistant/provider/DataCursor$DataRow;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method private doQueryDB(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8

    const/4 v5, 0x0

    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    sget-object v1, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown URI "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const-string/jumbo v1, "traffic_distribution"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    sget-object v1, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->sTrafficsProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    :goto_0
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v7, "_id desc"

    :goto_1
    iget-object v1, p0, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->mOpenHelper:Lcom/miui/networkassistant/provider/DBHelper;

    invoke-virtual {v1}, Lcom/miui/networkassistant/provider/DBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    :cond_0
    iget-object v1, p0, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    return-object v0

    :pswitch_1
    const-string/jumbo v1, "traffic_distribution"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    sget-object v1, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->sTrafficsProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    const/4 v3, 0x1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    move-object v7, p5

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getPackageNameFromUri(Landroid/net/Uri;)Ljava/lang/String;
    .locals 6

    const/4 v5, 0x0

    if-nez p1, :cond_0

    return-object v5

    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "%s#%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    return-object v0

    :cond_2
    return-object v5
.end method

.method private getSlotNum(Ljava/lang/String;)I
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v1

    const-string/jumbo v2, "NAProvider"

    const-string/jumbo v3, "parse slot num exception"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private queryBillPackageDetail(Landroid/net/Uri;)Landroid/database/Cursor;
    .locals 11

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    new-instance v3, Lcom/miui/networkassistant/provider/DataCursor;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "package_total"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "package_used"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "package_remained"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "slot_num"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string/jumbo v1, "package_setted"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    invoke-direct {v3, v0}, Lcom/miui/networkassistant/provider/DataCursor;-><init>([Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/networkassistant/config/SimUserInfo;->getInstance(Landroid/content/Context;I)Lcom/miui/networkassistant/config/SimUserInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/miui/networkassistant/config/SimUserInfo;->hasImsi()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v2}, Lcom/miui/networkassistant/config/SimUserInfo;->isSimInserted()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v2}, Lcom/miui/networkassistant/config/SimUserInfo;->getBillPackageTotal()J

    move-result-wide v6

    invoke-virtual {v2}, Lcom/miui/networkassistant/config/SimUserInfo;->isBillPackageEffective()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v2}, Lcom/miui/networkassistant/config/SimUserInfo;->getBillPackageRemained()J

    move-result-wide v0

    move-wide v4, v0

    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v0, v6, v0

    if-lez v0, :cond_3

    sub-long v0, v6, v4

    :goto_1
    invoke-virtual {v2}, Lcom/miui/networkassistant/config/SimUserInfo;->isOperatorSetted()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-virtual {v2}, Lcom/miui/networkassistant/config/SimUserInfo;->isTotalDataUsageSetted()Z

    move-result v2

    :goto_2
    new-instance v8, Lcom/miui/networkassistant/provider/DataCursor$DataRow;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/miui/networkassistant/provider/DataCursor$DataEntry;

    new-instance v10, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;

    invoke-direct {v10, v6, v7}, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;-><init>(J)V

    const/4 v6, 0x0

    aput-object v10, v9, v6

    new-instance v6, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;

    invoke-direct {v6, v0, v1}, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;-><init>(J)V

    const/4 v0, 0x1

    aput-object v6, v9, v0

    new-instance v0, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;

    invoke-direct {v0, v4, v5}, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;-><init>(J)V

    const/4 v1, 0x2

    aput-object v0, v9, v1

    new-instance v0, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;-><init>(I)V

    const/4 v1, 0x3

    aput-object v0, v9, v1

    new-instance v0, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x4

    aput-object v0, v9, v1

    invoke-direct {v8, v9}, Lcom/miui/networkassistant/provider/DataCursor$DataRow;-><init>([Lcom/miui/networkassistant/provider/DataCursor$DataEntry;)V

    invoke-virtual {v3, v8}, Lcom/miui/networkassistant/provider/DataCursor;->addRow(Lcom/miui/networkassistant/provider/DataCursor$DataRow;)V

    :cond_0
    sget-boolean v0, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_DUAL_CARD:Z

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/networkassistant/config/SimUserInfo;->getInstance(Landroid/content/Context;I)Lcom/miui/networkassistant/config/SimUserInfo;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/miui/networkassistant/config/SimUserInfo;->hasImsi()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {v2}, Lcom/miui/networkassistant/config/SimUserInfo;->isSimInserted()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {v2}, Lcom/miui/networkassistant/config/SimUserInfo;->getBillPackageTotal()J

    move-result-wide v6

    invoke-virtual {v2}, Lcom/miui/networkassistant/config/SimUserInfo;->isBillPackageEffective()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v2}, Lcom/miui/networkassistant/config/SimUserInfo;->getBillPackageRemained()J

    move-result-wide v0

    move-wide v4, v0

    :goto_3
    const-wide/16 v0, 0x0

    cmp-long v0, v6, v0

    if-lez v0, :cond_7

    sub-long v0, v6, v4

    :goto_4
    invoke-virtual {v2}, Lcom/miui/networkassistant/config/SimUserInfo;->isOperatorSetted()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-virtual {v2}, Lcom/miui/networkassistant/config/SimUserInfo;->isTotalDataUsageSetted()Z

    move-result v2

    :goto_5
    new-instance v8, Lcom/miui/networkassistant/provider/DataCursor$DataRow;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/miui/networkassistant/provider/DataCursor$DataEntry;

    new-instance v10, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;

    invoke-direct {v10, v6, v7}, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;-><init>(J)V

    const/4 v6, 0x0

    aput-object v10, v9, v6

    new-instance v6, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;

    invoke-direct {v6, v0, v1}, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;-><init>(J)V

    const/4 v0, 0x1

    aput-object v6, v9, v0

    new-instance v0, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;

    invoke-direct {v0, v4, v5}, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;-><init>(J)V

    const/4 v1, 0x2

    aput-object v0, v9, v1

    new-instance v0, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;-><init>(I)V

    const/4 v1, 0x3

    aput-object v0, v9, v1

    new-instance v0, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x4

    aput-object v0, v9, v1

    invoke-direct {v8, v9}, Lcom/miui/networkassistant/provider/DataCursor$DataRow;-><init>([Lcom/miui/networkassistant/provider/DataCursor$DataEntry;)V

    invoke-virtual {v3, v8}, Lcom/miui/networkassistant/provider/DataCursor;->addRow(Lcom/miui/networkassistant/provider/DataCursor$DataRow;)V

    move-object v0, v3

    :cond_1
    :goto_6
    return-object v0

    :cond_2
    const-wide/16 v0, -0x1

    move-wide v4, v0

    goto/16 :goto_0

    :cond_3
    const-wide/16 v0, -0x1

    goto/16 :goto_1

    :cond_4
    const/4 v2, 0x0

    goto/16 :goto_2

    :cond_5
    move-object v0, v3

    goto :goto_6

    :cond_6
    const-wide/16 v0, -0x1

    move-wide v4, v0

    goto :goto_3

    :cond_7
    const-wide/16 v0, -0x1

    goto :goto_4

    :cond_8
    const/4 v2, 0x0

    goto :goto_5

    :cond_9
    move-object v0, v3

    goto :goto_6
.end method

.method private queryCallTimePackageDetail(Landroid/net/Uri;)Landroid/database/Cursor;
    .locals 11

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    new-instance v3, Lcom/miui/networkassistant/provider/DataCursor;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "package_total"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "package_used"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "package_remained"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "slot_num"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string/jumbo v1, "package_setted"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    invoke-direct {v3, v0}, Lcom/miui/networkassistant/provider/DataCursor;-><init>([Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/networkassistant/config/SimUserInfo;->getInstance(Landroid/content/Context;I)Lcom/miui/networkassistant/config/SimUserInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/miui/networkassistant/config/SimUserInfo;->hasImsi()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v2}, Lcom/miui/networkassistant/config/SimUserInfo;->isSimInserted()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v2}, Lcom/miui/networkassistant/config/SimUserInfo;->getCallTimePackageTotal()J

    move-result-wide v4

    invoke-virtual {v2}, Lcom/miui/networkassistant/config/SimUserInfo;->getCallTimePackageRemained()J

    move-result-wide v6

    const-wide/16 v0, 0x0

    cmp-long v0, v4, v0

    if-lez v0, :cond_2

    sub-long v0, v4, v6

    :goto_0
    invoke-virtual {v2}, Lcom/miui/networkassistant/config/SimUserInfo;->isOperatorSetted()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {v2}, Lcom/miui/networkassistant/config/SimUserInfo;->isTotalDataUsageSetted()Z

    move-result v2

    :goto_1
    new-instance v8, Lcom/miui/networkassistant/provider/DataCursor$DataRow;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/miui/networkassistant/provider/DataCursor$DataEntry;

    new-instance v10, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;

    invoke-direct {v10, v4, v5}, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;-><init>(J)V

    const/4 v4, 0x0

    aput-object v10, v9, v4

    new-instance v4, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;

    invoke-direct {v4, v0, v1}, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;-><init>(J)V

    const/4 v0, 0x1

    aput-object v4, v9, v0

    new-instance v0, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;

    invoke-direct {v0, v6, v7}, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;-><init>(J)V

    const/4 v1, 0x2

    aput-object v0, v9, v1

    new-instance v0, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;-><init>(I)V

    const/4 v1, 0x3

    aput-object v0, v9, v1

    new-instance v0, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x4

    aput-object v0, v9, v1

    invoke-direct {v8, v9}, Lcom/miui/networkassistant/provider/DataCursor$DataRow;-><init>([Lcom/miui/networkassistant/provider/DataCursor$DataEntry;)V

    invoke-virtual {v3, v8}, Lcom/miui/networkassistant/provider/DataCursor;->addRow(Lcom/miui/networkassistant/provider/DataCursor$DataRow;)V

    :cond_0
    sget-boolean v0, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_DUAL_CARD:Z

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/networkassistant/config/SimUserInfo;->getInstance(Landroid/content/Context;I)Lcom/miui/networkassistant/config/SimUserInfo;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/miui/networkassistant/config/SimUserInfo;->hasImsi()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v2}, Lcom/miui/networkassistant/config/SimUserInfo;->isSimInserted()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {v2}, Lcom/miui/networkassistant/config/SimUserInfo;->getCallTimePackageTotal()J

    move-result-wide v4

    invoke-virtual {v2}, Lcom/miui/networkassistant/config/SimUserInfo;->getCallTimePackageRemained()J

    move-result-wide v6

    const-wide/16 v0, 0x0

    cmp-long v0, v4, v0

    if-lez v0, :cond_5

    sub-long v0, v4, v6

    :goto_2
    invoke-virtual {v2}, Lcom/miui/networkassistant/config/SimUserInfo;->isOperatorSetted()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-virtual {v2}, Lcom/miui/networkassistant/config/SimUserInfo;->isTotalDataUsageSetted()Z

    move-result v2

    :goto_3
    new-instance v8, Lcom/miui/networkassistant/provider/DataCursor$DataRow;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/miui/networkassistant/provider/DataCursor$DataEntry;

    new-instance v10, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;

    invoke-direct {v10, v4, v5}, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;-><init>(J)V

    const/4 v4, 0x0

    aput-object v10, v9, v4

    new-instance v4, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;

    invoke-direct {v4, v0, v1}, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;-><init>(J)V

    const/4 v0, 0x1

    aput-object v4, v9, v0

    new-instance v0, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;

    invoke-direct {v0, v6, v7}, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;-><init>(J)V

    const/4 v1, 0x2

    aput-object v0, v9, v1

    new-instance v0, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;-><init>(I)V

    const/4 v1, 0x3

    aput-object v0, v9, v1

    new-instance v0, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x4

    aput-object v0, v9, v1

    invoke-direct {v8, v9}, Lcom/miui/networkassistant/provider/DataCursor$DataRow;-><init>([Lcom/miui/networkassistant/provider/DataCursor$DataEntry;)V

    invoke-virtual {v3, v8}, Lcom/miui/networkassistant/provider/DataCursor;->addRow(Lcom/miui/networkassistant/provider/DataCursor$DataRow;)V

    move-object v0, v3

    :cond_1
    :goto_4
    return-object v0

    :cond_2
    const-wide/16 v0, -0x1

    goto/16 :goto_0

    :cond_3
    const/4 v2, 0x0

    goto/16 :goto_1

    :cond_4
    move-object v0, v3

    goto :goto_4

    :cond_5
    const-wide/16 v0, -0x1

    goto :goto_2

    :cond_6
    const/4 v2, 0x0

    goto :goto_3

    :cond_7
    move-object v0, v3

    goto :goto_4
.end method

.method private queryDataUsageNotiStatus(Landroid/net/Uri;)Landroid/database/Cursor;
    .locals 18

    invoke-virtual/range {p0 .. p0}, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    const/4 v0, 0x0

    sget-boolean v1, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_DUAL_CARD:Z

    if-eqz v1, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/networkassistant/dual/SimCardHelper;->getInstance(Landroid/content/Context;)Lcom/miui/networkassistant/dual/SimCardHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/networkassistant/dual/SimCardHelper;->getCurrentMobileSlotNum()I

    move-result v0

    move v1, v0

    :goto_0
    invoke-static {v5, v1}, Lcom/miui/networkassistant/utils/MiSimUtil;->isMiSimEnable(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v5}, Lcom/miui/networkassistant/utils/VirtualSimUtil;->parseNotificationInfo(Landroid/content/Context;)Lcom/miui/networkassistant/model/VirtualNotiInfo;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/miui/networkassistant/model/VirtualNotiInfo;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/miui/networkassistant/model/VirtualNotiInfo;->getAction()Ljava/lang/String;

    move-result-object v3

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/miui/networkassistant/model/VirtualNotiInfo;->getTodayUsedTraffic()Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x0

    aput-object v2, v1, v6

    invoke-virtual {v0}, Lcom/miui/networkassistant/model/VirtualNotiInfo;->getMonthUsedTraffic()Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x1

    aput-object v2, v1, v6

    const v2, 0x7f0703ea

    invoke-virtual {v5, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/miui/networkassistant/model/VirtualNotiInfo;->getAcitionDesc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/miui/networkassistant/model/VirtualNotiInfo;->getIconUri()Ljava/lang/String;

    move-result-object v0

    :goto_1
    new-instance v5, Lcom/miui/networkassistant/provider/DataCursor;

    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/String;

    const-string/jumbo v7, "text1"

    const/4 v8, 0x0

    aput-object v7, v6, v8

    const-string/jumbo v7, "action1"

    const/4 v8, 0x1

    aput-object v7, v6, v8

    const-string/jumbo v7, "text2"

    const/4 v8, 0x2

    aput-object v7, v6, v8

    const-string/jumbo v7, "action2"

    const/4 v8, 0x3

    aput-object v7, v6, v8

    const-string/jumbo v7, "icon"

    const/4 v8, 0x4

    aput-object v7, v6, v8

    invoke-direct {v5, v6}, Lcom/miui/networkassistant/provider/DataCursor;-><init>([Ljava/lang/String;)V

    new-instance v6, Lcom/miui/networkassistant/provider/DataCursor$DataRow;

    const/4 v7, 0x5

    new-array v7, v7, [Lcom/miui/networkassistant/provider/DataCursor$DataEntry;

    new-instance v8, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;

    invoke-direct {v8, v2}, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    aput-object v8, v7, v2

    new-instance v2, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;

    invoke-direct {v2, v4}, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x1

    aput-object v2, v7, v4

    new-instance v2, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;

    invoke-direct {v2, v1}, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x2

    aput-object v2, v7, v1

    new-instance v1, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;

    invoke-direct {v1, v3}, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x3

    aput-object v1, v7, v2

    new-instance v1, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;

    invoke-direct {v1, v0}, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x4

    aput-object v1, v7, v0

    invoke-direct {v6, v7}, Lcom/miui/networkassistant/provider/DataCursor$DataRow;-><init>([Lcom/miui/networkassistant/provider/DataCursor$DataEntry;)V

    invoke-virtual {v5, v6}, Lcom/miui/networkassistant/provider/DataCursor;->addRow(Lcom/miui/networkassistant/provider/DataCursor$DataRow;)V

    return-object v5

    :cond_1
    invoke-direct/range {p0 .. p1}, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->queryDataUsageStatus(Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v0

    check-cast v0, Lcom/miui/networkassistant/provider/DataCursor;

    if-nez v0, :cond_2

    const/4 v0, 0x0

    return-object v0

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/miui/networkassistant/config/SimUserInfo;->getInstance(Landroid/content/Context;I)Lcom/miui/networkassistant/config/SimUserInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/networkassistant/config/SimUserInfo;->getBillPackageRemained()J

    move-result-wide v6

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "miui.intent.action.NETWORKASSISTANT_TRAFFIC_PURCHASE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v4, "bundle_key_purchase_from"

    const-string/jumbo v8, "100003"

    invoke-virtual {v3, v4, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "bundle_key_com"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-static {v5}, Lmiui/provider/ExtraNetwork;->isTrafficPurchaseSupported(Landroid/content/Context;)Z

    move-result v3

    const-string/jumbo v4, "total_limit"

    invoke-virtual {v0, v4}, Lcom/miui/networkassistant/provider/DataCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/miui/networkassistant/provider/DataCursor;->getLong(I)J

    move-result-wide v8

    const-string/jumbo v4, "month_used"

    invoke-virtual {v0, v4}, Lcom/miui/networkassistant/provider/DataCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/miui/networkassistant/provider/DataCursor;->getLong(I)J

    move-result-wide v10

    const-string/jumbo v4, "today_used"

    invoke-virtual {v0, v4}, Lcom/miui/networkassistant/provider/DataCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/miui/networkassistant/provider/DataCursor;->getLong(I)J

    move-result-wide v12

    new-instance v14, Landroid/content/Intent;

    const-string/jumbo v0, "miui.intent.action.NETWORKASSISTANT_ENTRANCE"

    invoke-direct {v14, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x14000000

    invoke-virtual {v14, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/4 v0, 0x1

    invoke-virtual {v14, v0}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/miui/networkassistant/config/SimUserInfo;->isNotLimitCardEnable()Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v0, 0x64

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v5, v12, v13}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->formatBytes(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v5, v10, v11}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->formatBytes(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const v2, 0x7f0703e9

    invoke-virtual {v5, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const v1, 0x7f0703e6

    invoke-virtual {v5, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    long-to-double v8, v6

    const-wide/high16 v10, 0x4059000000000000L    # 100.0

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    const/4 v8, 0x0

    aput-object v5, v3, v8

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v14, v3}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v3

    const-wide/high16 v8, -0x8000000000000000L

    cmp-long v5, v6, v8

    if-gtz v5, :cond_3

    const-string/jumbo v1, ""

    :cond_3
    :goto_2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {v6}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string/jumbo v1, ""

    :cond_4
    new-instance v5, Ljava/io/File;

    invoke-virtual/range {p0 .. p0}, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v6

    const-string/jumbo v7, "na_files"

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string/jumbo v7, "tmp.png"

    invoke-static {v0}, Lcom/miui/networkassistant/utils/NotiStatusIconHelper;->getIconByLevel(I)I

    move-result v0

    invoke-static {v6, v5, v7, v0}, Lcom/miui/networkassistant/utils/BitmapUtil;->saveDrawableResToFile(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;I)V

    new-instance v0, Ljava/io/File;

    const-string/jumbo v6, "tmp.png"

    invoke-direct {v0, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string/jumbo v6, "com.miui.networkassistant.fileprovider"

    invoke-static {v5, v6, v0}, Landroid/support/v4/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string/jumbo v7, "com.android.systemui"

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v5, v8}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    goto/16 :goto_1

    :cond_5
    invoke-virtual {v1}, Lcom/miui/networkassistant/config/SimUserInfo;->isTotalDataUsageSetted()Z

    move-result v0

    if-eqz v0, :cond_a

    if-eqz v3, :cond_7

    const v0, 0x7f0703e4

    invoke-virtual {v5, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v3

    :cond_6
    :goto_3
    sub-long v6, v8, v10

    const-wide/16 v14, 0x0

    cmp-long v0, v6, v14

    if-gtz v0, :cond_8

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v5, v12, v13}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->formatBytes(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x0

    aput-object v2, v0, v8

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v8, 0x7f0800e4

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x1

    aput-object v2, v0, v8

    neg-long v6, v6

    invoke-static {v5, v6, v7}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->formatBytes(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x2

    aput-object v2, v0, v6

    const v2, 0x7f0703e7

    invoke-virtual {v5, v2, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x0

    goto/16 :goto_2

    :cond_7
    const v0, 0x7f0703e6

    invoke-virtual {v5, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    long-to-double v2, v6

    const-wide/high16 v16, 0x4059000000000000L    # 100.0

    div-double v2, v2, v16

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x1

    invoke-virtual {v14, v0}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v3

    const-wide/high16 v14, -0x8000000000000000L

    cmp-long v0, v6, v14

    if-gtz v0, :cond_6

    const-string/jumbo v1, ""

    goto :goto_3

    :cond_8
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v5, v12, v13}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->formatBytes(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    const/4 v12, 0x0

    aput-object v2, v0, v12

    invoke-static {v5, v6, v7}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->formatBytes(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x1

    aput-object v2, v0, v6

    const v2, 0x7f0703e8

    invoke-virtual {v5, v2, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    long-to-double v6, v10

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v6, v10

    long-to-double v8, v8

    div-double/2addr v6, v8

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    mul-double/2addr v6, v8

    double-to-int v0, v6

    rsub-int/lit8 v0, v0, 0x64

    const/16 v5, 0x64

    if-le v0, v5, :cond_9

    const/16 v0, 0x64

    :cond_9
    if-gez v0, :cond_3

    const/4 v0, 0x0

    goto/16 :goto_2

    :cond_a
    const/4 v0, -0x1

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v5, v12, v13}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->formatBytes(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v5, v10, v11}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->formatBytes(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const v2, 0x7f0703e9

    invoke-virtual {v5, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const v1, 0x7f0703e5

    invoke-virtual {v5, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v14, v3}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_2

    :cond_b
    move v1, v0

    goto/16 :goto_0
.end method

.method private queryDataUsageStatus(Landroid/net/Uri;)Landroid/database/Cursor;
    .locals 15

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->mTrafficManageBinder:Lcom/miui/networkassistant/service/ITrafficManageBinder;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    sget-boolean v2, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_DUAL_CARD:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/networkassistant/dual/SimCardHelper;->getInstance(Landroid/content/Context;)Lcom/miui/networkassistant/dual/SimCardHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/networkassistant/dual/SimCardHelper;->getCurrentMobileSlotNum()I

    move-result v0

    :cond_0
    invoke-virtual {p0}, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getInstance(Landroid/content/Context;I)Lcom/miui/networkassistant/config/SimUserInfo;

    move-result-object v11

    if-eqz v11, :cond_2

    invoke-virtual {v11}, Lcom/miui/networkassistant/config/SimUserInfo;->isSimInserted()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v11}, Lcom/miui/networkassistant/config/SimUserInfo;->hasImsi()Z

    move-result v2

    if-eqz v2, :cond_7

    const-wide/16 v6, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v2, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    :try_start_0
    invoke-virtual {v11}, Lcom/miui/networkassistant/config/SimUserInfo;->isLeisureDataUsageEffective()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {v11}, Lcom/miui/networkassistant/traffic/statistic/LeisureTrafficHelper;->isLeisureTime(Lcom/miui/networkassistant/config/SimUserInfo;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v11}, Lcom/miui/networkassistant/config/SimUserInfo;->getLeisureDataUsageTotal()J

    move-result-wide v6

    iget-object v1, p0, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->mTrafficManageBinder:Lcom/miui/networkassistant/service/ITrafficManageBinder;

    invoke-interface {v1, v0}, Lcom/miui/networkassistant/service/ITrafficManageBinder;->getCorrectedNormalAndLeisureMonthTotalUsed(I)[J

    move-result-object v1

    const/4 v12, 0x1

    aget-wide v4, v1, v12

    :goto_0
    iget-object v1, p0, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->mTrafficManageBinder:Lcom/miui/networkassistant/service/ITrafficManageBinder;

    invoke-interface {v1, v0}, Lcom/miui/networkassistant/service/ITrafficManageBinder;->getTodayDataUsageUsed(I)J

    move-result-wide v2

    const-wide/16 v0, 0x0

    cmp-long v0, v6, v0

    if-ltz v0, :cond_4

    :goto_1
    invoke-virtual {v11}, Lcom/miui/networkassistant/config/SimUserInfo;->getDataUsageWarning()F
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    long-to-float v1, v6

    mul-float/2addr v0, v1

    float-to-long v0, v0

    move-wide v8, v6

    move-wide v6, v4

    move-wide v4, v2

    move-wide v2, v0

    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_6

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v1, "securitycenter"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v11, v1}, Lcom/miui/networkassistant/traffic/purchase/CooperationManager;->isTrafficPurchaseAvailable(Landroid/content/Context;Lcom/miui/networkassistant/config/SimUserInfo;Z)Z

    invoke-virtual {v11}, Lcom/miui/networkassistant/config/SimUserInfo;->isNATipsEnable()Z

    move-result v0

    :goto_3
    new-instance v1, Lcom/miui/networkassistant/provider/DataCursor;

    const/4 v10, 0x5

    new-array v10, v10, [Ljava/lang/String;

    const-string/jumbo v11, "total_limit"

    const/4 v12, 0x0

    aput-object v11, v10, v12

    const-string/jumbo v11, "month_used"

    const/4 v12, 0x1

    aput-object v11, v10, v12

    const-string/jumbo v11, "today_used"

    const/4 v12, 0x2

    aput-object v11, v10, v12

    const-string/jumbo v11, "month_warning"

    const/4 v12, 0x3

    aput-object v11, v10, v12

    const-string/jumbo v11, "purchase_tips_enable"

    const/4 v12, 0x4

    aput-object v11, v10, v12

    invoke-direct {v1, v10}, Lcom/miui/networkassistant/provider/DataCursor;-><init>([Ljava/lang/String;)V

    new-instance v10, Lcom/miui/networkassistant/provider/DataCursor$DataRow;

    const/4 v11, 0x5

    new-array v11, v11, [Lcom/miui/networkassistant/provider/DataCursor$DataEntry;

    new-instance v12, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;

    invoke-direct {v12, v8, v9}, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;-><init>(J)V

    const/4 v8, 0x0

    aput-object v12, v11, v8

    new-instance v8, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;

    invoke-direct {v8, v6, v7}, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;-><init>(J)V

    const/4 v6, 0x1

    aput-object v8, v11, v6

    new-instance v6, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;

    invoke-direct {v6, v4, v5}, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;-><init>(J)V

    const/4 v4, 0x2

    aput-object v6, v11, v4

    new-instance v4, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;

    invoke-direct {v4, v2, v3}, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;-><init>(J)V

    const/4 v2, 0x3

    aput-object v4, v11, v2

    new-instance v2, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x4

    aput-object v2, v11, v0

    invoke-direct {v10, v11}, Lcom/miui/networkassistant/provider/DataCursor$DataRow;-><init>([Lcom/miui/networkassistant/provider/DataCursor$DataEntry;)V

    invoke-virtual {v1, v10}, Lcom/miui/networkassistant/provider/DataCursor;->addRow(Lcom/miui/networkassistant/provider/DataCursor$DataRow;)V

    move-object v0, v1

    :goto_4
    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_4

    :cond_2
    move-object v0, v1

    goto :goto_4

    :cond_3
    :try_start_1
    iget-object v1, p0, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->mTrafficManageBinder:Lcom/miui/networkassistant/service/ITrafficManageBinder;

    invoke-interface {v1, v0}, Lcom/miui/networkassistant/service/ITrafficManageBinder;->getCurrentMonthTotalPackage(I)J

    move-result-wide v6

    iget-object v1, p0, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->mTrafficManageBinder:Lcom/miui/networkassistant/service/ITrafficManageBinder;

    invoke-interface {v1, v0}, Lcom/miui/networkassistant/service/ITrafficManageBinder;->getCorrectedNormalMonthDataUsageUsed(I)J
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v4

    goto/16 :goto_0

    :cond_4
    const-wide/16 v6, 0x0

    goto/16 :goto_1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "NAProvider"

    const-string/jumbo v12, "query data usage "

    invoke-static {v1, v12, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-wide v13, v8

    move-wide v8, v6

    move-wide v6, v4

    move-wide v4, v2

    move-wide v2, v13

    goto/16 :goto_2

    :cond_5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    :cond_6
    move v0, v10

    goto/16 :goto_3

    :cond_7
    move-object v0, v1

    goto :goto_4
.end method

.method private queryFirewallBackgroundRestrictPackage(Landroid/net/Uri;)Landroid/database/Cursor;
    .locals 7

    new-instance v1, Lcom/miui/networkassistant/provider/DataCursor;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v2, "package_name"

    const/4 v3, 0x0

    aput-object v2, v0, v3

    invoke-direct {v1, v0}, Lcom/miui/networkassistant/provider/DataCursor;-><init>([Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/networkassistant/firewall/BackgroundPolicyService;->getInstance(Landroid/content/Context;)Lcom/miui/networkassistant/firewall/BackgroundPolicyService;

    move-result-object v2

    invoke-virtual {p0}, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;->getInstance(Landroid/content/Context;)Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;->getFilteredAppInfosList()Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/networkassistant/model/AppInfo;

    iget v5, v0, Lcom/miui/networkassistant/model/AppInfo;->uid:I

    invoke-static {v5}, Lcom/miui/common/b/f;->aHX(I)I

    move-result v5

    const/16 v6, 0x2710

    if-lt v5, v6, :cond_1

    iget-object v5, v0, Lcom/miui/networkassistant/model/AppInfo;->packageName:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/miui/networkassistant/traffic/statistic/PreSetGroup;->isPrePolicyPackage(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, v0, Lcom/miui/networkassistant/model/AppInfo;->packageName:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    iget v6, v0, Lcom/miui/networkassistant/model/AppInfo;->uid:I

    invoke-virtual {v2, v5, v6}, Lcom/miui/networkassistant/firewall/BackgroundPolicyService;->isAppRestrictBackground(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v0, v0, Lcom/miui/networkassistant/model/AppInfo;->packageName:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-direct {p0, v1, v3}, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->constructCursorByRestrictPackages(Lcom/miui/networkassistant/provider/DataCursor;Ljava/util/List;)V

    return-object v1
.end method

.method private queryMobileRestrictPackage(Landroid/net/Uri;)Landroid/database/Cursor;
    .locals 4

    new-instance v1, Lcom/miui/networkassistant/provider/DataCursor;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v2, "package_name"

    const/4 v3, 0x0

    aput-object v2, v0, v3

    invoke-direct {v1, v0}, Lcom/miui/networkassistant/provider/DataCursor;-><init>([Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->mFirewallBinder:Lcom/miui/networkassistant/service/IFirewallBinder;

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/networkassistant/dual/SimCardHelper;->getInstance(Landroid/content/Context;)Lcom/miui/networkassistant/dual/SimCardHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/networkassistant/dual/SimCardHelper;->getCurrentMobileSlotNum()I

    move-result v0

    iget-object v2, p0, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->mFirewallBinder:Lcom/miui/networkassistant/service/IFirewallBinder;

    invoke-interface {v2, v0}, Lcom/miui/networkassistant/service/IFirewallBinder;->getMobileRestrictPackages(I)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->constructCursorByRestrictPackages(Lcom/miui/networkassistant/provider/DataCursor;Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private queryMobileRule(Landroid/net/Uri;)Landroid/database/Cursor;
    .locals 7

    const/4 v0, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    new-instance v1, Lcom/miui/networkassistant/provider/DataCursor;

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v2, "package_name"

    aput-object v2, v0, v6

    const-string/jumbo v2, "mobile_rule"

    aput-object v2, v0, v5

    invoke-direct {v1, v0}, Lcom/miui/networkassistant/provider/DataCursor;-><init>([Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->checkParams(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->getPackageNameFromUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->checkSlotNum(I)I

    move-result v0

    const-string/jumbo v3, "NAProvider"

    const-string/jumbo v4, "queryMobileRule packageName:%s"

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v2, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v3, p0, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->mFirewallBinder:Lcom/miui/networkassistant/service/IFirewallBinder;

    invoke-interface {v3, v2, v0}, Lcom/miui/networkassistant/service/IFirewallBinder;->getMobileRule(Ljava/lang/String;I)Lcom/miui/networkassistant/model/FirewallRule;

    move-result-object v0

    new-instance v3, Lcom/miui/networkassistant/provider/DataCursor$DataRow;

    const/4 v4, 0x2

    new-array v4, v4, [Lcom/miui/networkassistant/provider/DataCursor$DataEntry;

    new-instance v5, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;

    invoke-direct {v5, v2}, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    aput-object v5, v4, v2

    new-instance v2, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;

    invoke-virtual {v0}, Lcom/miui/networkassistant/model/FirewallRule;->value()I

    move-result v0

    invoke-direct {v2, v0}, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;-><init>(I)V

    const/4 v0, 0x1

    aput-object v2, v4, v0

    invoke-direct {v3, v4}, Lcom/miui/networkassistant/provider/DataCursor$DataRow;-><init>([Lcom/miui/networkassistant/provider/DataCursor$DataEntry;)V

    invoke-virtual {v1, v3}, Lcom/miui/networkassistant/provider/DataCursor;->addRow(Lcom/miui/networkassistant/provider/DataCursor$DataRow;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const-string/jumbo v2, "NAProvider"

    const-string/jumbo v3, "queryMobileRule"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private queryNASettingsInfoStatus(Landroid/net/Uri;)Landroid/database/Cursor;
    .locals 14

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->mTrafficManageBinder:Lcom/miui/networkassistant/service/ITrafficManageBinder;

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_DUAL_CARD:Z

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/networkassistant/dual/SimCardHelper;->getInstance(Landroid/content/Context;)Lcom/miui/networkassistant/dual/SimCardHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/networkassistant/dual/SimCardHelper;->getCurrentMobileSlotNum()I

    move-result v0

    :goto_0
    invoke-virtual {p0}, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getInstance(Landroid/content/Context;I)Lcom/miui/networkassistant/config/SimUserInfo;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-virtual {v6}, Lcom/miui/networkassistant/config/SimUserInfo;->hasImsi()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v6}, Lcom/miui/networkassistant/config/SimUserInfo;->isSimInserted()Z

    move-result v4

    if-eqz v4, :cond_6

    new-instance v2, Lcom/miui/networkassistant/provider/DataCursor;

    const/16 v4, 0x9

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "operator_setted"

    aput-object v5, v4, v1

    const-string/jumbo v5, "correction_time"

    aput-object v5, v4, v3

    const-string/jumbo v5, "traffic_saving_started"

    aput-object v5, v4, v7

    const-string/jumbo v5, "show_status_bar_setted"

    aput-object v5, v4, v8

    const-string/jumbo v5, "needed_traffic_purchase"

    const/4 v7, 0x4

    aput-object v5, v4, v7

    const-string/jumbo v5, "oversea_version"

    const/4 v7, 0x5

    aput-object v5, v4, v7

    const-string/jumbo v5, "traffic_saving_enabled"

    const/4 v7, 0x6

    aput-object v5, v4, v7

    const-string/jumbo v5, "auto_traffic_correction"

    const/4 v7, 0x7

    aput-object v5, v4, v7

    const-string/jumbo v5, "tc_diagnostic"

    const/16 v7, 0x8

    aput-object v5, v4, v7

    invoke-direct {v2, v4}, Lcom/miui/networkassistant/provider/DataCursor;-><init>([Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/miui/networkassistant/config/SimUserInfo;->isOperatorSetted()Z

    move-result v4

    invoke-virtual {v6}, Lcom/miui/networkassistant/config/SimUserInfo;->getDataUsageCorrectedTime()J

    move-result-wide v8

    const/4 v7, 0x0

    const/4 v10, 0x1

    :try_start_0
    invoke-virtual {p0}, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v11, "status_bar_show_network_assistant"

    const/4 v12, 0x0

    invoke-static {v5, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    iget-object v5, p0, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->mTrafficManageBinder:Lcom/miui/networkassistant/service/ITrafficManageBinder;

    invoke-interface {v5, v0}, Lcom/miui/networkassistant/service/ITrafficManageBinder;->isNeededPurchasePkg(I)Z

    move-result v12

    invoke-virtual {v6}, Lcom/miui/networkassistant/config/SimUserInfo;->isOversea()Z

    move-result v13

    if-eqz v4, :cond_3

    invoke-virtual {v6}, Lcom/miui/networkassistant/config/SimUserInfo;->isSupportCorrection()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v6}, Lcom/miui/networkassistant/config/SimUserInfo;->isDataRoaming()Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_5

    invoke-virtual {v6}, Lcom/miui/networkassistant/config/SimUserInfo;->isDataUsageAutoCorrectionOn()Z

    move-result v5

    invoke-virtual {v6}, Lcom/miui/networkassistant/config/SimUserInfo;->isShouldTcDiagnostic()Z

    move-result v6

    if-eqz v6, :cond_0

    sget-boolean v6, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_DEVELOPMENT_VERSION:Z

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_0

    sget-boolean v1, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_STABLE_VERSION:Z

    xor-int/lit8 v1, v1, 0x1

    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v0}, Lcom/miui/networkassistant/utils/MiSimUtil;->isMiSimEnable(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v3

    :goto_2
    new-instance v3, Lcom/miui/networkassistant/provider/DataCursor$DataRow;

    const/16 v4, 0x9

    new-array v4, v4, [Lcom/miui/networkassistant/provider/DataCursor$DataEntry;

    new-instance v6, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    aput-object v6, v4, v0

    new-instance v0, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;

    invoke-direct {v0, v8, v9}, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;-><init>(J)V

    const/4 v6, 0x1

    aput-object v0, v4, v6

    new-instance v0, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x2

    aput-object v0, v4, v6

    new-instance v0, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;

    invoke-direct {v0, v11}, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;-><init>(I)V

    const/4 v6, 0x3

    aput-object v0, v4, v6

    new-instance v0, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x4

    aput-object v0, v4, v6

    new-instance v0, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;

    invoke-static {v13}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x5

    aput-object v0, v4, v6

    new-instance v0, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x6

    aput-object v0, v4, v6

    new-instance v0, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x7

    aput-object v0, v4, v5

    new-instance v0, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x8

    aput-object v0, v4, v1

    invoke-direct {v3, v4}, Lcom/miui/networkassistant/provider/DataCursor$DataRow;-><init>([Lcom/miui/networkassistant/provider/DataCursor$DataEntry;)V

    invoke-virtual {v2, v3}, Lcom/miui/networkassistant/provider/DataCursor;->addRow(Lcom/miui/networkassistant/provider/DataCursor$DataRow;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    :goto_3
    return-object v0

    :cond_1
    move-object v0, v2

    goto :goto_3

    :cond_2
    move-object v0, v2

    goto :goto_3

    :cond_3
    move v5, v3

    goto/16 :goto_1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "NAProvider"

    const-string/jumbo v3, "queryNASettingsInfoStatus exception"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v2

    goto :goto_3

    :cond_4
    move v0, v4

    goto/16 :goto_2

    :cond_5
    move v5, v3

    goto/16 :goto_1

    :cond_6
    move-object v0, v2

    goto :goto_3

    :cond_7
    move v0, v1

    goto/16 :goto_0
.end method

.method private queryTempMobileRule(Landroid/net/Uri;)Landroid/database/Cursor;
    .locals 7

    const/4 v0, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    new-instance v1, Lcom/miui/networkassistant/provider/DataCursor;

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v2, "package_name"

    aput-object v2, v0, v6

    const-string/jumbo v2, "temp_mobile_rule"

    aput-object v2, v0, v5

    invoke-direct {v1, v0}, Lcom/miui/networkassistant/provider/DataCursor;-><init>([Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->checkParams(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->getPackageNameFromUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->checkSlotNum(I)I

    move-result v0

    const-string/jumbo v3, "NAProvider"

    const-string/jumbo v4, "queryTempMobileRule packageName:%s"

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v2, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v3, p0, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->mFirewallBinder:Lcom/miui/networkassistant/service/IFirewallBinder;

    invoke-interface {v3, v2, v0}, Lcom/miui/networkassistant/service/IFirewallBinder;->getTempMobileRule(Ljava/lang/String;I)Lcom/miui/networkassistant/model/FirewallRule;

    move-result-object v0

    new-instance v3, Lcom/miui/networkassistant/provider/DataCursor$DataRow;

    const/4 v4, 0x2

    new-array v4, v4, [Lcom/miui/networkassistant/provider/DataCursor$DataEntry;

    new-instance v5, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;

    invoke-direct {v5, v2}, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    aput-object v5, v4, v2

    new-instance v2, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;

    invoke-virtual {v0}, Lcom/miui/networkassistant/model/FirewallRule;->value()I

    move-result v0

    invoke-direct {v2, v0}, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;-><init>(I)V

    const/4 v0, 0x1

    aput-object v2, v4, v0

    invoke-direct {v3, v4}, Lcom/miui/networkassistant/provider/DataCursor$DataRow;-><init>([Lcom/miui/networkassistant/provider/DataCursor$DataEntry;)V

    invoke-virtual {v1, v3}, Lcom/miui/networkassistant/provider/DataCursor;->addRow(Lcom/miui/networkassistant/provider/DataCursor$DataRow;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const-string/jumbo v2, "NAProvider"

    const-string/jumbo v3, "queryTempMobileRule"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private queryTempWifiRule(Landroid/net/Uri;)Landroid/database/Cursor;
    .locals 6

    const/4 v0, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    new-instance v1, Lcom/miui/networkassistant/provider/DataCursor;

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v2, "package_name"

    aput-object v2, v0, v5

    const-string/jumbo v2, "temp_wifi_rule"

    aput-object v2, v0, v4

    invoke-direct {v1, v0}, Lcom/miui/networkassistant/provider/DataCursor;-><init>([Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->checkParams(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->getPackageNameFromUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "NAProvider"

    const-string/jumbo v3, "queryTempWifiRule packageName:%s"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v2, p0, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->mFirewallBinder:Lcom/miui/networkassistant/service/IFirewallBinder;

    invoke-interface {v2, v0}, Lcom/miui/networkassistant/service/IFirewallBinder;->getTempWifiRule(Ljava/lang/String;)Lcom/miui/networkassistant/model/FirewallRule;

    move-result-object v2

    new-instance v3, Lcom/miui/networkassistant/provider/DataCursor$DataRow;

    const/4 v4, 0x2

    new-array v4, v4, [Lcom/miui/networkassistant/provider/DataCursor$DataEntry;

    new-instance v5, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;

    invoke-direct {v5, v0}, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    aput-object v5, v4, v0

    new-instance v0, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;

    invoke-virtual {v2}, Lcom/miui/networkassistant/model/FirewallRule;->value()I

    move-result v2

    invoke-direct {v0, v2}, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;-><init>(I)V

    const/4 v2, 0x1

    aput-object v0, v4, v2

    invoke-direct {v3, v4}, Lcom/miui/networkassistant/provider/DataCursor$DataRow;-><init>([Lcom/miui/networkassistant/provider/DataCursor$DataEntry;)V

    invoke-virtual {v1, v3}, Lcom/miui/networkassistant/provider/DataCursor;->addRow(Lcom/miui/networkassistant/provider/DataCursor$DataRow;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const-string/jumbo v2, "NAProvider"

    const-string/jumbo v3, "queryTempWifiRule"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private queryTopUsedAppList(Landroid/net/Uri;)Landroid/database/Cursor;
    .locals 10

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    sget-boolean v1, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_DUAL_CARD:Z

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/networkassistant/dual/SimCardHelper;->getInstance(Landroid/content/Context;)Lcom/miui/networkassistant/dual/SimCardHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/networkassistant/dual/SimCardHelper;->getCurrentMobileSlotNum()I

    move-result v0

    move v1, v0

    :goto_0
    new-instance v4, Lcom/miui/networkassistant/provider/DataCursor;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v2, "_id"

    const/4 v3, 0x0

    aput-object v2, v0, v3

    const-string/jumbo v2, "package_name"

    const/4 v3, 0x1

    aput-object v2, v0, v3

    const-string/jumbo v2, "traffic_used"

    const/4 v3, 0x2

    aput-object v2, v0, v3

    invoke-direct {v4, v0}, Lcom/miui/networkassistant/provider/DataCursor;-><init>([Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    invoke-virtual {p0}, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/miui/networkassistant/config/SimUserInfo;->getInstance(Landroid/content/Context;I)Lcom/miui/networkassistant/config/SimUserInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/miui/networkassistant/config/SimUserInfo;->hasImsi()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/miui/networkassistant/config/SimUserInfo;->isSimInserted()Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v2, Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;

    invoke-virtual {p0}, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1}, Lcom/miui/networkassistant/config/SimUserInfo;->getImsi()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;->getTodayDataUsageAppMapByDec(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_4

    const/4 v1, 0x0

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v2

    if-le v2, v0, :cond_2

    move v2, v0

    :goto_1
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v3, v1

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    if-ge v3, v2, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    new-instance v6, Lcom/miui/networkassistant/provider/DataCursor$DataRow;

    const/4 v1, 0x3

    new-array v7, v1, [Lcom/miui/networkassistant/provider/DataCursor$DataEntry;

    new-instance v1, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;

    invoke-direct {v1, v3}, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;-><init>(I)V

    const/4 v8, 0x0

    aput-object v1, v7, v8

    new-instance v8, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v8, v1}, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    aput-object v8, v7, v1

    new-instance v1, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-direct {v1, v8, v9}, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;-><init>(J)V

    const/4 v0, 0x2

    aput-object v1, v7, v0

    invoke-direct {v6, v7}, Lcom/miui/networkassistant/provider/DataCursor$DataRow;-><init>([Lcom/miui/networkassistant/provider/DataCursor$DataEntry;)V

    invoke-virtual {v4, v6}, Lcom/miui/networkassistant/provider/DataCursor;->addRow(Lcom/miui/networkassistant/provider/DataCursor$DataRow;)V

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_2

    :catch_0
    move-exception v0

    return-object v4

    :cond_0
    move-object v0, v4

    :cond_1
    :goto_3
    return-object v0

    :cond_2
    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v0

    move v2, v0

    goto :goto_1

    :cond_3
    move-object v0, v4

    goto :goto_3

    :cond_4
    move-object v0, v4

    goto :goto_3

    :cond_5
    move v1, v0

    goto/16 :goto_0
.end method

.method private queryTrafficPurchaseConfig(Landroid/net/Uri;)Landroid/database/Cursor;
    .locals 6

    const/4 v0, 0x0

    const/4 v3, 0x1

    const/4 v5, 0x0

    if-eqz p1, :cond_0

    new-instance v0, Lcom/miui/networkassistant/provider/DataCursor;

    new-array v1, v3, [Ljava/lang/String;

    const-string/jumbo v2, "first_enter_config"

    aput-object v2, v1, v5

    invoke-direct {v0, v1}, Lcom/miui/networkassistant/provider/DataCursor;-><init>([Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/networkassistant/config/CommonConfig;->getInstance(Landroid/content/Context;)Lcom/miui/networkassistant/config/CommonConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/networkassistant/config/CommonConfig;->getFirstEnterTrafficPurchaseDeclare()Z

    move-result v1

    new-instance v2, Lcom/miui/networkassistant/provider/DataCursor$DataRow;

    new-array v3, v3, [Lcom/miui/networkassistant/provider/DataCursor$DataEntry;

    new-instance v4, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;-><init>(Ljava/lang/String;)V

    aput-object v4, v3, v5

    invoke-direct {v2, v3}, Lcom/miui/networkassistant/provider/DataCursor$DataRow;-><init>([Lcom/miui/networkassistant/provider/DataCursor$DataEntry;)V

    invoke-virtual {v0, v2}, Lcom/miui/networkassistant/provider/DataCursor;->addRow(Lcom/miui/networkassistant/provider/DataCursor$DataRow;)V

    :cond_0
    return-object v0
.end method

.method private queryTrafficPurchaseStatus(Landroid/net/Uri;)Landroid/database/Cursor;
    .locals 5

    const/4 v0, 0x0

    const/4 v4, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->mTrafficManageBinder:Lcom/miui/networkassistant/service/ITrafficManageBinder;

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v4, :cond_2

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    const/4 v3, 0x2

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v0, :cond_3

    const-string/jumbo v3, "slotId"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0, v1}, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->getSlotNum(Ljava/lang/String;)I

    move-result v0

    :goto_0
    new-instance v1, Lcom/miui/networkassistant/provider/DataCursor;

    new-array v3, v4, [Ljava/lang/String;

    const-string/jumbo v4, "traffic_purchase_enabled"

    aput-object v4, v3, v2

    invoke-direct {v1, v3}, Lcom/miui/networkassistant/provider/DataCursor;-><init>([Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getInstance(Landroid/content/Context;I)Lcom/miui/networkassistant/config/SimUserInfo;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->mTrafficManageBinder:Lcom/miui/networkassistant/service/ITrafficManageBinder;

    invoke-interface {v4, v0}, Lcom/miui/networkassistant/service/ITrafficManageBinder;->isNeededPurchasePkg(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v3}, Lcom/miui/networkassistant/traffic/statistic/LeisureTrafficHelper;->isLeisureTime(Lcom/miui/networkassistant/config/SimUserInfo;)Z

    move-result v0

    xor-int/lit8 v2, v0, 0x1

    :cond_0
    new-instance v0, Lcom/miui/networkassistant/provider/DataCursor$DataRow;

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/miui/networkassistant/provider/DataCursor$DataEntry;

    new-instance v4, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    aput-object v4, v3, v2

    invoke-direct {v0, v3}, Lcom/miui/networkassistant/provider/DataCursor$DataRow;-><init>([Lcom/miui/networkassistant/provider/DataCursor$DataEntry;)V

    invoke-virtual {v1, v0}, Lcom/miui/networkassistant/provider/DataCursor;->addRow(Lcom/miui/networkassistant/provider/DataCursor$DataRow;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    :cond_1
    :goto_1
    return-object v0

    :cond_2
    sget-boolean v0, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_DUAL_CARD:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/networkassistant/dual/SimCardHelper;->getInstance(Landroid/content/Context;)Lcom/miui/networkassistant/dual/SimCardHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/networkassistant/dual/SimCardHelper;->getCurrentMobileSlotNum()I

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "NAProvider"

    const-string/jumbo v3, "queryTrafficPurchaseStatus"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_0
.end method

.method private queryTrafficStats(Landroid/net/Uri;)Landroid/database/Cursor;
    .locals 10

    const-wide/16 v2, 0x0

    const/4 v7, 0x2

    const/4 v9, 0x0

    const/4 v0, 0x0

    const/4 v8, 0x1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v8, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {v0}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/miui/networkassistant/traffic/statistic/NaTrafficStats;->getUidTxBytes(I)J

    move-result-wide v2

    invoke-static {v0}, Lcom/miui/networkassistant/traffic/statistic/NaTrafficStats;->getUidRxBytes(I)J

    move-result-wide v0

    :goto_0
    new-instance v4, Lcom/miui/networkassistant/provider/DataCursor;

    new-array v5, v7, [Ljava/lang/String;

    const-string/jumbo v6, "total_tx_byte"

    aput-object v6, v5, v9

    const-string/jumbo v6, "total_rx_byte"

    aput-object v6, v5, v8

    invoke-direct {v4, v5}, Lcom/miui/networkassistant/provider/DataCursor;-><init>([Ljava/lang/String;)V

    new-instance v5, Lcom/miui/networkassistant/provider/DataCursor$DataRow;

    new-array v6, v7, [Lcom/miui/networkassistant/provider/DataCursor$DataEntry;

    new-instance v7, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;

    invoke-direct {v7, v2, v3}, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;-><init>(J)V

    aput-object v7, v6, v9

    new-instance v2, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;

    invoke-direct {v2, v0, v1}, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;-><init>(J)V

    aput-object v2, v6, v8

    invoke-direct {v5, v6}, Lcom/miui/networkassistant/provider/DataCursor$DataRow;-><init>([Lcom/miui/networkassistant/provider/DataCursor$DataEntry;)V

    invoke-virtual {v4, v5}, Lcom/miui/networkassistant/provider/DataCursor;->addRow(Lcom/miui/networkassistant/provider/DataCursor$DataRow;)V

    move-object v0, v4

    :cond_1
    return-object v0

    :cond_2
    iget-object v4, p0, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->mTrafficStatsLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-boolean v0, p0, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->mNeedSetToZero:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->mNeedSetToZero:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-wide v0, v2

    :goto_1
    monitor-exit v4

    goto :goto_0

    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->mCurrentActiveIface:Ljava/lang/String;

    if-nez v0, :cond_4

    invoke-static {}, Lcom/miui/networkassistant/traffic/statistic/NaTrafficStats;->getTotalTxBytes()J

    move-result-wide v2

    invoke-static {}, Lcom/miui/networkassistant/traffic/statistic/NaTrafficStats;->getTotalRxBytes()J

    move-result-wide v0

    const-string/jumbo v5, "NAProvider"

    const-string/jumbo v6, "mCurrentActiveIface is null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v4

    throw v0

    :cond_4
    :try_start_2
    iget-object v0, p0, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->mCurrentActiveIface:Ljava/lang/String;

    invoke-static {v0}, Lcom/miui/networkassistant/traffic/statistic/NaTrafficStats;->getTxBytes(Ljava/lang/String;)J

    move-result-wide v2

    iget-object v0, p0, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->mCurrentActiveIface:Ljava/lang/String;

    invoke-static {v0}, Lcom/miui/networkassistant/traffic/statistic/NaTrafficStats;->getRxBytes(Ljava/lang/String;)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-wide v0

    goto :goto_1
.end method

.method private queryWifiRule(Landroid/net/Uri;)Landroid/database/Cursor;
    .locals 6

    const/4 v0, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    new-instance v1, Lcom/miui/networkassistant/provider/DataCursor;

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v2, "package_name"

    aput-object v2, v0, v5

    const-string/jumbo v2, "wifi_rule"

    aput-object v2, v0, v4

    invoke-direct {v1, v0}, Lcom/miui/networkassistant/provider/DataCursor;-><init>([Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->checkParams(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->getPackageNameFromUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "NAProvider"

    const-string/jumbo v3, "queryWifiRule packageName:%s"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v2, p0, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->mFirewallBinder:Lcom/miui/networkassistant/service/IFirewallBinder;

    invoke-interface {v2, v0}, Lcom/miui/networkassistant/service/IFirewallBinder;->getWifiRule(Ljava/lang/String;)Lcom/miui/networkassistant/model/FirewallRule;

    move-result-object v2

    new-instance v3, Lcom/miui/networkassistant/provider/DataCursor$DataRow;

    const/4 v4, 0x2

    new-array v4, v4, [Lcom/miui/networkassistant/provider/DataCursor$DataEntry;

    new-instance v5, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;

    invoke-direct {v5, v0}, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    aput-object v5, v4, v0

    new-instance v0, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;

    invoke-virtual {v2}, Lcom/miui/networkassistant/model/FirewallRule;->value()I

    move-result v2

    invoke-direct {v0, v2}, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;-><init>(I)V

    const/4 v2, 0x1

    aput-object v0, v4, v2

    invoke-direct {v3, v4}, Lcom/miui/networkassistant/provider/DataCursor$DataRow;-><init>([Lcom/miui/networkassistant/provider/DataCursor$DataEntry;)V

    invoke-virtual {v1, v3}, Lcom/miui/networkassistant/provider/DataCursor;->addRow(Lcom/miui/networkassistant/provider/DataCursor$DataRow;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const-string/jumbo v2, "NAProvider"

    const-string/jumbo v3, "queryWifiFirewallState"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private queryWlanRestrictPackage(Landroid/net/Uri;)Landroid/database/Cursor;
    .locals 4

    new-instance v1, Lcom/miui/networkassistant/provider/DataCursor;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v2, "package_name"

    const/4 v3, 0x0

    aput-object v2, v0, v3

    invoke-direct {v1, v0}, Lcom/miui/networkassistant/provider/DataCursor;-><init>([Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->mFirewallBinder:Lcom/miui/networkassistant/service/IFirewallBinder;

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->mFirewallBinder:Lcom/miui/networkassistant/service/IFirewallBinder;

    invoke-interface {v0}, Lcom/miui/networkassistant/service/IFirewallBinder;->getWifiRestrictPackages()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->constructCursorByRestrictPackages(Lcom/miui/networkassistant/provider/DataCursor;Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private refreshActiveIfaceIfNeed()V
    .locals 6

    iget-object v1, p0, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->mTrafficStatsLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/common/network/f;->aLZ(Landroid/content/Context;)Lcom/miui/common/network/NetworkUtils$NetworkState;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->mCurrentNetworkState:Lcom/miui/common/network/NetworkUtils$NetworkState;

    if-eq v2, v0, :cond_0

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->mNeedSetToZero:Z

    iput-object v0, p0, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->mCurrentNetworkState:Lcom/miui/common/network/NetworkUtils$NetworkState;

    const-string/jumbo v2, "NAProvider"

    const-string/jumbo v3, "network switch to %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/miui/common/network/NetworkUtils$NetworkState;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/common/network/f;->aLW(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->mCurrentActiveIface:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private registerNetworkReceiver()V
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    sget-object v1, Lcom/miui/networkassistant/config/Constants$System;->CONNECTIVITY_ACTION_IMMEDIATE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private setMobileRuleByPkgName(Landroid/net/Uri;Landroid/content/ContentValues;)I
    .locals 10

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->checkParams(Landroid/net/Uri;Landroid/content/ContentValues;)Z

    move-result v2

    if-nez v2, :cond_0

    return v1

    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->getPackageNameFromUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v2, "mobile_rule"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    const-string/jumbo v4, "mobile_rule_slot"

    invoke-virtual {p2, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->checkSlotNum(I)I

    move-result v4

    const-string/jumbo v5, "source_package_name"

    invoke-virtual {p2, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-static {v5, v6}, Lcom/miui/networkassistant/utils/AnalyticsHelper;->trackSetMobileFirewallRule(Ljava/lang/String;Z)V

    const-string/jumbo v6, "NAProvider"

    const-string/jumbo v7, "setMobileRuleByPkgName packageName:%s, slotnum:%s, isRestrict:%s, sourcePackage:%s"

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v3, v8, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v0

    const/4 v9, 0x2

    aput-object v2, v8, v9

    const/4 v9, 0x3

    aput-object v5, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/miui/networkassistant/model/FirewallRule;->Restrict:Lcom/miui/networkassistant/model/FirewallRule;

    :goto_0
    iget-object v5, p0, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->mFirewallBinder:Lcom/miui/networkassistant/service/IFirewallBinder;

    invoke-interface {v5, v3, v2, v4}, Lcom/miui/networkassistant/service/IFirewallBinder;->setMobileRule(Ljava/lang/String;Lcom/miui/networkassistant/model/FirewallRule;I)Z

    move-result v2

    if-eqz v2, :cond_2

    :goto_1
    return v0

    :cond_1
    sget-object v2, Lcom/miui/networkassistant/model/FirewallRule;->Allow:Lcom/miui/networkassistant/model/FirewallRule;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    :catch_0
    move-exception v0

    const-string/jumbo v2, "NAProvider"

    const-string/jumbo v3, "set mobile rule"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method private setNASettingsInfoStatus(Landroid/net/Uri;Landroid/content/ContentValues;)I
    .locals 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    iget-object v2, p0, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->mTrafficManageBinder:Lcom/miui/networkassistant/service/ITrafficManageBinder;

    if-eqz v2, :cond_3

    const-string/jumbo v2, "show_status_bar_setted"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "show_status_bar_setted"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v1, :cond_0

    invoke-virtual {p0}, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "status_bar_show_network_assistant"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    const-string/jumbo v2, "auto_traffic_correction"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "auto_traffic_correction"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    sget-boolean v3, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_DUAL_CARD:Z

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/networkassistant/dual/SimCardHelper;->getInstance(Landroid/content/Context;)Lcom/miui/networkassistant/dual/SimCardHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/networkassistant/dual/SimCardHelper;->getCurrentMobileSlotNum()I

    move-result v0

    :cond_1
    invoke-virtual {p0}, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getInstance(Landroid/content/Context;I)Lcom/miui/networkassistant/config/SimUserInfo;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/miui/networkassistant/config/SimUserInfo;->toggleDataUsageAutoCorrection(Z)Z

    :cond_2
    move v0, v1

    :cond_3
    return v0
.end method

.method private setTempMobileRuleByPkgName(Landroid/net/Uri;Landroid/content/ContentValues;)I
    .locals 10

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->checkParams(Landroid/net/Uri;Landroid/content/ContentValues;)Z

    move-result v2

    if-nez v2, :cond_0

    return v1

    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->getPackageNameFromUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v2, "temp_mobile_rule_slot"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->checkSlotNum(I)I

    move-result v4

    const-string/jumbo v2, "temp_mobile_rule"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    const-string/jumbo v5, "source_package_name"

    invoke-virtual {p2, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string/jumbo v0, "NAProvider"

    const-string/jumbo v2, "srcPkgName must not be empty"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    const-string/jumbo v6, "NAProvider"

    const-string/jumbo v7, "setTempMobileRuleByPkgName packageName:%s, slotnum:%s, isRestrict:%s, srcPkgName:%s"

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v3, v8, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v0

    const/4 v9, 0x2

    aput-object v2, v8, v9

    const/4 v9, 0x3

    aput-object v5, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lcom/miui/networkassistant/model/FirewallRule;->Restrict:Lcom/miui/networkassistant/model/FirewallRule;

    :goto_0
    iget-object v6, p0, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->mFirewallBinder:Lcom/miui/networkassistant/service/IFirewallBinder;

    invoke-interface {v6, v3, v2, v5, v4}, Lcom/miui/networkassistant/service/IFirewallBinder;->setTempMobileRule(Ljava/lang/String;Lcom/miui/networkassistant/model/FirewallRule;Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_3

    :goto_1
    return v0

    :cond_2
    sget-object v2, Lcom/miui/networkassistant/model/FirewallRule;->Allow:Lcom/miui/networkassistant/model/FirewallRule;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1

    :catch_0
    move-exception v0

    const-string/jumbo v2, "NAProvider"

    const-string/jumbo v3, "set temp mobile rule"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method private setTempWifiRuleByPkgName(Landroid/net/Uri;Landroid/content/ContentValues;)I
    .locals 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->checkParams(Landroid/net/Uri;Landroid/content/ContentValues;)Z

    move-result v2

    if-nez v2, :cond_0

    return v1

    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->getPackageNameFromUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v2, "temp_wifi_rule"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    const-string/jumbo v4, "source_package_name"

    invoke-virtual {p2, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string/jumbo v0, "NAProvider"

    const-string/jumbo v2, "srcPkgName must not be empty"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    const-string/jumbo v5, "NAProvider"

    const-string/jumbo v6, "setTempWifiRuleByPkgName packageName:%s, isRestrict:%s, srcPkgName:%s"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v3, v7, v1

    aput-object v2, v7, v0

    const/4 v8, 0x2

    aput-object v4, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lcom/miui/networkassistant/model/FirewallRule;->Restrict:Lcom/miui/networkassistant/model/FirewallRule;

    :goto_0
    iget-object v5, p0, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->mFirewallBinder:Lcom/miui/networkassistant/service/IFirewallBinder;

    invoke-interface {v5, v3, v2, v4}, Lcom/miui/networkassistant/service/IFirewallBinder;->setTempWifiRule(Ljava/lang/String;Lcom/miui/networkassistant/model/FirewallRule;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    :goto_1
    return v0

    :cond_2
    sget-object v2, Lcom/miui/networkassistant/model/FirewallRule;->Allow:Lcom/miui/networkassistant/model/FirewallRule;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1

    :catch_0
    move-exception v0

    const-string/jumbo v2, "NAProvider"

    const-string/jumbo v3, "set temp wifi rule"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method private setTrafficPurchaseConfig(Landroid/net/Uri;Landroid/content/ContentValues;)I
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    const-string/jumbo v2, "first_enter_config"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v0, "first_enter_config"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0}, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/networkassistant/config/CommonConfig;->getInstance(Landroid/content/Context;)Lcom/miui/networkassistant/config/CommonConfig;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/miui/networkassistant/config/CommonConfig;->setFirstEnterTrafficPurchaseDeclare(Z)Z

    move v0, v1

    :cond_0
    const-string/jumbo v2, "slot_num"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "traffic_alert"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v0, "slot_num"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0}, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getInstance(Landroid/content/Context;I)Lcom/miui/networkassistant/config/SimUserInfo;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/miui/networkassistant/config/SimUserInfo;->setPackageChangeUpdateTime(J)Z

    move v0, v1

    :cond_1
    return v0
.end method

.method private setWifiRuleByPkgName(Landroid/net/Uri;Landroid/content/ContentValues;)I
    .locals 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->checkParams(Landroid/net/Uri;Landroid/content/ContentValues;)Z

    move-result v2

    if-nez v2, :cond_0

    return v1

    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->getPackageNameFromUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v2, "wifi_rule"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    const-string/jumbo v4, "source_package_name"

    invoke-virtual {p2, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-static {v4, v5}, Lcom/miui/networkassistant/utils/AnalyticsHelper;->trackSetWlanFirewallRule(Ljava/lang/String;Z)V

    const-string/jumbo v5, "NAProvider"

    const-string/jumbo v6, "seWifiRuleByPkgName packageName:%s, isRestrict:%s, sourcePackage:%s"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v3, v7, v1

    aput-object v2, v7, v0

    const/4 v8, 0x2

    aput-object v4, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/miui/networkassistant/model/FirewallRule;->Restrict:Lcom/miui/networkassistant/model/FirewallRule;

    :goto_0
    iget-object v4, p0, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->mFirewallBinder:Lcom/miui/networkassistant/service/IFirewallBinder;

    invoke-interface {v4, v3, v2}, Lcom/miui/networkassistant/service/IFirewallBinder;->setWifiRule(Ljava/lang/String;Lcom/miui/networkassistant/model/FirewallRule;)Z

    move-result v2

    if-eqz v2, :cond_2

    :goto_1
    return v0

    :cond_1
    sget-object v2, Lcom/miui/networkassistant/model/FirewallRule;->Allow:Lcom/miui/networkassistant/model/FirewallRule;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    :catch_0
    move-exception v0

    const-string/jumbo v2, "NAProvider"

    const-string/jumbo v3, "set wifi rule"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method private startCorrection(Landroid/net/Uri;Landroid/content/ContentValues;)I
    .locals 12

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->mTrafficManageBinder:Lcom/miui/networkassistant/service/ITrafficManageBinder;

    if-eqz v2, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    :try_start_0
    const-string/jumbo v2, "sim_slot_num_tag"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string/jumbo v3, "correction_type"

    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const-string/jumbo v4, "from"

    invoke-virtual {p2, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "%s_%s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v4, v6, v7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x1

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v2}, Lcom/miui/networkassistant/config/SimUserInfo;->getInstance(Landroid/content/Context;I)Lcom/miui/networkassistant/config/SimUserInfo;

    move-result-object v6

    const-string/jumbo v7, "NAProvider"

    const-string/jumbo v8, "type:%s,key:%s"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    const/4 v10, 0x1

    aput-object v5, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v6, v5}, Lcom/miui/networkassistant/config/SimUserInfo;->getCorrectionSourceUpdateTime(Ljava/lang/String;)J

    move-result-wide v10

    cmp-long v7, v8, v10

    if-lez v7, :cond_1

    invoke-static {}, Lcom/miui/networkassistant/utils/DateUtil;->getTodayTimeMillis()J

    move-result-wide v8

    const-wide/32 v10, 0x5265c00

    add-long/2addr v8, v10

    invoke-virtual {v6, v5, v8, v9}, Lcom/miui/networkassistant/config/SimUserInfo;->setCorrectionSourceUpdateTime(Ljava/lang/String;J)Z

    iget-object v4, p0, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->mTrafficManageBinder:Lcom/miui/networkassistant/service/ITrafficManageBinder;

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-interface {v4, v5, v2, v6, v3}, Lcom/miui/networkassistant/service/ITrafficManageBinder;->startCorrection(ZIZI)Z

    :goto_0
    move v1, v0

    :cond_0
    :goto_1
    return v1

    :cond_1
    const-string/jumbo v0, "NAProvider"

    const-string/jumbo v2, "%s request more times."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "NAProvider"

    const-string/jumbo v3, "startCorrection NullPointerException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_1
    move-exception v0

    const-string/jumbo v2, "NAProvider"

    const-string/jumbo v3, "startCorrection RemoteException "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private unRegisterNetworkReceiver()V
    .locals 2

    invoke-virtual {p0}, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 6

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->mOpenHelper:Lcom/miui/networkassistant/provider/DBHelper;

    invoke-virtual {v0}, Lcom/miui/networkassistant/provider/DBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    :cond_0
    sget-object v0, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown URI "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-object v0, p0, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v1, "traffic_distribution"

    invoke-virtual {v0, v1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    :goto_0
    invoke-virtual {p0}, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p1, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    return v0

    :pswitch_1
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v2, "traffic_distribution"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " AND ("

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v4, 0x29

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_1
    const-string/jumbo v0, ""

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown URI "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const-string/jumbo v0, "vnd.android.cursor.dir/vnd.traffic.provider"

    return-object v0

    :pswitch_1
    const-string/jumbo v0, "vnd.android.cursor.item/vnd.traffic.provider"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->mOpenHelper:Lcom/miui/networkassistant/provider/DBHelper;

    invoke-virtual {v0}, Lcom/miui/networkassistant/provider/DBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    :cond_0
    sget-object v0, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown URI "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-object v0, p0, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v1, "traffic_distribution"

    invoke-virtual {v0, v1, v4, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    sget-object v2, Lcom/miui/networkassistant/provider/ProviderConstant$TrafficDistributionColumns;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    return-object v0

    :cond_1
    new-instance v0, Landroid/database/SQLException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Failed to insert row into "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/database/SQLException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate()Z
    .locals 2

    const-string/jumbo v0, "NAProvider"

    const-string/jumbo v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->bindFirewallService()V

    invoke-direct {p0}, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->bindTrafficManageService()V

    invoke-direct {p0}, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->registerNetworkReceiver()V

    new-instance v0, Lcom/miui/networkassistant/provider/DBHelper;

    invoke-virtual {p0}, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/networkassistant/provider/DBHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->mOpenHelper:Lcom/miui/networkassistant/provider/DBHelper;

    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 3

    sget-object v0, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown URI "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_0
    invoke-direct/range {p0 .. p5}, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->doQueryDB(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    :sswitch_1
    invoke-direct {p0, p1}, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->queryTempMobileRule(Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    :sswitch_2
    invoke-direct {p0, p1}, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->queryTempWifiRule(Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    :sswitch_3
    invoke-direct {p0, p1}, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->queryMobileRule(Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    :sswitch_4
    invoke-direct {p0, p1}, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->queryWifiRule(Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    :sswitch_5
    invoke-direct {p0, p1}, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->queryWlanRestrictPackage(Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    :sswitch_6
    invoke-direct {p0, p1}, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->queryMobileRestrictPackage(Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    :sswitch_7
    invoke-direct {p0, p1}, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->queryFirewallBackgroundRestrictPackage(Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    :sswitch_8
    invoke-direct {p0, p1}, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->queryDataUsageStatus(Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    :sswitch_9
    invoke-direct {p0, p1}, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->queryDataUsageNotiStatus(Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    :sswitch_a
    invoke-direct {p0, p1}, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->queryNASettingsInfoStatus(Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    :sswitch_b
    invoke-direct {p0, p1}, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->queryTrafficStats(Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    :sswitch_c
    invoke-direct {p0, p1}, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->queryTrafficPurchaseStatus(Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    :sswitch_d
    invoke-direct {p0, p1}, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->queryTrafficPurchaseConfig(Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    :sswitch_e
    invoke-direct {p0, p1}, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->queryTopUsedAppList(Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    :sswitch_f
    invoke-direct {p0, p1}, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->queryBillPackageDetail(Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    :sswitch_10
    invoke-direct {p0, p1}, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->queryCallTimePackageDetail(Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_0
        0x11 -> :sswitch_0
        0x21 -> :sswitch_1
        0x22 -> :sswitch_2
        0x23 -> :sswitch_3
        0x24 -> :sswitch_4
        0x25 -> :sswitch_5
        0x26 -> :sswitch_6
        0x27 -> :sswitch_7
        0x30 -> :sswitch_8
        0x31 -> :sswitch_9
        0x40 -> :sswitch_a
        0x50 -> :sswitch_b
        0x60 -> :sswitch_c
        0x90 -> :sswitch_d
        0x91 -> :sswitch_e
        0x100 -> :sswitch_f
        0x101 -> :sswitch_10
    .end sparse-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 6

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->mOpenHelper:Lcom/miui/networkassistant/provider/DBHelper;

    invoke-virtual {v0}, Lcom/miui/networkassistant/provider/DBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    :cond_0
    sget-object v0, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown URI "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_0
    iget-object v0, p0, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v1, "traffic_distribution"

    invoke-virtual {v0, v1, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    :goto_0
    invoke-virtual {p0}, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p1, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    return v0

    :sswitch_1
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v2, "traffic_distribution"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " AND ("

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v4, 0x29

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, p2, v0, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_1
    const-string/jumbo v0, ""

    goto :goto_1

    :sswitch_2
    invoke-direct {p0, p1, p2}, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->setTempMobileRuleByPkgName(Landroid/net/Uri;Landroid/content/ContentValues;)I

    move-result v0

    goto :goto_0

    :sswitch_3
    invoke-direct {p0, p1, p2}, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->setTempWifiRuleByPkgName(Landroid/net/Uri;Landroid/content/ContentValues;)I

    move-result v0

    goto :goto_0

    :sswitch_4
    invoke-direct {p0, p1, p2}, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->setMobileRuleByPkgName(Landroid/net/Uri;Landroid/content/ContentValues;)I

    move-result v0

    goto :goto_0

    :sswitch_5
    invoke-direct {p0, p1, p2}, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->setWifiRuleByPkgName(Landroid/net/Uri;Landroid/content/ContentValues;)I

    move-result v0

    goto :goto_0

    :sswitch_6
    invoke-direct {p0, p1, p2}, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->setNASettingsInfoStatus(Landroid/net/Uri;Landroid/content/ContentValues;)I

    move-result v0

    goto :goto_0

    :sswitch_7
    invoke-direct {p0, p1, p2}, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->setTrafficPurchaseConfig(Landroid/net/Uri;Landroid/content/ContentValues;)I

    move-result v0

    goto :goto_0

    :sswitch_8
    invoke-direct {p0, p1, p2}, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->startCorrection(Landroid/net/Uri;Landroid/content/ContentValues;)I

    move-result v0

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_0
        0x11 -> :sswitch_1
        0x21 -> :sswitch_2
        0x22 -> :sswitch_3
        0x23 -> :sswitch_4
        0x24 -> :sswitch_5
        0x40 -> :sswitch_6
        0x90 -> :sswitch_7
        0x102 -> :sswitch_8
    .end sparse-switch
.end method
