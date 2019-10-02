.class public Lcom/miui/video/common/browser/feature/progressbar/FeatureProgressBar;
.super Lcom/miui/video/common/browser/feature/base/FeatureBase;
.source "FeatureProgressBar.java"


# instance fields
.field private extensionWebChromeClient:Lcom/miui/video/common/browser/extension/ExWebChromeClient;

.field private extensionWebViewClient:Lcom/miui/video/common/browser/extension/ExWebViewClient;

.field private progressBar:Lcom/miui/video/common/browser/feature/progressbar/WebViewProgress;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/video/common/browser/feature/base/FeatureBase;-><init>()V

    new-instance v0, Lcom/miui/video/common/browser/feature/progressbar/FeatureProgressBar$1;

    invoke-direct {v0, p0}, Lcom/miui/video/common/browser/feature/progressbar/FeatureProgressBar$1;-><init>(Lcom/miui/video/common/browser/feature/progressbar/FeatureProgressBar;)V

    iput-object v0, p0, Lcom/miui/video/common/browser/feature/progressbar/FeatureProgressBar;->extensionWebViewClient:Lcom/miui/video/common/browser/extension/ExWebViewClient;

    new-instance v0, Lcom/miui/video/common/browser/feature/progressbar/FeatureProgressBar$2;

    invoke-direct {v0, p0}, Lcom/miui/video/common/browser/feature/progressbar/FeatureProgressBar$2;-><init>(Lcom/miui/video/common/browser/feature/progressbar/FeatureProgressBar;)V

    iput-object v0, p0, Lcom/miui/video/common/browser/feature/progressbar/FeatureProgressBar;->extensionWebChromeClient:Lcom/miui/video/common/browser/extension/ExWebChromeClient;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/video/common/browser/feature/progressbar/FeatureProgressBar;)Lcom/miui/video/common/browser/feature/progressbar/WebViewProgress;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/common/browser/feature/progressbar/FeatureProgressBar;->progressBar:Lcom/miui/video/common/browser/feature/progressbar/WebViewProgress;

    return-object p0
.end method


# virtual methods
.method public init()V
    .locals 2

    invoke-super {p0}, Lcom/miui/video/common/browser/feature/base/FeatureBase;->init()V

    iget-object v0, p0, Lcom/miui/video/common/browser/feature/progressbar/FeatureProgressBar;->extensionWebViewClient:Lcom/miui/video/common/browser/extension/ExWebViewClient;

    invoke-virtual {p0, v0}, Lcom/miui/video/common/browser/feature/progressbar/FeatureProgressBar;->setExtensionWebViewClient(Lcom/miui/video/common/browser/extension/ExWebViewClient;)V

    iget-object v0, p0, Lcom/miui/video/common/browser/feature/progressbar/FeatureProgressBar;->extensionWebChromeClient:Lcom/miui/video/common/browser/extension/ExWebChromeClient;

    invoke-virtual {p0, v0}, Lcom/miui/video/common/browser/feature/progressbar/FeatureProgressBar;->setExtensionWebChromeClient(Lcom/miui/video/common/browser/extension/ExWebChromeClient;)V

    invoke-virtual {p0}, Lcom/miui/video/common/browser/feature/progressbar/FeatureProgressBar;->getWebViewController()Lcom/miui/video/common/browser/foundation/WebViewController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/common/browser/foundation/WebViewController;->getWebViewBaseUI()Lcom/miui/video/common/browser/ui/WebViewBaseUI;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/video/common/browser/feature/progressbar/FeatureProgressBar;->getWebViewController()Lcom/miui/video/common/browser/foundation/WebViewController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/common/browser/foundation/WebViewController;->getWebViewBaseUI()Lcom/miui/video/common/browser/ui/WebViewBaseUI;

    move-result-object v0

    sget v1, Lcom/miui/video/common/browser/R$id;->progress_bar:I

    invoke-virtual {v0, v1}, Lcom/miui/video/common/browser/ui/WebViewBaseUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/video/common/browser/feature/progressbar/WebViewProgress;

    iput-object v0, p0, Lcom/miui/video/common/browser/feature/progressbar/FeatureProgressBar;->progressBar:Lcom/miui/video/common/browser/feature/progressbar/WebViewProgress;

    :cond_0
    iget-object v0, p0, Lcom/miui/video/common/browser/feature/progressbar/FeatureProgressBar;->progressBar:Lcom/miui/video/common/browser/feature/progressbar/WebViewProgress;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/common/browser/feature/progressbar/FeatureProgressBar;->progressBar:Lcom/miui/video/common/browser/feature/progressbar/WebViewProgress;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/video/common/browser/feature/progressbar/WebViewProgress;->setVisibility(I)V

    :cond_1
    return-void
.end method
