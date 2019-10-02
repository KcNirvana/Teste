.class Lcom/miui/video/player/service/webview/MiVideoWebview$2;
.super Landroid/webkit/WebChromeClient;
.source "MiVideoWebview.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/player/service/webview/MiVideoWebview;->initWebChromeClient()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/player/service/webview/MiVideoWebview;


# direct methods
.method constructor <init>(Lcom/miui/video/player/service/webview/MiVideoWebview;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/player/service/webview/MiVideoWebview$2;->this$0:Lcom/miui/video/player/service/webview/MiVideoWebview;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    return-void
.end method

.method public onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method
