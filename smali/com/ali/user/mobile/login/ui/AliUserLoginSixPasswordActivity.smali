.class public Lcom/ali/user/mobile/login/ui/AliUserLoginSixPasswordActivity;
.super Lcom/ali/user/mobile/base/BaseSixPasswordActivity;
.source "AliUserLoginSixPasswordActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AliUserLoginSixPasswordActivity"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/ali/user/mobile/base/BaseSixPasswordActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected afterSupplyment(Lcom/ali/user/mobile/rpc/vo/mobilegw/SupplyPassGwRes;)V
    .locals 3

    const-string/jumbo v0, "AliUserLoginSixPasswordActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "afterSupplyment,code:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/SupplyPassGwRes;->code:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",msg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/SupplyPassGwRes;->msg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/SupplyPassGwRes;->success:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "AliUserLoginSixPasswordActivity"

    const-string/jumbo v1, "Supplyment success"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginSixPasswordActivity;->doBackgroundLogin()V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "AliUserLoginSixPasswordActivity"

    const-string/jumbo v1, "Supplyment fail"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginSixPasswordActivity;->dismissProgress()V

    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSixPasswordActivity;->mSixNumberInput:Lcom/ali/user/mobile/ui/widget/APSixNumberPwdInputBox;

    invoke-virtual {v0}, Lcom/ali/user/mobile/ui/widget/APSixNumberPwdInputBox;->clearInput()V

    const-string/jumbo v0, "6213"

    iget-object v1, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/SupplyPassGwRes;->code:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "AliUserLoginSixPasswordActivity"

    const-string/jumbo v1, "session timeout"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/SupplyPassGwRes;->msg:Ljava/lang/String;

    const/16 v1, 0x7cf

    invoke-virtual {p0, v0, v1}, Lcom/ali/user/mobile/login/ui/AliUserLoginSixPasswordActivity;->alertResult(Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "AliUserLoginSixPasswordActivity"

    const-string/jumbo v1, "Supplyment other error"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/SupplyPassGwRes;->msg:Ljava/lang/String;

    const/16 v1, 0xbb8

    invoke-virtual {p0, v0, v1}, Lcom/ali/user/mobile/login/ui/AliUserLoginSixPasswordActivity;->toast(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method protected closeKeyboard()V
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSixPasswordActivity;->mSixNumberInput:Lcom/ali/user/mobile/ui/widget/APSixNumberPwdInputBox;

    invoke-virtual {v0}, Lcom/ali/user/mobile/ui/widget/APSixNumberPwdInputBox;->getEditText()Lcom/ali/user/mobile/ui/widget/APEditText;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/login/ui/AliUserLoginSixPasswordActivity;->closeInputMethod(Landroid/view/View;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/ali/user/mobile/base/BaseSixPasswordActivity;->onCreate(Landroid/os/Bundle;)V

    const-string/jumbo v0, ""

    const-string/jumbo v1, "AliUserLoginSixPasswordActivity"

    const-string/jumbo v2, "login"

    const-string/jumbo v3, ""

    invoke-static {v0, v1, v2, v3}, Lcom/ali/user/mobile/e/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onLoginFail(Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginRes;)Z
    .locals 2

    const-string/jumbo v0, "6203"

    iget-object v1, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginRes;->code:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "6202"

    iget-object v1, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginRes;->code:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "6207"

    iget-object v1, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginRes;->code:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "login_response"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const/16 v1, 0x7ce

    invoke-virtual {p0, v1, v0}, Lcom/ali/user/mobile/login/ui/AliUserLoginSixPasswordActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginSixPasswordActivity;->finish()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onResume()V
    .locals 2

    invoke-super {p0}, Lcom/ali/user/mobile/base/BaseSixPasswordActivity;->onResume()V

    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSixPasswordActivity;->mTitleBar:Lcom/ali/user/mobile/ui/widget/APTitleBar;

    new-instance v1, Lcom/ali/user/mobile/login/ui/g;

    invoke-direct {v1, p0}, Lcom/ali/user/mobile/login/ui/g;-><init>(Lcom/ali/user/mobile/login/ui/AliUserLoginSixPasswordActivity;)V

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/ui/widget/APTitleBar;->setBackButtonListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected onSupplement(Ljava/lang/String;)V
    .locals 2

    const-string/jumbo v0, "AliUserLoginSixPasswordActivity"

    const-string/jumbo v1, "start doSupplement"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    :try_start_0
    new-instance v0, Lcom/ali/user/mobile/rpc/vo/mobilegw/SupplyPassGwReq;

    invoke-direct {v0}, Lcom/ali/user/mobile/rpc/vo/mobilegw/SupplyPassGwReq;-><init>()V

    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSixPasswordActivity;->mToken:Ljava/lang/String;

    iput-object v1, v0, Lcom/ali/user/mobile/rpc/vo/mobilegw/SupplyPassGwReq;->token:Ljava/lang/String;

    iput-object p1, v0, Lcom/ali/user/mobile/rpc/vo/mobilegw/SupplyPassGwReq;->paymentPassword:Ljava/lang/String;

    const-string/jumbo v1, "1"

    iput-object v1, v0, Lcom/ali/user/mobile/rpc/vo/mobilegw/SupplyPassGwReq;->simplePassword:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSixPasswordActivity;->optionStatus:Z

    iput-boolean v1, v0, Lcom/ali/user/mobile/rpc/vo/mobilegw/SupplyPassGwReq;->optionStatus:Z

    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSixPasswordActivity;->mUserLoginService:Lcom/ali/user/mobile/h/b;

    invoke-interface {v1, v0}, Lcom/ali/user/mobile/h/b;->a(Lcom/ali/user/mobile/rpc/vo/mobilegw/SupplyPassGwReq;)Lcom/ali/user/mobile/rpc/vo/mobilegw/SupplyPassGwRes;

    move-result-object v0

    new-instance v1, Lcom/ali/user/mobile/login/ui/h;

    invoke-direct {v1, p0, v0}, Lcom/ali/user/mobile/login/ui/h;-><init>(Lcom/ali/user/mobile/login/ui/AliUserLoginSixPasswordActivity;Lcom/ali/user/mobile/rpc/vo/mobilegw/SupplyPassGwRes;)V

    invoke-virtual {p0, v1}, Lcom/ali/user/mobile/login/ui/AliUserLoginSixPasswordActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginSixPasswordActivity;->dismissProgress()V

    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginSixPasswordActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/ali/user/mobile/security/ui/R$string;->alipay_system_error:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xbb8

    invoke-virtual {p0, v0, v1}, Lcom/ali/user/mobile/login/ui/AliUserLoginSixPasswordActivity;->toast(Ljava/lang/String;I)V
    :try_end_0
    .catch Lcom/alipay/android/phone/mrpc/core/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginSixPasswordActivity;->dismissProgress()V

    throw v0
.end method

.method protected setAppId()V
    .locals 1

    const-string/jumbo v0, "20000008"

    iput-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSixPasswordActivity;->mAppId:Ljava/lang/String;

    return-void
.end method
