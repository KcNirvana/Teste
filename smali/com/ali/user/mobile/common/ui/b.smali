.class Lcom/ali/user/mobile/common/ui/b;
.super Ljava/lang/Object;
.source "AbsSupplyLoginPwdActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Lcom/ali/user/mobile/common/ui/AbsSupplyLoginPwdActivity;

.field private b:Z


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/common/ui/AbsSupplyLoginPwdActivity;)V
    .locals 1

    iput-object p1, p0, Lcom/ali/user/mobile/common/ui/b;->a:Lcom/ali/user/mobile/common/ui/AbsSupplyLoginPwdActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ali/user/mobile/common/ui/b;->b:Z

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4

    iget-boolean v0, p0, Lcom/ali/user/mobile/common/ui/b;->b:Z

    if-nez v0, :cond_0

    const-string/jumbo v0, "UC-ZC-161225-08"

    const-string/jumbo v1, "inloginpassword"

    iget-object v2, p0, Lcom/ali/user/mobile/common/ui/b;->a:Lcom/ali/user/mobile/common/ui/AbsSupplyLoginPwdActivity;

    invoke-virtual {v2}, Lcom/ali/user/mobile/common/ui/AbsSupplyLoginPwdActivity;->getPageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/ali/user/mobile/register/a;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ali/user/mobile/common/ui/b;->b:Z

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ali/user/mobile/common/ui/b;->a:Lcom/ali/user/mobile/common/ui/AbsSupplyLoginPwdActivity;

    invoke-virtual {v0}, Lcom/ali/user/mobile/common/ui/AbsSupplyLoginPwdActivity;->hideErrorTip()V

    :cond_1
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
