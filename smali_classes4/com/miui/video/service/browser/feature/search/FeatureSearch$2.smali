.class Lcom/miui/video/service/browser/feature/search/FeatureSearch$2;
.super Lcom/miui/video/common/browser/extension/ExWebChromeClient;
.source "FeatureSearch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/service/browser/feature/search/FeatureSearch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/service/browser/feature/search/FeatureSearch;


# direct methods
.method constructor <init>(Lcom/miui/video/service/browser/feature/search/FeatureSearch;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/service/browser/feature/search/FeatureSearch$2;->this$0:Lcom/miui/video/service/browser/feature/search/FeatureSearch;

    invoke-direct {p0}, Lcom/miui/video/common/browser/extension/ExWebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onHideCustomView()V
    .locals 1

    invoke-super {p0}, Lcom/miui/video/common/browser/extension/ExWebChromeClient;->onHideCustomView()V

    iget-object v0, p0, Lcom/miui/video/service/browser/feature/search/FeatureSearch$2;->this$0:Lcom/miui/video/service/browser/feature/search/FeatureSearch;

    invoke-static {v0}, Lcom/miui/video/service/browser/feature/search/FeatureSearch;->access$000(Lcom/miui/video/service/browser/feature/search/FeatureSearch;)Lcom/miui/video/service/browser/feature/search/FeatureSearch$IOnPageChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/service/browser/feature/search/FeatureSearch$2;->this$0:Lcom/miui/video/service/browser/feature/search/FeatureSearch;

    invoke-static {v0}, Lcom/miui/video/service/browser/feature/search/FeatureSearch;->access$000(Lcom/miui/video/service/browser/feature/search/FeatureSearch;)Lcom/miui/video/service/browser/feature/search/FeatureSearch$IOnPageChangeListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/video/service/browser/feature/search/FeatureSearch$IOnPageChangeListener;->onHideCustomView()V

    :cond_0
    return-void
.end method

.method public onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/miui/video/common/browser/extension/ExWebChromeClient;->onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V

    iget-object v0, p0, Lcom/miui/video/service/browser/feature/search/FeatureSearch$2;->this$0:Lcom/miui/video/service/browser/feature/search/FeatureSearch;

    invoke-static {v0}, Lcom/miui/video/service/browser/feature/search/FeatureSearch;->access$000(Lcom/miui/video/service/browser/feature/search/FeatureSearch;)Lcom/miui/video/service/browser/feature/search/FeatureSearch$IOnPageChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/service/browser/feature/search/FeatureSearch$2;->this$0:Lcom/miui/video/service/browser/feature/search/FeatureSearch;

    invoke-static {v0}, Lcom/miui/video/service/browser/feature/search/FeatureSearch;->access$000(Lcom/miui/video/service/browser/feature/search/FeatureSearch;)Lcom/miui/video/service/browser/feature/search/FeatureSearch$IOnPageChangeListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/miui/video/service/browser/feature/search/FeatureSearch$IOnPageChangeListener;->onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V

    :cond_0
    return-void
.end method
