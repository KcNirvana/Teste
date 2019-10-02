.class Lcom/miui/video/common/browser/feature/progressbar/FeatureProgressBar$2;
.super Lcom/miui/video/common/browser/extension/ExWebChromeClient;
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

    iput-object p1, p0, Lcom/miui/video/common/browser/feature/progressbar/FeatureProgressBar$2;->this$0:Lcom/miui/video/common/browser/feature/progressbar/FeatureProgressBar;

    invoke-direct {p0}, Lcom/miui/video/common/browser/extension/ExWebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 2

    instance-of v0, p1, Lcom/miui/video/common/browser/foundation/WebViewEx;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "about:blank"

    check-cast p1, Lcom/miui/video/common/browser/foundation/WebViewEx;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/miui/video/common/browser/foundation/WebViewEx;->getUrl(Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/miui/video/common/browser/feature/progressbar/FeatureProgressBar$2;->this$0:Lcom/miui/video/common/browser/feature/progressbar/FeatureProgressBar;

    invoke-static {p1}, Lcom/miui/video/common/browser/feature/progressbar/FeatureProgressBar;->access$000(Lcom/miui/video/common/browser/feature/progressbar/FeatureProgressBar;)Lcom/miui/video/common/browser/feature/progressbar/WebViewProgress;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/miui/video/common/browser/feature/progressbar/WebViewProgress;->onProgress(I)V

    :cond_1
    return-void
.end method
