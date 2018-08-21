.class public Lcom/ali/user/mobile/h5/AliuserWebViewActivity$b;
.super Landroid/webkit/WebViewClient;
.source "AliuserWebViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ali/user/mobile/h5/AliuserWebViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/ali/user/mobile/h5/AliuserWebViewActivity;


# direct methods
.method public constructor <init>(Lcom/ali/user/mobile/h5/AliuserWebViewActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/ali/user/mobile/h5/AliuserWebViewActivity$b;->a:Lcom/ali/user/mobile/h5/AliuserWebViewActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ali/user/mobile/h5/AliuserWebViewActivity$b;->a:Lcom/ali/user/mobile/h5/AliuserWebViewActivity;

    invoke-static {v0}, Lcom/ali/user/mobile/h5/AliuserWebViewActivity;->access$200(Lcom/ali/user/mobile/h5/AliuserWebViewActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ali/user/mobile/h5/AliuserWebViewActivity$b;->a:Lcom/ali/user/mobile/h5/AliuserWebViewActivity;

    invoke-static {v0}, Lcom/ali/user/mobile/h5/AliuserWebViewActivity;->access$300(Lcom/ali/user/mobile/h5/AliuserWebViewActivity;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/ali/user/mobile/h5/AliuserWebViewActivity$b;->a:Lcom/ali/user/mobile/h5/AliuserWebViewActivity;

    invoke-static {v0}, Lcom/ali/user/mobile/h5/AliuserWebViewActivity;->access$400(Lcom/ali/user/mobile/h5/AliuserWebViewActivity;)V

    goto :goto_0
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/ali/user/mobile/h5/AliuserWebViewActivity$b;->a:Lcom/ali/user/mobile/h5/AliuserWebViewActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/ali/user/mobile/h5/AliuserWebViewActivity;->access$202(Lcom/ali/user/mobile/h5/AliuserWebViewActivity;Z)Z

    iget-object v0, p0, Lcom/ali/user/mobile/h5/AliuserWebViewActivity$b;->a:Lcom/ali/user/mobile/h5/AliuserWebViewActivity;

    invoke-static {v0, p4}, Lcom/ali/user/mobile/h5/AliuserWebViewActivity;->access$502(Lcom/ali/user/mobile/h5/AliuserWebViewActivity;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/ali/user/mobile/h5/AliuserWebViewActivity$b;->a:Lcom/ali/user/mobile/h5/AliuserWebViewActivity;

    invoke-static {v0}, Lcom/ali/user/mobile/h5/AliuserWebViewActivity;->access$400(Lcom/ali/user/mobile/h5/AliuserWebViewActivity;)V

    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
