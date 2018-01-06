.class Lcom/miui/weather2/bl;
.super Landroid/webkit/WebChromeClient;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/miui/weather2/WebViewActivity;


# direct methods
.method constructor <init>(Lcom/miui/weather2/WebViewActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/bl;->a:Lcom/miui/weather2/WebViewActivity;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 6

    const/16 v5, 0x8

    const/4 v4, 0x0

    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    const/16 v0, 0x64

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Lcom/miui/weather2/bl;->a:Lcom/miui/weather2/WebViewActivity;

    invoke-static {v0}, Lcom/miui/weather2/WebViewActivity;->d(Lcom/miui/weather2/WebViewActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object v0, p0, Lcom/miui/weather2/bl;->a:Lcom/miui/weather2/WebViewActivity;

    invoke-static {v0}, Lcom/miui/weather2/WebViewActivity;->d(Lcom/miui/weather2/WebViewActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    new-instance v1, Lcom/miui/weather2/bm;

    invoke-direct {v1, p0}, Lcom/miui/weather2/bm;-><init>(Lcom/miui/weather2/bl;)V

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ProgressBar;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v0, p0, Lcom/miui/weather2/bl;->a:Lcom/miui/weather2/WebViewActivity;

    invoke-virtual {v0}, Lcom/miui/weather2/WebViewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/weather2/tools/bi;->e(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/bl;->a:Lcom/miui/weather2/WebViewActivity;

    invoke-static {v0}, Lcom/miui/weather2/WebViewActivity;->b(Lcom/miui/weather2/WebViewActivity;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/webkit/WebView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/weather2/bl;->a:Lcom/miui/weather2/WebViewActivity;

    invoke-static {v0}, Lcom/miui/weather2/WebViewActivity;->c(Lcom/miui/weather2/WebViewActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-lez p2, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/bl;->a:Lcom/miui/weather2/WebViewActivity;

    invoke-static {v0}, Lcom/miui/weather2/WebViewActivity;->d(Lcom/miui/weather2/WebViewActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object v0, p0, Lcom/miui/weather2/bl;->a:Lcom/miui/weather2/WebViewActivity;

    invoke-static {v0}, Lcom/miui/weather2/WebViewActivity;->d(Lcom/miui/weather2/WebViewActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/weather2/bl;->a:Lcom/miui/weather2/WebViewActivity;

    invoke-static {v0}, Lcom/miui/weather2/WebViewActivity;->b(Lcom/miui/weather2/WebViewActivity;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/webkit/WebView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/weather2/bl;->a:Lcom/miui/weather2/WebViewActivity;

    invoke-static {v0}, Lcom/miui/weather2/WebViewActivity;->c(Lcom/miui/weather2/WebViewActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
