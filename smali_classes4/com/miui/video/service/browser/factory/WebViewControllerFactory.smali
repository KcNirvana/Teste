.class public Lcom/miui/video/service/browser/factory/WebViewControllerFactory;
.super Ljava/lang/Object;
.source "WebViewControllerFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createSearchWebViewController(Landroid/content/Context;)Lcom/miui/video/common/browser/foundation/WebViewController;
    .locals 3

    new-instance v0, Lcom/miui/video/common/browser/foundation/WebViewController;

    invoke-direct {v0, p0}, Lcom/miui/video/common/browser/foundation/WebViewController;-><init>(Landroid/content/Context;)V

    new-instance p0, Lcom/miui/video/common/browser/feature/progressbar/FeatureProgressBar;

    invoke-direct {p0}, Lcom/miui/video/common/browser/feature/progressbar/FeatureProgressBar;-><init>()V

    invoke-virtual {v0, p0}, Lcom/miui/video/common/browser/foundation/WebViewController;->addFeature(Lcom/miui/video/common/browser/feature/base/FeatureBase;)V

    new-instance p0, Lcom/miui/video/service/browser/feature/page/FeatureErrorPage;

    invoke-direct {p0}, Lcom/miui/video/service/browser/feature/page/FeatureErrorPage;-><init>()V

    invoke-virtual {v0, p0}, Lcom/miui/video/common/browser/foundation/WebViewController;->addFeature(Lcom/miui/video/common/browser/feature/base/FeatureBase;)V

    new-instance p0, Lcom/miui/video/service/browser/feature/page/FeatureControllJs;

    invoke-direct {p0}, Lcom/miui/video/service/browser/feature/page/FeatureControllJs;-><init>()V

    invoke-virtual {v0, p0}, Lcom/miui/video/common/browser/foundation/WebViewController;->addFeature(Lcom/miui/video/common/browser/feature/base/FeatureBase;)V

    new-instance p0, Lcom/miui/video/service/browser/feature/page/FeaturePageStatus;

    invoke-direct {p0}, Lcom/miui/video/service/browser/feature/page/FeaturePageStatus;-><init>()V

    invoke-virtual {v0, p0}, Lcom/miui/video/common/browser/foundation/WebViewController;->addFeature(Lcom/miui/video/common/browser/feature/base/FeatureBase;)V

    const/4 p0, 0x0

    invoke-static {p0}, Lcom/miui/video/common/browser/BrowserConfig;->setLogSwitch(Z)V

    invoke-static {p0}, Lcom/miui/video/common/browser/BrowserConfig;->setDebugSwitch(Z)V

    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt p0, v1, :cond_0

    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object p0

    invoke-virtual {v0}, Lcom/miui/video/common/browser/foundation/WebViewController;->getWebView()Lcom/miui/video/common/browser/foundation/WebViewEx;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Landroid/webkit/CookieManager;->setAcceptThirdPartyCookies(Landroid/webkit/WebView;Z)V

    :cond_0
    return-object v0
.end method

.method public static createSimpleController(Landroid/content/Context;)Lcom/miui/video/common/browser/foundation/WebViewController;
    .locals 3

    new-instance v0, Lcom/miui/video/common/browser/foundation/WebViewController;

    invoke-direct {v0, p0}, Lcom/miui/video/common/browser/foundation/WebViewController;-><init>(Landroid/content/Context;)V

    new-instance p0, Lcom/miui/video/common/browser/feature/progressbar/FeatureProgressBar;

    invoke-direct {p0}, Lcom/miui/video/common/browser/feature/progressbar/FeatureProgressBar;-><init>()V

    invoke-virtual {v0, p0}, Lcom/miui/video/common/browser/foundation/WebViewController;->addFeature(Lcom/miui/video/common/browser/feature/base/FeatureBase;)V

    new-instance p0, Lcom/miui/video/service/browser/feature/page/FeatureErrorPage;

    invoke-direct {p0}, Lcom/miui/video/service/browser/feature/page/FeatureErrorPage;-><init>()V

    invoke-virtual {v0, p0}, Lcom/miui/video/common/browser/foundation/WebViewController;->addFeature(Lcom/miui/video/common/browser/feature/base/FeatureBase;)V

    new-instance p0, Lcom/miui/video/service/browser/feature/page/FeatureControllJs;

    invoke-direct {p0}, Lcom/miui/video/service/browser/feature/page/FeatureControllJs;-><init>()V

    invoke-virtual {v0, p0}, Lcom/miui/video/common/browser/foundation/WebViewController;->addFeature(Lcom/miui/video/common/browser/feature/base/FeatureBase;)V

    new-instance p0, Lcom/miui/video/service/browser/feature/page/FeaturePageStatus;

    invoke-direct {p0}, Lcom/miui/video/service/browser/feature/page/FeaturePageStatus;-><init>()V

    invoke-virtual {v0, p0}, Lcom/miui/video/common/browser/foundation/WebViewController;->addFeature(Lcom/miui/video/common/browser/feature/base/FeatureBase;)V

    new-instance p0, Lcom/miui/video/service/browser/feature/js/FeatureICommonJs;

    invoke-direct {p0}, Lcom/miui/video/service/browser/feature/js/FeatureICommonJs;-><init>()V

    invoke-virtual {v0, p0}, Lcom/miui/video/common/browser/foundation/WebViewController;->addFeature(Lcom/miui/video/common/browser/feature/base/FeatureBase;)V

    const/4 p0, 0x0

    invoke-static {p0}, Lcom/miui/video/common/browser/BrowserConfig;->setLogSwitch(Z)V

    invoke-static {p0}, Lcom/miui/video/common/browser/BrowserConfig;->setDebugSwitch(Z)V

    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt p0, v1, :cond_0

    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object p0

    invoke-virtual {v0}, Lcom/miui/video/common/browser/foundation/WebViewController;->getWebView()Lcom/miui/video/common/browser/foundation/WebViewEx;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Landroid/webkit/CookieManager;->setAcceptThirdPartyCookies(Landroid/webkit/WebView;Z)V

    :cond_0
    return-object v0
.end method
