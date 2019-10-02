.class Lcom/miui/video/biz/search/feature/FeatureSearchTrack$1;
.super Lcom/miui/video/common/browser/extension/ExWebViewClient;
.source "FeatureSearchTrack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/biz/search/feature/FeatureSearchTrack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/biz/search/feature/FeatureSearchTrack;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/search/feature/FeatureSearchTrack;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/search/feature/FeatureSearchTrack$1;->this$0:Lcom/miui/video/biz/search/feature/FeatureSearchTrack;

    invoke-direct {p0}, Lcom/miui/video/common/browser/extension/ExWebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public doUpdateVisitedHistory(Landroid/webkit/WebView;Ljava/lang/String;Z)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/miui/video/common/browser/extension/ExWebViewClient;->doUpdateVisitedHistory(Landroid/webkit/WebView;Ljava/lang/String;Z)V

    iget-object p1, p0, Lcom/miui/video/biz/search/feature/FeatureSearchTrack$1;->this$0:Lcom/miui/video/biz/search/feature/FeatureSearchTrack;

    invoke-static {p1, p2}, Lcom/miui/video/biz/search/feature/FeatureSearchTrack;->access$200(Lcom/miui/video/biz/search/feature/FeatureSearchTrack;Ljava/lang/String;)V

    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/miui/video/common/browser/extension/ExWebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/miui/video/biz/search/feature/FeatureSearchTrack$1;->this$0:Lcom/miui/video/biz/search/feature/FeatureSearchTrack;

    invoke-static {p1}, Lcom/miui/video/biz/search/feature/FeatureSearchTrack;->access$100(Lcom/miui/video/biz/search/feature/FeatureSearchTrack;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/biz/search/feature/FeatureSearchTrack$1;->this$0:Lcom/miui/video/biz/search/feature/FeatureSearchTrack;

    const-string v0, "others_search_success"

    invoke-static {p1, v0, p2}, Lcom/miui/video/biz/search/feature/FeatureSearchTrack;->access$000(Lcom/miui/video/biz/search/feature/FeatureSearchTrack;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/video/biz/search/feature/FeatureSearchTrack$1;->this$0:Lcom/miui/video/biz/search/feature/FeatureSearchTrack;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/miui/video/biz/search/feature/FeatureSearchTrack;->access$102(Lcom/miui/video/biz/search/feature/FeatureSearchTrack;Z)Z

    :goto_0
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Lcom/miui/video/common/browser/extension/ExWebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, p2, p3, p4}, Lcom/miui/video/common/browser/utils/WebViewFeatureUtil;->showWebViewError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/biz/search/feature/FeatureSearchTrack$1;->this$0:Lcom/miui/video/biz/search/feature/FeatureSearchTrack;

    const-string p2, "others_search_fail"

    invoke-static {p1, p2, p4}, Lcom/miui/video/biz/search/feature/FeatureSearchTrack;->access$000(Lcom/miui/video/biz/search/feature/FeatureSearchTrack;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/miui/video/biz/search/feature/FeatureSearchTrack$1;->this$0:Lcom/miui/video/biz/search/feature/FeatureSearchTrack;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/miui/video/biz/search/feature/FeatureSearchTrack;->access$102(Lcom/miui/video/biz/search/feature/FeatureSearchTrack;Z)Z

    :cond_0
    return-void
.end method
