.class public Lcom/ali/user/mobile/h5/AliuserWebViewActivity$a;
.super Landroid/webkit/WebChromeClient;
.source "AliuserWebViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ali/user/mobile/h5/AliuserWebViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/ali/user/mobile/h5/AliuserWebViewActivity;


# direct methods
.method public constructor <init>(Lcom/ali/user/mobile/h5/AliuserWebViewActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/ali/user/mobile/h5/AliuserWebViewActivity$a;->a:Lcom/ali/user/mobile/h5/AliuserWebViewActivity;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
    .locals 1

    const-string/jumbo v0, "navi_close"

    invoke-virtual {v0, p3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super/range {p0 .. p5}, Landroid/webkit/WebChromeClient;->onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z

    invoke-virtual {p5}, Landroid/webkit/JsPromptResult;->cancel()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super/range {p0 .. p5}, Landroid/webkit/WebChromeClient;->onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z

    move-result v0

    goto :goto_0
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    const/16 v0, 0x64

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/ali/user/mobile/h5/AliuserWebViewActivity$a;->a:Lcom/ali/user/mobile/h5/AliuserWebViewActivity;

    invoke-static {v0}, Lcom/ali/user/mobile/h5/AliuserWebViewActivity;->access$100(Lcom/ali/user/mobile/h5/AliuserWebViewActivity;)Lcom/ali/user/mobile/ui/widget/APTitleBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ali/user/mobile/ui/widget/APTitleBar;->stopProgressBar()V

    :cond_0
    return-void
.end method
