.class Lcom/ali/user/mobile/login/view/a;
.super Ljava/lang/Object;
.source "LoginView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/ali/user/mobile/login/view/LoginView;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/login/view/LoginView;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/ali/user/mobile/login/view/a;->b:Lcom/ali/user/mobile/login/view/LoginView;

    iput-object p2, p0, Lcom/ali/user/mobile/login/view/a;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/ali/user/mobile/login/view/a;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    iget-object v0, p0, Lcom/ali/user/mobile/login/view/a;->a:Landroid/view/View;

    instance-of v0, v0, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ali/user/mobile/login/view/a;->a:Landroid/view/View;

    check-cast v0, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;

    invoke-virtual {v0}, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;->isPasswordType()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;->showSafeKeyboard()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/ali/user/mobile/login/view/a;->b:Lcom/ali/user/mobile/login/view/LoginView;

    iget-object v0, v0, Lcom/ali/user/mobile/login/view/LoginView;->mApplicationContext:Landroid/content/Context;

    const-string/jumbo v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/ali/user/mobile/login/view/a;->a:Landroid/view/View;

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/ali/user/mobile/login/view/a;->b:Lcom/ali/user/mobile/login/view/LoginView;

    iget-object v0, v0, Lcom/ali/user/mobile/login/view/LoginView;->mApplicationContext:Landroid/content/Context;

    const-string/jumbo v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/ali/user/mobile/login/view/a;->a:Landroid/view/View;

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    goto :goto_0
.end method
