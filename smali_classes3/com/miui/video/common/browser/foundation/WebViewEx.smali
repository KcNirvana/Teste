.class public Lcom/miui/video/common/browser/foundation/WebViewEx;
.super Landroid/webkit/WebView;
.source "WebViewEx.java"


# static fields
.field private static TAG:Ljava/lang/String; = "WebViewEx"


# instance fields
.field private final DOUBLE_TAP_TIMEOUT:I

.field private featureList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/video/common/browser/feature/base/FeatureBase;",
            ">;"
        }
    .end annotation
.end field

.field private initUrl:Ljava/lang/String;

.field private isDataBack:Z

.field isHistoryCleared:Z

.field private mCurrentDownEvent:Landroid/view/MotionEvent;

.field private mFavicon:Landroid/graphics/Bitmap;

.field private mPreviousUpEvent:Landroid/view/MotionEvent;

.field private referer:Ljava/lang/String;

.field private titleReceived:Ljava/lang/String;

.field private webChromeClientProxy:Lcom/miui/video/common/browser/foundation/WebChromeClientProxy;

.field private webViewClientProxy:Lcom/miui/video/common/browser/foundation/WebViewClientProxy;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/miui/video/common/browser/foundation/WebChromeClientProxy;

    invoke-direct {v0}, Lcom/miui/video/common/browser/foundation/WebChromeClientProxy;-><init>()V

    iput-object v0, p0, Lcom/miui/video/common/browser/foundation/WebViewEx;->webChromeClientProxy:Lcom/miui/video/common/browser/foundation/WebChromeClientProxy;

    new-instance v0, Lcom/miui/video/common/browser/foundation/WebViewClientProxy;

    invoke-direct {v0}, Lcom/miui/video/common/browser/foundation/WebViewClientProxy;-><init>()V

    iput-object v0, p0, Lcom/miui/video/common/browser/foundation/WebViewEx;->webViewClientProxy:Lcom/miui/video/common/browser/foundation/WebViewClientProxy;

    const/16 v0, 0xc8

    iput v0, p0, Lcom/miui/video/common/browser/foundation/WebViewEx;->DOUBLE_TAP_TIMEOUT:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/video/common/browser/foundation/WebViewEx;->isHistoryCleared:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/video/common/browser/foundation/WebViewEx;->isDataBack:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/miui/video/common/browser/foundation/WebViewEx;->referer:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/miui/video/common/browser/foundation/WebViewEx;->titleReceived:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/miui/video/common/browser/foundation/WebViewEx;->initView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p2, Lcom/miui/video/common/browser/foundation/WebChromeClientProxy;

    invoke-direct {p2}, Lcom/miui/video/common/browser/foundation/WebChromeClientProxy;-><init>()V

    iput-object p2, p0, Lcom/miui/video/common/browser/foundation/WebViewEx;->webChromeClientProxy:Lcom/miui/video/common/browser/foundation/WebChromeClientProxy;

    new-instance p2, Lcom/miui/video/common/browser/foundation/WebViewClientProxy;

    invoke-direct {p2}, Lcom/miui/video/common/browser/foundation/WebViewClientProxy;-><init>()V

    iput-object p2, p0, Lcom/miui/video/common/browser/foundation/WebViewEx;->webViewClientProxy:Lcom/miui/video/common/browser/foundation/WebViewClientProxy;

    const/16 p2, 0xc8

    iput p2, p0, Lcom/miui/video/common/browser/foundation/WebViewEx;->DOUBLE_TAP_TIMEOUT:I

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/miui/video/common/browser/foundation/WebViewEx;->isHistoryCleared:Z

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/miui/video/common/browser/foundation/WebViewEx;->isDataBack:Z

    const-string p2, ""

    iput-object p2, p0, Lcom/miui/video/common/browser/foundation/WebViewEx;->referer:Ljava/lang/String;

    const-string p2, ""

    iput-object p2, p0, Lcom/miui/video/common/browser/foundation/WebViewEx;->titleReceived:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/miui/video/common/browser/foundation/WebViewEx;->initView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p2, Lcom/miui/video/common/browser/foundation/WebChromeClientProxy;

    invoke-direct {p2}, Lcom/miui/video/common/browser/foundation/WebChromeClientProxy;-><init>()V

    iput-object p2, p0, Lcom/miui/video/common/browser/foundation/WebViewEx;->webChromeClientProxy:Lcom/miui/video/common/browser/foundation/WebChromeClientProxy;

    new-instance p2, Lcom/miui/video/common/browser/foundation/WebViewClientProxy;

    invoke-direct {p2}, Lcom/miui/video/common/browser/foundation/WebViewClientProxy;-><init>()V

    iput-object p2, p0, Lcom/miui/video/common/browser/foundation/WebViewEx;->webViewClientProxy:Lcom/miui/video/common/browser/foundation/WebViewClientProxy;

    const/16 p2, 0xc8

    iput p2, p0, Lcom/miui/video/common/browser/foundation/WebViewEx;->DOUBLE_TAP_TIMEOUT:I

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/miui/video/common/browser/foundation/WebViewEx;->isHistoryCleared:Z

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/miui/video/common/browser/foundation/WebViewEx;->isDataBack:Z

    const-string p2, ""

    iput-object p2, p0, Lcom/miui/video/common/browser/foundation/WebViewEx;->referer:Ljava/lang/String;

    const-string p2, ""

    iput-object p2, p0, Lcom/miui/video/common/browser/foundation/WebViewEx;->titleReceived:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/miui/video/common/browser/foundation/WebViewEx;->initView(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$002(Lcom/miui/video/common/browser/foundation/WebViewEx;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/miui/video/common/browser/foundation/WebViewEx;->initUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$102(Lcom/miui/video/common/browser/foundation/WebViewEx;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/video/common/browser/foundation/WebViewEx;->isDataBack:Z

    return p1
.end method

.method static synthetic access$201(Lcom/miui/video/common/browser/foundation/WebViewEx;)V
    .locals 0

    invoke-super {p0}, Landroid/webkit/WebView;->clearHistory()V

    return-void
.end method

.method private hasJellyBeanMR1()Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private initView(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Lcom/miui/video/common/browser/foundation/WebViewEx;->initWebViewSetting()V

    iget-object p1, p0, Lcom/miui/video/common/browser/foundation/WebViewEx;->webViewClientProxy:Lcom/miui/video/common/browser/foundation/WebViewClientProxy;

    invoke-super {p0, p1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object p1, p0, Lcom/miui/video/common/browser/foundation/WebViewEx;->webChromeClientProxy:Lcom/miui/video/common/browser/foundation/WebChromeClientProxy;

    invoke-super {p0, p1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    iget-object p1, p0, Lcom/miui/video/common/browser/foundation/WebViewEx;->webViewClientProxy:Lcom/miui/video/common/browser/foundation/WebViewClientProxy;

    new-instance v0, Lcom/miui/video/common/browser/foundation/WebViewEx$1;

    invoke-direct {v0, p0}, Lcom/miui/video/common/browser/foundation/WebViewEx$1;-><init>(Lcom/miui/video/common/browser/foundation/WebViewEx;)V

    invoke-virtual {p1, v0}, Lcom/miui/video/common/browser/foundation/WebViewClientProxy;->addWebViewClient(Landroid/webkit/WebViewClient;)V

    return-void
.end method

.method private initWebViewSetting()V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/miui/video/common/browser/foundation/WebViewEx;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setGeolocationEnabled(Z)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    invoke-virtual {p0, v1}, Lcom/miui/video/common/browser/foundation/WebViewEx;->setScrollbarFadingEnabled(Z)V

    const/high16 v2, 0x2000000

    invoke-virtual {p0, v2}, Lcom/miui/video/common/browser/foundation/WebViewEx;->setScrollBarStyle(I)V

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/miui/video/common/browser/foundation/WebViewEx;->setMapTrackballToArrowKeys(Z)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    sget-object v1, Landroid/webkit/WebSettings$RenderPriority;->HIGH:Landroid/webkit/WebSettings$RenderPriority;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setRenderPriority(Landroid/webkit/WebSettings$RenderPriority;)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setBlockNetworkImage(Z)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v1, v3, :cond_0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    :cond_0
    return-void
.end method

.method private isConsideredDoubleTap(Landroid/view/MotionEvent;Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xc8

    cmp-long p1, v0, v2

    const/4 v0, 0x0

    if-lez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    sub-int/2addr p1, v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result p3

    float-to-int p3, p3

    sub-int/2addr p2, p3

    mul-int p1, p1, p1

    mul-int p2, p2, p2

    add-int/2addr p1, p2

    const/16 p2, 0x2710

    if-ge p1, p2, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private releaseConfigCallback()V
    .locals 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x10

    if-ge v0, v3, :cond_0

    :try_start_0
    const-class v0, Landroid/webkit/WebView;

    const-string v3, "mWebViewCore"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    const-string v3, "mBrowserFrame"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    const-string v3, "sConfigCallback"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v0, v2, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string v0, "android.webkit.BrowserFrame"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v3, "sConfigCallback"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v0, v2, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "JavascriptInterface"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public appendUserAgent(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Lcom/miui/video/common/browser/foundation/WebViewEx;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    return-void
.end method

.method public canGoBack()Z
    .locals 3

    iget-boolean v0, p0, Lcom/miui/video/common/browser/foundation/WebViewEx;->isHistoryCleared:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/miui/video/common/browser/foundation/WebViewEx;->featureList:Ljava/util/List;

    const-string v2, "action_canGoBack"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/miui/video/common/browser/feature/base/FeatureBase;->raiseWebViewActionExtensionWithBooleanResult(Ljava/util/List;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    invoke-super {p0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    return v0
.end method

.method public canGoForward()Z
    .locals 3

    iget-object v0, p0, Lcom/miui/video/common/browser/foundation/WebViewEx;->featureList:Ljava/util/List;

    const-string v1, "action_canGoForward"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/miui/video/common/browser/feature/base/FeatureBase;->raiseWebViewActionExtensionWithBooleanResult(Ljava/util/List;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-super {p0}, Landroid/webkit/WebView;->canGoForward()Z

    move-result v0

    return v0
.end method

.method public clearCache(Z)V
    .locals 6

    iget-object v0, p0, Lcom/miui/video/common/browser/foundation/WebViewEx;->featureList:Ljava/util/List;

    const-string v1, "preAction_clearCache"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v0, v1, v3}, Lcom/miui/video/common/browser/feature/base/FeatureBase;->raiseWebViewActionExtension(Ljava/util/List;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-super {p0, p1}, Landroid/webkit/WebView;->clearCache(Z)V

    iget-object v0, p0, Lcom/miui/video/common/browser/foundation/WebViewEx;->featureList:Ljava/util/List;

    const-string v1, "postAction_clearCache"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v2, v5

    invoke-static {v0, v1, v2}, Lcom/miui/video/common/browser/feature/base/FeatureBase;->raiseWebViewActionExtension(Ljava/util/List;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public clearContent()V
    .locals 4

    iget-object v0, p0, Lcom/miui/video/common/browser/foundation/WebViewEx;->featureList:Ljava/util/List;

    const-string v1, "preAction_clearContent"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/miui/video/common/browser/feature/base/FeatureBase;->raiseWebViewActionExtension(Ljava/util/List;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, ""

    iput-object v0, p0, Lcom/miui/video/common/browser/foundation/WebViewEx;->initUrl:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/miui/video/common/browser/foundation/WebViewEx;->referer:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/miui/video/common/browser/foundation/WebViewEx;->destroyDrawingCache()V

    invoke-virtual {p0}, Lcom/miui/video/common/browser/foundation/WebViewEx;->removeAllViews()V

    const-string v0, "about:blank"

    invoke-super {p0, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/video/common/browser/foundation/WebViewEx;->clearView()V

    invoke-virtual {p0}, Lcom/miui/video/common/browser/foundation/WebViewEx;->clearHistory()V

    iget-object v0, p0, Lcom/miui/video/common/browser/foundation/WebViewEx;->featureList:Ljava/util/List;

    const-string v1, "postAction_clearContent"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/miui/video/common/browser/feature/base/FeatureBase;->raiseWebViewActionExtension(Ljava/util/List;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public clearHistory()V
    .locals 4

    iget-object v0, p0, Lcom/miui/video/common/browser/foundation/WebViewEx;->featureList:Ljava/util/List;

    const-string v1, "preAction_clearHistory"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/miui/video/common/browser/feature/base/FeatureBase;->raiseWebViewActionExtension(Ljava/util/List;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/video/common/browser/foundation/WebViewEx;->isHistoryCleared:Z

    invoke-super {p0}, Landroid/webkit/WebView;->clearHistory()V

    iget-object v0, p0, Lcom/miui/video/common/browser/foundation/WebViewEx;->featureList:Ljava/util/List;

    const-string v1, "postAction_clearHistory"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/miui/video/common/browser/feature/base/FeatureBase;->raiseWebViewActionExtension(Ljava/util/List;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public destroy()V
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lcom/miui/video/common/browser/foundation/WebViewEx;->removeAllViews()V

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/miui/video/common/browser/foundation/WebViewEx;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/miui/video/common/browser/foundation/WebViewEx;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/video/common/browser/foundation/WebViewEx;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_0
    invoke-direct {p0}, Lcom/miui/video/common/browser/foundation/WebViewEx;->releaseConfigCallback()V

    invoke-super {p0}, Landroid/webkit/WebView;->destroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public getFavicon()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/browser/foundation/WebViewEx;->mFavicon:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getOriginalUrl()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/video/common/browser/foundation/WebViewEx;->getOriginalUrl(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOriginalUrl(Z)Ljava/lang/String;
    .locals 4

    invoke-super {p0}, Landroid/webkit/WebView;->getOriginalUrl()Ljava/lang/String;

    move-result-object v0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    iget-object p1, p0, Lcom/miui/video/common/browser/foundation/WebViewEx;->featureList:Ljava/util/List;

    const-string v1, "intercept_GetOriginalUrl"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {p1, v1, v2}, Lcom/miui/video/common/browser/feature/base/FeatureBase;->raiseWebViewInterceptorExtensionWithObjectResult(Ljava/util/List;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object p1, v0

    :cond_1
    return-object p1
.end method

.method public getReferer()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/browser/foundation/WebViewEx;->referer:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/video/common/browser/foundation/WebViewEx;->getTitle(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle(Z)Ljava/lang/String;
    .locals 4

    invoke-super {p0}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/miui/video/common/browser/foundation/WebViewEx;->titleReceived:Ljava/lang/String;

    :cond_0
    if-nez p1, :cond_1

    return-object v0

    :cond_1
    iget-object p1, p0, Lcom/miui/video/common/browser/foundation/WebViewEx;->featureList:Ljava/util/List;

    const-string v1, "intercept_GetTitle"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {p1, v1, v2}, Lcom/miui/video/common/browser/feature/base/FeatureBase;->raiseWebViewInterceptorExtensionWithObjectResult(Ljava/util/List;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object p1, v0

    :cond_2
    return-object p1
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/video/common/browser/foundation/WebViewEx;->getUrl(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUrl(Z)Ljava/lang/String;
    .locals 4

    invoke-super {p0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "about:blank"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/miui/video/common/browser/foundation/WebViewEx;->initUrl:Ljava/lang/String;

    :cond_1
    if-nez p1, :cond_2

    return-object v0

    :cond_2
    iget-object p1, p0, Lcom/miui/video/common/browser/foundation/WebViewEx;->featureList:Ljava/util/List;

    const-string v1, "intercept_GetUrl"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {p1, v1, v2}, Lcom/miui/video/common/browser/feature/base/FeatureBase;->raiseWebViewInterceptorExtensionWithObjectResult(Ljava/util/List;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    move-object p1, v0

    :cond_3
    return-object p1
.end method

.method public goBack()V
    .locals 4

    invoke-virtual {p0}, Lcom/miui/video/common/browser/foundation/WebViewEx;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/common/browser/foundation/WebViewEx;->featureList:Ljava/util/List;

    const-string v1, "preAction_goBack"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/miui/video/common/browser/feature/base/FeatureBase;->raiseWebViewActionExtension(Ljava/util/List;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-super {p0}, Landroid/webkit/WebView;->goBack()V

    iget-object v0, p0, Lcom/miui/video/common/browser/foundation/WebViewEx;->featureList:Ljava/util/List;

    const-string v1, "postAction_goBack"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/miui/video/common/browser/feature/base/FeatureBase;->raiseWebViewActionExtension(Ljava/util/List;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public goForward()V
    .locals 4

    invoke-virtual {p0}, Lcom/miui/video/common/browser/foundation/WebViewEx;->canGoForward()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/common/browser/foundation/WebViewEx;->featureList:Ljava/util/List;

    const-string v1, "preAction_goForward"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/miui/video/common/browser/feature/base/FeatureBase;->raiseWebViewActionExtension(Ljava/util/List;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-super {p0}, Landroid/webkit/WebView;->goForward()V

    iget-object v0, p0, Lcom/miui/video/common/browser/foundation/WebViewEx;->featureList:Ljava/util/List;

    const-string v1, "postAction_goForward"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/miui/video/common/browser/feature/base/FeatureBase;->raiseWebViewActionExtension(Ljava/util/List;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    iget-object v0, p0, Lcom/miui/video/common/browser/foundation/WebViewEx;->featureList:Ljava/util/List;

    const-string v1, "preAction_LoadData"

    const/4 v2, 0x3

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v5, 0x1

    aput-object p2, v3, v5

    const/4 v6, 0x2

    aput-object p3, v3, v6

    invoke-static {v0, v1, v3}, Lcom/miui/video/common/browser/feature/base/FeatureBase;->raiseWebViewActionExtension(Ljava/util/List;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/video/common/browser/foundation/WebViewEx;->featureList:Ljava/util/List;

    const-string v1, "postAction_LoadData"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v4

    aput-object p2, v2, v5

    aput-object p3, v2, v6

    invoke-static {v0, v1, v2}, Lcom/miui/video/common/browser/feature/base/FeatureBase;->raiseWebViewActionExtension(Ljava/util/List;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    iget-object v0, p0, Lcom/miui/video/common/browser/foundation/WebViewEx;->featureList:Ljava/util/List;

    const-string v1, "preAction_loadDataWithBaseURL"

    const/4 v2, 0x5

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v5, 0x1

    aput-object p2, v3, v5

    const/4 v6, 0x2

    aput-object p3, v3, v6

    const/4 v7, 0x3

    aput-object p4, v3, v7

    const/4 v8, 0x4

    aput-object p5, v3, v8

    invoke-static {v0, v1, v3}, Lcom/miui/video/common/browser/feature/base/FeatureBase;->raiseWebViewActionExtension(Ljava/util/List;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-super/range {p0 .. p5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/video/common/browser/foundation/WebViewEx;->featureList:Ljava/util/List;

    const-string v1, "postAction_loadDataWithBaseURL"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v4

    aput-object p2, v2, v5

    aput-object p3, v2, v6

    aput-object p4, v2, v7

    aput-object p5, v2, v8

    invoke-static {v0, v1, v2}, Lcom/miui/video/common/browser/feature/base/FeatureBase;->raiseWebViewActionExtension(Ljava/util/List;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public loadJavaScriptUrl(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Landroid/webkit/URLUtil;->isJavaScriptUrl(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    :try_start_0
    invoke-super {p0, p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/miui/video/common/browser/foundation/WebViewEx;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

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

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/miui/video/common/browser/foundation/WebViewEx;->loadUrl(Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method public loadUrl(Ljava/lang/String;Ljava/util/Map;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p3, :cond_1

    new-instance p3, Lcom/miui/video/common/browser/extension/ExWebViewInterceptor$InterceptLoadUrlParams;

    invoke-direct {p3, p1, p2}, Lcom/miui/video/common/browser/extension/ExWebViewInterceptor$InterceptLoadUrlParams;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    iget-object v2, p0, Lcom/miui/video/common/browser/foundation/WebViewEx;->featureList:Ljava/util/List;

    const-string v3, "intercept_LoadUrl"

    new-array v4, v0, [Ljava/lang/Object;

    aput-object p3, v4, v1

    invoke-static {v2, v3, v4}, Lcom/miui/video/common/browser/feature/base/FeatureBase;->raiseWebViewInterceptorExtensionWithBooleanResult(Ljava/util/List;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object p1, p3, Lcom/miui/video/common/browser/extension/ExWebViewInterceptor$InterceptLoadUrlParams;->url:Ljava/lang/String;

    iget-object p2, p3, Lcom/miui/video/common/browser/extension/ExWebViewInterceptor$InterceptLoadUrlParams;->additionalHttpHeaders:Ljava/util/Map;

    :cond_1
    iget-object p3, p0, Lcom/miui/video/common/browser/foundation/WebViewEx;->featureList:Ljava/util/List;

    const-string v2, "preAction_LoadUrl"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Object;

    aput-object p1, v4, v1

    aput-object p2, v4, v0

    invoke-static {p3, v2, v4}, Lcom/miui/video/common/browser/feature/base/FeatureBase;->raiseWebViewActionExtension(Ljava/util/List;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_2

    invoke-static {p1}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_2

    iput-boolean v1, p0, Lcom/miui/video/common/browser/foundation/WebViewEx;->isDataBack:Z

    iput-object p1, p0, Lcom/miui/video/common/browser/foundation/WebViewEx;->initUrl:Ljava/lang/String;

    :cond_2
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    iget-object p3, p0, Lcom/miui/video/common/browser/foundation/WebViewEx;->featureList:Ljava/util/List;

    const-string v2, "postAction_LoadUrl"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v1

    aput-object p2, v3, v0

    invoke-static {p3, v2, v3}, Lcom/miui/video/common/browser/feature/base/FeatureBase;->raiseWebViewActionExtension(Ljava/util/List;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onPause()V
    .locals 3

    iget-object v0, p0, Lcom/miui/video/common/browser/foundation/WebViewEx;->featureList:Ljava/util/List;

    const-string v1, "onPause"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/miui/video/common/browser/feature/base/FeatureBase;->raiseWebViewBaseUIExtension(Ljava/util/List;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-super {p0}, Landroid/webkit/WebView;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 3

    iget-object v0, p0, Lcom/miui/video/common/browser/foundation/WebViewEx;->featureList:Ljava/util/List;

    const-string v1, "onResume"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/miui/video/common/browser/feature/base/FeatureBase;->raiseWebViewBaseUIExtension(Ljava/util/List;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-super {p0}, Landroid/webkit/WebView;->onResume()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/common/browser/foundation/WebViewEx;->mPreviousUpEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/common/browser/foundation/WebViewEx;->mCurrentDownEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/common/browser/foundation/WebViewEx;->mCurrentDownEvent:Landroid/view/MotionEvent;

    iget-object v2, p0, Lcom/miui/video/common/browser/foundation/WebViewEx;->mPreviousUpEvent:Landroid/view/MotionEvent;

    invoke-direct {p0, v0, v2, p1}, Lcom/miui/video/common/browser/foundation/WebViewEx;->isConsideredDoubleTap(Landroid/view/MotionEvent;Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/common/browser/foundation/WebViewEx;->mCurrentDownEvent:Landroid/view/MotionEvent;

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_2

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/common/browser/foundation/WebViewEx;->mPreviousUpEvent:Landroid/view/MotionEvent;

    :cond_2
    :goto_0
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public reload()V
    .locals 4

    iget-object v0, p0, Lcom/miui/video/common/browser/foundation/WebViewEx;->featureList:Ljava/util/List;

    const-string v1, "preAction_reload"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/miui/video/common/browser/feature/base/FeatureBase;->raiseWebViewActionExtension(Ljava/util/List;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/miui/video/common/browser/foundation/WebViewEx;->isDataBack:Z

    if-eqz v0, :cond_0

    invoke-super {p0}, Landroid/webkit/WebView;->reload()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/video/common/browser/foundation/WebViewEx;->initUrl:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/miui/video/common/browser/foundation/WebViewEx;->loadUrl(Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/miui/video/common/browser/foundation/WebViewEx;->featureList:Ljava/util/List;

    const-string v1, "postAction_reload"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/miui/video/common/browser/feature/base/FeatureBase;->raiseWebViewActionExtension(Ljava/util/List;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public removeJavascriptInterface(Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    return-void
.end method

.method public setFeatureList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/video/common/browser/feature/base/FeatureBase;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/video/common/browser/foundation/WebViewEx;->featureList:Ljava/util/List;

    return-void
.end method

.method public setReferer(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/common/browser/foundation/WebViewEx;->referer:Ljava/lang/String;

    return-void
.end method

.method public setWebChromeClient(Landroid/webkit/WebChromeClient;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/browser/foundation/WebViewEx;->webChromeClientProxy:Lcom/miui/video/common/browser/foundation/WebChromeClientProxy;

    invoke-virtual {v0, p1}, Lcom/miui/video/common/browser/foundation/WebChromeClientProxy;->addWebChromeClient(Landroid/webkit/WebChromeClient;)V

    return-void
.end method

.method public setWebViewClient(Landroid/webkit/WebViewClient;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/browser/foundation/WebViewEx;->webViewClientProxy:Lcom/miui/video/common/browser/foundation/WebViewClientProxy;

    invoke-virtual {v0, p1}, Lcom/miui/video/common/browser/foundation/WebViewClientProxy;->addWebViewClient(Landroid/webkit/WebViewClient;)V

    return-void
.end method

.method public stopLoading()V
    .locals 4

    iget-object v0, p0, Lcom/miui/video/common/browser/foundation/WebViewEx;->featureList:Ljava/util/List;

    const-string v1, "preAction_stopLoading"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/miui/video/common/browser/feature/base/FeatureBase;->raiseWebViewActionExtension(Ljava/util/List;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-super {p0}, Landroid/webkit/WebView;->stopLoading()V

    iget-object v0, p0, Lcom/miui/video/common/browser/foundation/WebViewEx;->featureList:Ljava/util/List;

    const-string v1, "postAction_stopLoading"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/miui/video/common/browser/feature/base/FeatureBase;->raiseWebViewActionExtension(Ljava/util/List;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
