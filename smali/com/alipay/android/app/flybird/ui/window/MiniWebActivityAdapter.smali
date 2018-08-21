.class public Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;
.super Lcom/alipay/android/app/b/c/a;
.source "MiniWebActivityAdapter.java"


# static fields
.field public static final BACKISEXIT:Ljava/lang/String; = "backisexit"

.field private static final FUNCTION_ONBACK:Ljava/lang/String; = "onBack"

.field private static final FUNCTION_ONEXIT:Ljava/lang/String; = "onExit"

.field private static final FUNCTION_ONFRESH:Ljava/lang/String; = "onRefresh"

.field private static final FUNCTION_ONLOADJS:Ljava/lang/String; = "onLoadJs"

.field private static final FUNCTION_SETTITLE:Ljava/lang/String; = "setTitle"

.field private static final FUNCTION_SHOWBACK:Ljava/lang/String; = "showBackButton"

.field public static final JSURLHEADER:Ljava/lang/String; = "alipayjsbridge://"

.field private static final JS_CALL_NATIVE_LISTENER:Ljava/lang/String; = "javascript:window.AlipayJSBridge.callListener(\'%s\',\'%s\', \'%s\');"

.field public static final METHOD:Ljava/lang/String; = "method"

.field private static final PAY_RESULT_TAG:Ljava/lang/String; = "sdk_result_code:"

.field public static final TYPE:Ljava/lang/String; = "type"

.field public static final URL:Ljava/lang/String; = "url"

.field private static final V2_FUNCTION_CALLNATIVE:Ljava/lang/String; = "callNativeFunc"

.field private static final V2_FUNCTION_JSFUNCB:Ljava/lang/String; = "h5JsFuncCallback"

.field private static final V2_FUNCTION_ONACTION:Ljava/lang/String; = "action"

.field private static final V2_FUNCTION_ONBACK:Ljava/lang/String; = "back"

.field private static final V2_FUNCTION_ONEXIT:Ljava/lang/String; = "exit"

.field private static final V2_FUNCTION_ONFRESH:Ljava/lang/String; = "refresh"

.field private static final V2_FUNCTION_PUSHWND:Ljava/lang/String; = "pushWindow"

.field private static final V2_FUNCTION_SETTITLE:Ljava/lang/String; = "title"

.field private static final V2_FUNCTION_SHOWBACK:Ljava/lang/String; = "backButton"

.field private static final V2_FUNCTION_SHOWREFRESH:Ljava/lang/String; = "refreshButton"


# instance fields
.field private isBackExit:Z

.field private isFirstEnter:Z

.field private isFromMCashier:Z

.field private isLoadFail:Z

.field private mActivity:Landroid/app/Activity;

.field private mBackView:Landroid/view/View;

.field private mCookie:Ljava/lang/String;

.field private mDefaultJs:Ljava/lang/String;

.field private mFrameWebView:Landroid/widget/FrameLayout;

.field private mFreshView:Landroid/widget/ImageView;

.field private mJsWebViewWindow:Lcom/alipay/android/app/ui/quickpay/window/web/JsWebViewWindow;

.field private mMethod:Ljava/lang/String;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mStack:Lcom/alipay/android/app/ui/quickpay/window/web/b;

.field private mTitle:Ljava/lang/String;

.field private mTitltView:Landroid/widget/TextView;

.field private mUrl:Ljava/lang/String;

.field private mWebView:Landroid/webkit/WebView;

