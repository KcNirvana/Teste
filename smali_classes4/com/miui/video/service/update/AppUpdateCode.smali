.class public Lcom/miui/video/service/update/AppUpdateCode;
.super Ljava/lang/Object;
.source "AppUpdateCode.java"


# static fields
.field public static final AUTO_CLOSE_TIME:I = 0xa

.field public static final AUTO_UPDATE_DISABLED:I = 0x0

.field public static final AUTO_UPDATE_WIFI_4G:I = 0x2

.field public static final AUTO_UPDATE_WIFI_ONLY:I = 0x1

.field public static final GP_BROWSE_URL_PATH:Ljava/lang/String; = "https://play.google.com/store/apps/details?id="

.field public static final GP_MARKET_PACKAGE:Ljava/lang/String; = "com.android.vending"

.field public static final MI_MARKET_ACTION_4G_AUTO:Ljava/lang/String; = "com.xiaomi.market.action.METERED_UPDATE_CONFIRM"

.field public static final MI_MARKET_EXTRA_SHOW_WHEN_REJECTED:Ljava/lang/String; = "showWhenRejected"

.field public static final MI_MARKET_PROVIDER:Ljava/lang/String; = "content://com.xiaomi.discover.preferences"

.field public static final MI_MARKET_PROVIDER_KEY_AUTO_UPDATE:Ljava/lang/String; = "autoUpdate"

.field public static final MI_MARKET_PROVIDER_METHOD_AUTO_UPDATE:Ljava/lang/String; = "getAutoUpdate"

.field public static final MI_MARKET_PROVIDER_METHOD_METERED_UPDATE:Ljava/lang/String; = "isMeteredUpdateConfirmNeededByRegion"

.field public static final MI_MARKET_URL_HOST:Ljava/lang/String; = "mimarket://details"

.field public static final MI_MARKET_URL_PATH:Ljava/lang/String; = "mimarket://details?id=%s&startDownload=true&back=true"

.field public static final STATUS_FAILED:I = 0x4

.field public static final STATUS_LOCAL_APP_FAILED:I = 0x5

.field public static final STATUS_NO_NET:I = 0x3

.field public static final STATUS_NO_UPDATE:I = 0x1

.field public static final STATUS_NO_WIFI:I = 0x2

.field public static final STATUS_UPDATE:I = 0x0

.field public static final UPDATE_DELAY_DAYS:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
