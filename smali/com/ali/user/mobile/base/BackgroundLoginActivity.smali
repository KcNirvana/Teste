.class public abstract Lcom/ali/user/mobile/base/BackgroundLoginActivity;
.super Lcom/ali/user/mobile/base/BaseActivity;
.source "BackgroundLoginActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BaseLoginActivity"


# instance fields
.field protected mHandler:Landroid/os/Handler;

.field protected mLoginParam:Lcom/ali/user/mobile/login/LoginParam;

.field protected mToken:Ljava/lang/String;

.field protected mUserLoginService:Lcom/ali/user/mobile/h/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/ali/user/mobile/base/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected afterBackgroundLogin(Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginRes;)V
    .locals 1

    new-instance v0, Lcom/ali/user/mobile/base/b;

    invoke-direct {v0, p0, p1}, Lcom/ali/user/mobile/base/b;-><init>(Lcom/ali/user/mobile/base/BackgroundLoginActivity;Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginRes;)V

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/base/BackgroundLoginActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected alertResult(Ljava/lang/String;I)V
    .locals 7

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/ali/user/mobile/base/BackgroundLoginActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/ali/user/mobile/security/ui/R$string;->alipay_comfirm:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/ali/user/mobile/base/c;

    invoke-direct {v4, p0, p2}, Lcom/ali/user/mobile/base/c;-><init>(Lcom/ali/user/mobile/base/BackgroundLoginActivity;I)V

    move-object v0, p0

    move-object v2, p1

    move-object v5, v1

    move-object v6, v1

    invoke-virtual/range {v0 .. v6}, Lcom/ali/user/mobile/base/BackgroundLoginActivity;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method protected doBackgroundLogin()V
    .locals 1

    new-instance v0, Lcom/ali/user/mobile/base/a;

    invoke-direct {v0, p0}, Lcom/ali/user/mobile/base/a;-><init>(Lcom/ali/user/mobile/base/BackgroundLoginActivity;)V

    invoke-static {v0}, Lcom/ali/user/mobile/accountbiz/c;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected handleException(Ljava/lang/Exception;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/ali/user/mobile/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/ali/user/mobile/base/BackgroundLoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "token"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/base/BackgroundLoginActivity;->mToken:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/ali/user/mobile/base/BackgroundLoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "login_param"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/ali/user/mobile/login/LoginParam;

    iput-object v0, p0, Lcom/ali/user/mobile/base/BackgroundLoginActivity;->mLoginParam:Lcom/ali/user/mobile/login/LoginParam;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/ali/user/mobile/base/BackgroundLoginActivity;->mHandler:Landroid/os/Handler;

    invoke-static {}, Lcom/ali/user/mobile/a/a;->f()Lcom/ali/user/mobile/h/b;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/base/BackgroundLoginActivity;->mUserLoginService:Lcom/ali/user/mobile/h/b;

    return-void
.end method

.method protected onLoginFail(Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginRes;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onLoginSuccess(Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginRes;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected prepareLoginParam()Lcom/ali/user/mobile/login/LoginParam;
    .locals 2

    iget-object v0, p0, Lcom/ali/user/mobile/base/BackgroundLoginActivity;->mLoginParam:Lcom/ali/user/mobile/login/LoginParam;

    iget-object v1, p0, Lcom/ali/user/mobile/base/BackgroundLoginActivity;->mToken:Ljava/lang/String;

    iput-object v1, v0, Lcom/ali/user/mobile/login/LoginParam;->token:Ljava/lang/String;

    iget-object v0, p0, Lcom/ali/user/mobile/base/BackgroundLoginActivity;->mLoginParam:Lcom/ali/user/mobile/login/LoginParam;

    const-string/jumbo v1, "withchecktoken"

    iput-object v1, v0, Lcom/ali/user/mobile/login/LoginParam;->validateTpye:Ljava/lang/String;

    iget-object v0, p0, Lcom/ali/user/mobile/base/BackgroundLoginActivity;->mLoginParam:Lcom/ali/user/mobile/login/LoginParam;

    return-object v0
.end method
