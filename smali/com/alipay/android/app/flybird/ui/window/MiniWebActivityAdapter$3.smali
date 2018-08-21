.class Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter$3;
.super Landroid/webkit/WebChromeClient;
.source "MiniWebActivityAdapter.java"


# instance fields
.field final synthetic this$0:Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter$3;->this$0:Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
    .locals 3

    const/4 v2, 0x0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->message()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Uncaught ReferenceError"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "alipayjsbridgeH5BackAction"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter$3;->this$0:Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;

    invoke-static {v0}, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;->access$100(Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "webonGoback"

    invoke-static {v2, v0}, Lcom/alipay/android/app/statistic/h;->a(ZLjava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter$3;->this$0:Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;

    invoke-static {v0}, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;->access$100(Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/webkit/WebChromeClient;->onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z

    move-result v0

    return v0

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter$3;->this$0:Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;

    invoke-static {v0}, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;->access$500(Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;)Lcom/alipay/android/app/ui/quickpay/window/web/b;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter$3;->this$0:Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;

    invoke-static {v0}, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;->access$500(Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;)Lcom/alipay/android/app/ui/quickpay/window/web/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/window/web/b;->b()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter$3;->this$0:Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;

    invoke-static {v0}, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;->access$600(Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;)Z

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "webonExit"

    invoke-static {v2, v0}, Lcom/alipay/android/app/statistic/h;->a(ZLjava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter$3;->this$0:Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;

    invoke-static {v0, v2}, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;->access$700(Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;Z)V

    goto :goto_0
.end method

.method public onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
    .locals 3

    const-string/jumbo v0, "<head>"

    invoke-virtual {p3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "sdk_result_code:"

    invoke-virtual {p3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "sdk_result_code:"

    invoke-virtual {p3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const-string/jumbo v1, "-->"

    invoke-virtual {p3, v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    const-string/jumbo v2, "sdk_result_code:"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {p3, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    new-instance v0, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter$3$1;

    invoke-direct {v0, p0}, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter$3$1;-><init>(Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter$3;)V

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter$3;->this$0:Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;

    invoke-static {v1}, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;->access$400(Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    invoke-virtual {p5}, Landroid/webkit/JsPromptResult;->cancel()V

    const/4 v0, 0x1

    return v0
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 2

    const/4 v1, 0x4

    const/16 v0, 0x64

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter$3;->this$0:Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;

    invoke-static {v0}, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;->access$300(Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :goto_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter$3;->this$0:Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;

    invoke-static {v0}, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;->access$300(Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-ne v1, v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter$3;->this$0:Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;

    invoke-static {v0}, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;->access$300(Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter$3;->this$0:Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;

    invoke-static {v0}, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;->access$300(Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_0
.end method

.method public onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter$3;->this$0:Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;

    invoke-static {v0}, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;->access$800(Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
