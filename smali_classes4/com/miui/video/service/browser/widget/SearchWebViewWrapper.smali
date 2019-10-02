.class public Lcom/miui/video/service/browser/widget/SearchWebViewWrapper;
.super Lcom/miui/video/service/browser/wrapper/BaseWebViewWrapper;
.source "SearchWebViewWrapper.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lcom/miui/video/service/browser/wrapper/BaseWebViewWrapper;-><init>(Landroid/content/Context;)V

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

    invoke-direct {p0, p1, p2}, Lcom/miui/video/service/browser/wrapper/BaseWebViewWrapper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/video/service/browser/wrapper/BaseWebViewWrapper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public createWebViewController(Landroid/content/Context;)Lcom/miui/video/common/browser/foundation/WebViewController;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-static {p1}, Lcom/miui/video/service/browser/factory/WebViewControllerFactory;->createSearchWebViewController(Landroid/content/Context;)Lcom/miui/video/common/browser/foundation/WebViewController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/video/common/browser/foundation/WebViewController;->getWebView()Lcom/miui/video/common/browser/foundation/WebViewEx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/common/browser/foundation/WebViewEx;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    return-object p1
.end method
