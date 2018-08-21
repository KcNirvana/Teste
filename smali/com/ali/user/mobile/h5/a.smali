.class Lcom/ali/user/mobile/h5/a;
.super Ljava/lang/Object;
.source "AliuserWebViewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/ali/user/mobile/h5/AliuserWebViewActivity;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/h5/AliuserWebViewActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/ali/user/mobile/h5/a;->a:Lcom/ali/user/mobile/h5/AliuserWebViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/ali/user/mobile/h5/a;->a:Lcom/ali/user/mobile/h5/AliuserWebViewActivity;

    invoke-static {v0}, Lcom/ali/user/mobile/h5/AliuserWebViewActivity;->access$000(Lcom/ali/user/mobile/h5/AliuserWebViewActivity;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ali/user/mobile/h5/a;->a:Lcom/ali/user/mobile/h5/AliuserWebViewActivity;

    invoke-static {v0}, Lcom/ali/user/mobile/h5/AliuserWebViewActivity;->access$000(Lcom/ali/user/mobile/h5/AliuserWebViewActivity;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    const-string/jumbo v0, "webview"

    const-string/jumbo v1, "back"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/ali/user/mobile/h5/a;->a:Lcom/ali/user/mobile/h5/AliuserWebViewActivity;

    const-string/jumbo v1, "input_method"

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/h5/AliuserWebViewActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    iget-object v0, p0, Lcom/ali/user/mobile/h5/a;->a:Lcom/ali/user/mobile/h5/AliuserWebViewActivity;

    invoke-virtual {v0}, Lcom/ali/user/mobile/h5/AliuserWebViewActivity;->onBackPressed()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v0, "webview"

    const-string/jumbo v1, "back error"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
