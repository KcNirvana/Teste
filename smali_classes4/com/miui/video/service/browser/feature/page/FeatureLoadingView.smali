.class public Lcom/miui/video/service/browser/feature/page/FeatureLoadingView;
.super Lcom/miui/video/common/browser/feature/base/FeatureBase;
.source "FeatureLoadingView.java"


# instance fields
.field private extensionWebViewClient:Lcom/miui/video/common/browser/extension/ExWebViewClient;

.field private loadLayout:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/video/common/browser/feature/base/FeatureBase;-><init>()V

    new-instance v0, Lcom/miui/video/service/browser/feature/page/FeatureLoadingView$1;

    invoke-direct {v0, p0}, Lcom/miui/video/service/browser/feature/page/FeatureLoadingView$1;-><init>(Lcom/miui/video/service/browser/feature/page/FeatureLoadingView;)V

    iput-object v0, p0, Lcom/miui/video/service/browser/feature/page/FeatureLoadingView;->extensionWebViewClient:Lcom/miui/video/common/browser/extension/ExWebViewClient;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/video/service/browser/feature/page/FeatureLoadingView;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/service/browser/feature/page/FeatureLoadingView;->loadLayout:Landroid/view/View;

    return-object p0
.end method


# virtual methods
.method public init()V
    .locals 4

    invoke-super {p0}, Lcom/miui/video/common/browser/feature/base/FeatureBase;->init()V

    iget-object v0, p0, Lcom/miui/video/service/browser/feature/page/FeatureLoadingView;->extensionWebViewClient:Lcom/miui/video/common/browser/extension/ExWebViewClient;

    invoke-virtual {p0, v0}, Lcom/miui/video/service/browser/feature/page/FeatureLoadingView;->setExtensionWebViewClient(Lcom/miui/video/common/browser/extension/ExWebViewClient;)V

    invoke-virtual {p0}, Lcom/miui/video/service/browser/feature/page/FeatureLoadingView;->getWebViewController()Lcom/miui/video/common/browser/foundation/WebViewController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/common/browser/foundation/WebViewController;->getWebViewBaseUI()Lcom/miui/video/common/browser/ui/WebViewBaseUI;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/video/service/browser/feature/page/FeatureLoadingView;->getWebViewBaseUI()Lcom/miui/video/common/browser/ui/WebViewBaseUI;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/video/service/browser/feature/page/FeatureLoadingView;->loadLayout:Landroid/view/View;

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/miui/video/service/R$layout;->placeholder_common_layout_loading:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/video/service/browser/feature/page/FeatureLoadingView;->loadLayout:Landroid/view/View;

    iget-object v1, p0, Lcom/miui/video/service/browser/feature/page/FeatureLoadingView;->loadLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public varargs onReceiveEvent(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/miui/video/service/browser/feature/page/FeatureLoadingView;->init()V

    invoke-super {p0, p1, p2}, Lcom/miui/video/common/browser/feature/base/FeatureBase;->onReceiveEvent(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public unInit()V
    .locals 1

    invoke-super {p0}, Lcom/miui/video/common/browser/feature/base/FeatureBase;->unInit()V

    iget-object v0, p0, Lcom/miui/video/service/browser/feature/page/FeatureLoadingView;->loadLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/video/service/browser/feature/page/FeatureLoadingView;->loadLayout:Landroid/view/View;

    :cond_0
    return-void
.end method
