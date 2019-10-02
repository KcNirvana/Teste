.class public abstract Lcom/miui/video/service/browser/wrapper/BaseWebViewWrapper;
.super Landroid/widget/FrameLayout;
.source "BaseWebViewWrapper.java"


# instance fields
.field private mWebViewController:Lcom/miui/video/common/browser/foundation/WebViewController;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/miui/video/service/browser/wrapper/BaseWebViewWrapper;->initWebViewController(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0, p1}, Lcom/miui/video/service/browser/wrapper/BaseWebViewWrapper;->initWebViewController(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0, p1}, Lcom/miui/video/service/browser/wrapper/BaseWebViewWrapper;->initWebViewController(Landroid/content/Context;)V

    return-void
.end method

.method private initWebViewController(Landroid/content/Context;)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/miui/video/service/browser/wrapper/BaseWebViewWrapper;->createWebViewController(Landroid/content/Context;)Lcom/miui/video/common/browser/foundation/WebViewController;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/video/service/browser/wrapper/BaseWebViewWrapper;->mWebViewController:Lcom/miui/video/common/browser/foundation/WebViewController;

    iget-object p1, p0, Lcom/miui/video/service/browser/wrapper/BaseWebViewWrapper;->mWebViewController:Lcom/miui/video/common/browser/foundation/WebViewController;

    invoke-virtual {p1}, Lcom/miui/video/common/browser/foundation/WebViewController;->getWebViewBaseUI()Lcom/miui/video/common/browser/ui/WebViewBaseUI;

    move-result-object p1

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v0}, Lcom/miui/video/service/browser/wrapper/BaseWebViewWrapper;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public abstract createWebViewController(Landroid/content/Context;)Lcom/miui/video/common/browser/foundation/WebViewController;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end method

.method public getWebView()Lcom/miui/video/common/browser/foundation/WebViewEx;
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lcom/miui/video/service/browser/wrapper/BaseWebViewWrapper;->getWebViewController()Lcom/miui/video/common/browser/foundation/WebViewController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/common/browser/foundation/WebViewController;->getWebView()Lcom/miui/video/common/browser/foundation/WebViewEx;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getWebViewController()Lcom/miui/video/common/browser/foundation/WebViewController;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/service/browser/wrapper/BaseWebViewWrapper;->mWebViewController:Lcom/miui/video/common/browser/foundation/WebViewController;

    return-object v0
.end method