.field final script_call:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/alipay/android/app/b/c/a;-><init>()V

    iput-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;->mWebView:Landroid/webkit/WebView;

    iput-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;->mFrameWebView:Landroid/widget/FrameLayout;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;->mUrl:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;->mTitle:Ljava/lang/String;

    iput-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;->mTitltView:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;->mProgressBar:Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;->mFreshView:Landroid/widget/ImageView;

    iput-boolean v3, p0, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;->isLoadFail:Z

    iput-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;->mBackView:Landroid/view/View;

    iput-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;->mMethod:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;->isFromMCashier:Z

    iput-boolean v4, p0, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;->isFirstEnter:Z

    iput-boolean v4, p0, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;->isBackExit:Z

    iput-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;->mJsWebViewWindow:Lcom/alipay/android/app/ui/quickpay/window/web/JsWebViewWindow;

    iput-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;->mStack:Lcom/alipay/android/app/ui/quickpay/window/web/b;

    const-string/jumbo v0, "javascript:window.AlipayJSBridge.callListener(\'%s\',\'%s\', \'%s\');"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "h5BackAction"

    aput-object v2, v1, v3

    const-string/jumbo v2, ""

    aput-object v2, v1, v4

    const/4 v2, 0x2

    const-string/jumbo v3, "back"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;->script_call:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;)V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;->doOnBack()V

    return-void
.end method

.method static synthetic access$100(Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;)Landroid/webkit/WebView;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;->mWebView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;->processJsBridgeFunction(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;->mDefaultJs:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;->isFirstEnter:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;->isFirstEnter:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;->isLoadFail:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;->isLoadFail:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;)Lcom/alipay/android/app/ui/quickpay/window/web/JsWebViewWindow;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;->mJsWebViewWindow:Lcom/alipay/android/app/ui/quickpay/window/web/JsWebViewWindow;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;Lcom/alipay/android/app/ui/quickpay/window/web/JsWebViewWindow;)Lcom/alipay/android/app/ui/quickpay/window/web/JsWebViewWindow;
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;->mJsWebViewWindow:Lcom/alipay/android/app/ui/quickpay/window/web/JsWebViewWindow;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;)Landroid/widget/FrameLayout;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;->mFrameWebView:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;)V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;->configView()V

    return-void
.end method

