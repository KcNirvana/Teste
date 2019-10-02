.class Lcom/miui/video/service/browser/feature/page/FeatureLoadingView$1;
.super Lcom/miui/video/common/browser/extension/ExWebViewClient;
.source "FeatureLoadingView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/service/browser/feature/page/FeatureLoadingView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/service/browser/feature/page/FeatureLoadingView;


# direct methods
.method constructor <init>(Lcom/miui/video/service/browser/feature/page/FeatureLoadingView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/service/browser/feature/page/FeatureLoadingView$1;->this$0:Lcom/miui/video/service/browser/feature/page/FeatureLoadingView;

    invoke-direct {p0}, Lcom/miui/video/common/browser/extension/ExWebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/miui/video/common/browser/extension/ExWebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/miui/video/service/browser/feature/page/FeatureLoadingView$1;->this$0:Lcom/miui/video/service/browser/feature/page/FeatureLoadingView;

    invoke-static {p1}, Lcom/miui/video/service/browser/feature/page/FeatureLoadingView;->access$000(Lcom/miui/video/service/browser/feature/page/FeatureLoadingView;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/service/browser/feature/page/FeatureLoadingView$1;->this$0:Lcom/miui/video/service/browser/feature/page/FeatureLoadingView;

    invoke-static {p1}, Lcom/miui/video/service/browser/feature/page/FeatureLoadingView;->access$000(Lcom/miui/video/service/browser/feature/page/FeatureLoadingView;)Landroid/view/View;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/miui/video/common/browser/extension/ExWebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    iget-object p1, p0, Lcom/miui/video/service/browser/feature/page/FeatureLoadingView$1;->this$0:Lcom/miui/video/service/browser/feature/page/FeatureLoadingView;

    invoke-static {p1}, Lcom/miui/video/service/browser/feature/page/FeatureLoadingView;->access$000(Lcom/miui/video/service/browser/feature/page/FeatureLoadingView;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/service/browser/feature/page/FeatureLoadingView$1;->this$0:Lcom/miui/video/service/browser/feature/page/FeatureLoadingView;

    invoke-static {p1}, Lcom/miui/video/service/browser/feature/page/FeatureLoadingView;->access$000(Lcom/miui/video/service/browser/feature/page/FeatureLoadingView;)Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Lcom/miui/video/common/browser/extension/ExWebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/miui/video/service/browser/feature/page/FeatureLoadingView$1;->this$0:Lcom/miui/video/service/browser/feature/page/FeatureLoadingView;

    invoke-static {p1}, Lcom/miui/video/service/browser/feature/page/FeatureLoadingView;->access$000(Lcom/miui/video/service/browser/feature/page/FeatureLoadingView;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/service/browser/feature/page/FeatureLoadingView$1;->this$0:Lcom/miui/video/service/browser/feature/page/FeatureLoadingView;

    invoke-static {p1}, Lcom/miui/video/service/browser/feature/page/FeatureLoadingView;->access$000(Lcom/miui/video/service/browser/feature/page/FeatureLoadingView;)Landroid/view/View;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method
