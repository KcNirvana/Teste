.class Lcom/miui/video/common/browser/foundation/WebViewEx$1;
.super Landroid/webkit/WebViewClient;
.source "WebViewEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/common/browser/foundation/WebViewEx;->initView(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/common/browser/foundation/WebViewEx;


# direct methods
.method constructor <init>(Lcom/miui/video/common/browser/foundation/WebViewEx;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/common/browser/foundation/WebViewEx$1;->this$0:Lcom/miui/video/common/browser/foundation/WebViewEx;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    invoke-static {p2}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/common/browser/foundation/WebViewEx$1;->this$0:Lcom/miui/video/common/browser/foundation/WebViewEx;

    invoke-static {p1, p2}, Lcom/miui/video/common/browser/foundation/WebViewEx;->access$002(Lcom/miui/video/common/browser/foundation/WebViewEx;Ljava/lang/String;)Ljava/lang/String;

    iget-object p1, p0, Lcom/miui/video/common/browser/foundation/WebViewEx$1;->this$0:Lcom/miui/video/common/browser/foundation/WebViewEx;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/miui/video/common/browser/foundation/WebViewEx;->access$102(Lcom/miui/video/common/browser/foundation/WebViewEx;Z)Z

    iget-object p1, p0, Lcom/miui/video/common/browser/foundation/WebViewEx$1;->this$0:Lcom/miui/video/common/browser/foundation/WebViewEx;

    iget-boolean p1, p1, Lcom/miui/video/common/browser/foundation/WebViewEx;->isHistoryCleared:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/common/browser/foundation/WebViewEx$1;->this$0:Lcom/miui/video/common/browser/foundation/WebViewEx;

    invoke-static {p1}, Lcom/miui/video/common/browser/foundation/WebViewEx;->access$201(Lcom/miui/video/common/browser/foundation/WebViewEx;)V

    iget-object p1, p0, Lcom/miui/video/common/browser/foundation/WebViewEx$1;->this$0:Lcom/miui/video/common/browser/foundation/WebViewEx;

    const/4 p2, 0x0

    iput-boolean p2, p1, Lcom/miui/video/common/browser/foundation/WebViewEx;->isHistoryCleared:Z

    :cond_0
    return-void
.end method
