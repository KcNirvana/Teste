.class public Lcom/ali/user/mobile/register/ui/AliUserRegisterSixPasswordActivity;
.super Lcom/ali/user/mobile/base/BaseSixPasswordActivity;
.source "AliUserRegisterSixPasswordActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AliUserRegisterSixPasswordActivity"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/ali/user/mobile/base/BaseSixPasswordActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected afterSupplement(Lcom/ali/user/mobile/rpc/vo/mobilegw/GwCommonRes;)V
    .locals 5

    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterSixPasswordActivity;->dismissProgress()V

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "AliUserRegisterSixPasswordActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Supplement result:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/GwCommonRes;->resultStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",msg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/GwCommonRes;->memo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "YWUC-JTTYZH-C26"

    const-string/jumbo v1, "setPayPassword"

    const-string/jumbo v2, "SetPassword"

    iget-object v3, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/GwCommonRes;->mobileNo:Ljava/lang/String;

    iget-object v4, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterSixPasswordActivity;->mToken:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/ali/user/mobile/e/c;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/GwCommonRes;->token:Ljava/lang/String;

    iput-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterSixPasswordActivity;->mToken:Ljava/lang/String;

    iget v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/GwCommonRes;->resultStatus:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_1

    invoke-virtual {p0, p1}, Lcom/ali/user/mobile/register/ui/AliUserRegisterSixPasswordActivity;->onSupplySuccess(Lcom/ali/user/mobile/rpc/vo/mobilegw/GwCommonRes;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/ali/user/mobile/register/ui/AliUserRegisterSixPasswordActivity;->onSupplyFail(Lcom/ali/user/mobile/rpc/vo/mobilegw/GwCommonRes;)V

    goto :goto_0
.end method

.method protected goLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lcom/ali/user/mobile/login/LoginParam;

    invoke-direct {v0}, Lcom/ali/user/mobile/login/LoginParam;-><init>()V

    iput-object p1, v0, Lcom/ali/user/mobile/login/LoginParam;->loginAccount:Ljava/lang/String;

    iput-object p2, v0, Lcom/ali/user/mobile/login/LoginParam;->token:Ljava/lang/String;

    iput-object p3, v0, Lcom/ali/user/mobile/login/LoginParam;->validateTpye:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterSixPasswordActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/ali/user/mobile/a/a;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "login_param"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string/jumbo v0, "from_register"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v0, 0x4000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v0, 0x20000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/ali/user/mobile/register/ui/AliUserRegisterSixPasswordActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method protected goRegister()V
    .locals 2

    const/4 v1, 0x0

    invoke-static {}, Lcom/ali/user/mobile/register/b;->a()Lcom/ali/user/mobile/register/b;

    move-result-object v0

    invoke-virtual {v0, p0, v1, v1}, Lcom/ali/user/mobile/register/b;->a(Landroid/app/Activity;Landroid/os/Bundle;Lcom/ali/user/mobile/register/Account;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/ali/user/mobile/base/BaseSixPasswordActivity;->onCreate(Landroid/os/Bundle;)V

    const-string/jumbo v0, ""

    const-string/jumbo v1, "AliUserRegisterSixPasswordActivity"

    const-string/jumbo v2, "login"

    const-string/jumbo v3, ""

    invoke-static {v0, v1, v2, v3}, Lcom/ali/user/mobile/e/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/ali/user/mobile/base/BaseSixPasswordActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onResume()V
    .locals 1

    invoke-super {p0}, Lcom/ali/user/mobile/base/BaseSixPasswordActivity;->onResume()V

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterSixPasswordActivity;->mTitleBar:Lcom/ali/user/mobile/ui/widget/APTitleBar;

    invoke-virtual {v0}, Lcom/ali/user/mobile/ui/widget/APTitleBar;->hideBackButton()V

    return-void
.end method

.method protected onSupplement(Ljava/lang/String;)V
    .locals 7

    const-string/jumbo v0, "AliUserRegisterSixPasswordActivity"

    const-string/jumbo v1, "start Supplement"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "UC-ZC-150512-14"

    const-string/jumbo v1, "zcpwdok"

    const-string/jumbo v2, "RegisterSetSixPassword"

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterSixPasswordActivity;->mToken:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/ali/user/mobile/e/c;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    :try_start_0
    invoke-static {}, Lcom/ali/user/mobile/a/a;->g()Lcom/ali/user/mobile/h/c;

    move-result-object v0

    iget-object v1, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterSixPasswordActivity;->mToken:Ljava/lang/String;

    const-string/jumbo v3, "1"

    const-string/jumbo v4, ""

    invoke-static {p0}, Lcom/ali/user/mobile/login/rds/RDSWraper;->getSafeData(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    iget-boolean v6, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterSixPasswordActivity;->optionStatus:Z

    move-object v2, p1

    invoke-interface/range {v0 .. v6}, Lcom/ali/user/mobile/h/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/ali/user/mobile/rpc/vo/mobilegw/GwCommonRes;

    move-result-object v0

    new-instance v1, Lcom/ali/user/mobile/register/ui/b;

    invoke-direct {v1, p0, v0}, Lcom/ali/user/mobile/register/ui/b;-><init>(Lcom/ali/user/mobile/register/ui/AliUserRegisterSixPasswordActivity;Lcom/ali/user/mobile/rpc/vo/mobilegw/GwCommonRes;)V

    invoke-virtual {p0, v1}, Lcom/ali/user/mobile/register/ui/AliUserRegisterSixPasswordActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterSixPasswordActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/ali/user/mobile/security/ui/R$string;->alipay_system_error:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xbb8

    invoke-virtual {p0, v0, v1}, Lcom/ali/user/mobile/register/ui/AliUserRegisterSixPasswordActivity;->toast(Ljava/lang/String;I)V
    :try_end_0
    .catch Lcom/alipay/android/phone/mrpc/core/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterSixPasswordActivity;->dismissProgress()V

    throw v0
.end method

.method protected onSupplyFail(Lcom/ali/user/mobile/rpc/vo/mobilegw/GwCommonRes;)V
    .locals 7

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterSixPasswordActivity;->mSixNumberInput:Lcom/ali/user/mobile/ui/widget/APSixNumberPwdInputBox;

    invoke-virtual {v0}, Lcom/ali/user/mobile/ui/widget/APSixNumberPwdInputBox;->clearInput()V

    iget v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/GwCommonRes;->resultStatus:I

    const/16 v2, 0xcf

    if-ne v0, v2, :cond_0

    const-string/jumbo v0, "AliUserRegisterSixPasswordActivity"

    const-string/jumbo v2, "token timeout"

    invoke-static {v0, v2}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/GwCommonRes;->memo:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterSixPasswordActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/ali/user/mobile/security/ui/R$string;->alipay_comfirm:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/ali/user/mobile/register/ui/c;

    invoke-direct {v4, p0}, Lcom/ali/user/mobile/register/ui/c;-><init>(Lcom/ali/user/mobile/register/ui/AliUserRegisterSixPasswordActivity;)V

    move-object v0, p0

    move-object v5, v1

    move-object v6, v1

    invoke-virtual/range {v0 .. v6}, Lcom/ali/user/mobile/register/ui/AliUserRegisterSixPasswordActivity;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    :goto_0
    return-void

    :cond_0
    iget v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/GwCommonRes;->resultStatus:I

    const/16 v2, 0xbd8

    if-eq v0, v2, :cond_1

    iget v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/GwCommonRes;->resultStatus:I

    const/16 v2, 0xbd7

    if-ne v0, v2, :cond_2

    :cond_1
    iget-object v2, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/GwCommonRes;->memo:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterSixPasswordActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/ali/user/mobile/security/ui/R$string;->alipay_find_login_password:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/ali/user/mobile/register/ui/d;

    invoke-direct {v4, p0, p1}, Lcom/ali/user/mobile/register/ui/d;-><init>(Lcom/ali/user/mobile/register/ui/AliUserRegisterSixPasswordActivity;Lcom/ali/user/mobile/rpc/vo/mobilegw/GwCommonRes;)V

    move-object v0, p0

    move-object v5, v1

    move-object v6, v1

    invoke-virtual/range {v0 .. v6}, Lcom/ali/user/mobile/register/ui/AliUserRegisterSixPasswordActivity;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "AliUserRegisterSixPasswordActivity"

    const-string/jumbo v1, "Supplement other error"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/GwCommonRes;->memo:Ljava/lang/String;

    const/16 v1, 0xbb8

    invoke-virtual {p0, v0, v1}, Lcom/ali/user/mobile/register/ui/AliUserRegisterSixPasswordActivity;->toast(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method protected onSupplySuccess(Lcom/ali/user/mobile/rpc/vo/mobilegw/GwCommonRes;)V
    .locals 4

    new-instance v1, Landroid/content/Intent;

    const-class v0, Lcom/ali/user/mobile/register/ui/AliuserRegisterSuccessActivity;

    invoke-direct {v1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v0, "token"

    iget-object v2, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterSixPasswordActivity;->mToken:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v0, "mobile_for_sms"

    iget-object v2, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/GwCommonRes;->mobileNo:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/GwCommonRes;->extInfos:Ljava/util/Map;

    if-eqz v0, :cond_0

    const-string/jumbo v2, "enterText"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "enterText"

    const-string/jumbo v3, ""

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    invoke-virtual {p0, v1}, Lcom/ali/user/mobile/register/ui/AliUserRegisterSixPasswordActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method protected setAppId()V
    .locals 1

    const-string/jumbo v0, "20000009"

    iput-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterSixPasswordActivity;->mAppId:Ljava/lang/String;

    return-void
.end method
