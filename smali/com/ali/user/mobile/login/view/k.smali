.class Lcom/ali/user/mobile/login/view/k;
.super Ljava/lang/Object;
.source "PasswordLoginView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/ali/user/mobile/login/view/PasswordLoginView;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/login/view/PasswordLoginView;)V
    .locals 0

    iput-object p1, p0, Lcom/ali/user/mobile/login/view/k;->a:Lcom/ali/user/mobile/login/view/PasswordLoginView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/ali/user/mobile/login/view/k;->a:Lcom/ali/user/mobile/login/view/PasswordLoginView;

    iget-object v0, v0, Lcom/ali/user/mobile/login/view/PasswordLoginView;->mAttatchActivity:Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;

    const-string/jumbo v1, "SeePwdBtn"

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->onRdsControlClick(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ali/user/mobile/login/view/k;->a:Lcom/ali/user/mobile/login/view/PasswordLoginView;

    iget-object v0, v0, Lcom/ali/user/mobile/login/view/PasswordLoginView;->mPasswordInput:Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;

    invoke-virtual {v0}, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v0

    invoke-static {}, Landroid/text/method/HideReturnsTransformationMethod;->getInstance()Landroid/text/method/HideReturnsTransformationMethod;

    move-result-object v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/ali/user/mobile/login/view/k;->a:Lcom/ali/user/mobile/login/view/PasswordLoginView;

    invoke-static {v0}, Lcom/ali/user/mobile/login/view/PasswordLoginView;->access$100(Lcom/ali/user/mobile/login/view/PasswordLoginView;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/ali/user/mobile/login/view/k;->a:Lcom/ali/user/mobile/login/view/PasswordLoginView;

    iget-object v0, v0, Lcom/ali/user/mobile/login/view/PasswordLoginView;->mPasswordInput:Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;

    invoke-virtual {v0}, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v0

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/ali/user/mobile/login/view/k;->a:Lcom/ali/user/mobile/login/view/PasswordLoginView;

    invoke-virtual {v0}, Lcom/ali/user/mobile/login/view/PasswordLoginView;->showInputPassword()V

    goto :goto_0
.end method
