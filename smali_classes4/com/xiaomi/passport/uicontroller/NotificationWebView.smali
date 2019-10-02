.class public Lcom/xiaomi/passport/uicontroller/NotificationWebView;
.super Landroid/webkit/WebView;
.source "NotificationWebView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/passport/uicontroller/NotificationWebView$Builder;,
        Lcom/xiaomi/passport/uicontroller/NotificationWebView$ExternalParams;
    }
.end annotation


# static fields
.field private static final EXTRA_NEED_REMOVE_ALL_COOKIES:Ljava/lang/String; = "need_remove_all_cookies"

.field private static final TAG:Ljava/lang/String; = "NotificationWebView"


# instance fields
.field private final cookies:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final needRemoveAllCookie:Z

.field private final notificationEndListener:Lcom/xiaomi/passport/uicontroller/NotificationWebViewClient$NotificationEndListener;

.field private final notificationUrl:Ljava/lang/String;

.field private final passToken:Ljava/lang/String;

.field private final serverTimeAlignedListener:Lcom/xiaomi/accountsdk/utils/ServerTimeUtil$ServerTimeAlignedListener;

.field private final userId:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/xiaomi/passport/uicontroller/NotificationWebViewClient$NotificationEndListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/xiaomi/passport/uicontroller/NotificationWebViewClient$NotificationEndListener;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/xiaomi/accountsdk/utils/WebViewFidNonceUtil$ServerTimeAlignedListenerImpl;

    invoke-direct {v0, p0}, Lcom/xiaomi/accountsdk/utils/WebViewFidNonceUtil$ServerTimeAlignedListenerImpl;-><init>(Landroid/webkit/WebView;)V

    iput-object v0, p0, Lcom/xiaomi/passport/uicontroller/NotificationWebView;->serverTimeAlignedListener:Lcom/xiaomi/accountsdk/utils/ServerTimeUtil$ServerTimeAlignedListener;

    const-string v0, "notificationUrl should not be empty"

    invoke-static {p2, v0}, Lcom/xiaomi/passport/uicontroller/PreConditions;->checkArgumentNotEmpty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "notificationEndListener should not be null"

    invoke-static {p7, v0}, Lcom/xiaomi/passport/uicontroller/PreConditions;->checkArgumentNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context should not be null"

    invoke-static {p1, v0}, Lcom/xiaomi/passport/uicontroller/PreConditions;->checkArgumentNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/xiaomi/passport/uicontroller/NotificationWebView;->notificationUrl:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/xiaomi/passport/uicontroller/NotificationWebView;->needRemoveAllCookie:Z

    iput-object p7, p0, Lcom/xiaomi/passport/uicontroller/NotificationWebView;->notificationEndListener:Lcom/xiaomi/passport/uicontroller/NotificationWebViewClient$NotificationEndListener;

    iput-object p4, p0, Lcom/xiaomi/passport/uicontroller/NotificationWebView;->userId:Ljava/lang/String;

    iput-object p5, p0, Lcom/xiaomi/passport/uicontroller/NotificationWebView;->passToken:Ljava/lang/String;

    iput-object p6, p0, Lcom/xiaomi/passport/uicontroller/NotificationWebView;->cookies:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/xiaomi/passport/uicontroller/NotificationWebViewClient$NotificationEndListener;Lcom/xiaomi/passport/uicontroller/NotificationWebView$1;)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/xiaomi/passport/uicontroller/NotificationWebView;-><init>(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/xiaomi/passport/uicontroller/NotificationWebViewClient$NotificationEndListener;)V

    return-void
.end method

