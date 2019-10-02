.class Lcom/miui/zeus/columbus/ad/bannerad/HtmlWebView;
.super Lcom/miui/zeus/columbus/ad/bannerad/BaseWebView;
.source "HtmlWebView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HtmlWebView"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/miui/zeus/columbus/ad/bannerad/BaseWebView;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/miui/zeus/columbus/ad/bannerad/HtmlWebView;->disableScrollingAndZoom()V

    invoke-virtual {p0}, Lcom/miui/zeus/columbus/ad/bannerad/HtmlWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-virtual {p0, v0}, Lcom/miui/zeus/columbus/ad/bannerad/HtmlWebView;->enablePlugins(Z)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/miui/zeus/columbus/ad/bannerad/HtmlWebView;->setBackgroundColor(I)V

    return-void
.end method

.method private disableScrollingAndZoom()V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/zeus/columbus/ad/bannerad/HtmlWebView;->setHorizontalScrollBarEnabled(Z)V

    invoke-virtual {p0, v0}, Lcom/miui/zeus/columbus/ad/bannerad/HtmlWebView;->setHorizontalScrollbarOverlay(Z)V

    invoke-virtual {p0, v0}, Lcom/miui/zeus/columbus/ad/bannerad/HtmlWebView;->setVerticalScrollBarEnabled(Z)V

    invoke-virtual {p0, v0}, Lcom/miui/zeus/columbus/ad/bannerad/HtmlWebView;->setVerticalScrollbarOverlay(Z)V

    invoke-virtual {p0}, Lcom/miui/zeus/columbus/ad/bannerad/HtmlWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    return-void
.end method


# virtual methods
.method public loadHtmlReponse(Ljava/lang/String;)V
    .locals 8

    const-string v0, "HtmlWebView"

    const-string v1, "loadResponse"

    invoke-static {v0, v1}, Lcom/miui/zeus/columbus/util/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "text/html"

    const-string v6, "utf-8"

    const/4 v3, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move-object v4, p1

    invoke-virtual/range {v2 .. v7}, Lcom/miui/zeus/columbus/ad/bannerad/HtmlWebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 2

    const-string v0, "HtmlWebView"

    const-string v1, "loadUrl"

    invoke-static {v0, v1}, Lcom/miui/zeus/columbus/util/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "javascript:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-super {p0, p1}, Lcom/miui/zeus/columbus/ad/bannerad/BaseWebView;->loadUrl(Ljava/lang/String;)V

    return-void

    :cond_1
    return-void
.end method

.method public stopLoading()V
    .locals 2

    iget-boolean v0, p0, Lcom/miui/zeus/columbus/ad/bannerad/HtmlWebView;->mIsDestroyed:Z

    if-eqz v0, :cond_0

    const-string v0, "HtmlWebView"

    const-string v1, "WebView stop loading called after destroyed()"

    invoke-static {v0, v1}, Lcom/miui/zeus/columbus/util/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/miui/zeus/columbus/ad/bannerad/HtmlWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-super {p0}, Lcom/miui/zeus/columbus/ad/bannerad/BaseWebView;->stopLoading()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    return-void
.end method
