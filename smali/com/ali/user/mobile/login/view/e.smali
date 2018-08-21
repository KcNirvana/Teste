.class Lcom/ali/user/mobile/login/view/e;
.super Lcom/ali/user/mobile/ui/widget/keyboard/g;
.source "PasswordLoginView.java"


# instance fields
.field final synthetic a:Lcom/ali/user/mobile/login/view/PasswordLoginView;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/login/view/PasswordLoginView;)V
    .locals 0

    iput-object p1, p0, Lcom/ali/user/mobile/login/view/e;->a:Lcom/ali/user/mobile/login/view/PasswordLoginView;

    invoke-direct {p0}, Lcom/ali/user/mobile/ui/widget/keyboard/g;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/ali/user/mobile/login/view/e;->a:Lcom/ali/user/mobile/login/view/PasswordLoginView;

    iget-boolean v0, v0, Lcom/ali/user/mobile/login/view/PasswordLoginView;->mIsAccountInputted:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ali/user/mobile/login/view/e;->a:Lcom/ali/user/mobile/login/view/PasswordLoginView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/ali/user/mobile/login/view/PasswordLoginView;->mIsAccountInputted:Z

    const-string/jumbo v0, "UC-LOG-161225-02"

    const-string/jumbo v1, "accountinput"

    iget-object v2, p0, Lcom/ali/user/mobile/login/view/e;->a:Lcom/ali/user/mobile/login/view/PasswordLoginView;

    iget-object v2, v2, Lcom/ali/user/mobile/login/view/PasswordLoginView;->mFrom:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v3}, Lcom/ali/user/mobile/e/c;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

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
