.class public Lcom/miui/video/common/browser/ui/WebViewBaseUI;
.super Landroid/widget/FrameLayout;
.source "WebViewBaseUI.java"


# instance fields
.field private featureList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/video/common/browser/feature/base/FeatureBase;",
            ">;"
        }
    .end annotation
.end field

.field private mWebView:Lcom/miui/video/common/browser/foundation/WebViewEx;

.field private mWebViewController:Lcom/miui/video/common/browser/foundation/WebViewController;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/miui/video/common/browser/ui/WebViewBaseUI;->initView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0, p1}, Lcom/miui/video/common/browser/ui/WebViewBaseUI;->initView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0, p1}, Lcom/miui/video/common/browser/ui/WebViewBaseUI;->initView(Landroid/content/Context;)V

    return-void
.end method

.method private initView(Landroid/content/Context;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/browser/ui/WebViewBaseUI;->mWebView:Lcom/miui/video/common/browser/foundation/WebViewEx;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget v0, Lcom/miui/video/common/browser/R$layout;->webview_base:I

    invoke-static {p1, v0, p0}, Lcom/miui/video/common/browser/ui/WebViewBaseUI;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    sget v0, Lcom/miui/video/common/browser/R$id;->webView:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/miui/video/common/browser/foundation/WebViewEx;

    iput-object p1, p0, Lcom/miui/video/common/browser/ui/WebViewBaseUI;->mWebView:Lcom/miui/video/common/browser/foundation/WebViewEx;

    return-void
.end method


# virtual methods
.method public getContainer()Landroid/view/ViewGroup;
    .locals 0

    return-object p0
.end method

.method public getWebView()Lcom/miui/video/common/browser/foundation/WebViewEx;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/browser/ui/WebViewBaseUI;->mWebView:Lcom/miui/video/common/browser/foundation/WebViewEx;

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 3

    iget-object v0, p0, Lcom/miui/video/common/browser/ui/WebViewBaseUI;->featureList:Ljava/util/List;

    const-string v1, "onAttachedToWindow"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/miui/video/common/browser/feature/base/FeatureBase;->raiseWebViewBaseUIExtension(Ljava/util/List;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    iget-object v0, p0, Lcom/miui/video/common/browser/ui/WebViewBaseUI;->featureList:Ljava/util/List;

    const-string v1, "onDetachedFromWindow"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/miui/video/common/browser/feature/base/FeatureBase;->raiseWebViewBaseUIExtension(Ljava/util/List;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    return-void
.end method

.method public setFeatureList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/video/common/browser/feature/base/FeatureBase;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/video/common/browser/ui/WebViewBaseUI;->featureList:Ljava/util/List;

    iget-object v0, p0, Lcom/miui/video/common/browser/ui/WebViewBaseUI;->mWebView:Lcom/miui/video/common/browser/foundation/WebViewEx;

    invoke-virtual {v0, p1}, Lcom/miui/video/common/browser/foundation/WebViewEx;->setFeatureList(Ljava/util/List;)V

    return-void
.end method

.method public setWebViewController(Lcom/miui/video/common/browser/foundation/WebViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/common/browser/ui/WebViewBaseUI;->mWebViewController:Lcom/miui/video/common/browser/foundation/WebViewController;

    return-void
.end method
