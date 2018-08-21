.class public Lcom/ali/user/mobile/h5/AliuserWebViewActivity;
.super Lcom/ali/user/mobile/base/BaseActivity;
.source "AliuserWebViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ali/user/mobile/h5/AliuserWebViewActivity$b;,
        Lcom/ali/user/mobile/h5/AliuserWebViewActivity$a;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private actionUrl:Ljava/lang/String;

.field private mActionButton:Lcom/ali/user/mobile/ui/widget/APButton;

.field private mApFlowTipView:Lcom/ali/user/mobile/ui/widget/APFlowTipView;

.field private mErrorActionUrl:Ljava/lang/String;

.field private mLoadUrlError:Z

.field private mTitleBar:Lcom/ali/user/mobile/ui/widget/APTitleBar;

.field private mUrl:Ljava/lang/String;

.field private mWebView:Landroid/webkit/WebView;

.field private parentView:Landroid/widget/LinearLayout;

.field private title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/ali/user/mobile/h5/AliuserWebViewActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ali/user/mobile/h5/AliuserWebViewActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/ali/user/mobile/base/BaseActivity;-><init>()V

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/ali/user/mobile/h5/AliuserWebViewActivity;->actionUrl:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/ali/user/mobile/h5/AliuserWebViewActivity;->title:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/ali/user/mobile/h5/AliuserWebViewActivity;)Landroid/webkit/WebView;
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/h5/AliuserWebViewActivity;->mWebView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/ali/user/mobile/h5/AliuserWebViewActivity;)Lcom/ali/user/mobile/ui/widget/APTitleBar;
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/h5/AliuserWebViewActivity;->mTitleBar:Lcom/ali/user/mobile/ui/widget/APTitleBar;

    return-object v0
.end method

