.class public Lcom/ali/user/mobile/register/ui/RegLoginPwdActivity;
.super Lcom/ali/user/mobile/common/ui/AbsSupplyLoginPwdActivity;
.source "RegLoginPwdActivity.java"

# interfaces
.implements Lcom/ali/user/mobile/register/b/a;


# static fields
.field private static final sTag:Ljava/lang/String; = "Reg_LoginPwd"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/ali/user/mobile/common/ui/AbsSupplyLoginPwdActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public afterDialog()V
    .locals 2

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/RegLoginPwdActivity;->mConfirm:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/RegLoginPwdActivity;->mConfirm:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public doSupply(Ljava/lang/String;)V
    .locals 5

    const-string/jumbo v0, "Reg_LoginPwd"

    const-string/jumbo v1, "do supply"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/RegLoginPwdActivity;->hideErrorTip()V

    invoke-static {}, Lcom/ali/user/mobile/register/b;->a()Lcom/ali/user/mobile/register/b;

    move-result-object v0

    iget-object v1, v0, Lcom/ali/user/mobile/register/b;->c:Lcom/ali/user/mobile/register/c/a;

    if-nez v1, :cond_0

    const-string/jumbo v0, "Reg_LoginPwd"

    const-string/jumbo v1, "null action center"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    new-instance v2, Lcom/ali/user/mobile/register/a/a;

    invoke-direct {v2}, Lcom/ali/user/mobile/register/a/a;-><init>()V

    iput-object p1, v2, Lcom/ali/user/mobile/register/a/a;->e:Ljava/lang/String;

    const-string/jumbo v0, "setLoginPassword"

    iput-object v0, v2, Lcom/ali/user/mobile/register/a/a;->b:Ljava/lang/String;

    :try_start_0
    iget-object v0, v2, Lcom/ali/user/mobile/register/a/a;->h:Ljava/util/Map;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v2, Lcom/ali/user/mobile/register/a/a;->h:Ljava/util/Map;

    iget-object v0, v2, Lcom/ali/user/mobile/register/a/a;->h:Ljava/util/Map;

    const-string/jumbo v3, "isPrisonBreak"

    invoke-static {}, Lcom/alipay/android/phone/inside/commonbiz/b/a;->g()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v2, Lcom/ali/user/mobile/register/a/a;->h:Ljava/util/Map;

    const-string/jumbo v3, "mobileModel"

    invoke-static {}, Lcom/alipay/mobile/common/b/b;->a()Lcom/alipay/mobile/common/b/b;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alipay/mobile/common/b/b;->i()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v2, Lcom/ali/user/mobile/register/a/a;->h:Ljava/util/Map;

    const-string/jumbo v3, "isTrojan"

    invoke-static {}, Lcom/alipay/android/phone/inside/commonbiz/b/a;->h()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v2, Lcom/ali/user/mobile/register/a/a;->h:Ljava/util/Map;

    const-string/jumbo v3, "currentOperateMobile"

    invoke-static {}, Lcom/alipay/android/phone/inside/commonbiz/b/a;->f()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    invoke-virtual {v1, v2, p0}, Lcom/ali/user/mobile/register/c/a;->a(Lcom/ali/user/mobile/register/a/a;Lcom/ali/user/mobile/base/BaseActivity;)V

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v3, "Reg_LoginPwd"

    const-string/jumbo v4, "reg-supply loginpwd error"

    invoke-static {v3, v4, v0}, Lcom/ali/user/mobile/e/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public getActivity()Lcom/ali/user/mobile/base/BaseActivity;
    .locals 0

    return-object p0
.end method

