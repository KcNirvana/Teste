.class public Lcom/miui/msa/internal/adjump/AdJumpHandlerUtils;
.super Ljava/lang/Object;
.source "AdJumpHandlerUtils.java"


# static fields
.field public static final JUMP_302_MODE_DEFAULT:I = 0x0

.field public static final JUMP_302_MODE_HTTPURLCONNECTION:I = 0x4

.field public static final JUMP_302_MODE_OKHTTP:I = 0x1

.field public static final JUMP_302_MODE_PARALLEL_HTTPURLCONNECTION:I = 0x5

.field public static final JUMP_302_MODE_PARALLEL_WEBVIEW:I = 0x3

.field public static final JUMP_302_MODE_WEBVIEW:I = 0x2

.field public static final JUMP_GP:I = 0x9

.field public static final JUMP_H5:I = 0x1

.field public static final JUMP_HYBRID:I = 0xa

.field public static final JUMP_MIMARKET:I = 0x8

.field public static final MARKET_PACKAGE_NAME_GP:Ljava/lang/String; = "com.android.vending"

.field public static final MARKET_PACKAGE_NAME_HYBRID:Ljava/lang/String; = "com.miui.hybrid"

.field public static final MARKET_PACKAGE_NAME_MI:Ljava/lang/String; = "com.xiaomi.market"

.field public static final MARKET_PACKAGE_NAME_MI_GLOBAL:Ljava/lang/String; = "com.xiaomi.mipicks"

.field private static final MIMARKET_DOWNLOAD_SERVICE:Ljava/lang/String; = "com.xiaomi.market.service.AppDownloadInstallService"

.field private static final MIMARKET_MODEL_DEFAULT:I = 0x0

.field private static final MIMARKET_MODEL_MINI_CARD:I = 0x1

.field private static final MIMARKET_MODEL_SILENT_INSTALL:I = 0x2

.field private static final MI_DOWNLOAD_PACKAGE_NAME:Ljava/lang/String; = "com.android.providers.downloads"

.field private static final TAG:Ljava/lang/String; = "AdJumpHandlerUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;Ljava/lang/String;Lcom/miui/msa/internal/adjump/JumpControlInfo;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/miui/msa/internal/adjump/AdJumpHandlerUtils;->handleMiMarketMode(Landroid/content/Context;Ljava/lang/String;Lcom/miui/msa/internal/adjump/JumpControlInfo;)Z

    move-result p0

    return p0
.end method

.method private static avoidOnMainThread()V
    .locals 2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Should not run on main thread!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getApplicationContext(Landroid/content/Context;)Landroid/content/Context;
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    return-object p0

    :cond_0
    return-object p0
.end method

