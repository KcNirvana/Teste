.class public Lcom/ali/user/mobile/register/ui/RegManualSmsActivity;
.super Lcom/ali/user/mobile/common/ui/AbsVerifySmsActivity;
.source "RegManualSmsActivity.java"

# interfaces
.implements Lcom/ali/user/mobile/register/b/a;


# static fields
.field private static final sTag:Ljava/lang/String; = "Reg_ManualSms"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/ali/user/mobile/common/ui/AbsVerifySmsActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public afterDialog()V
    .locals 0

    return-void
.end method

.method public getActivity()Lcom/ali/user/mobile/base/BaseActivity;
    .locals 0

    return-object p0
.end method

.method public handleStateChange(Lcom/ali/user/mobile/register/a/b;)Z
    .locals 7

    const/16 v6, 0xc8

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/RegManualSmsActivity;->showHint()V

    const-string/jumbo v2, "Reg_ManualSms"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handle state "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v2, p1, Lcom/ali/user/mobile/register/a/b;->c:Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllResPb;

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/RegManualSmsActivity;->showHint()V

    goto :goto_0

    :cond_2
    const-string/jumbo v2, "Reg_ManualSms"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handle state, result code "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/ali/user/mobile/register/a/b;->c:Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllResPb;

    iget-object v4, v4, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllResPb;->resultStatus:Ljava/lang/Long;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p1, Lcom/ali/user/mobile/register/a/b;->c:Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllResPb;

    iget-object v2, v2, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllResPb;->resultStatus:Ljava/lang/Long;

    if-eqz v2, :cond_0

    iget-object v2, p1, Lcom/ali/user/mobile/register/a/b;->c:Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllResPb;

    iget-object v2, v2, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllResPb;->resultStatus:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->intValue()I

    move-result v2

    iget-object v3, p1, Lcom/ali/user/mobile/register/a/b;->c:Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllResPb;

    iget-object v3, v3, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllResPb;->memo:Ljava/lang/String;

    iget-object v4, p1, Lcom/ali/user/mobile/register/a/b;->d:Ljava/lang/String;

    const-string/jumbo v5, "verifySms"

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    if-eq v6, v2, :cond_3

    const-string/jumbo v4, "Reg_ManualSms"

    const-string/jumbo v5, "verify sms, failed clear input"

    invoke-static {v4, v5}, Lcom/ali/user/mobile/e/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/RegManualSmsActivity;->clearInput()V

    :cond_3
    iget-object v4, p1, Lcom/ali/user/mobile/register/a/b;->d:Ljava/lang/String;

    const-string/jumbo v5, "sendSms"

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    if-ne v6, v2, :cond_4

    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/RegManualSmsActivity;->startCountDown()V

    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/RegManualSmsActivity;->callUpKeyboard()V

    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v4, p1, Lcom/ali/user/mobile/register/a/b;->d:Ljava/lang/String;

    const-string/jumbo v5, "verifySms"

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v4, 0x7d7

    if-ne v4, v2, :cond_0

    invoke-virtual {p0, v3}, Lcom/ali/user/mobile/register/ui/RegManualSmsActivity;->showError(Ljava/lang/String;)V

    move v0, v1

    goto :goto_0
.end method