.method static synthetic access$200(Lcom/ali/user/mobile/h5/AliuserWebViewActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/ali/user/mobile/h5/AliuserWebViewActivity;->mLoadUrlError:Z

    return v0
.end method

.method static synthetic access$202(Lcom/ali/user/mobile/h5/AliuserWebViewActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/ali/user/mobile/h5/AliuserWebViewActivity;->mLoadUrlError:Z

    return p1
.end method

.method static synthetic access$300(Lcom/ali/user/mobile/h5/AliuserWebViewActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/ali/user/mobile/h5/AliuserWebViewActivity;->hideErrorPage()V

    return-void
.end method

.method static synthetic access$400(Lcom/ali/user/mobile/h5/AliuserWebViewActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/ali/user/mobile/h5/AliuserWebViewActivity;->showErrorPage()V

    return-void
.end method

.method static synthetic access$500(Lcom/ali/user/mobile/h5/AliuserWebViewActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/h5/AliuserWebViewActivity;->mErrorActionUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Lcom/ali/user/mobile/h5/AliuserWebViewActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/ali/user/mobile/h5/AliuserWebViewActivity;->mErrorActionUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/ali/user/mobile/h5/AliuserWebViewActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ali/user/mobile/h5/AliuserWebViewActivity;->startLoadUrl(Ljava/lang/String;)V

    return-void
.end method

.method private hideErrorPage()V
    .locals 2

    iget-object v0, p0, Lcom/ali/user/mobile/h5/AliuserWebViewActivity;->mWebView:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    iget-object v0, p0, Lcom/ali/user/mobile/h5/AliuserWebViewActivity;->mApFlowTipView:Lcom/ali/user/mobile/ui/widget/APFlowTipView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/ui/widget/APFlowTipView;->setVisibility(I)V

    return-void
.end method

.method private initErrorPage()V
    .locals 2

    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->aliuser_flow_tipview:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/h5/AliuserWebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ali/user/mobile/ui/widget/APFlowTipView;

    iput-object v0, p0, Lcom/ali/user/mobile/h5/AliuserWebViewActivity;->mApFlowTipView:Lcom/ali/user/mobile/ui/widget/APFlowTipView;

    iget-object v0, p0, Lcom/ali/user/mobile/h5/AliuserWebViewActivity;->mApFlowTipView:Lcom/ali/user/mobile/ui/widget/APFlowTipView;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/ui/widget/APFlowTipView;->resetFlowTipType(I)V

    iget-object v0, p0, Lcom/ali/user/mobile/h5/AliuserWebViewActivity;->mApFlowTipView:Lcom/ali/user/mobile/ui/widget/APFlowTipView;

    sget v1, Lcom/ali/user/mobile/security/ui/R$string;->alipay_flow_network_error:I

    invoke-virtual {p0, v1}, Lcom/ali/user/mobile/h5/AliuserWebViewActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/ui/widget/APFlowTipView;->setTips(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ali/user/mobile/h5/AliuserWebViewActivity;->mApFlowTipView:Lcom/ali/user/mobile/ui/widget/APFlowTipView;

    sget v1, Lcom/ali/user/mobile/security/ui/R$string;->alipay_flow_network_check:I

    invoke-virtual {p0, v1}, Lcom/ali/user/mobile/h5/AliuserWebViewActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/ui/widget/APFlowTipView;->setSubTips(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ali/user/mobile/h5/AliuserWebViewActivity;->mApFlowTipView:Lcom/ali/user/mobile/ui/widget/APFlowTipView;

    invoke-virtual {v0}, Lcom/ali/user/mobile/ui/widget/APFlowTipView;->getActionButton()Lcom/ali/user/mobile/ui/widget/APButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/h5/AliuserWebViewActivity;->mActionButton:Lcom/ali/user/mobile/ui/widget/APButton;

    iget-object v0, p0, Lcom/ali/user/mobile/h5/AliuserWebViewActivity;->mActionButton:Lcom/ali/user/mobile/ui/widget/APButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/ui/widget/APButton;->setVisibility(I)V

    return-void
.end method

.method private initTitleBar()V
    .locals 2

    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->aliuser_simple_action_title:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/h5/AliuserWebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ali/user/mobile/ui/widget/APTitleBar;

    iput-object v0, p0, Lcom/ali/user/mobile/h5/AliuserWebViewActivity;->mTitleBar:Lcom/ali/user/mobile/ui/widget/APTitleBar;

    iget-object v0, p0, Lcom/ali/user/mobile/h5/AliuserWebViewActivity;->mTitleBar:Lcom/ali/user/mobile/ui/widget/APTitleBar;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/ui/widget/APTitleBar;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/ali/user/mobile/h5/AliuserWebViewActivity;->mTitleBar:Lcom/ali/user/mobile/ui/widget/APTitleBar;

    iget-object v1, p0, Lcom/ali/user/mobile/h5/AliuserWebViewActivity;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/ui/widget/APTitleBar;->setTitleText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ali/user/mobile/h5/AliuserWebViewActivity;->mTitleBar:Lcom/ali/user/mobile/ui/widget/APTitleBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/ui/widget/APTitleBar;->setVisibility(I)V

    return-void
.end method

.method private initWebView()V
    .locals 3

    const/4 v2, 0x0

    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->inside_aliuser_webview:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/h5/AliuserWebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/ali/user/mobile/h5/AliuserWebViewActivity;->mWebView:Landroid/webkit/WebView;

    iget-object v0, p0, Lcom/ali/user/mobile/h5/AliuserWebViewActivity;->mWebView:Landroid/webkit/WebView;

    const-string/jumbo v1, "searchBoxJavaBridge_"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ali/user/mobile/h5/AliuserWebViewActivity;->mWebView:Landroid/webkit/WebView;

    const-string/jumbo v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ali/user/mobile/h5/AliuserWebViewActivity;->mWebView:Landroid/webkit/WebView;

    const-string/jumbo v1, "accessibilityTraversal"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ali/user/mobile/h5/AliuserWebViewActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Lcom/ali/user/mobile/h5/AliuserWebViewActivity$b;

    invoke-direct {v1, p0}, Lcom/ali/user/mobile/h5/AliuserWebViewActivity$b;-><init>(Lcom/ali/user/mobile/h5/AliuserWebViewActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Lcom/ali/user/mobile/h5/AliuserWebViewActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Lcom/ali/user/mobile/h5/AliuserWebViewActivity$a;

    invoke-direct {v1, p0}, Lcom/ali/user/mobile/h5/AliuserWebViewActivity$a;-><init>(Lcom/ali/user/mobile/h5/AliuserWebViewActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    iget-object v0, p0, Lcom/ali/user/mobile/h5/AliuserWebViewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    iget-object v0, p0, Lcom/ali/user/mobile/h5/AliuserWebViewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    invoke-direct {p0}, Lcom/ali/user/mobile/h5/AliuserWebViewActivity;->setWebViewSettings()V

    return-void
.end method

.method private setOnBackBtnListener()V
    .locals 2

    iget-object v0, p0, Lcom/ali/user/mobile/h5/AliuserWebViewActivity;->mTitleBar:Lcom/ali/user/mobile/ui/widget/APTitleBar;

    new-instance v1, Lcom/ali/user/mobile/h5/a;

    invoke-direct {v1, p0}, Lcom/ali/user/mobile/h5/a;-><init>(Lcom/ali/user/mobile/h5/AliuserWebViewActivity;)V

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/ui/widget/APTitleBar;->setBackButtonListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private setWebViewSettings()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/ali/user/mobile/h5/AliuserWebViewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    return-void
.end method

.method private showErrorPage()V
    .locals 2

    iget-object v0, p0, Lcom/ali/user/mobile/h5/AliuserWebViewActivity;->mActionButton:Lcom/ali/user/mobile/ui/widget/APButton;

    new-instance v1, Lcom/ali/user/mobile/h5/b;

    invoke-direct {v1, p0}, Lcom/ali/user/mobile/h5/b;-><init>(Lcom/ali/user/mobile/h5/AliuserWebViewActivity;)V

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/ui/widget/APButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/ali/user/mobile/h5/AliuserWebViewActivity;->mWebView:Landroid/webkit/WebView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    iget-object v0, p0, Lcom/ali/user/mobile/h5/AliuserWebViewActivity;->mApFlowTipView:Lcom/ali/user/mobile/ui/widget/APFlowTipView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/ui/widget/APFlowTipView;->setVisibility(I)V

    return-void
.end method

.method private startLoadUrl(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/ali/user/mobile/h5/AliuserWebViewActivity;->mApFlowTipView:Lcom/ali/user/mobile/ui/widget/APFlowTipView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/ui/widget/APFlowTipView;->setVisibility(I)V

    iget-object v0, p0, Lcom/ali/user/mobile/h5/AliuserWebViewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ali/user/mobile/h5/AliuserWebViewActivity;->mTitleBar:Lcom/ali/user/mobile/ui/widget/APTitleBar;

    invoke-virtual {v0}, Lcom/ali/user/mobile/ui/widget/APTitleBar;->startProgressBar()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/ali/user/mobile/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    sget v0, Lcom/ali/user/mobile/security/ui/R$layout;->alipay_webview_nav_login:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/h5/AliuserWebViewActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/ali/user/mobile/h5/AliuserWebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "url"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ali/user/mobile/h5/AliuserWebViewActivity;->actionUrl:Ljava/lang/String;

    const-string/jumbo v1, "dt"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/h5/AliuserWebViewActivity;->title:Ljava/lang/String;

    :cond_0
    invoke-direct {p0}, Lcom/ali/user/mobile/h5/AliuserWebViewActivity;->initTitleBar()V

    invoke-direct {p0}, Lcom/ali/user/mobile/h5/AliuserWebViewActivity;->initWebView()V

    invoke-direct {p0}, Lcom/ali/user/mobile/h5/AliuserWebViewActivity;->initErrorPage()V

    iget-object v0, p0, Lcom/ali/user/mobile/h5/AliuserWebViewActivity;->actionUrl:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/ali/user/mobile/h5/AliuserWebViewActivity;->startLoadUrl(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/ali/user/mobile/h5/AliuserWebViewActivity;->setOnBackBtnListener()V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    invoke-super {p0}, Lcom/ali/user/mobile/base/BaseActivity;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/ali/user/mobile/h5/AliuserWebViewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ali/user/mobile/h5/AliuserWebViewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    const-string/jumbo v0, "webview"

    const-string/jumbo v1, "back"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/ali/user/mobile/base/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected setAppId()V
    .locals 0

    return-void
.end method
