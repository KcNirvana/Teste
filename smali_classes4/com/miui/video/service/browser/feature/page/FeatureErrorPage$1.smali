.class Lcom/miui/video/service/browser/feature/page/FeatureErrorPage$1;
.super Lcom/miui/video/common/browser/extension/ExWebViewClient;
.source "FeatureErrorPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/service/browser/feature/page/FeatureErrorPage;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/service/browser/feature/page/FeatureErrorPage;


# direct methods
.method constructor <init>(Lcom/miui/video/service/browser/feature/page/FeatureErrorPage;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/service/browser/feature/page/FeatureErrorPage$1;->this$0:Lcom/miui/video/service/browser/feature/page/FeatureErrorPage;

    invoke-direct {p0}, Lcom/miui/video/common/browser/extension/ExWebViewClient;-><init>()V

    return-void
.end method

.method public static synthetic lambda$onReceivedError$16(Lcom/miui/video/service/browser/feature/page/FeatureErrorPage$1;Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/miui/video/service/browser/feature/page/FeatureErrorPage$1;->this$0:Lcom/miui/video/service/browser/feature/page/FeatureErrorPage;

    invoke-virtual {p1}, Lcom/miui/video/service/browser/feature/page/FeatureErrorPage;->getWebViewController()Lcom/miui/video/common/browser/foundation/WebViewController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/video/common/browser/foundation/WebViewController;->getWebView()Lcom/miui/video/common/browser/foundation/WebViewEx;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/video/common/browser/foundation/WebViewEx;->reload()V

    return-void
.end method


# virtual methods
.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/miui/video/common/browser/extension/ExWebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    iget-object p1, p0, Lcom/miui/video/service/browser/feature/page/FeatureErrorPage$1;->this$0:Lcom/miui/video/service/browser/feature/page/FeatureErrorPage;

    invoke-static {p1}, Lcom/miui/video/service/browser/feature/page/FeatureErrorPage;->access$000(Lcom/miui/video/service/browser/feature/page/FeatureErrorPage;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/service/browser/feature/page/FeatureErrorPage$1;->this$0:Lcom/miui/video/service/browser/feature/page/FeatureErrorPage;

    invoke-static {p1}, Lcom/miui/video/service/browser/feature/page/FeatureErrorPage;->access$000(Lcom/miui/video/service/browser/feature/page/FeatureErrorPage;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/service/browser/feature/page/FeatureErrorPage$1;->this$0:Lcom/miui/video/service/browser/feature/page/FeatureErrorPage;

    invoke-static {p1}, Lcom/miui/video/service/browser/feature/page/FeatureErrorPage;->access$000(Lcom/miui/video/service/browser/feature/page/FeatureErrorPage;)Landroid/view/View;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {p1, p2, p3, p4}, Lcom/miui/video/common/browser/utils/WebViewFeatureUtil;->showWebViewError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/miui/video/service/browser/feature/page/FeatureErrorPage$1;->this$0:Lcom/miui/video/service/browser/feature/page/FeatureErrorPage;

    invoke-virtual {p1}, Lcom/miui/video/service/browser/feature/page/FeatureErrorPage;->getWebView()Lcom/miui/video/common/browser/foundation/WebViewEx;

    move-result-object p1

    const-string p2, "javascript:document.body.innerHTML = \'\'"

    invoke-virtual {p1, p2}, Lcom/miui/video/common/browser/foundation/WebViewEx;->loadJavaScriptUrl(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/miui/video/service/browser/feature/page/FeatureErrorPage$1;->this$0:Lcom/miui/video/service/browser/feature/page/FeatureErrorPage;

    invoke-static {p1}, Lcom/miui/video/service/browser/feature/page/FeatureErrorPage;->access$000(Lcom/miui/video/service/browser/feature/page/FeatureErrorPage;)Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x0

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/miui/video/service/browser/feature/page/FeatureErrorPage$1;->this$0:Lcom/miui/video/service/browser/feature/page/FeatureErrorPage;

    invoke-virtual {p1}, Lcom/miui/video/service/browser/feature/page/FeatureErrorPage;->getWebViewBaseUI()Lcom/miui/video/common/browser/ui/WebViewBaseUI;

    move-result-object p1

    sget p3, Lcom/miui/video/service/R$layout;->ui_switcher_network_retry:I

    iget-object p4, p0, Lcom/miui/video/service/browser/feature/page/FeatureErrorPage$1;->this$0:Lcom/miui/video/service/browser/feature/page/FeatureErrorPage;

    invoke-virtual {p4}, Lcom/miui/video/service/browser/feature/page/FeatureErrorPage;->getWebView()Lcom/miui/video/common/browser/foundation/WebViewEx;

    move-result-object p4

    invoke-virtual {p4}, Lcom/miui/video/common/browser/foundation/WebViewEx;->getContext()Landroid/content/Context;

    move-result-object p4

    const/4 v0, 0x1

    invoke-static {p4, v0}, Lcom/miui/video/framework/utils/NetworkUtils;->isNetworkConnected(Landroid/content/Context;Z)Z

    move-result p4

    if-eqz p4, :cond_0

    sget p3, Lcom/miui/video/service/R$layout;->ui_switcher_data_retry:I

    :cond_0
    iget-object p4, p0, Lcom/miui/video/service/browser/feature/page/FeatureErrorPage$1;->this$0:Lcom/miui/video/service/browser/feature/page/FeatureErrorPage;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0, p3, p1, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    invoke-static {p4, p3}, Lcom/miui/video/service/browser/feature/page/FeatureErrorPage;->access$002(Lcom/miui/video/service/browser/feature/page/FeatureErrorPage;Landroid/view/View;)Landroid/view/View;

    iget-object p3, p0, Lcom/miui/video/service/browser/feature/page/FeatureErrorPage$1;->this$0:Lcom/miui/video/service/browser/feature/page/FeatureErrorPage;

    invoke-static {p3}, Lcom/miui/video/service/browser/feature/page/FeatureErrorPage;->access$000(Lcom/miui/video/service/browser/feature/page/FeatureErrorPage;)Landroid/view/View;

    move-result-object p3

    sget p4, Lcom/miui/video/service/R$id;->v_retry:I

    invoke-virtual {p3, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    new-instance p4, Lcom/miui/video/service/browser/feature/page/-$$Lambda$FeatureErrorPage$1$TBfTBHW9vW9PlZ5ynYsVjJ6rIao;

    invoke-direct {p4, p0}, Lcom/miui/video/service/browser/feature/page/-$$Lambda$FeatureErrorPage$1$TBfTBHW9vW9PlZ5ynYsVjJ6rIao;-><init>(Lcom/miui/video/service/browser/feature/page/FeatureErrorPage$1;)V

    invoke-virtual {p3, p4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p3, p0, Lcom/miui/video/service/browser/feature/page/FeatureErrorPage$1;->this$0:Lcom/miui/video/service/browser/feature/page/FeatureErrorPage;

    invoke-static {p3}, Lcom/miui/video/service/browser/feature/page/FeatureErrorPage;->access$000(Lcom/miui/video/service/browser/feature/page/FeatureErrorPage;)Landroid/view/View;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_1
    iget-object p1, p0, Lcom/miui/video/service/browser/feature/page/FeatureErrorPage$1;->this$0:Lcom/miui/video/service/browser/feature/page/FeatureErrorPage;

    invoke-static {p1}, Lcom/miui/video/service/browser/feature/page/FeatureErrorPage;->access$000(Lcom/miui/video/service/browser/feature/page/FeatureErrorPage;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/miui/video/service/browser/feature/page/FeatureErrorPage$1;->this$0:Lcom/miui/video/service/browser/feature/page/FeatureErrorPage;

    invoke-static {p1}, Lcom/miui/video/service/browser/feature/page/FeatureErrorPage;->access$000(Lcom/miui/video/service/browser/feature/page/FeatureErrorPage;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->bringToFront()V

    iget-object p1, p0, Lcom/miui/video/service/browser/feature/page/FeatureErrorPage$1;->this$0:Lcom/miui/video/service/browser/feature/page/FeatureErrorPage;

    invoke-static {p1}, Lcom/miui/video/service/browser/feature/page/FeatureErrorPage;->access$000(Lcom/miui/video/service/browser/feature/page/FeatureErrorPage;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method
