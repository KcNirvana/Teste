.class public Lcom/ali/user/mobile/login/ui/AlipayUserLoginActivity;
.super Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;
.source "AlipayUserLoginActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AlipayUserLoginActivity"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;-><init>()V

    return-void
.end method

.method private getIsAutoLoginTrace()Ljava/lang/String;
    .locals 4

    const-string/jumbo v0, ""

    :try_start_0
    invoke-static {}, Lcom/ali/user/mobile/a;->b()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "isAutoLogin"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/ali/user/mobile/accountbiz/b/c;->a(Landroid/content/Context;Ljava/lang/String;I)Lcom/ali/user/mobile/accountbiz/b/a;

    move-result-object v1

    const-string/jumbo v2, "trace"

    const-string/jumbo v3, ""

    invoke-virtual {v1, v2, v3}, Lcom/ali/user/mobile/accountbiz/b/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    const-string/jumbo v2, "AlipayUserLoginActivity"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/ali/user/mobile/e/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private isFromFirstPage()Z
    .locals 3

    const-string/jumbo v0, "firstpage"

    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AlipayUserLoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "flag"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isLoginForCashier()Z
    .locals 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AlipayUserLoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string/jumbo v3, "findLoginAppWhenCashier"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string/jumbo v3, "findLoginAppWhenCashier"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    const-string/jumbo v4, "AlipayUserLoginActivity"

    const-string/jumbo v5, "this login from phonecashier:%s"

    new-array v6, v1, [Ljava/lang/Object;

    if-nez v3, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v6, v2

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v3, :cond_1

    :goto_1
    return v1

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_1
.end method

.method private loginTrace(Landroid/content/Intent;)V
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "login_param"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/ali/user/mobile/login/LoginParam;

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "from_register"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    :goto_0
    if-nez v0, :cond_0

    const-string/jumbo v0, "loginWithOutUserName-"

    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz v1, :cond_1

    const-string/jumbo v0, "aliuser.regist"

    :goto_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ali/user/mobile/login/ui/AlipayUserLoginActivity;->writeLoginLog(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string/jumbo v0, "loginWithUserName-"

    goto :goto_1

    :cond_1
    const-string/jumbo v0, "aliuser.login"

    goto :goto_2

    :cond_2
    move v3, v0

    move-object v0, v1

    move v1, v3

    goto :goto_0
.end method

.method private notifyAuthCenter(ZZ)V
    .locals 5

    const-string/jumbo v0, "AlipayUserLoginActivity"

    const-string/jumbo v1, "notifyAuthCenter,loginSuccess:%s,aotoLogin:%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AlipayUserLoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ali/user/mobile/accountbiz/extservice/manager/AntExtServiceManager;->getAuthService(Landroid/content/Context;)Lcom/ali/user/mobile/accountbiz/extservice/AuthService;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/ali/user/mobile/accountbiz/extservice/AuthService;->notifyUnlockLoginApp(ZZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "AlipayUserLoginActivity"

    invoke-static {v1, v0}, Lcom/ali/user/mobile/e/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private writeLoginLog(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0}, Lcom/ali/user/mobile/login/ui/AlipayUserLoginActivity;->getIsAutoLoginTrace()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ali/user/mobile/login/ui/AlipayUserLoginActivity;->writeLoginLogInternal(Ljava/lang/String;)V

    return-void
.end method

.method private writeLoginLogInternal(Ljava/lang/String;)V
    .locals 4

    const-string/jumbo v0, "UC-ZHAQ-56"

    const-string/jumbo v1, "loginTrace"

    const-string/jumbo v2, ""

    const-string/jumbo v3, ""

    invoke-static {v0, v1, p1, v2, v3}, Lcom/ali/user/mobile/e/c;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public finishAndNotify()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/ali/user/mobile/login/ui/AlipayUserLoginActivity;->isFromFirstPage()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "AlipayUserLoginActivity"

    const-string/jumbo v1, "\u4ece\u5f15\u5bfc\u9875\u8c03\u8d77\u767b\u5f55\u9875\uff0c\u540e\u9000\u7684\u65f6\u5019\u4e0d\u91ca\u653e\u9501"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-super {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->finishAndNotify()V

    return-void

    :cond_0
    const-string/jumbo v0, "AlipayUserLoginActivity"

    const-string/jumbo v1, "\u901a\u77e5\u7b49\u5f85\u7684\u767b\u9646\u7ebf\u7a0b\u5e76\u4e14\u9000\u51fa\u767b\u9646"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v2, v2}, Lcom/ali/user/mobile/login/ui/AlipayUserLoginActivity;->notifyAuthCenter(ZZ)V

    goto :goto_0
.end method

.method protected handleRpcException(Lcom/alipay/android/phone/mrpc/core/RpcException;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->handleRpcException(Lcom/alipay/android/phone/mrpc/core/RpcException;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    const-string/jumbo v0, "AlipayUserLoginActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "liangzi.dlz onCreate:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",instance:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "AlipayUserLoginActivity"

    const-string/jumbo v1, "try to create instance of AliUserSdkLoginBiz in activity"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AlipayUserLoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ali/user/mobile/biz/a;->a(Landroid/content/Context;)Lcom/ali/user/mobile/biz/a;

    invoke-super {p0, p1}, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AlipayUserLoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ali/user/mobile/login/ui/AlipayUserLoginActivity;->loginTrace(Landroid/content/Intent;)V

    const-string/jumbo v0, ""

    const-string/jumbo v1, "AlipayUserLoginActivity"

    const-string/jumbo v2, "login"

    const-string/jumbo v3, ""

    invoke-static {v0, v1, v2, v3}, Lcom/ali/user/mobile/e/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onDestroy()V
    .locals 4

    const/4 v3, 0x0

    const-string/jumbo v0, "AlipayUserLoginActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDestroy, instance:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->onDestroy()V

    iget-boolean v0, p0, Lcom/ali/user/mobile/login/ui/AlipayUserLoginActivity;->mIsLoginSuccess:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/ali/user/mobile/login/ui/AlipayUserLoginActivity;->isLoginForCashier()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/ali/user/mobile/login/ui/AlipayUserLoginActivity;->isFromFirstPage()Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "AlipayUserLoginActivity"

    const-string/jumbo v1, "\u672a\u767b\u5f55\u88ab\u9500\u6bc1\uff0c\u901a\u77e5\u767b\u5f55\u5931\u8d25"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v3, v3}, Lcom/ali/user/mobile/login/ui/AlipayUserLoginActivity;->notifyAuthCenter(ZZ)V

    :cond_0
    return-void
.end method

.method public onLoginResponse(Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginRes;)Z
    .locals 2

    const-string/jumbo v0, "2003"

    iget-object v1, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginRes;->code:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AlipayUserLoginActivity;->dismissProgress()V

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->onLoginResponse(Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginRes;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPause()V
    .locals 3

    const-string/jumbo v0, "AlipayUserLoginActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPause, instance:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 3

    const-string/jumbo v0, "AlipayUserLoginActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onResume, instance:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->onResume()V

    return-void
.end method
