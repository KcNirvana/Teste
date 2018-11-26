.class public final Lcom/miui/networkassistant/provider/ProviderConstant$TrafficDistributionColumns;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/provider/BaseColumns;


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "_id desc"

.field public static final FROM_PKGNAME:Ljava/lang/String; = "from_pkgname"

.field public static final IMSI:Ljava/lang/String; = "imsi"

.field public static final MOBILE_RXBYTES:Ljava/lang/String; = "mobile_rxbytes"

.field public static final MOBILE_TXBYTES:Ljava/lang/String; = "mobile_txbytes"

.field public static final STORAGE_TIME:Ljava/lang/String; = "storage_time"

.field public static final TABLE_NAME:Ljava/lang/String; = "traffic_distribution"

.field public static final TO_PKGNAME:Ljava/lang/String; = "to_pkgname"

.field public static final WIFI_RXBYTES:Ljava/lang/String; = "wifi_rxbytes"

.field public static final WIFI_TXBYTES:Ljava/lang/String; = "wifi_txbytes"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "content://com.miui.networkassistant.provider/traffic_distribution"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/miui/networkassistant/provider/ProviderConstant$TrafficDistributionColumns;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
