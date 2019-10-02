.class public Lcom/miui/video/framework/miui/code/MiMarketCode;
.super Ljava/lang/Object;
.source "MiMarketCode.java"


# static fields
.field public static final ACTION_MARKET_CANCEL:Ljava/lang/String; = "com.xiaomi.market.DOWNLOAD_CANCEL"

.field public static final ACTION_MARKET_DOWNLOAD:Ljava/lang/String; = "com.xiaomi.market.service.AppDownloadService"

.field public static final ACTION_MARKET_DOWNLOAD_COMPLETE:Ljava/lang/String; = "android.intent.action.DOWNLOAD_COMPLETE"

.field public static final ACTION_MARKET_INSTALL_RESULT:Ljava/lang/String; = "com.xiaomi.market.DOWNLOAD_INSTALL_RESULT"

.field public static final ACTION_MARKET_PAUSE:Ljava/lang/String; = "com.xiaomi.market.DOWNLOAD_PAUSE"

.field public static final ACTION_MARKET_RESUME:Ljava/lang/String; = "com.xiaomi.market.DOWNLOAD_RESUME"

.field public static final APPID:Ljava/lang/String; = "appId"

.field public static final APPSTOREFEEDBACKPARAM_APPUPDATE:Ljava/lang/String; = "appstoreFeedbackParam_appupdate"

.field public static final APPUPDATE:Ljava/lang/String; = "APPUPDATE"

.field public static final CODE_ALREADY_NEW:I = -0x5

.field public static final CODE_CTA_REFUSE:I = -0x6

.field public static final CODE_DENIED:I = -0x4

.field public static final CODE_DOWNLOADING:I = 0x5

.field public static final CODE_DOWNLOAD_FAIL:I = -0x2

.field public static final CODE_DOWNLOAD_START:I = 0x1

.field public static final CODE_DOWNLOAD_SUCCESS:I = 0x2

.field public static final CODE_EXISTS:I = -0x1

.field public static final CODE_INSTALL_FAIL:I = -0x3

.field public static final CODE_INSTALL_START:I = 0x3

.field public static final CODE_INSTALL_SUCCESS:I = 0x4

.field public static final CODE_NO_APK_PATH:I = -0x66

.field public static final CODE_NO_SERVICE:I = -0x65

.field public static final CODE_UNKNOW:I = 0x0

.field public static final EXTRA_ERROR_CODE:Ljava/lang/String; = "errorCode"

.field public static final EXTRA_FAIL_REASON:Ljava/lang/String; = "reason"

.field public static final EXTRA_QUERY_PARAMS:Ljava/lang/String; = "extra_query_params"

.field public static final EXTRA_STATE:Ljava/lang/String; = "status"

.field public static final FEEDBACKPARAM_PLUGIN:Ljava/lang/String; = "appstoreFeedbackParam_plugin"

.field public static final FORCE_UPDATE:Ljava/lang/String; = "marketClientControlParam_force_update"

.field public static final HIDE_DOWNLOAD:Ljava/lang/String; = "marketClientControlParam_hide_download"

.field public static final LOG_DOWNLOAD_FAIL:Ljava/lang/String; = "download_fail_"

.field public static final LOG_DOWNLOAD_FAILED_ON:Ljava/lang/String; = "download_failed_on"

.field public static final LOG_DOWNLOAD_INSTALL:Ljava/lang/String; = "download_install"

.field public static final LOG_DOWNLOAD_SUCCESS:Ljava/lang/String; = "download_success"

.field public static final LOG_INSTALL_FAIL:Ljava/lang/String; = "install_fail_"

.field public static final LOG_INSTALL_FAILED_ON:Ljava/lang/String; = "install_failed_on"

.field public static final LOG_INSTALL_SUCCESS:Ljava/lang/String; = "install_success"

.field public static final LOG_ISAPPATFOREGROUND:Ljava/lang/String; = "isAppAtForeground"

.field public static final LOG_REQUEST_DOWNLOAD:Ljava/lang/String; = "request_download"

.field public static final MARKET_CODE:I = 0x1d3684

.field public static final MIMARKET_ERROR:I = -0xc9

.field public static final MIMARKET_SILENCE_INSTALL_VERSION:I

.field public static final PACKAGENAME:Ljava/lang/String; = "packageName"

.field public static final PROGRESS:Ljava/lang/String; = "progress"

.field public static final PROGRESS_STATUS_PAUSED:I = -0x3

.field public static final REF:Ljava/lang/String; = "ref"

.field public static final SENDERPACKAGENAME:Ljava/lang/String; = "senderPackageName"

.field public static final SHOW_CTA:Ljava/lang/String; = "show_cta"

.field public static XIAOMI_MARKET:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/miui/video/framework/miui/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_0

    const v0, 0x1d3684

    goto :goto_0

    :cond_0
    const v0, 0x1d34f7

    :goto_0
    sput v0, Lcom/miui/video/framework/miui/code/MiMarketCode;->MIMARKET_SILENCE_INSTALL_VERSION:I

    sget-boolean v0, Lcom/miui/video/framework/miui/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_1

    const-string v0, "com.xiaomi.mipicks"

    goto :goto_1

    :cond_1
    const-string v0, "com.xiaomi.market"

    :goto_1
    sput-object v0, Lcom/miui/video/framework/miui/code/MiMarketCode;->XIAOMI_MARKET:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