.method private static handleGooglePlay(Landroid/content/Context;Lcom/miui/msa/internal/adjump/AdInfoBean;Lcom/miui/msa/internal/adjump/JumpControlInfo;)Z
    .locals 2

    const-string v0, "AdJumpHandlerUtils"

    const-string v1, "handleGooglePlay"

    invoke-static {v0, v1}, Lcom/miui/msa/internal/adjump/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/miui/msa/internal/adjump/AdInfoBean;->getLandingPageUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string p0, "AdJumpHandlerUtils"

    const-string p1, "handleGooglePlay url is null!"

    invoke-static {p0, p1}, Lcom/miui/msa/internal/adjump/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/miui/msa/internal/adjump/JumpControlInfo;->getJumpMode()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    return v1

    :pswitch_0
    invoke-static {p0, p1, p2}, Lcom/miui/msa/internal/adjump/AdJumpHandlerUtils;->jumpGooglePlayParallelWithHttpUrlConnection(Landroid/content/Context;Lcom/miui/msa/internal/adjump/AdInfoBean;Lcom/miui/msa/internal/adjump/JumpControlInfo;)Z

    move-result p0

    return p0

    :pswitch_1
    invoke-static {p0, p1, p2}, Lcom/miui/msa/internal/adjump/AdJumpHandlerUtils;->jumpGooglePlayParallelWithWebView(Landroid/content/Context;Lcom/miui/msa/internal/adjump/AdInfoBean;Lcom/miui/msa/internal/adjump/JumpControlInfo;)Z

    move-result p0

    return p0

    :pswitch_2
    invoke-static {p0}, Lcom/miui/msa/internal/adjump/Utils;->checkIsSystemUid(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "AdJumpHandlerUtils"

    const-string v1, "System Uid can not use WebView !"

    invoke-static {v0, v1}, Lcom/miui/msa/internal/adjump/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, p1, p2}, Lcom/miui/msa/internal/adjump/AdJumpHandlerUtils;->jumpBrowser(Landroid/content/Context;Lcom/miui/msa/internal/adjump/AdInfoBean;Lcom/miui/msa/internal/adjump/JumpControlInfo;)Z

    move-result p0

    return p0

    :cond_2
    invoke-static {p2}, Lcom/miui/msa/internal/adjump/JumpControlInfo;->toJson(Lcom/miui/msa/internal/adjump/JumpControlInfo;)Lorg/json/JSONObject;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/miui/msa/internal/adjump/FakeGooglePlayActivity;->start(Landroid/content/Context;Lcom/miui/msa/internal/adjump/AdInfoBean;Lorg/json/JSONObject;)Z

    move-result p0

    return p0

    :pswitch_3
    invoke-static {p2}, Lcom/miui/msa/internal/adjump/JumpControlInfo;->toJson(Lcom/miui/msa/internal/adjump/JumpControlInfo;)Lorg/json/JSONObject;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/miui/msa/internal/adjump/FakeGooglePlayActivity;->start(Landroid/content/Context;Lcom/miui/msa/internal/adjump/AdInfoBean;Lorg/json/JSONObject;)Z

    move-result p0

    return p0

    :pswitch_4
    invoke-static {p0, p1, p2}, Lcom/miui/msa/internal/adjump/AdJumpHandlerUtils;->jumpBrowser(Landroid/content/Context;Lcom/miui/msa/internal/adjump/AdInfoBean;Lcom/miui/msa/internal/adjump/JumpControlInfo;)Z

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method private static handleHybrid(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    const-string v0, "com.miui.hybrid"

    invoke-static {p0, p1, v0}, Lcom/miui/msa/internal/adjump/AdJumpHandlerUtils;->openMarket(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static handleJumpAction(Landroid/content/Context;Lcom/miui/msa/internal/adjump/AdInfoBean;Lorg/json/JSONObject;)Z
    .locals 5

    const-string v0, "AdJumpHandlerUtils"

    const-string v1, "handleJumpAction"

    invoke-static {v0, v1}, Lcom/miui/msa/internal/adjump/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/miui/msa/internal/adjump/AdJumpHandlerUtils;->avoidOnMainThread()V

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/miui/msa/internal/adjump/AdInfoBean;->getLandingPageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_3

    :cond_0
    const/4 v1, 0x0

    if-eqz p2, :cond_1

    :try_start_0
    invoke-static {p2}, Lcom/miui/msa/internal/adjump/AdJumpHandlerUtils;->parseJson(Lorg/json/JSONObject;)Lcom/miui/msa/internal/adjump/JumpControlInfo;

    move-result-object v1

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/miui/msa/internal/adjump/AdInfoBean;->getTargetType()I

    move-result p2

    invoke-static {p0}, Lcom/miui/msa/internal/adjump/AdJumpHandlerUtils;->getApplicationContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    const-string v2, "AdJumpHandlerUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleJumpAction->targetType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/miui/msa/internal/adjump/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    if-eq p2, v2, :cond_3

    packed-switch p2, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    invoke-virtual {p1}, Lcom/miui/msa/internal/adjump/AdInfoBean;->getLandingPageUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/miui/msa/internal/adjump/AdJumpHandlerUtils;->handleHybrid(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0

    :pswitch_1
    invoke-static {p0, p1, v1}, Lcom/miui/msa/internal/adjump/AdJumpHandlerUtils;->handleGooglePlay(Landroid/content/Context;Lcom/miui/msa/internal/adjump/AdInfoBean;Lcom/miui/msa/internal/adjump/JumpControlInfo;)Z

    move-result p0

    return p0

    :pswitch_2
    if-nez v1, :cond_2

    const-string p0, "AdJumpHandlerUtils"

    const-string p1, "When targetType is mi market haven\'t jumpControl info error!"

    invoke-static {p0, p1}, Lcom/miui/msa/internal/adjump/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_2
    invoke-static {p0, p1, v1}, Lcom/miui/msa/internal/adjump/AdJumpHandlerUtils;->handleMiMarketJump(Landroid/content/Context;Lcom/miui/msa/internal/adjump/AdInfoBean;Lcom/miui/msa/internal/adjump/JumpControlInfo;)Z

    move-result p0

    return p0

    :cond_3
    invoke-static {p0, p1, v1}, Lcom/miui/msa/internal/adjump/AdJumpHandlerUtils;->jumpBrowser(Landroid/content/Context;Lcom/miui/msa/internal/adjump/AdInfoBean;Lcom/miui/msa/internal/adjump/JumpControlInfo;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :goto_1
    const-string p1, "AdJumpHandlerUtils"

    const-string p2, "handleJumpAction error "

    invoke-static {p1, p2, p0}, Lcom/miui/msa/internal/adjump/MLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return v0

    :cond_4
    :goto_3
    const-string p0, "AdJumpHandlerUtils"

    const-string p1, "handleJumpAction error"

    invoke-static {p0, p1}, Lcom/miui/msa/internal/adjump/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static handleMiMarketJump(Landroid/content/Context;Lcom/miui/msa/internal/adjump/AdInfoBean;Lcom/miui/msa/internal/adjump/JumpControlInfo;)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/miui/msa/internal/adjump/JumpControlInfo;->getJumpMode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "AdJumpHandlerUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "jumpMode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/miui/msa/internal/adjump/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_1

    packed-switch v1, :pswitch_data_0

    return v0

    :pswitch_0
    invoke-static {p0, p1, p2}, Lcom/miui/msa/internal/adjump/AdJumpHandlerUtils;->jumpMiMarketParallelWithHttpUrlConnection(Landroid/content/Context;Lcom/miui/msa/internal/adjump/AdInfoBean;Lcom/miui/msa/internal/adjump/JumpControlInfo;)Z

    move-result p0

    return p0

    :pswitch_1
    invoke-static {p0, p1, p2}, Lcom/miui/msa/internal/adjump/AdJumpHandlerUtils;->jumpMiMarket302WithHttpUrlConnection(Landroid/content/Context;Lcom/miui/msa/internal/adjump/AdInfoBean;Lcom/miui/msa/internal/adjump/JumpControlInfo;)Z

    move-result p0

    return p0

    :pswitch_2
    invoke-static {p0, p1, p2}, Lcom/miui/msa/internal/adjump/AdJumpHandlerUtils;->jumpMiMarketParallelWithWebView(Landroid/content/Context;Lcom/miui/msa/internal/adjump/AdInfoBean;Lcom/miui/msa/internal/adjump/JumpControlInfo;)Z

    move-result p0

    return p0

    :pswitch_3
    invoke-static {p0, p1, p2}, Lcom/miui/msa/internal/adjump/AdJumpHandlerUtils;->jumpMiMarket302WithWebView(Landroid/content/Context;Lcom/miui/msa/internal/adjump/AdInfoBean;Lcom/miui/msa/internal/adjump/JumpControlInfo;)Z

    move-result p0

    return p0

    :cond_1
    invoke-static {p0, p1, p2}, Lcom/miui/msa/internal/adjump/AdJumpHandlerUtils;->jumpBrowser(Landroid/content/Context;Lcom/miui/msa/internal/adjump/AdInfoBean;Lcom/miui/msa/internal/adjump/JumpControlInfo;)Z

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static handleMiMarketMode(Landroid/content/Context;Ljava/lang/String;Lcom/miui/msa/internal/adjump/JumpControlInfo;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/miui/msa/internal/adjump/JumpControlInfo;->getMode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    const-string p0, "AdJumpHandlerUtils"

    const-string p1, "No support the mi market mode!"

    invoke-static {p0, p1}, Lcom/miui/msa/internal/adjump/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :pswitch_0
    invoke-static {p0, p1, p2}, Lcom/miui/msa/internal/adjump/AdJumpHandlerUtils;->silentDownloadApp(Landroid/content/Context;Ljava/lang/String;Lcom/miui/msa/internal/adjump/JumpControlInfo;)Z

    move-result p0

    return p0

    :pswitch_1
    invoke-static {p0, p1, p2}, Lcom/miui/msa/internal/adjump/AdJumpHandlerUtils;->openMiMarketMinicard(Landroid/content/Context;Ljava/lang/String;Lcom/miui/msa/internal/adjump/JumpControlInfo;)Z

    move-result p0

    return p0

    :pswitch_2
    invoke-static {p0, p1, p2}, Lcom/miui/msa/internal/adjump/AdJumpHandlerUtils;->openMiMarketDefault(Landroid/content/Context;Ljava/lang/String;Lcom/miui/msa/internal/adjump/JumpControlInfo;)Z

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static handleWithCallee(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1, v0}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-static {p0, p1}, Lcom/miui/msa/internal/adjump/Utils;->canDeepLinkToGooglePlay(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string p1, "com.android.vending"

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    :cond_0
    invoke-static {p0, p1}, Lcom/miui/msa/internal/adjump/Utils;->canDeepLinkToMiMarket(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/miui/msa/internal/adjump/AdJumpHandlerUtils;->isInternationalBuild()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "com.xiaomi.mipicks"

    goto :goto_0

    :cond_1
    const-string p1, "com.xiaomi.market"

    :goto_0
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    :cond_2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-static {p0, p2}, Lcom/miui/msa/internal/adjump/Utils;->getVersionCode(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_3

    invoke-virtual {v1, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :cond_3
    :goto_1
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    const-string p1, "AdJumpHandlerUtils"

    const-string p2, "handleWithCallee error "

    invoke-static {p1, p2, p0}, Lcom/miui/msa/internal/adjump/MLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v0
.end method

.method public static handlerTestUrlAction(Landroid/content/Context;Lcom/miui/msa/internal/adjump/AdInfoBean;Lcom/miui/msa/internal/adjump/JumpControlInfo;Lcom/miui/msa/internal/adjump/UrlWebViewParser$TrackParsedUrlListener;)V
    .locals 9

    const-string v0, "AdJumpHandlerUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handlerTestUrlAction: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/miui/msa/internal/adjump/AdInfoBean;->getLandingPageUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/msa/internal/adjump/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/miui/msa/internal/adjump/AdJumpHandlerUtils$3;

    const-string v3, "AdJumpHandlerUtils"

    const-string v4, "handlerTestUrlAction"

    move-object v2, v1

    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    invoke-direct/range {v2 .. v8}, Lcom/miui/msa/internal/adjump/AdJumpHandlerUtils$3;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/miui/msa/internal/adjump/AdInfoBean;Lcom/miui/msa/internal/adjump/JumpControlInfo;Lcom/miui/msa/internal/adjump/UrlWebViewParser$TrackParsedUrlListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static isInternationalBuild()Z
    .locals 3

    :try_start_0
    const-string v0, "miui.os.Build"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "IS_INTERNATIONAL_BUILD"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "AdJumpHandlerUtils"

    const-string v2, "isInternationalBuild error "

    invoke-static {v1, v2, v0}, Lcom/miui/msa/internal/adjump/MLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static isSupported(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/miui/msa/internal/adjump/AdJumpHandlerUtils;->isInternationalBuild()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string p1, "com.xiaomi.mipicks"

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string p1, "com.xiaomi.market"

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_1

    const/4 p1, 0x1

    :cond_1
    return p1
.end method

.method private static jumpBrowser(Landroid/content/Context;Lcom/miui/msa/internal/adjump/AdInfoBean;Lcom/miui/msa/internal/adjump/JumpControlInfo;)Z
    .locals 2

    const-string v0, "AdJumpHandlerUtils"

    const-string v1, "jumpBrowser"

    invoke-static {v0, v1}, Lcom/miui/msa/internal/adjump/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/miui/msa/internal/adjump/JumpControlInfo;->getCallee()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    move-object p2, v0

    :goto_0
    invoke-virtual {p1}, Lcom/miui/msa/internal/adjump/AdInfoBean;->getLandingPageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, p2}, Lcom/miui/msa/internal/adjump/AdJumpHandlerUtils;->handleWithCallee(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    invoke-virtual {p1}, Lcom/miui/msa/internal/adjump/AdInfoBean;->getLandingPageUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v0}, Lcom/miui/msa/internal/adjump/AdJumpHandlerUtils;->handleWithCallee(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    :cond_1
    return v1
.end method

.method private static jumpGooglePlayParallelWithHttpUrlConnection(Landroid/content/Context;Lcom/miui/msa/internal/adjump/AdInfoBean;Lcom/miui/msa/internal/adjump/JumpControlInfo;)Z
    .locals 8

    const-string v0, "AdJumpHandlerUtils"

    const-string v1, "jumpGooglePlayParallelWithHttpUrlConnection"

    invoke-static {v0, v1}, Lcom/miui/msa/internal/adjump/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/miui/msa/internal/adjump/TaskRunner;->CACHED_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    new-instance v7, Lcom/miui/msa/internal/adjump/AdJumpHandlerUtils$1;

    const-string v2, "AdJumpHandlerUtils"

    const-string v3, "jump302Parallel use httpUrlConnection"

    move-object v1, v7

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/miui/msa/internal/adjump/AdJumpHandlerUtils$1;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/miui/msa/internal/adjump/AdInfoBean;Lcom/miui/msa/internal/adjump/JumpControlInfo;)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Lcom/miui/msa/internal/adjump/AdInfoBean;->getLandingPageUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/miui/msa/internal/adjump/JumpControlInfo;->getCallee()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/miui/msa/internal/adjump/AdJumpHandlerUtils;->handleWithCallee(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static jumpGooglePlayParallelWithWebView(Landroid/content/Context;Lcom/miui/msa/internal/adjump/AdInfoBean;Lcom/miui/msa/internal/adjump/JumpControlInfo;)Z
    .locals 2

    invoke-static {p0}, Lcom/miui/msa/internal/adjump/Utils;->checkIsSystemUid(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "AdJumpHandlerUtils"

    const-string v1, "System Uid can not use WebView !"

    invoke-static {v0, v1}, Lcom/miui/msa/internal/adjump/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, p1, p2}, Lcom/miui/msa/internal/adjump/AdJumpHandlerUtils;->jumpBrowser(Landroid/content/Context;Lcom/miui/msa/internal/adjump/AdInfoBean;Lcom/miui/msa/internal/adjump/JumpControlInfo;)Z

    move-result p0

    return p0

    :cond_0
    invoke-static {p0, p1, p2}, Lcom/miui/msa/internal/adjump/AdJumpHandlerUtils;->jumpParallelWithWebViewInBackground(Landroid/content/Context;Lcom/miui/msa/internal/adjump/AdInfoBean;Lcom/miui/msa/internal/adjump/JumpControlInfo;)V

    invoke-virtual {p1}, Lcom/miui/msa/internal/adjump/AdInfoBean;->getLandingPageUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/miui/msa/internal/adjump/JumpControlInfo;->getCallee()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/miui/msa/internal/adjump/AdJumpHandlerUtils;->handleWithCallee(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static jumpMiMarket302WithHttpUrlConnection(Landroid/content/Context;Lcom/miui/msa/internal/adjump/AdInfoBean;Lcom/miui/msa/internal/adjump/JumpControlInfo;)Z
    .locals 8

    const-string v0, "AdJumpHandlerUtils"

    const-string v1, "jumpMiMarket302WithHttpUrlConnection"

    invoke-static {v0, v1}, Lcom/miui/msa/internal/adjump/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/miui/msa/internal/adjump/TaskRunner;->CACHED_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    new-instance v7, Lcom/miui/msa/internal/adjump/AdJumpHandlerUtils$6;

    const-string v2, "AdJumpHandlerUtils"

    const-string v3, "jump302 use httpUrlConnection"

    move-object v1, v7

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/miui/msa/internal/adjump/AdJumpHandlerUtils$6;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/miui/msa/internal/adjump/AdInfoBean;Lcom/miui/msa/internal/adjump/JumpControlInfo;)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    const/4 p0, 0x1

    return p0
.end method

.method private static jumpMiMarket302WithWebView(Landroid/content/Context;Lcom/miui/msa/internal/adjump/AdInfoBean;Lcom/miui/msa/internal/adjump/JumpControlInfo;)Z
    .locals 8

    invoke-static {p0}, Lcom/miui/msa/internal/adjump/Utils;->checkIsSystemUid(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "AdJumpHandlerUtils"

    const-string v1, "System Uid can not use WebView !"

    invoke-static {v0, v1}, Lcom/miui/msa/internal/adjump/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, p1, p2}, Lcom/miui/msa/internal/adjump/AdJumpHandlerUtils;->jumpBrowser(Landroid/content/Context;Lcom/miui/msa/internal/adjump/AdInfoBean;Lcom/miui/msa/internal/adjump/JumpControlInfo;)Z

    move-result p0

    return p0

    :cond_0
    :try_start_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/miui/msa/internal/adjump/AdJumpHandlerUtils$5;

    const-string v3, "AdJumpHandlerUtils"

    const-string v4, "handle MiMarket 302 Jump"

    move-object v2, v1

    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    invoke-direct/range {v2 .. v7}, Lcom/miui/msa/internal/adjump/AdJumpHandlerUtils$5;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/miui/msa/internal/adjump/AdInfoBean;Lcom/miui/msa/internal/adjump/JumpControlInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    const-string p1, "AdJumpHandlerUtils"

    const-string p2, "jumpParallel e : "

    invoke-static {p1, p2, p0}, Lcom/miui/msa/internal/adjump/MLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return p0
.end method

.method private static jumpMiMarketParallelWithHttpUrlConnection(Landroid/content/Context;Lcom/miui/msa/internal/adjump/AdInfoBean;Lcom/miui/msa/internal/adjump/JumpControlInfo;)Z
    .locals 8

    sget-object v0, Lcom/miui/msa/internal/adjump/TaskRunner;->CACHED_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    new-instance v7, Lcom/miui/msa/internal/adjump/AdJumpHandlerUtils$2;

    const-string v2, "AdJumpHandlerUtils"

    const-string v3, "jump302 use httpUrlConnection"

    move-object v1, v7

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/miui/msa/internal/adjump/AdJumpHandlerUtils$2;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/miui/msa/internal/adjump/AdInfoBean;Lcom/miui/msa/internal/adjump/JumpControlInfo;)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Lcom/miui/msa/internal/adjump/AdInfoBean;->getLandingPageUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcom/miui/msa/internal/adjump/AdJumpHandlerUtils;->handleMiMarketMode(Landroid/content/Context;Ljava/lang/String;Lcom/miui/msa/internal/adjump/JumpControlInfo;)Z

    move-result p0

    return p0
.end method

.method private static jumpMiMarketParallelWithWebView(Landroid/content/Context;Lcom/miui/msa/internal/adjump/AdInfoBean;Lcom/miui/msa/internal/adjump/JumpControlInfo;)Z
    .locals 2

    invoke-static {p0}, Lcom/miui/msa/internal/adjump/Utils;->checkIsSystemUid(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "AdJumpHandlerUtils"

    const-string v1, "System Uid can not use WebView !"

    invoke-static {v0, v1}, Lcom/miui/msa/internal/adjump/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, p1, p2}, Lcom/miui/msa/internal/adjump/AdJumpHandlerUtils;->jumpBrowser(Landroid/content/Context;Lcom/miui/msa/internal/adjump/AdInfoBean;Lcom/miui/msa/internal/adjump/JumpControlInfo;)Z

    move-result p0

    return p0

    :cond_0
    invoke-static {p0, p1, p2}, Lcom/miui/msa/internal/adjump/AdJumpHandlerUtils;->jumpParallelWithWebViewInBackground(Landroid/content/Context;Lcom/miui/msa/internal/adjump/AdInfoBean;Lcom/miui/msa/internal/adjump/JumpControlInfo;)V

    invoke-virtual {p1}, Lcom/miui/msa/internal/adjump/AdInfoBean;->getLandingPageUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcom/miui/msa/internal/adjump/AdJumpHandlerUtils;->handleMiMarketMode(Landroid/content/Context;Ljava/lang/String;Lcom/miui/msa/internal/adjump/JumpControlInfo;)Z

    move-result p0

    return p0
.end method

.method private static jumpParallelWithWebViewInBackground(Landroid/content/Context;Lcom/miui/msa/internal/adjump/AdInfoBean;Lcom/miui/msa/internal/adjump/JumpControlInfo;)V
    .locals 8

    invoke-static {p0}, Lcom/miui/msa/internal/adjump/Utils;->checkIsSystemUid(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "AdJumpHandlerUtils"

    const-string v1, "System Uid can not use WebView !"

    invoke-static {v0, v1}, Lcom/miui/msa/internal/adjump/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, p1, p2}, Lcom/miui/msa/internal/adjump/AdJumpHandlerUtils;->jumpBrowser(Landroid/content/Context;Lcom/miui/msa/internal/adjump/AdInfoBean;Lcom/miui/msa/internal/adjump/JumpControlInfo;)Z

    return-void

    :cond_0
    :try_start_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/miui/msa/internal/adjump/AdJumpHandlerUtils$4;

    const-string v3, "AdJumpHandlerUtils"

    const-string v4, "handle MiMarket parallel Jump"

    move-object v2, v1

    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    invoke-direct/range {v2 .. v7}, Lcom/miui/msa/internal/adjump/AdJumpHandlerUtils$4;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/miui/msa/internal/adjump/AdInfoBean;Lcom/miui/msa/internal/adjump/JumpControlInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "AdJumpHandlerUtils"

    const-string p2, "jumpParallelWithWebViewInBackground e : "

    invoke-static {p1, p2, p0}, Lcom/miui/msa/internal/adjump/MLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private static openGooglePlayByStore(Landroid/content/Context;Ljava/lang/String;Lcom/miui/msa/internal/adjump/JumpControlInfo;)Z
    .locals 1

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/miui/msa/internal/adjump/JumpControlInfo;->getCallee()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lcom/miui/msa/internal/adjump/JumpControlInfo;->getCallee()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/miui/msa/internal/adjump/AdJumpHandlerUtils;->openMarket(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    const-string p2, "com.android.vending"

    invoke-static {p0, p1, p2}, Lcom/miui/msa/internal/adjump/AdJumpHandlerUtils;->openMarket(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static openMarket(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    :try_start_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    const-string p1, "AdJumpHandlerUtils"

    const-string p2, "openMarket exception"

    invoke-static {p1, p2, p0}, Lcom/miui/msa/internal/adjump/MLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return p0
.end method

.method private static openMiMarketDefault(Landroid/content/Context;Ljava/lang/String;Lcom/miui/msa/internal/adjump/JumpControlInfo;)Z
    .locals 1

    invoke-virtual {p2}, Lcom/miui/msa/internal/adjump/JumpControlInfo;->getCallee()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p2, "com.xiaomi.mipicks"

    invoke-static {p0, p1, p2}, Lcom/miui/msa/internal/adjump/AdJumpHandlerUtils;->openMarket(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p2}, Lcom/miui/msa/internal/adjump/JumpControlInfo;->getCallee()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/miui/msa/internal/adjump/AdJumpHandlerUtils;->openMarket(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static openMiMarketMinicard(Landroid/content/Context;Ljava/lang/String;Lcom/miui/msa/internal/adjump/JumpControlInfo;)Z
    .locals 1

    invoke-static {p0, p1}, Lcom/miui/msa/internal/adjump/AdJumpHandlerUtils;->isSupported(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "AdJumpHandlerUtils"

    const-string p1, "Mi market no support minicard!"

    invoke-static {p0, p1}, Lcom/miui/msa/internal/adjump/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {p0, p1, p2}, Lcom/miui/msa/internal/adjump/AdJumpHandlerUtils;->openMiMarketDefault(Landroid/content/Context;Ljava/lang/String;Lcom/miui/msa/internal/adjump/JumpControlInfo;)Z

    move-result p0

    return p0
.end method

.method private static parseJson(Lorg/json/JSONObject;)Lcom/miui/msa/internal/adjump/JumpControlInfo;
    .locals 0

    invoke-static {p0}, Lcom/miui/msa/internal/adjump/JumpControlInfo;->parse(Lorg/json/JSONObject;)Lcom/miui/msa/internal/adjump/JumpControlInfo;

    move-result-object p0

    return-object p0
.end method

.method private static parseUrl(Ljava/lang/String;)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "AdJumpHandlerUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parseUrl->url="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/msa/internal/adjump/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p0}, Lcom/miui/msa/internal/adjump/AdJumpHandlerUtils;->truncateUrlPage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v0

    :cond_1
    const-string v1, "[&]"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_4

    aget-object v4, p0, v3

    const-string v5, "[=]"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x1

    if-le v5, v6, :cond_2

    aget-object v5, v4, v2

    aget-object v4, v4, v6

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    aget-object v5, v4, v2

    const-string v6, ""

    if-eq v5, v6, :cond_3

    aget-object v4, v4, v2

    const-string v5, ""

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method private static silentDownloadApp(Landroid/content/Context;Ljava/lang/String;Lcom/miui/msa/internal/adjump/JumpControlInfo;)Z
    .locals 8

    const-string v0, "AdJumpHandlerUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "silentDownloadApp->url="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/msa/internal/adjump/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/miui/msa/internal/adjump/AdJumpHandlerUtils;->parseUrl(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string p0, "AdJumpHandlerUtils"

    const-string p1, "silentDownloadApp->slientDownloadApp params is error!"

    invoke-static {p0, p1}, Lcom/miui/msa/internal/adjump/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_0
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.xiaomi.market.service.AppDownloadInstallService"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "id"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "packageName"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_1
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "AdJumpHandlerUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "silentDownloadApp->key="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "&value="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/miui/msa/internal/adjump/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_2
    const-string p1, "senderPackageName"

    const-string v2, "com.android.providers.downloads"

    invoke-virtual {v1, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "show_cta"

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p2}, Lcom/miui/msa/internal/adjump/JumpControlInfo;->getCallee()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "com.xiaomi.mipicks"

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    :cond_3
    invoke-virtual {p2}, Lcom/miui/msa/internal/adjump/JumpControlInfo;->getCallee()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :goto_1
    invoke-virtual {p0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    move-exception p0

    const-string p1, "AdJumpHandlerUtils"

    const-string p2, "silentDownloadApp exception"

    invoke-static {p1, p2, p0}, Lcom/miui/msa/internal/adjump/MLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v0
.end method

.method private static truncateUrlPage(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const-string v0, "[?]"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    const/4 v1, 0x1

    if-le p0, v1, :cond_0

    array-length p0, v0

    if-le p0, v1, :cond_0

    aget-object p0, v0, v1

    if-eqz p0, :cond_0

    aget-object p0, v0, v1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method
