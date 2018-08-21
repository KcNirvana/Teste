.class Lcom/ali/user/mobile/login/view/f;
.super Ljava/lang/Object;
.source "PasswordLoginView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/ali/user/mobile/login/view/PasswordLoginView;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/login/view/PasswordLoginView;)V
    .locals 0

    iput-object p1, p0, Lcom/ali/user/mobile/login/view/f;->a:Lcom/ali/user/mobile/login/view/PasswordLoginView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x0

    const-string/jumbo v0, "UC-LOG-161225-03"

    const-string/jumbo v1, "accountchoose"

    iget-object v2, p0, Lcom/ali/user/mobile/login/view/f;->a:Lcom/ali/user/mobile/login/view/PasswordLoginView;

    iget-object v2, v2, Lcom/ali/user/mobile/login/view/PasswordLoginView;->mFrom:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v3}, Lcom/ali/user/mobile/e/c;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ali/user/mobile/login/view/f;->a:Lcom/ali/user/mobile/login/view/PasswordLoginView;

    invoke-virtual {v0}, Lcom/ali/user/mobile/login/view/PasswordLoginView;->hideLoginHistory()V

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/user/mobile/account/bean/UserInfo;

    iget-object v1, p0, Lcom/ali/user/mobile/login/view/f;->a:Lcom/ali/user/mobile/login/view/PasswordLoginView;

    iget-object v1, v1, Lcom/ali/user/mobile/login/view/PasswordLoginView;->mCurrentSelectedAccount:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/ali/user/mobile/login/view/f;->a:Lcom/ali/user/mobile/login/view/PasswordLoginView;

    iget-object v1, v1, Lcom/ali/user/mobile/login/view/PasswordLoginView;->mCurrentSelectedAccount:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/ali/user/mobile/account/bean/UserInfo;->getLogonId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/ali/user/mobile/login/view/f;->a:Lcom/ali/user/mobile/login/view/PasswordLoginView;

    iget-object v1, v1, Lcom/ali/user/mobile/login/view/PasswordLoginView;->mPasswordInput:Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;

    invoke-virtual {v1, v3}, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v1, p0, Lcom/ali/user/mobile/login/view/f;->a:Lcom/ali/user/mobile/login/view/PasswordLoginView;

    invoke-virtual {v1, v0}, Lcom/ali/user/mobile/login/view/PasswordLoginView;->setLoginHistoryAccount(Lcom/ali/user/mobile/account/bean/UserInfo;)V

    iget-object v0, p0, Lcom/ali/user/mobile/login/view/f;->a:Lcom/ali/user/mobile/login/view/PasswordLoginView;

    iget-object v0, v0, Lcom/ali/user/mobile/login/view/PasswordLoginView;->mPasswordInput:Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;

    invoke-virtual {v0}, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;->requestFocus()Z

    return-void
.end method
