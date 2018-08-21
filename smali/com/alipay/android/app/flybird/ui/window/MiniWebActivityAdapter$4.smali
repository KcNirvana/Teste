.class Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter$4;
.super Landroid/webkit/WebViewClient;
.source "MiniWebActivityAdapter.java"


# instance fields
.field final synthetic this$0:Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter$4;->this$0:Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string/jumbo v0, "javascript:window.prompt(\'<head>\'+document.getElementsByTagName(\'html\')[0].innerHTML+\'</head>\');"

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter$4;->this$0:Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;

    invoke-static {v0}, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;->access$100(Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;)Landroid/webkit/WebView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "javascript:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter$4;->this$0:Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;

    invoke-static {v2}, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;->access$1100(Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter$4;->this$0:Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;

    invoke-static {v0}, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;->access$1200(Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter$4;->this$0:Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;

    invoke-static {v0}, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;->access$1300(Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v5, p2}, Lcom/alipay/android/app/statistic/h;->a(ZLjava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter$4;->this$0:Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;

    invoke-static {v0, v4}, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;->access$1202(Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;Z)Z

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter$4;->this$0:Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;

    invoke-static {v0}, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;->access$1400(Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter$4;->this$0:Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;

    invoke-static {v0}, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;->access$100(Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;)Landroid/webkit/WebView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter$4;->this$0:Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;

    invoke-static {v0}, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;->access$200(Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter$4;->this$0:Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;

    invoke-static {v0, v4}, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;->access$1402(Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;Z)Z

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter$4;->this$0:Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;

    invoke-static {v0}, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;->access$100(Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;)Landroid/webkit/WebView;

    move-result-object v0

    const-string/jumbo v1, "javascript:window.AlipayJSBridge.callListener(\'%s\',\'%s\', \'%s\');"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "h5PageFinished"

    aput-object v3, v2, v4

    const-string/jumbo v3, ""

    aput-object v3, v2, v5

    const/4 v3, 0x2

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter$4;->this$0:Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;

    invoke-static {v0}, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;->access$100(Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/webkit/WebView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter$4;->this$0:Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;

    invoke-static {v0}, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;->access$200(Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter$4;->this$0:Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;->access$1402(Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;Z)Z

    const-string/jumbo v0, "ne"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "webloaderr + ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p4}, Lcom/alipay/android/app/statistic/h;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 1

    sget-boolean v0, Lcom/alipay/android/app/pay/a;->h:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->cancel()V

    goto :goto_0
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 2

    const-string/jumbo v0, "http://"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "https://"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter$4;->this$0:Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;

    invoke-static {v0, p2}, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;->access$900(Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :try_start_0
    const-string/jumbo v1, "utf-8"

    invoke-static {p2, v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    const-string/jumbo v1, "alipayjsbridge://"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lcom/alipay/android/app/statistic/h;->a(ZLjava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter$4;->this$0:Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;

    invoke-static {v1, v0}, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;->access$1000(Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_1

    :cond_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter$4;->this$0:Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;

    invoke-static {v1}, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;->access$400(Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
