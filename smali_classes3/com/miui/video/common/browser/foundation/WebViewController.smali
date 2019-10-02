.class public Lcom/miui/video/common/browser/foundation/WebViewController;
.super Ljava/lang/Object;
.source "WebViewController.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WebViewController"


# instance fields
.field protected context:Landroid/content/Context;

.field featureList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/video/common/browser/feature/base/FeatureBase;",
            ">;"
        }
    .end annotation
.end field

.field private webViewBaseUI:Lcom/miui/video/common/browser/ui/WebViewBaseUI;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/video/common/browser/foundation/WebViewController;->featureList:Ljava/util/List;

    iput-object p1, p0, Lcom/miui/video/common/browser/foundation/WebViewController;->context:Landroid/content/Context;

    invoke-direct {p0}, Lcom/miui/video/common/browser/foundation/WebViewController;->initWebViewUI()V

    return-void
.end method

.method private initWebViewUI()V
    .locals 3

    new-instance v0, Lcom/miui/video/common/browser/ui/WebViewBaseUI;

    iget-object v1, p0, Lcom/miui/video/common/browser/foundation/WebViewController;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/miui/video/common/browser/ui/WebViewBaseUI;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/video/common/browser/foundation/WebViewController;->webViewBaseUI:Lcom/miui/video/common/browser/ui/WebViewBaseUI;

    iget-object v0, p0, Lcom/miui/video/common/browser/foundation/WebViewController;->webViewBaseUI:Lcom/miui/video/common/browser/ui/WebViewBaseUI;

    invoke-virtual {v0}, Lcom/miui/video/common/browser/ui/WebViewBaseUI;->getWebView()Lcom/miui/video/common/browser/foundation/WebViewEx;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/video/common/browser/foundation/WebViewController;->webViewBaseUI:Lcom/miui/video/common/browser/ui/WebViewBaseUI;

    iget-object v1, p0, Lcom/miui/video/common/browser/foundation/WebViewController;->featureList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/miui/video/common/browser/ui/WebViewBaseUI;->setFeatureList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/miui/video/common/browser/foundation/WebViewController;->webViewBaseUI:Lcom/miui/video/common/browser/ui/WebViewBaseUI;

    invoke-virtual {v0, p0}, Lcom/miui/video/common/browser/ui/WebViewBaseUI;->setWebViewController(Lcom/miui/video/common/browser/foundation/WebViewController;)V

    new-instance v0, Lcom/miui/video/common/browser/foundation/WebViewClientExtension;

    iget-object v1, p0, Lcom/miui/video/common/browser/foundation/WebViewController;->featureList:Ljava/util/List;

    invoke-direct {v0, v1}, Lcom/miui/video/common/browser/foundation/WebViewClientExtension;-><init>(Ljava/util/List;)V

    new-instance v1, Lcom/miui/video/common/browser/foundation/WebChromeClientExtension;

    iget-object v2, p0, Lcom/miui/video/common/browser/foundation/WebViewController;->featureList:Ljava/util/List;

    invoke-direct {v1, v2}, Lcom/miui/video/common/browser/foundation/WebChromeClientExtension;-><init>(Ljava/util/List;)V

    iget-object v2, p0, Lcom/miui/video/common/browser/foundation/WebViewController;->webViewBaseUI:Lcom/miui/video/common/browser/ui/WebViewBaseUI;

    invoke-virtual {v2}, Lcom/miui/video/common/browser/ui/WebViewBaseUI;->getWebView()Lcom/miui/video/common/browser/foundation/WebViewEx;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/miui/video/common/browser/foundation/WebViewEx;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    iget-object v1, p0, Lcom/miui/video/common/browser/foundation/WebViewController;->webViewBaseUI:Lcom/miui/video/common/browser/ui/WebViewBaseUI;

    invoke-virtual {v1}, Lcom/miui/video/common/browser/ui/WebViewBaseUI;->getWebView()Lcom/miui/video/common/browser/foundation/WebViewEx;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/miui/video/common/browser/foundation/WebViewEx;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Lcom/miui/video/common/browser/foundation/WebViewController;->featureList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/video/common/browser/feature/base/FeatureBase;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1, p0}, Lcom/miui/video/common/browser/feature/base/FeatureBase;->setWebViewController(Lcom/miui/video/common/browser/foundation/WebViewController;)V

    invoke-virtual {v1}, Lcom/miui/video/common/browser/feature/base/FeatureBase;->init()V

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public addFeature(Lcom/miui/video/common/browser/feature/base/FeatureBase;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/video/common/browser/foundation/WebViewController;->featureList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/video/common/browser/feature/base/FeatureBase;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_1
    iget-object v0, p0, Lcom/miui/video/common/browser/foundation/WebViewController;->featureList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1, p0}, Lcom/miui/video/common/browser/feature/base/FeatureBase;->setWebViewController(Lcom/miui/video/common/browser/foundation/WebViewController;)V

    iget-object v0, p0, Lcom/miui/video/common/browser/foundation/WebViewController;->webViewBaseUI:Lcom/miui/video/common/browser/ui/WebViewBaseUI;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/miui/video/common/browser/feature/base/FeatureBase;->init()V

    :cond_2
    return-void
