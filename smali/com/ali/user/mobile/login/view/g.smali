.class Lcom/ali/user/mobile/login/view/g;
.super Ljava/lang/Object;
.source "PasswordLoginView.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field final synthetic a:Landroid/widget/Button;

.field final synthetic b:Lcom/ali/user/mobile/login/view/PasswordLoginView;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/login/view/PasswordLoginView;Landroid/widget/Button;)V
    .locals 0

    iput-object p1, p0, Lcom/ali/user/mobile/login/view/g;->b:Lcom/ali/user/mobile/login/view/PasswordLoginView;

    iput-object p2, p0, Lcom/ali/user/mobile/login/view/g;->a:Landroid/widget/Button;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 3

    const-string/jumbo v0, "PasswordLoginView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "actionId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "loginButton status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ali/user/mobile/login/view/g;->a:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->isEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x6

    if-ne v0, p2, :cond_0

    iget-object v0, p0, Lcom/ali/user/mobile/login/view/g;->a:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ali/user/mobile/login/view/g;->b:Lcom/ali/user/mobile/login/view/PasswordLoginView;

    iget-object v0, v0, Lcom/ali/user/mobile/login/view/PasswordLoginView;->mAttatchActivity:Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;

    const-string/jumbo v1, "LoginBtn"

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->onRdsControlClick(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ali/user/mobile/login/view/g;->b:Lcom/ali/user/mobile/login/view/PasswordLoginView;

    iget-object v1, p0, Lcom/ali/user/mobile/login/view/g;->a:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/login/view/PasswordLoginView;->onLoginClicked(Landroid/widget/Button;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
