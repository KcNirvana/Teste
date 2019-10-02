.class public final Lcom/xiaomi/miglobaladsdk/Const;
.super Ljava/lang/Object;
.source "Const.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/miglobaladsdk/Const$cacheTime;,
        Lcom/xiaomi/miglobaladsdk/Const$AdType;
    }
.end annotation


# static fields
.field public static final AD_CONFIG_URL_DESTINATION:Ljava/lang/String; = "http://globalapi.ad.xiaomi.com/filter/text"

.field public static final CHANNEL:Ljava/lang/String; = "overseaSdkAd"

.field public static final CONFIG_LOG_TAG:Ljava/lang/String; = "MiAdBlacklistConfig"

.field public static final CONFIG_TYPE_BLACKLIST:[Ljava/lang/String;

.field public static final CONFIG_TYPE_DSP:[Ljava/lang/String;

.field public static final CONFIG_TYPE_REPORT:[Ljava/lang/String;

.field public static final DEFAULT_AD_SIZE:I = 0x1

.field public static final DEFAULT_DSP_PARALLELISM_DEGREE:I = -0x1

.field public static final DEFAULT_INT_VALUE:I = -0x1

.field public static final DEFAULT_LONG_VALUE:J = -0x1L

.field public static final DEFAULT_USERINFO:Ljava/lang/String; = "alpha"

.field public static final FILE_NAME:Ljava/lang/String; = "MiAdBlacklistConfig"

.field public static final KEY_AB:Ljava/lang/String; = "ab"

.field public static final KEY_AB_BANNER:Ljava/lang/String; = "abb"

.field public static final KEY_AB_INTERSTITIAL:Ljava/lang/String; = "abi"

.field public static final KEY_AB_REWARDED_VIDEO:Ljava/lang/String; = "abr"

.field public static final KEY_APP:Ljava/lang/String; = "app"

.field public static final KEY_BM:Ljava/lang/String; = "bm"

.field public static final KEY_CACHETIME:Ljava/lang/String; = "cacheTime"

.field public static final KEY_CM:Ljava/lang/String; = "cm"

.field public static final KEY_CT:Ljava/lang/String; = "ct"

.field public static final KEY_FB:Ljava/lang/String; = "fb"

.field public static final KEY_FB_B:Ljava/lang/String; = "fb_b"

.field public static final KEY_FB_BANNER:Ljava/lang/String; = "fbb"

.field public static final KEY_FB_H:Ljava/lang/String; = "fb_h"

.field public static final KEY_FB_INSTREAM:Ljava/lang/String; = "fbis"

.field public static final KEY_FB_INTERSTITIAL:Ljava/lang/String; = "fbi"

.field public static final KEY_FB_L:Ljava/lang/String; = "fb_l"

.field public static final KEY_FB_REWARDED_VIDEO:Ljava/lang/String; = "fbr"

.field public static final KEY_GOOGLE_INSTREAM:Ljava/lang/String; = "gis"

.field public static final KEY_KEYWORDS:Ljava/lang/String; = "keywords"

.field public static final KEY_LASTMODIFIED:Ljava/lang/String; = "lastmodified"

.field public static final KEY_MESSAGE:Ljava/lang/String; = "message"

.field public static final KEY_MI:Ljava/lang/String; = "mi"

.field public static final KEY_MI_BANNER:Ljava/lang/String; = "mib"

.field public static final KEY_MT:Ljava/lang/String; = "mt"

.field public static final KEY_MV:Ljava/lang/String; = "mv"

.field public static final KEY_REQUEST_APPKEY:Ljava/lang/String; = "appKey"

.field public static final KEY_REQUEST_CLIENTINFO:Ljava/lang/String; = "clientInfo"

.field public static final KEY_REQUEST_VERSION:Ljava/lang/String; = "version"

.field public static final KEY_STATUS:Ljava/lang/String; = "status"

.field public static final KEY_VERSIONCODE:Ljava/lang/String; = "version"

.field public static final ONE_HOUR:J = 0x36ee80L

.field public static final ONE_MINUTE:J = 0xea60L

.field public static final ONE_SECOND:J = 0x3e8L

.field public static final TAG:Ljava/lang/String; = "MIADSDK"

.field public static final VALUE_APP_KEY:Ljava/lang/String; = "MiAdSdk_i18n"

.field public static final VERSION:I = 0x1d524


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "1"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/miglobaladsdk/Const;->CONFIG_TYPE_DSP:[Ljava/lang/String;

    const-string v0, "2"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/miglobaladsdk/Const;->CONFIG_TYPE_BLACKLIST:[Ljava/lang/String;

    const-string v0, "3"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/miglobaladsdk/Const;->CONFIG_TYPE_REPORT:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