.end method

.method public canGoBack()Z
    .locals 3

    invoke-virtual {p0}, Lcom/miui/video/common/browser/foundation/WebViewController;->getWebView()Lcom/miui/video/common/browser/foundation/WebViewEx;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/miui/video/common/browser/foundation/WebViewController;->getWebView()Lcom/miui/video/common/browser/foundation/WebViewEx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/common/browser/foundation/WebViewEx;->copyBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/miui/video/common/browser/foundation/WebViewController;->getWebView()Lcom/miui/video/common/browser/foundation/WebViewEx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/common/browser/foundation/WebViewEx;->canGoBack()Z

    move-result v0

    return v0

    :cond_1
    invoke-virtual {v0}, Landroid/webkit/WebBackForwardList;->getCurrentIndex()I

    move-result v2

    if-lez v2, :cond_2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Landroid/webkit/WebBackForwardList;->getItemAtIndex(I)Landroid/webkit/WebHistoryItem;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebHistoryItem;->getUrl()Ljava/lang/String;

    move-result-object v0

    const-string v2, "about:blank"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    invoke-virtual {p0}, Lcom/miui/video/common/browser/foundation/WebViewController;->getWebView()Lcom/miui/video/common/browser/foundation/WebViewEx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/common/browser/foundation/WebViewEx;->canGoBack()Z

    move-result v0

    return v0
.end method

.method public canGoForward()Z
    .locals 1

    invoke-virtual {p0}, Lcom/miui/video/common/browser/foundation/WebViewController;->getWebView()Lcom/miui/video/common/browser/foundation/WebViewEx;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/miui/video/common/browser/foundation/WebViewController;->getWebView()Lcom/miui/video/common/browser/foundation/WebViewEx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/common/browser/foundation/WebViewEx;->canGoForward()Z

    move-result v0

    return v0
.end method

