.class Lcom/ali/user/mobile/login/ui/x;
.super Ljava/lang/Object;
.source "LoginQuerypwdActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/ali/user/mobile/login/ui/LoginQuerypwdActivity;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/login/ui/LoginQuerypwdActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/ali/user/mobile/login/ui/x;->a:Lcom/ali/user/mobile/login/ui/LoginQuerypwdActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/x;->a:Lcom/ali/user/mobile/login/ui/LoginQuerypwdActivity;

    const-string/jumbo v1, "input_method"

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/login/ui/LoginQuerypwdActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/x;->a:Lcom/ali/user/mobile/login/ui/LoginQuerypwdActivity;

    invoke-static {v0}, Lcom/ali/user/mobile/login/ui/LoginQuerypwdActivity;->access$000(Lcom/ali/user/mobile/login/ui/LoginQuerypwdActivity;)V

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "LoginQuerypwdActivity"

    const-string/jumbo v2, "hide softinput error"

    invoke-static {v1, v2, v0}, Lcom/ali/user/mobile/e/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