.method static synthetic access$200(Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;->mFreshView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;)Landroid/widget/ProgressBar;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;->mProgressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$400(Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$500(Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;)Lcom/alipay/android/app/ui/quickpay/window/web/b;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;->mStack:Lcom/alipay/android/app/ui/quickpay/window/web/b;

    return-object v0
.end method

.method static synthetic access$600(Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;)Z
    .locals 1

    invoke-direct {p0}, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;->doJsPopWindow()Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;->doJsExit(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;->mTitltView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;->isJsBridgeUrl(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private configView()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;->mJsWebViewWindow:Lcom/alipay/android/app/ui/quickpay/window/web/JsWebViewWindow;

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/window/web/JsWebViewWindow;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;->mWebView:Landroid/webkit/WebView;

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;->mJsWebViewWindow:Lcom/alipay/android/app/ui/quickpay/window/web/JsWebViewWindow;

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/window/web/JsWebViewWindow;->getBackView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;->mBackView:Landroid/view/View;

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;->mJsWebViewWindow:Lcom/alipay/android/app/ui/quickpay/window/web/JsWebViewWindow;

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/window/web/JsWebViewWindow;->getFreshView()Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;->mFreshView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;->mJsWebViewWindow:Lcom/alipay/android/app/ui/quickpay/window/web/JsWebViewWindow;

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/window/web/JsWebViewWindow;->getTitltView()Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;->mTitltView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;->mJsWebViewWindow:Lcom/alipay/android/app/ui/quickpay/window/web/JsWebViewWindow;

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/window/web/JsWebViewWindow;->getProgressBar()Landroid/widget/ProgressBar;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;->mProgressBar:Landroid/widget/ProgressBar;

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;->mWebView:Landroid/webkit/WebView;

    const/16 v1, 0x1a0a

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setId(I)V

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;->mBackView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;->mBackView:Landroid/view/View;

    new-instance v1, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter$1;

    invoke-direct {v1, p0}, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter$1;-><init>(Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;->mTitltView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;->mFreshView:Landroid/widget/ImageView;

    new-instance v1, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter$2;

    invoke-direct {v1, p0}, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter$2;-><init>(Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter$3;

    invoke-direct {v1, p0}, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter$3;-><init>(Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter$4;

    invoke-direct {v1, p0}, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter$4;-><init>(Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    return-void
.end method

.method private doJsExit(Z)V
    .locals 1

    invoke-static {p1}, Lcom/alipay/android/app/pay/g;->a(Z)V

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private doJsOnBack()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const/4 v0, 0x0

    const-string/jumbo v1, "webonBack"

    invoke-static {v0, v1}, Lcom/alipay/android/app/statistic/h;->a(ZLjava/lang/String;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;->mWebView:Landroid/webkit/WebView;

    const-string/jumbo v1, "javascript:alipayjsbridgeH5BackAction()"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;->mWebView:Landroid/webkit/WebView;

    const-string/jumbo v1, "javascript:alipayjsbridgeH5BackAction()"

    new-instance v2, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter$5;

    invoke-direct {v2, p0}, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter$5;-><init>(Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;)V

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    goto :goto_0
.end method

.method private doJsPopWindow()Z
    .locals 3

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;->mStack:Lcom/alipay/android/app/ui/quickpay/window/web/b;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;->mStack:Lcom/alipay/android/app/ui/quickpay/window/web/b;

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/window/web/b;->a()Lcom/alipay/android/app/ui/quickpay/window/web/JsWebViewWindow;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;->mActivity:Landroid/app/Activity;

    const-string/jumbo v2, "alipay_right_out"

    invoke-static {v2}, Lcom/alipay/android/app/g/i;->b(Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;->mJsWebViewWindow:Lcom/alipay/android/app/ui/quickpay/window/web/JsWebViewWindow;

    invoke-virtual {v2, v1}, Lcom/alipay/android/app/ui/quickpay/window/web/JsWebViewWindow;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;->mFrameWebView:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;->mJsWebViewWindow:Lcom/alipay/android/app/ui/quickpay/window/web/JsWebViewWindow;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;->mJsWebViewWindow:Lcom/alipay/android/app/ui/quickpay/window/web/JsWebViewWindow;

    invoke-virtual {v1}, Lcom/alipay/android/app/ui/quickpay/window/web/JsWebViewWindow;->destroy()V

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;->mFrameWebView:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iput-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;->mJsWebViewWindow:Lcom/alipay/android/app/ui/quickpay/window/web/JsWebViewWindow;

    invoke-direct {p0}, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;->configView()V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private doJsPushWindow(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    :try_start_0
    invoke-direct {p0}, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;->getSelfAssets()Landroid/content/res/AssetManager;

    new-instance v0, Lcom/alipay/android/app/ui/quickpay/window/web/JsWebViewWindow;

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/alipay/android/app/ui/quickpay/window/web/JsWebViewWindow;-><init>(Landroid/content/Context;)V

    iget-boolean v1, p0, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;->isFromMCashier:Z

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/ui/quickpay/window/web/JsWebViewWindow;->init(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;->mStack:Lcom/alipay/android/app/ui/quickpay/window/web/b;

    if-nez v1, :cond_0

    new-instance v1, Lcom/alipay/android/app/ui/quickpay/window/web/b;

    invoke-direct {v1}, Lcom/alipay/android/app/ui/quickpay/window/web/b;-><init>()V

    iput-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;->mStack:Lcom/alipay/android/app/ui/quickpay/window/web/b;

    :cond_0
    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;->mStack:Lcom/alipay/android/app/ui/quickpay/window/web/b;

    iget-object v2, p0, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;->mJsWebViewWindow:Lcom/alipay/android/app/ui/quickpay/window/web/JsWebViewWindow;

    invoke-virtual {v1, v2}, Lcom/alipay/android/app/ui/quickpay/window/web/b;->a(Lcom/alipay/android/app/ui/quickpay/window/web/JsWebViewWindow;)V

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;->mActivity:Landroid/app/Activity;

    const-string/jumbo v2, "alipay_right_in"

    invoke-static {v2}, Lcom/alipay/android/app/g/i;->b(Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    new-instance v2, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter$6;

    invoke-direct {v2, p0, v0, p1, p2}, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter$6;-><init>(Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;Lcom/alipay/android/app/ui/quickpay/window/web/JsWebViewWindow;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/ui/quickpay/window/web/JsWebViewWindow;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;->mFrameWebView:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/g/g;->a(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private doOnBack()V
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;->isBackExit:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;->doOnBackV2()V

    goto :goto_0
.end method

.method private doOnBackV2()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;->mWebView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;->script_call:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method private getDefaultJs()Ljava/lang/String;
    .locals 5

    const/4 v2, 0x0

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string/jumbo v3, "jstest_v2.js"

    invoke-virtual {v1, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    const/16 v1, 0x400

    new-array v3, v1, [B

    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :goto_1
    :try_start_1
    invoke-virtual {v0, v3}, Ljava/io/InputStream;->read([B)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    :goto_2
    if-gtz v1, :cond_1

    if-eqz v0, :cond_0

    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_0
    :goto_3
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    move v1, v2

    goto :goto_2

    :cond_1
    invoke-virtual {v4, v3, v2, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_1

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3
.end method

.method private getSelfAssets()Landroid/content/res/AssetManager;
    .locals 7

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :try_start_1
    const-class v1, Landroid/content/res/AssetManager;

    const-string/jumbo v2, "addAssetPath"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;->addChromResources(Landroid/content/res/AssetManager;Ljava/lang/reflect/Method;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    :goto_1
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method private initUI()Z
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    :try_start_0
    invoke-direct {p0}, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;->getSelfAssets()Landroid/content/res/AssetManager;

    new-instance v0, Lcom/alipay/android/app/ui/quickpay/window/web/JsWebViewWindow;

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/alipay/android/app/ui/quickpay/window/web/JsWebViewWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;->mJsWebViewWindow:Lcom/alipay/android/app/ui/quickpay/window/web/JsWebViewWindow;

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;->mJsWebViewWindow:Lcom/alipay/android/app/ui/quickpay/window/web/JsWebViewWindow;

    iget-boolean v1, p0, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;->isFromMCashier:Z

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/ui/quickpay/window/web/JsWebViewWindow;->init(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;->mCookie:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->sync()V

    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;->mUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;->mCookie:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->sync()V

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;->mActivity:Landroid/app/Activity;

    const-string/jumbo v1, "mini_webview_root"

    invoke-static {v1}, Lcom/alipay/android/app/g/i;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;->mFrameWebView:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;->mFrameWebView:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;->mJsWebViewWindow:Lcom/alipay/android/app/ui/quickpay/window/web/JsWebViewWindow;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/g/g;->a(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isJsBridgeUrl(Ljava/lang/String;)Z
    .locals 1

    const-string/jumbo v0, "alipayjsbridge://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private notifyCaller()V
    .locals 5

    sget-object v1, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->lock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x4

    :try_start_0
    const-string/jumbo v2, "phonecashiermsp"

    const-string/jumbo v3, "MiniWebActivity.notifyCaller"

    const-string/jumbo v4, " MiniWebActivity notify caller"

    invoke-static {v0, v2, v3, v4}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    :try_start_1
    monitor-exit v1

    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/g/g;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private processJsBridgeFunction(Ljava/lang/String;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v5, 0x1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "[?]"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aget-object v3, v1, v2

    const/4 v0, 0x0

    array-length v4, v1

    if-le v4, v5, :cond_2

    aget-object v0, v1, v5

    :cond_2
    const-string/jumbo v1, "setTitle"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    const-string/jumbo v1, "title="

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string/jumbo v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v5

    iget-object v4, p0, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;->mTitltView:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    const-string/jumbo v1, "onBack"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-direct {p0}, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;->doOnBack()V

    :cond_4
    const-string/jumbo v1, "showBackButton"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string/jumbo v1, "bshow"

    const-string/jumbo v4, "="

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v2

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string/jumbo v1, "true"

    const-string/jumbo v4, "="

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v5

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iget-object v4, p0, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;->mBackView:Landroid/view/View;

    if-eqz v1, :cond_9

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    const-string/jumbo v1, "onRefresh"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->reload()V

    :cond_6
    const-string/jumbo v1, "onExit"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string/jumbo v1, "bsucc"

    const-string/jumbo v4, "="

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    aget-object v2, v4, v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string/jumbo v1, "true"

    const-string/jumbo v2, "="

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v5

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;->doJsExit(Z)V

    :cond_7
    const-string/jumbo v1, "onLoadJs"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;->mWebView:Landroid/webkit/WebView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "javascript:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;->mDefaultJs:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_8
    const-string/jumbo v1, "callNativeFunc"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v0}, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;->processJsBridgeFunctionV2(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_9
    const/16 v1, 0x8

    goto :goto_1
.end method

.method private processJsBridgeFunctionV2(Ljava/lang/String;)V
    .locals 7

    const/4 v2, 0x1

    const/4 v1, 0x0

    const-string/jumbo v0, "&"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v3, v0, v1

    const-string/jumbo v4, "func="

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    aget-object v4, v0, v2

    const-string/jumbo v5, "cbId="

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    aget-object v0, v0, v5

    const-string/jumbo v5, "data="

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v0, "title"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "title"

    invoke-virtual {v5, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v0, v5}, Lcom/alipay/android/app/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v6, "title"

    invoke-virtual {v0, v6}, Lcom/alipay/android/app/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v6, p0, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;->mTitltView:Landroid/widget/TextView;

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    const-string/jumbo v0, "refresh"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->reload()V

    :cond_1
    const-string/jumbo v0, "back"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;->doOnBack()V

    :cond_2
    const-string/jumbo v0, "exit"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string/jumbo v0, "success"

    invoke-virtual {v5, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v0, v5}, Lcom/alipay/android/app/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v6, "success"

    invoke-virtual {v0, v6}, Lcom/alipay/android/app/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v6, "true"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string/jumbo v6, "1"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_3
    move v0, v2

    :goto_0
    invoke-direct {p0, v0}, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;->doJsExit(Z)V

    :cond_4
    const-string/jumbo v0, "backButton"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string/jumbo v0, "show"

    invoke-virtual {v5, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v0, v5}, Lcom/alipay/android/app/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v6, "show"

    invoke-virtual {v0, v6}, Lcom/alipay/android/app/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v6, "true"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    const-string/jumbo v6, "1"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    :cond_5
    move v0, v2

    :goto_1
    iget-object v6, p0, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;->mBackView:Landroid/view/View;

    if-eqz v0, :cond_e

    move v0, v1

    :goto_2
    invoke-virtual {v6, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    const-string/jumbo v0, "refreshButton"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string/jumbo v0, "show"

    invoke-virtual {v5, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    new-instance v0, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v0, v5}, Lcom/alipay/android/app/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v6, "show"

    invoke-virtual {v0, v6}, Lcom/alipay/android/app/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v6, "true"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    const-string/jumbo v6, "1"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    :cond_7
    :goto_3
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;->mFreshView:Landroid/widget/ImageView;

    if-eqz v2, :cond_10

    :goto_4
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_8
    const-string/jumbo v0, "pushWindow"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string/jumbo v0, "url"

    invoke-virtual {v5, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    new-instance v1, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v1, v5}, Lcom/alipay/android/app/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "url"

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x0

    const-string/jumbo v6, "title"

    invoke-virtual {v1, v6}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    const-string/jumbo v0, "title"

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_9
    invoke-direct {p0, v2, v0}, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;->doJsPushWindow(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_a
    const-string/jumbo v0, "h5JsFuncCallback"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string/jumbo v0, "back"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string/jumbo v0, "success"

    invoke-virtual {v5, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    new-instance v0, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v0, v5}, Lcom/alipay/android/app/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "success"

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "fail"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-direct {p0}, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;->doJsOnBack()V

    :cond_b
    return-void

    :cond_c
    move v0, v1

    goto/16 :goto_0

    :cond_d
    move v0, v1

    goto/16 :goto_1

    :cond_e
    const/16 v0, 0x8

    goto/16 :goto_2

    :cond_f
    move v2, v1

    goto :goto_3

    :cond_10
    const/4 v1, 0x4

    goto :goto_4
.end method


# virtual methods
.method public addChromResources(Landroid/content/res/AssetManager;Ljava/lang/reflect/Method;)V
    .locals 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    :try_start_0
    invoke-static {}, Lcom/alipay/android/app/b/e/b;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string/jumbo v1, "android:string/config_webViewPackageName"

    const-string/jumbo v2, "string"

    const-string/jumbo v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v2, v0, v1}, Landroid/app/Activity;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-virtual {p2, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected configWebViewUA(Landroid/webkit/WebView;)V
    .locals 5

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/alipay/android/app/sys/b;->j()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/alipay/android/app/sys/b;->k()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "10.6.10"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, " AlipaySDK("

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    return-void
.end method

.method public finish()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;->notifyCaller()V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public onBackPressed()Z
    .locals 1

    invoke-direct {p0}, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;->doOnBack()V

    const/4 v0, 0x1

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    return-void
.end method

.method public onDestroy()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;->mFrameWebView:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;->mFrameWebView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    iput-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;->mFrameWebView:Landroid/widget/FrameLayout;

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->removeAllViews()V

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    iput-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;->mWebView:Landroid/webkit/WebView;

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;->mStack:Lcom/alipay/android/app/ui/quickpay/window/web/b;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;->mStack:Lcom/alipay/android/app/ui/quickpay/window/web/b;

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/window/web/b;->b()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;->mStack:Lcom/alipay/android/app/ui/quickpay/window/web/b;

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/window/web/b;->c()V

    iput-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;->mStack:Lcom/alipay/android/app/ui/quickpay/window/web/b;

    :cond_2
    iget-boolean v0, p0, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;->isFromMCashier:Z

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;->notifyCaller()V

    :cond_3
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onResume()V
    .locals 0

    return-void
.end method

.method public onStop()V
    .locals 2

    invoke-static {}, Lcom/alipay/android/app/sys/b;->a()Lcom/alipay/android/app/sys/b;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/sys/b;->b(Z)V

    return-void
.end method

.method public oncreate(Landroid/os/Bundle;Landroid/app/Activity;)V
    .locals 4

    const/4 v3, -0x1

    iput-object p2, p0, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;->mActivity:Landroid/app/Activity;

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v1, "title"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;->mTitle:Ljava/lang/String;

    const-string/jumbo v1, "cookie"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;->mCookie:Ljava/lang/String;

    const-string/jumbo v1, "method"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;->mMethod:Ljava/lang/String;

    const-string/jumbo v1, "backisexit"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;->isBackExit:Z

    const-string/jumbo v1, "from_mcashier"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;->isFromMCashier:Z

    const-string/jumbo v1, "url"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;->mUrl:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {}, Lcom/alipay/android/app/sys/b;->a()Lcom/alipay/android/app/sys/b;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/alipay/android/app/helper/a;->k()Lcom/alipay/android/app/helper/a;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/app/sys/b;->a(Landroid/content/Context;Lcom/alipay/android/app/k;)V

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;->mActivity:Landroid/app/Activity;

    const-string/jumbo v1, "mini_web_view_root"

    invoke-static {v1}, Lcom/alipay/android/app/g/i;->e(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setContentView(I)V

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->horizontalMargin:F

    invoke-direct {p0}, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;->getDefaultJs()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;->mDefaultJs:Ljava/lang/String;

    invoke-direct {p0}, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;->initUI()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;->configView()V

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;->configWebViewUA(Landroid/webkit/WebView;)V

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;->mMethod:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;->mWebView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;->mTitltView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;->mMethod:Ljava/lang/String;

    const-string/jumbo v1, "GET"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;->mWebView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_4
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;->mMethod:Ljava/lang/String;

    const-string/jumbo v1, "POST"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;->mWebView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;->mUrl:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->postUrl(Ljava/lang/String;[B)V

    goto :goto_1
.end method
