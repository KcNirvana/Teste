.class Lcom/ali/user/mobile/login/view/i;
.super Lcom/ali/user/mobile/ui/widget/keyboard/g;
.source "PasswordLoginView.java"


# instance fields
.field final synthetic a:Lcom/ali/user/mobile/login/view/PasswordLoginView;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/login/view/PasswordLoginView;)V
    .locals 0

    iput-object p1, p0, Lcom/ali/user/mobile/login/view/i;->a:Lcom/ali/user/mobile/login/view/PasswordLoginView;

    invoke-direct {p0}, Lcom/ali/user/mobile/ui/widget/keyboard/g;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/login/view/i;->a:Lcom/ali/user/mobile/login/view/PasswordLoginView;

    invoke-virtual {v0}, Lcom/ali/user/mobile/login/view/PasswordLoginView;->hideLoginHistory()V

    iget-object v0, p0, Lcom/ali/user/mobile/login/view/i;->a:Lcom/ali/user/mobile/login/view/PasswordLoginView;

    iget-boolean v0, v0, Lcom/ali/user/mobile/login/view/PasswordLoginView;->isDropdownAccount:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ali/user/mobile/login/view/i;->a:Lcom/ali/user/mobile/login/view/PasswordLoginView;

    invoke-virtual {v0}, Lcom/ali/user/mobile/login/view/PasswordLoginView;->clearAccount()V

    invoke-interface {p1}, Landroid/text/Editable;->clear()V

    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
