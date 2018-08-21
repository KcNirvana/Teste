.class public Lcom/ali/user/mobile/external/AuthLoginResultActivity;
.super Lcom/ali/user/mobile/external/BaseExternalActivity;
.source "AuthLoginResultActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ali/user/mobile/external/AuthLoginResultActivity$AlipaySSOEventHandlerImpl;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AuthLoginResultActivity"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/ali/user/mobile/external/BaseExternalActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/ali/user/mobile/external/AuthLoginResultActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ali/user/mobile/external/AuthLoginResultActivity;->goLogin(Ljava/lang/String;)V

    return-void
.end method

.method private callback(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "loginStatus"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/ali/user/mobile/a/a;->i()Lcom/alipay/android/phone/inside/framework/service/b;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1, v0}, Lcom/alipay/android/phone/inside/framework/service/b;->a(Ljava/lang/Object;)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/ali/user/mobile/a/a;->a(Lcom/alipay/android/phone/inside/framework/service/b;)V

    :cond_0
    return-void
.end method

.method private goLogin(Ljava/lang/String;)V
    .locals 5

    const-string/jumbo v0, "clicked"

    const-string/jumbo v1, "prerouterpage_ssologin"

    const-string/jumbo v2, "UC-PREROUTER-LOG-170401-5"

    const-string/jumbo v3, "withauthtoken"

    invoke-static {v0, v1, v2, v3}, Lcom/ali/user/mobile/e/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/ali/user/mobile/login/LoginParam;

    invoke-direct {v1}, Lcom/ali/user/mobile/login/LoginParam;-><init>()V

    const-string/jumbo v0, "withauthtoken"

    iput-object v0, v1, Lcom/ali/user/mobile/login/LoginParam;->validateTpye:Ljava/lang/String;

    iput-object p1, v1, Lcom/ali/user/mobile/login/LoginParam;->token:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/ali/user/mobile/info/AppInfo;->getInstance()Lcom/ali/user/mobile/info/AppInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ali/user/mobile/info/AppInfo;->getAuthApdidToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lcom/ali/user/mobile/info/AppInfo;->getApdidToken()Ljava/lang/String;

    move-result-object v0

    :cond_0
    const-string/jumbo v3, "{\"apdidToken\":\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "\"}"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "devKeySet"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/ali/user/mobile/login/LoginParam;->addExternalParam(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "appKey"

    const-string/jumbo v2, "authlogin_inside_android_aes128"

    invoke-virtual {v1, v0, v2}, Lcom/ali/user/mobile/login/LoginParam;->addExternalParam(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/ali/user/mobile/external/AuthLoginResultActivity;->doUnifyLogin(Lcom/ali/user/mobile/login/LoginParam;)V

    return-void
.end method

.method private handleResultIntent()V
    .locals 4

    :try_start_0
    invoke-static {}, Lcom/alipay/android/phone/inside/framework/LauncherApplication;->getInstance()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/ali/user/mobile/biz/a;->a(Landroid/content/Context;)Lcom/ali/user/mobile/biz/a;

    const-string/jumbo v0, ""

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/external/AuthLoginResultActivity;->showProgress(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ali/user/mobile/external/AuthLoginResultActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ali/user/mobile/authlogin/a;->a(Landroid/content/Context;)Lcom/ali/user/mobile/authlogin/a/a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ali/user/mobile/external/AuthLoginResultActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ali/user/mobile/authlogin/a/a;->a(Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Lcom/ali/user/mobile/external/AuthLoginResultActivity$AlipaySSOEventHandlerImpl;

    invoke-direct {v2, p0}, Lcom/ali/user/mobile/external/AuthLoginResultActivity$AlipaySSOEventHandlerImpl;-><init>(Lcom/ali/user/mobile/external/AuthLoginResultActivity;)V

    invoke-interface {v0, v1, v2}, Lcom/ali/user/mobile/authlogin/a/a;->a(Landroid/content/Intent;Lcom/ali/user/mobile/authlogin/a/b;)V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "AuthLoginResultActivity"

    const-string/jumbo v1, "nac"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "clicked"

    const-string/jumbo v1, "login_action_callback"

    const-string/jumbo v2, "UC-ACTION-CALLBACK-170401-2"

    const-string/jumbo v3, "anc"

    invoke-static {v0, v1, v2, v3}, Lcom/ali/user/mobile/e/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ali/user/mobile/external/AuthLoginResultActivity;->delayFinishCurrentPage()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "AuthLoginResultActivity"

    const-string/jumbo v2, "handleResultIntent"

    invoke-static {v1, v2, v0}, Lcom/ali/user/mobile/e/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string/jumbo v0, "process auth result error"

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/external/AuthLoginResultActivity;->onProcessAuthResultError(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected delayFinishCurrentPage()V
    .locals 4

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/ali/user/mobile/external/AuthLoginResultActivity$1;

    invoke-direct {v1, p0}, Lcom/ali/user/mobile/external/AuthLoginResultActivity$1;-><init>(Lcom/ali/user/mobile/external/AuthLoginResultActivity;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method protected handleRpcException(Lcom/alipay/android/phone/mrpc/core/RpcException;)V
    .locals 2

    invoke-virtual {p0}, Lcom/ali/user/mobile/external/AuthLoginResultActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/ali/user/mobile/security/ui/R$string;->alipay_security_connect_network_fail:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/ali/user/mobile/external/AuthLoginResultActivity;->toast(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/ali/user/mobile/external/AuthLoginResultActivity;->dismissProgress()V

    const-string/jumbo v0, "rpc_failed"

    invoke-direct {p0, v0}, Lcom/ali/user/mobile/external/AuthLoginResultActivity;->callback(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ali/user/mobile/external/AuthLoginResultActivity;->delayFinishCurrentPage()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    :try_start_0
    invoke-super {p0, p1}, Lcom/ali/user/mobile/external/BaseExternalActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/ali/user/mobile/external/AuthLoginResultActivity;->handleResultIntent()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v0, "AuthLoginResultActivity"

    const-string/jumbo v1, "oncreate error"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ali/user/mobile/external/AuthLoginResultActivity;->finish()V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/ali/user/mobile/external/BaseExternalActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onLoginResponseError(Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginRes;)V
    .locals 2

    invoke-virtual {p0}, Lcom/ali/user/mobile/external/AuthLoginResultActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/ali/user/mobile/security/ui/R$string;->alipay_login_rds_suspect:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/external/AuthLoginResultActivity;->toast(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ali/user/mobile/external/AuthLoginResultActivity;->dismissProgress()V

    const-string/jumbo v0, "login_failed"

    invoke-direct {p0, v0}, Lcom/ali/user/mobile/external/AuthLoginResultActivity;->callback(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ali/user/mobile/external/AuthLoginResultActivity;->delayFinishCurrentPage()V

    return-void
.end method

.method protected onLoginResponseSuccess(Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginRes;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/ali/user/mobile/external/BaseExternalActivity;->onLoginResponseSuccess(Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginRes;)V

    invoke-virtual {p0}, Lcom/ali/user/mobile/external/AuthLoginResultActivity;->dismissProgress()V

    invoke-virtual {p0}, Lcom/ali/user/mobile/external/AuthLoginResultActivity;->delayFinishCurrentPage()V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2

    :try_start_0
    invoke-super {p0, p1}, Lcom/ali/user/mobile/external/BaseExternalActivity;->onNewIntent(Landroid/content/Intent;)V

    invoke-virtual {p0, p1}, Lcom/ali/user/mobile/external/AuthLoginResultActivity;->setIntent(Landroid/content/Intent;)V

    invoke-direct {p0}, Lcom/ali/user/mobile/external/AuthLoginResultActivity;->handleResultIntent()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v0, "AuthLoginResultActivity"

    const-string/jumbo v1, "onNewIntent error"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ali/user/mobile/external/AuthLoginResultActivity;->finish()V

    goto :goto_0
.end method

.method protected onProcessAuthResultError(Ljava/lang/String;)V
    .locals 3

    const-string/jumbo v0, "AuthLoginResultActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onProcessAuthResultError errorType is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "clicked"

    const-string/jumbo v1, "login_action_callback"

    const-string/jumbo v2, "UC-ACTION-CALLBACK-170401-5"

    invoke-static {v0, v1, v2, p1}, Lcom/ali/user/mobile/e/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ali/user/mobile/external/AuthLoginResultActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/ali/user/mobile/security/ui/R$string;->alipay_security_authlogin_failed:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/ali/user/mobile/external/AuthLoginResultActivity;->toast(Ljava/lang/String;I)V

    const-string/jumbo v0, "other_failed"

    invoke-direct {p0, v0}, Lcom/ali/user/mobile/external/AuthLoginResultActivity;->callback(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ali/user/mobile/external/AuthLoginResultActivity;->delayFinishCurrentPage()V

    return-void
.end method

.method protected onStart()V
    .locals 1

    invoke-super {p0}, Lcom/ali/user/mobile/external/BaseExternalActivity;->onStart()V

    const-string/jumbo v0, ""

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/external/AuthLoginResultActivity;->initRdsPage(Ljava/lang/String;)V

    return-void
.end method