.method private static appendMIUIProvisionQueryParameter(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p0

    const-string v0, "_device_name"

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v0, "_provision"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static appendPassportUserAgent(Landroid/webkit/WebSettings;)V
    .locals 4

    invoke-virtual {p0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "%s PassportSDK/NotificationWebView/%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    invoke-static {}, Lcom/xiaomi/accountsdk/utils/VersionUtils;->getVersion()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static parseExtraFromIntent(Landroid/content/Intent;)Lcom/xiaomi/passport/uicontroller/NotificationWebView$ExternalParams;
    .locals 5

    const-string v0, "need_remove_all_cookies"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    const-string v1, "notification_url"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "extra_show_skip_login"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    const-string v3, "userId"

    invoke-virtual {p0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "passToken"

    invoke-virtual {p0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v4, Lcom/xiaomi/passport/uicontroller/NotificationWebView$ExternalParams;

    invoke-static {v1, v2}, Lcom/xiaomi/passport/uicontroller/NotificationWebView;->appendMIUIProvisionQueryParameter(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1, v0, v3, p0}, Lcom/xiaomi/passport/uicontroller/NotificationWebView$ExternalParams;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    return-object v4
.end method

.method public static putExtraForNotificationWebView(Landroid/content/Intent;Lcom/xiaomi/passport/uicontroller/NotificationWebView$ExternalParams;)V
    .locals 2

    const-string v0, "notification_url"

    iget-object v1, p1, Lcom/xiaomi/passport/uicontroller/NotificationWebView$ExternalParams;->notificationUrl:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "need_remove_all_cookies"

    iget-boolean p1, p1, Lcom/xiaomi/passport/uicontroller/NotificationWebView$ExternalParams;->needRemoveAllCookies:Z

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-void
.end method

.method private setCookie(Landroid/webkit/CookieManager;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "%s=%s;"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 p2, 0x1

    aput-object p3, v1, p2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    sget-object p3, Lcom/xiaomi/accountsdk/utils/AbstractAccountWebViewSingleCookieUtil;->DOMAIN_URL_SET_COOKIE:Ljava/lang/String;

    invoke-virtual {p1, p3, p2}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private setPassTokenCookie(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/passport/uicontroller/NotificationWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    const-string v1, "userId"

    invoke-direct {p0, v0, v1, p1}, Lcom/xiaomi/passport/uicontroller/NotificationWebView;->setCookie(Landroid/webkit/CookieManager;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "passToken"

    invoke-direct {p0, v0, p1, p2}, Lcom/xiaomi/passport/uicontroller/NotificationWebView;->setCookie(Landroid/webkit/CookieManager;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/CookieSyncManager;->sync()V

    return-void

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public loadNotificationUrl()Z
    .locals 5

    iget-object v0, p0, Lcom/xiaomi/passport/uicontroller/NotificationWebView;->notificationUrl:Ljava/lang/String;

    invoke-static {v0}, Lcom/xiaomi/accountsdk/utils/XMPassportUtil;->buildUrlWithLocaleQueryParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const-string v0, "NotificationWebView"

    const-string v1, "invalid notificationUrl"

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/AccountLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    iget-boolean v1, p0, Lcom/xiaomi/passport/uicontroller/NotificationWebView;->needRemoveAllCookie:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/xiaomi/passport/uicontroller/NotificationWebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/CookieManager;->removeAllCookie()V

    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/passport/uicontroller/NotificationWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setAllowContentAccess(Z)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    invoke-static {v1}, Lcom/xiaomi/passport/uicontroller/NotificationWebView;->appendPassportUserAgent(Landroid/webkit/WebSettings;)V

    new-instance v1, Lcom/xiaomi/passport/uicontroller/NotificationWebViewClient;

    invoke-virtual {p0}, Lcom/xiaomi/passport/uicontroller/NotificationWebView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v4, p0, Lcom/xiaomi/passport/uicontroller/NotificationWebView;->notificationEndListener:Lcom/xiaomi/passport/uicontroller/NotificationWebViewClient$NotificationEndListener;

    invoke-direct {v1, v2, v0, v4}, Lcom/xiaomi/passport/uicontroller/NotificationWebViewClient;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/xiaomi/passport/uicontroller/NotificationWebViewClient$NotificationEndListener;)V

    invoke-virtual {p0, v1}, Lcom/xiaomi/passport/uicontroller/NotificationWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    new-instance v1, Lcom/xiaomi/accountsdk/utils/WebViewDeviceIdUtil;

    invoke-direct {v1}, Lcom/xiaomi/accountsdk/utils/WebViewDeviceIdUtil;-><init>()V

    invoke-virtual {v1, p0}, Lcom/xiaomi/accountsdk/utils/WebViewDeviceIdUtil;->setupDeviceIdForAccountWeb(Landroid/webkit/WebView;)V

    new-instance v1, Lcom/xiaomi/accountsdk/utils/WebViewFidNonceUtil;

    invoke-direct {v1}, Lcom/xiaomi/accountsdk/utils/WebViewFidNonceUtil;-><init>()V

    invoke-virtual {v1, p0}, Lcom/xiaomi/accountsdk/utils/WebViewFidNonceUtil;->setupFidNonceForAccountWeb(Landroid/webkit/WebView;)V

    new-instance v1, Lcom/xiaomi/accountsdk/utils/WebViewUserSpaceIdUtil;

    invoke-direct {v1}, Lcom/xiaomi/accountsdk/utils/WebViewUserSpaceIdUtil;-><init>()V

    invoke-virtual {v1, p0}, Lcom/xiaomi/accountsdk/utils/WebViewUserSpaceIdUtil;->setupUserSpaceIdForAccountWeb(Landroid/webkit/WebView;)V

    new-instance v1, Lcom/xiaomi/accountsdk/utils/WebViewNativeUserAgentUtil;

    invoke-direct {v1}, Lcom/xiaomi/accountsdk/utils/WebViewNativeUserAgentUtil;-><init>()V

    invoke-virtual {v1, p0}, Lcom/xiaomi/accountsdk/utils/WebViewNativeUserAgentUtil;->setupUserAgentForAccountWeb(Landroid/webkit/WebView;)V

    new-instance v1, Lcom/xiaomi/accountsdk/utils/WebViewCookieUtil;

    invoke-direct {v1}, Lcom/xiaomi/accountsdk/utils/WebViewCookieUtil;-><init>()V

    iget-object v2, p0, Lcom/xiaomi/passport/uicontroller/NotificationWebView;->cookies:Ljava/util/Map;

    invoke-virtual {v1, p0, v2}, Lcom/xiaomi/accountsdk/utils/WebViewCookieUtil;->setupCookiesForAccountWeb(Landroid/webkit/WebView;Ljava/util/Map;)V

    iget-object v1, p0, Lcom/xiaomi/passport/uicontroller/NotificationWebView;->userId:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaomi/passport/uicontroller/NotificationWebView;->passToken:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/xiaomi/passport/uicontroller/NotificationWebView;->setPassTokenCookie(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/xiaomi/passport/uicontroller/NotificationWebView;->loadUrl(Ljava/lang/String;)V

    return v3
.end method

.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/webkit/WebView;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/xiaomi/passport/uicontroller/NotificationWebView;->serverTimeAlignedListener:Lcom/xiaomi/accountsdk/utils/ServerTimeUtil$ServerTimeAlignedListener;

    invoke-static {v0}, Lcom/xiaomi/accountsdk/utils/ServerTimeUtil;->addServerTimeChangedListener(Lcom/xiaomi/accountsdk/utils/ServerTimeUtil$ServerTimeAlignedListener;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/uicontroller/NotificationWebView;->serverTimeAlignedListener:Lcom/xiaomi/accountsdk/utils/ServerTimeUtil$ServerTimeAlignedListener;

    invoke-static {v0}, Lcom/xiaomi/accountsdk/utils/ServerTimeUtil;->removeServerTimeChangedListener(Lcom/xiaomi/accountsdk/utils/ServerTimeUtil$ServerTimeAlignedListener;)V

    iget-boolean v0, p0, Lcom/xiaomi/passport/uicontroller/NotificationWebView;->needRemoveAllCookie:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/passport/uicontroller/NotificationWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieManager;->removeAllCookie()V

    :cond_0
    invoke-super {p0}, Landroid/webkit/WebView;->onDetachedFromWindow()V

    return-void
.end method