.method public clearCache(Z)V
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lcom/miui/video/common/browser/foundation/WebViewController;->getWebView()Lcom/miui/video/common/browser/foundation/WebViewEx;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/video/common/browser/foundation/WebViewEx;->clearCache(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public clearContent()V
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lcom/miui/video/common/browser/foundation/WebViewController;->getWebView()Lcom/miui/video/common/browser/foundation/WebViewEx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/common/browser/foundation/WebViewEx;->clearContent()V

    iget-object v0, p0, Lcom/miui/video/common/browser/foundation/WebViewController;->webViewBaseUI:Lcom/miui/video/common/browser/ui/WebViewBaseUI;

    invoke-virtual {v0}, Lcom/miui/video/common/browser/ui/WebViewBaseUI;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/common/browser/foundation/WebViewController;->webViewBaseUI:Lcom/miui/video/common/browser/ui/WebViewBaseUI;

    invoke-virtual {v0}, Lcom/miui/video/common/browser/ui/WebViewBaseUI;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/common/browser/foundation/WebViewController;->webViewBaseUI:Lcom/miui/video/common/browser/ui/WebViewBaseUI;

    invoke-virtual {v0}, Lcom/miui/video/common/browser/ui/WebViewBaseUI;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/miui/video/common/browser/foundation/WebViewController;->webViewBaseUI:Lcom/miui/video/common/browser/ui/WebViewBaseUI;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public clearHistory()V
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lcom/miui/video/common/browser/foundation/WebViewController;->getWebView()Lcom/miui/video/common/browser/foundation/WebViewEx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/common/browser/foundation/WebViewEx;->clearHistory()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public destroy()V
    .locals 4

    invoke-virtual {p0}, Lcom/miui/video/common/browser/foundation/WebViewController;->getWebViewBaseUI()Lcom/miui/video/common/browser/ui/WebViewBaseUI;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/miui/video/common/browser/foundation/WebViewController;->getWebView()Lcom/miui/video/common/browser/foundation/WebViewEx;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/video/common/browser/foundation/WebViewController;->featureList:Ljava/util/List;

    const-string v1, "preAction_destroy"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/miui/video/common/browser/feature/base/FeatureBase;->raiseWebViewActionExtension(Ljava/util/List;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/miui/video/common/browser/foundation/WebViewController;->clearContent()V

    invoke-virtual {p0}, Lcom/miui/video/common/browser/foundation/WebViewController;->clearHistory()V

    invoke-virtual {p0}, Lcom/miui/video/common/browser/foundation/WebViewController;->getWebView()Lcom/miui/video/common/browser/foundation/WebViewEx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/common/browser/foundation/WebViewEx;->destroy()V

    invoke-virtual {p0}, Lcom/miui/video/common/browser/foundation/WebViewController;->getWebViewBaseUI()Lcom/miui/video/common/browser/ui/WebViewBaseUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/common/browser/ui/WebViewBaseUI;->removeAllViews()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/video/common/browser/foundation/WebViewController;->setWebViewBaseUI(Lcom/miui/video/common/browser/ui/WebViewBaseUI;)V

    invoke-virtual {p0}, Lcom/miui/video/common/browser/foundation/WebViewController;->removeAllFeatures()V

    iget-object v0, p0, Lcom/miui/video/common/browser/foundation/WebViewController;->featureList:Ljava/util/List;

    const-string v1, "postAction_destroy"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/miui/video/common/browser/feature/base/FeatureBase;->raiseWebViewActionExtension(Ljava/util/List;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/browser/foundation/WebViewController;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getFavicon()Landroid/graphics/Bitmap;
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lcom/miui/video/common/browser/foundation/WebViewController;->getWebView()Lcom/miui/video/common/browser/foundation/WebViewEx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/common/browser/foundation/WebViewEx;->getFavicon()Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getOriginalUrl()Ljava/lang/String;
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lcom/miui/video/common/browser/foundation/WebViewController;->getWebView()Lcom/miui/video/common/browser/foundation/WebViewEx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/common/browser/foundation/WebViewEx;->getOriginalUrl()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const-string v0, ""

    return-object v0
.end method

.method public getReferer()Ljava/lang/String;
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lcom/miui/video/common/browser/foundation/WebViewController;->getWebView()Lcom/miui/video/common/browser/foundation/WebViewEx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/common/browser/foundation/WebViewEx;->getReferer()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const-string v0, ""

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lcom/miui/video/common/browser/foundation/WebViewController;->getWebView()Lcom/miui/video/common/browser/foundation/WebViewEx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/common/browser/foundation/WebViewEx;->getTitle()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const-string v0, ""

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lcom/miui/video/common/browser/foundation/WebViewController;->getWebView()Lcom/miui/video/common/browser/foundation/WebViewEx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/common/browser/foundation/WebViewEx;->getUrl()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const-string v0, ""

    return-object v0
.end method

.method public getWebView()Lcom/miui/video/common/browser/foundation/WebViewEx;
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lcom/miui/video/common/browser/foundation/WebViewController;->getWebViewBaseUI()Lcom/miui/video/common/browser/ui/WebViewBaseUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/common/browser/ui/WebViewBaseUI;->getWebView()Lcom/miui/video/common/browser/foundation/WebViewEx;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getWebViewBaseUI()Lcom/miui/video/common/browser/ui/WebViewBaseUI;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/browser/foundation/WebViewController;->webViewBaseUI:Lcom/miui/video/common/browser/ui/WebViewBaseUI;

    return-object v0
.end method

.method public goBack()V
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lcom/miui/video/common/browser/foundation/WebViewController;->getWebView()Lcom/miui/video/common/browser/foundation/WebViewEx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/common/browser/foundation/WebViewEx;->goBack()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/miui/video/common/browser/BrowserConfig;->isLogSwitch()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "WebViewController"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public goForward()V
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lcom/miui/video/common/browser/foundation/WebViewController;->getWebView()Lcom/miui/video/common/browser/foundation/WebViewEx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/common/browser/foundation/WebViewEx;->goForward()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/miui/video/common/browser/BrowserConfig;->isLogSwitch()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "WebViewController"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public isFeatureExist(Ljava/lang/Class;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/miui/video/common/browser/feature/base/FeatureBase;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/video/common/browser/foundation/WebViewController;->featureList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/video/common/browser/feature/base/FeatureBase;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lcom/miui/video/common/browser/foundation/WebViewController;->getWebView()Lcom/miui/video/common/browser/foundation/WebViewEx;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/miui/video/common/browser/foundation/WebViewEx;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {}, Lcom/miui/video/common/browser/BrowserConfig;->isLogSwitch()Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "WebViewController"

    const-string p3, ""

    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    :try_start_0
    invoke-virtual {p0}, Lcom/miui/video/common/browser/foundation/WebViewController;->getWebView()Lcom/miui/video/common/browser/foundation/WebViewEx;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/miui/video/common/browser/foundation/WebViewEx;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {}, Lcom/miui/video/common/browser/BrowserConfig;->isLogSwitch()Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "WebViewController"

    const-string p3, ""

    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public loadJavaScriptUrl(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/miui/video/common/browser/foundation/WebViewController;->getWebView()Lcom/miui/video/common/browser/foundation/WebViewEx;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/video/common/browser/foundation/WebViewEx;->loadJavaScriptUrl(Ljava/lang/String;)V

    return-void
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/miui/video/common/browser/foundation/WebViewController;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public loadUrl(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_2

    :try_start_0
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/miui/video/common/browser/foundation/WebViewController;->getWebView()Lcom/miui/video/common/browser/foundation/WebViewEx;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/miui/video/common/browser/foundation/WebViewEx;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/miui/video/common/browser/foundation/WebViewController;->getWebView()Lcom/miui/video/common/browser/foundation/WebViewEx;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/miui/video/common/browser/foundation/WebViewEx;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-static {}, Lcom/miui/video/common/browser/BrowserConfig;->isLogSwitch()Z

    move-result p2

    if-eqz p2, :cond_3

    const-string p2, "WebViewController"

    const-string v0, ""

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    :goto_2
    return-void
.end method

.method public onPause()V
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lcom/miui/video/common/browser/foundation/WebViewController;->getWebView()Lcom/miui/video/common/browser/foundation/WebViewEx;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "onPause"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/video/common/browser/foundation/WebViewController;->getWebView()Lcom/miui/video/common/browser/foundation/WebViewEx;

    move-result-object v1

    const/4 v2, 0x0

    check-cast v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public onResume()V
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lcom/miui/video/common/browser/foundation/WebViewController;->getWebView()Lcom/miui/video/common/browser/foundation/WebViewEx;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "onResume"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/video/common/browser/foundation/WebViewController;->getWebView()Lcom/miui/video/common/browser/foundation/WebViewEx;

    move-result-object v1

    const/4 v2, 0x0

    check-cast v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public varargs raiseEventToFeature(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/miui/video/common/browser/feature/base/FeatureBase;",
            ">;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/video/common/browser/foundation/WebViewController;->featureList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/video/common/browser/feature/base/FeatureBase;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1, p2, p3}, Lcom/miui/video/common/browser/feature/base/FeatureBase;->onReceiveEvent(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public reload()V
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lcom/miui/video/common/browser/foundation/WebViewController;->getWebView()Lcom/miui/video/common/browser/foundation/WebViewEx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/common/browser/foundation/WebViewEx;->reload()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/miui/video/common/browser/BrowserConfig;->isLogSwitch()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "WebViewController"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public removeAllFeatures()V
    .locals 3

    iget-object v0, p0, Lcom/miui/video/common/browser/foundation/WebViewController;->featureList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/video/common/browser/feature/base/FeatureBase;

    invoke-virtual {v1}, Lcom/miui/video/common/browser/feature/base/FeatureBase;->unInit()V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/miui/video/common/browser/feature/base/FeatureBase;->setWebViewController(Lcom/miui/video/common/browser/foundation/WebViewController;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/video/common/browser/foundation/WebViewController;->featureList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public removeFeature(Lcom/miui/video/common/browser/feature/base/FeatureBase;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/common/browser/foundation/WebViewController;->featureList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/miui/video/common/browser/feature/base/FeatureBase;->unInit()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/miui/video/common/browser/feature/base/FeatureBase;->setWebViewController(Lcom/miui/video/common/browser/foundation/WebViewController;)V

    iget-object v0, p0, Lcom/miui/video/common/browser/foundation/WebViewController;->featureList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setReferer(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lcom/miui/video/common/browser/foundation/WebViewController;->getWebView()Lcom/miui/video/common/browser/foundation/WebViewEx;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/video/common/browser/foundation/WebViewEx;->setReferer(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public setWebViewBaseUI(Lcom/miui/video/common/browser/ui/WebViewBaseUI;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/common/browser/foundation/WebViewController;->webViewBaseUI:Lcom/miui/video/common/browser/ui/WebViewBaseUI;

    return-void
.end method

.method public stopLoading()V
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lcom/miui/video/common/browser/foundation/WebViewController;->getWebView()Lcom/miui/video/common/browser/foundation/WebViewEx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/common/browser/foundation/WebViewEx;->stopLoading()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/miui/video/common/browser/BrowserConfig;->isLogSwitch()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "WebViewController"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method
