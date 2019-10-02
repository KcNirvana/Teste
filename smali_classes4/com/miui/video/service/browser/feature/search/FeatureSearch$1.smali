.class Lcom/miui/video/service/browser/feature/search/FeatureSearch$1;
.super Lcom/miui/video/common/browser/extension/ExWebViewClient;
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

    iput-object p1, p0, Lcom/miui/video/service/browser/feature/search/FeatureSearch$1;->this$0:Lcom/miui/video/service/browser/feature/search/FeatureSearch;

    invoke-direct {p0}, Lcom/miui/video/common/browser/extension/ExWebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public doUpdateVisitedHistory(Landroid/webkit/WebView;Ljava/lang/String;Z)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lcom/miui/video/common/browser/extension/ExWebViewClient;->doUpdateVisitedHistory(Landroid/webkit/WebView;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/miui/video/service/browser/feature/search/FeatureSearch$1;->this$0:Lcom/miui/video/service/browser/feature/search/FeatureSearch;

    invoke-static {v0}, Lcom/miui/video/service/browser/feature/search/FeatureSearch;->access$000(Lcom/miui/video/service/browser/feature/search/FeatureSearch;)Lcom/miui/video/service/browser/feature/search/FeatureSearch$IOnPageChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/service/browser/feature/search/FeatureSearch$1;->this$0:Lcom/miui/video/service/browser/feature/search/FeatureSearch;

    invoke-static {v0}, Lcom/miui/video/service/browser/feature/search/FeatureSearch;->access$000(Lcom/miui/video/service/browser/feature/search/FeatureSearch;)Lcom/miui/video/service/browser/feature/search/FeatureSearch$IOnPageChangeListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/miui/video/service/browser/feature/search/FeatureSearch$IOnPageChangeListener;->onPageChanged(Landroid/webkit/WebView;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method
