.class Lcom/miui/video/common/browser/feature/progressbar/FeatureProgressBar$1;
.super Lcom/miui/video/common/browser/extension/ExWebViewClient;
.source "FeatureProgressBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/common/browser/feature/progressbar/FeatureProgressBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/common/browser/feature/progressbar/FeatureProgressBar;


# direct methods
.method constructor <init>(Lcom/miui/video/common/browser/feature/progressbar/FeatureProgressBar;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/common/browser/feature/progressbar/FeatureProgressBar$1;->this$0:Lcom/miui/video/common/browser/feature/progressbar/FeatureProgressBar;

    invoke-direct {p0}, Lcom/miui/video/common/browser/extension/ExWebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/miui/video/common/browser/extension/ExWebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/miui/video/common/browser/feature/progressbar/FeatureProgressBar$1;->this$0:Lcom/miui/video/common/browser/feature/progressbar/FeatureProgressBar;

    invoke-static {p1}, Lcom/miui/video/common/browser/feature/progressbar/FeatureProgressBar;->access$000(Lcom/miui/video/common/browser/feature/progressbar/FeatureProgressBar;)Lcom/miui/video/common/browser/feature/progressbar/WebViewProgress;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/common/browser/feature/progressbar/FeatureProgressBar$1;->this$0:Lcom/miui/video/common/browser/feature/progressbar/FeatureProgressBar;

    invoke-static {p1}, Lcom/miui/video/common/browser/feature/progressbar/FeatureProgressBar;->access$000(Lcom/miui/video/common/browser/feature/progressbar/FeatureProgressBar;)Lcom/miui/video/common/browser/feature/progressbar/WebViewProgress;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/video/common/browser/feature/progressbar/WebViewProgress;->finish()V

    :cond_0
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/miui/video/common/browser/extension/ExWebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    iget-object p1, p0, Lcom/miui/video/common/browser/feature/progressbar/FeatureProgressBar$1;->this$0:Lcom/miui/video/common/browser/feature/progressbar/FeatureProgressBar;

    invoke-static {p1}, Lcom/miui/video/common/browser/feature/progressbar/FeatureProgressBar;->access$000(Lcom/miui/video/common/browser/feature/progressbar/FeatureProgressBar;)Lcom/miui/video/common/browser/feature/progressbar/WebViewProgress;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/common/browser/feature/progressbar/FeatureProgressBar$1;->this$0:Lcom/miui/video/common/browser/feature/progressbar/FeatureProgressBar;

    invoke-static {p1}, Lcom/miui/video/common/browser/feature/progressbar/FeatureProgressBar;->access$000(Lcom/miui/video/common/browser/feature/progressbar/FeatureProgressBar;)Lcom/miui/video/common/browser/feature/progressbar/WebViewProgress;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/video/common/browser/feature/progressbar/WebViewProgress;->start()V

    :cond_0
    return-void
.end method