.method protected getPageName()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    invoke-static {}, Lcom/ali/user/mobile/register/b;->a()Lcom/ali/user/mobile/register/b;

    move-result-object v1

    iget-object v1, v1, Lcom/ali/user/mobile/register/b;->c:Lcom/ali/user/mobile/register/c/a;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {v1}, Lcom/ali/user/mobile/register/c/a;->a()Lcom/ali/user/mobile/register/a/b;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/ali/user/mobile/register/a/b;->c:Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllResPb;

    if-eqz v2, :cond_0

    iget-object v0, v1, Lcom/ali/user/mobile/register/a/b;->c:Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllResPb;

    iget-object v0, v0, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllResPb;->resultStatus:Ljava/lang/Long;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public handleStateChange(Lcom/ali/user/mobile/register/a/b;)Z
    .locals 4

    const/4 v0, 0x0

    const-string/jumbo v1, "Reg_LoginPwd"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handle state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v1, -0x2

    iget v2, p1, Lcom/ali/user/mobile/register/a/b;->b:I

    if-ne v1, v2, :cond_0

    iget-object v1, p1, Lcom/ali/user/mobile/register/a/b;->c:Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllResPb;

    if-eqz v1, :cond_0

    const-string/jumbo v1, "Reg_LoginPwd"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handle state, result code "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/ali/user/mobile/register/a/b;->c:Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllResPb;

    iget-object v3, v3, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllResPb;->resultStatus:Ljava/lang/Long;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p1, Lcom/ali/user/mobile/register/a/b;->c:Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllResPb;

    iget-object v1, v1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllResPb;->resultStatus:Ljava/lang/Long;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/ali/user/mobile/register/a/b;->c:Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllResPb;

    iget-object v1, v1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllResPb;->resultStatus:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    move-result v1

    iget-object v2, p1, Lcom/ali/user/mobile/register/a/b;->c:Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllResPb;

    iget-object v2, v2, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllResPb;->memo:Ljava/lang/String;

    const/16 v3, 0xbc5

    if-eq v1, v3, :cond_2

    const/16 v3, 0xbcd

    if-eq v1, v3, :cond_2

    const/16 v3, 0xbcc

    if-eq v1, v3, :cond_2

    const/16 v3, 0xbcb

    if-eq v1, v3, :cond_2

    const/16 v3, 0xbd4

    if-eq v1, v3, :cond_2

    const/16 v3, 0xbd6

    if-eq v1, v3, :cond_2

    const/16 v3, 0xc07

    if-eq v1, v3, :cond_2

    const/16 v3, 0xbdf

    if-eq v1, v3, :cond_2

    const/16 v3, 0xbc9

    if-ne v1, v3, :cond_0

    :cond_2
    invoke-virtual {p0, v2, v0}, Lcom/ali/user/mobile/register/ui/RegLoginPwdActivity;->showErrorTip(Ljava/lang/String;Z)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public handleVerifySuccess(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/ali/user/mobile/common/ui/AbsSupplyLoginPwdActivity;->onCreate(Landroid/os/Bundle;)V

    const-string/jumbo v0, ""

    const-string/jumbo v1, "RegLoginPwdActivity"

    const-string/jumbo v2, "login"

    const-string/jumbo v3, ""

    invoke-static {v0, v1, v2, v3}, Lcom/ali/user/mobile/e/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Lcom/ali/user/mobile/common/ui/AbsSupplyLoginPwdActivity;->onResume()V

    invoke-static {p0}, Lcom/ali/user/mobile/register/b/g;->a(Lcom/ali/user/mobile/register/b/a;)V

    return-void
.end method

.method protected setAppId()V
    .locals 1

    const-string/jumbo v0, "20000009"

    iput-object v0, p0, Lcom/ali/user/mobile/register/ui/RegLoginPwdActivity;->mAppId:Ljava/lang/String;

    return-void
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/ali/user/mobile/common/ui/AbsSupplyLoginPwdActivity;->startActivity(Landroid/content/Intent;)V

    iget-boolean v0, p0, Lcom/ali/user/mobile/register/ui/RegLoginPwdActivity;->mCanComeBack:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/RegLoginPwdActivity;->finish()V

    :cond_0
    return-void
.end method