.method public handleVerifySuccess(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onBackPressed()V
    .locals 2

    invoke-super {p0}, Lcom/ali/user/mobile/common/ui/AbsVerifySmsActivity;->onBackPressed()V

    const-string/jumbo v0, "UC-ZC-150512-11"

    const-string/jumbo v1, "zcsmsback"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/register/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/ali/user/mobile/common/ui/AbsVerifySmsActivity;->onCreate(Landroid/os/Bundle;)V

    const-string/jumbo v0, "UC-ZC-161223-01"

    const-string/jumbo v1, "zcsms"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/register/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, ""

    const-string/jumbo v1, "RegManualSmsActivity"

    const-string/jumbo v2, "login"

    const-string/jumbo v3, ""

    invoke-static {v0, v1, v2, v3}, Lcom/ali/user/mobile/e/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onGoBack()V
    .locals 2

    invoke-super {p0}, Lcom/ali/user/mobile/common/ui/AbsVerifySmsActivity;->onGoBack()V

    const-string/jumbo v0, "UC-ZC-161225-06"

    const-string/jumbo v1, "zcmessageback"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/register/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Lcom/ali/user/mobile/common/ui/AbsVerifySmsActivity;->onResume()V

    invoke-static {p0}, Lcom/ali/user/mobile/register/b/g;->a(Lcom/ali/user/mobile/register/b/a;)V

    return-void
.end method

.method protected onWait()V
    .locals 2

    invoke-super {p0}, Lcom/ali/user/mobile/common/ui/AbsVerifySmsActivity;->onWait()V

    const-string/jumbo v0, "UC-ZC-161225-05"

    const-string/jumbo v1, "zcmessagewait"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/register/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public sendSms()V
    .locals 3

    const-string/jumbo v0, "Reg_ManualSms"

    const-string/jumbo v1, "send sms"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "UC-ZC-150512-12"

    const-string/jumbo v1, "zcsmsredo"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/register/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/ali/user/mobile/register/b;->a()Lcom/ali/user/mobile/register/b;

    move-result-object v0

    iget-object v0, v0, Lcom/ali/user/mobile/register/b;->c:Lcom/ali/user/mobile/register/c/a;

    if-nez v0, :cond_0

    const-string/jumbo v0, "Reg_ManualSms"

    const-string/jumbo v1, "send sms, null action center"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    new-instance v1, Lcom/ali/user/mobile/register/a/a;

    invoke-direct {v1}, Lcom/ali/user/mobile/register/a/a;-><init>()V

    const-string/jumbo v2, "sendSms"

    iput-object v2, v1, Lcom/ali/user/mobile/register/a/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lcom/ali/user/mobile/register/c/a;->a(Lcom/ali/user/mobile/register/a/a;Lcom/ali/user/mobile/base/BaseActivity;)V

    goto :goto_0
.end method

.method protected setAppId()V
    .locals 1

    const-string/jumbo v0, "20000009"

    iput-object v0, p0, Lcom/ali/user/mobile/register/ui/RegManualSmsActivity;->mAppId:Ljava/lang/String;

    return-void
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/ali/user/mobile/common/ui/AbsVerifySmsActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/RegManualSmsActivity;->finish()V

    return-void
.end method

.method public verifySms(Ljava/lang/String;)V
    .locals 3

    const-string/jumbo v0, "Reg_ManualSms"

    const-string/jumbo v1, "verify sms"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/RegManualSmsActivity;->hideError()V

    invoke-static {}, Lcom/ali/user/mobile/register/b;->a()Lcom/ali/user/mobile/register/b;

    move-result-object v0

    iget-object v0, v0, Lcom/ali/user/mobile/register/b;->c:Lcom/ali/user/mobile/register/c/a;

    if-nez v0, :cond_0

    const-string/jumbo v0, "Reg_ManualSms"

    const-string/jumbo v1, "verify sms, null action center"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    new-instance v1, Lcom/ali/user/mobile/register/a/a;

    invoke-direct {v1}, Lcom/ali/user/mobile/register/a/a;-><init>()V

    iput-object p1, v1, Lcom/ali/user/mobile/register/a/a;->c:Ljava/lang/String;

    const-string/jumbo v2, "verifySms"

    iput-object v2, v1, Lcom/ali/user/mobile/register/a/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lcom/ali/user/mobile/register/c/a;->a(Lcom/ali/user/mobile/register/a/a;Lcom/ali/user/mobile/base/BaseActivity;)V

    const-string/jumbo v0, "UC-ZC-150512-13"

    const-string/jumbo v1, "zcsmsnext"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/register/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
