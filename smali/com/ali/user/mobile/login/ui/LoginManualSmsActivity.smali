.class public Lcom/ali/user/mobile/login/ui/LoginManualSmsActivity;
.super Lcom/ali/user/mobile/common/ui/AbsVerifySmsActivity;
.source "LoginManualSmsActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LoginManualSmsActivity"


# instance fields
.field private mLoginId:Ljava/lang/String;

.field private mToken:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/ali/user/mobile/common/ui/AbsVerifySmsActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/ali/user/mobile/login/ui/LoginManualSmsActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ali/user/mobile/login/ui/LoginManualSmsActivity;->verifySmsAndLoginBackground(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/ali/user/mobile/login/ui/LoginManualSmsActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/ali/user/mobile/login/ui/LoginManualSmsActivity;->sendSmsBackground()V

    return-void
.end method

.method static synthetic access$200(Lcom/ali/user/mobile/login/ui/LoginManualSmsActivity;Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginSendMSGResPb;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ali/user/mobile/login/ui/LoginManualSmsActivity;->onSendSmsResponse(Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginSendMSGResPb;)V

    return-void
.end method

.method private onSendSmsResponse(Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginSendMSGResPb;)V
    .locals 7

    const/4 v4, 0x0

    if-nez p1, :cond_0

    const-string/jumbo v0, "LoginManualSmsActivity"

    const-string/jumbo v1, "LoginSendMSGResPb=null"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/LoginManualSmsActivity;->showHint()V

    const-string/jumbo v0, "1000"

    iget-object v1, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginSendMSGResPb;->resultCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginSendMSGResPb;->token:Ljava/lang/String;

    iput-object v0, p0, Lcom/ali/user/mobile/login/ui/LoginManualSmsActivity;->mToken:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/LoginManualSmsActivity;->startCountDown()V

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "6410"

    iget-object v1, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginSendMSGResPb;->resultCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v1, ""

    iget-object v2, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginSendMSGResPb;->memo:Ljava/lang/String;

    sget v0, Lcom/ali/user/mobile/security/ui/R$string;->alipay_iknow:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/login/ui/LoginManualSmsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v5, v4

    move-object v6, v4

    invoke-virtual/range {v0 .. v6}, Lcom/ali/user/mobile/login/ui/LoginManualSmsActivity;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    :cond_2
    iget-object v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginSendMSGResPb;->memo:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/login/ui/LoginManualSmsActivity;->showError(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private sendSmsBackground()V
    .locals 6

    const-string/jumbo v0, "LoginManualSmsActivity"

    const-string/jumbo v1, "resend sms code"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, ""

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/login/ui/LoginManualSmsActivity;->showProgress(Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Lcom/ali/user/mobile/login/MsgLoginParam;

    invoke-direct {v0}, Lcom/ali/user/mobile/login/MsgLoginParam;-><init>()V

    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/LoginManualSmsActivity;->mLoginId:Ljava/lang/String;

    iput-object v1, v0, Lcom/ali/user/mobile/login/MsgLoginParam;->loginId:Ljava/lang/String;

    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/LoginManualSmsActivity;->mToken:Ljava/lang/String;

    iput-object v1, v0, Lcom/ali/user/mobile/login/MsgLoginParam;->token:Ljava/lang/String;

    invoke-static {}, Lcom/ali/user/mobile/a/a;->f()Lcom/ali/user/mobile/h/b;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/ali/user/mobile/h/b;->a(Lcom/ali/user/mobile/login/MsgLoginParam;)Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginSendMSGResPb;

    move-result-object v0

    const-string/jumbo v1, "LoginManualSmsActivity"

    const-string/jumbo v2, "initMsgLogin result, code:%s, memo:%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, v0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginSendMSGResPb;->resultCode:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, v0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginSendMSGResPb;->memo:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/LoginManualSmsActivity;->dismissProgress()V

    new-instance v1, Lcom/ali/user/mobile/login/ui/w;

    invoke-direct {v1, p0, v0}, Lcom/ali/user/mobile/login/ui/w;-><init>(Lcom/ali/user/mobile/login/ui/LoginManualSmsActivity;Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginSendMSGResPb;)V

    invoke-virtual {p0, v1}, Lcom/ali/user/mobile/login/ui/LoginManualSmsActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Lcom/alipay/android/phone/mrpc/core/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/LoginManualSmsActivity;->dismissProgress()V

    throw v0
.end method

.method private verifySmsAndLoginBackground(Ljava/lang/String;)V
    .locals 3

    const-string/jumbo v0, "LoginManualSmsActivity"

    const-string/jumbo v1, "start to verify sms code"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, ""

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/login/ui/LoginManualSmsActivity;->showProgress(Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Lcom/ali/user/mobile/login/LoginParam;

    invoke-direct {v0}, Lcom/ali/user/mobile/login/LoginParam;-><init>()V

    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/LoginManualSmsActivity;->mLoginId:Ljava/lang/String;

    iput-object v1, v0, Lcom/ali/user/mobile/login/LoginParam;->loginAccount:Ljava/lang/String;

    iput-object p1, v0, Lcom/ali/user/mobile/login/LoginParam;->smsCode:Ljava/lang/String;

    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/LoginManualSmsActivity;->mToken:Ljava/lang/String;

    iput-object v1, v0, Lcom/ali/user/mobile/login/LoginParam;->token:Ljava/lang/String;

    const-string/jumbo v1, "withsndmsg"

    iput-object v1, v0, Lcom/ali/user/mobile/login/LoginParam;->validateTpye:Ljava/lang/String;

    invoke-static {}, Lcom/ali/user/mobile/a/a;->f()Lcom/ali/user/mobile/h/b;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/ali/user/mobile/h/b;->a(Lcom/ali/user/mobile/login/LoginParam;)Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginRes;

    move-result-object v1

    new-instance v2, Lcom/ali/user/mobile/login/ui/t;

    invoke-direct {v2, p0, v0, v1}, Lcom/ali/user/mobile/login/ui/t;-><init>(Lcom/ali/user/mobile/login/ui/LoginManualSmsActivity;Lcom/ali/user/mobile/login/LoginParam;Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginRes;)V

    invoke-virtual {p0, v2}, Lcom/ali/user/mobile/login/ui/LoginManualSmsActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Lcom/alipay/android/phone/mrpc/core/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/LoginManualSmsActivity;->dismissProgress()V

    throw v0
.end method


# virtual methods
.method protected afterBackgroundLogin(Lcom/ali/user/mobile/login/LoginParam;Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginRes;)V
    .locals 7

    const/4 v1, 0x0

    if-nez p2, :cond_0

    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/LoginManualSmsActivity;->dismissProgress()V

    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/LoginManualSmsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/ali/user/mobile/security/ui/R$string;->alipay_login_error:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xbb8

    invoke-virtual {p0, v0, v1}, Lcom/ali/user/mobile/login/ui/LoginManualSmsActivity;->toast(Ljava/lang/String;I)V

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "loginRes == null after setDoublePassword"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/ali/user/mobile/e/c;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "LoginManualSmsActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "doBackgroundLogin result,code:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p2, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginRes;->code:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",msg:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p2, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginRes;->msg:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "200"

    iget-object v2, p2, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginRes;->code:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "1000"

    iget-object v2, p2, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginRes;->code:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-static {}, Lcom/ali/user/mobile/a/a;->h()Lcom/ali/user/mobile/a/b;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/ali/user/mobile/a/b;->onLoginPreFinish(Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginRes;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/LoginManualSmsActivity;->dismissProgress()V

    const-string/jumbo v0, "6213"

    iget-object v2, p2, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginRes;->code:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "LoginManualSmsActivity"

    const-string/jumbo v2, "session timeout"

    invoke-static {v0, v2}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p2, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginRes;->msg:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/LoginManualSmsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/ali/user/mobile/security/ui/R$string;->alipay_comfirm:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v4, v1

    move-object v5, v1

    move-object v6, v1

    invoke-virtual/range {v0 .. v6}, Lcom/ali/user/mobile/login/ui/LoginManualSmsActivity;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    :cond_3
    const-string/jumbo v0, "6408"

    iget-object v2, p2, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginRes;->code:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string/jumbo v0, "LoginManualSmsActivity"

    const-string/jumbo v2, "session timeout"

    invoke-static {v0, v2}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p2, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginRes;->msg:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/LoginManualSmsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/ali/user/mobile/security/ui/R$string;->alipay_reg_manual_sms_resend:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/ali/user/mobile/login/ui/u;

    invoke-direct {v4, p0}, Lcom/ali/user/mobile/login/ui/u;-><init>(Lcom/ali/user/mobile/login/ui/LoginManualSmsActivity;)V

    move-object v0, p0

    move-object v5, v1

    move-object v6, v1

    invoke-virtual/range {v0 .. v6}, Lcom/ali/user/mobile/login/ui/LoginManualSmsActivity;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_0

    :cond_4
    const-string/jumbo v0, "6409"

    iget-object v1, p2, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginRes;->code:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string/jumbo v0, "6411"

    iget-object v1, p2, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginRes;->code:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    const-string/jumbo v0, "LoginManualSmsActivity"

    const-string/jumbo v1, "session timeout"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p2, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginRes;->msg:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/login/ui/LoginManualSmsActivity;->showError(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/LoginManualSmsActivity;->showHint()V

    goto/16 :goto_0

    :cond_6
    const-string/jumbo v0, "LoginManualSmsActivity"

    const-string/jumbo v1, "doBackgroundLogin other error"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/LoginManualSmsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "login_response"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string/jumbo v1, "login_param"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const/16 v1, 0x2002

    invoke-virtual {p0, v1, v0}, Lcom/ali/user/mobile/login/ui/LoginManualSmsActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/LoginManualSmsActivity;->finish()V

    goto/16 :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    invoke-super {p0, p1}, Lcom/ali/user/mobile/common/ui/AbsVerifySmsActivity;->onCreate(Landroid/os/Bundle;)V

    const-string/jumbo v2, ""

    const-string/jumbo v0, ""

    :try_start_0
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/LoginManualSmsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v3, "token"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ali/user/mobile/login/ui/LoginManualSmsActivity;->mToken:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/LoginManualSmsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v3, "loginId"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ali/user/mobile/login/ui/LoginManualSmsActivity;->mLoginId:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/LoginManualSmsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v3, "userId"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/LoginManualSmsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v3, "showAccount"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :try_start_1
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/LoginManualSmsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "countryCodeBetweenView"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    :goto_0
    iget-object v2, p0, Lcom/ali/user/mobile/login/ui/LoginManualSmsActivity;->mLoginId:Ljava/lang/String;

    invoke-static {v2}, Lcom/ali/user/mobile/i/e;->e(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x4

    invoke-static {v1, v0}, Lcom/ali/user/mobile/i/e;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/login/ui/LoginManualSmsActivity;->initTip(Ljava/lang/String;)V

    const-string/jumbo v0, ""

    const-string/jumbo v1, "LoginManualSmsActivity"

    const-string/jumbo v2, "login"

    const-string/jumbo v3, ""

    invoke-static {v0, v1, v2, v3}, Lcom/ali/user/mobile/e/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v1

    move-object v5, v1

    move-object v1, v2

    move-object v2, v5

    :goto_2
    const-string/jumbo v3, "LoginManualSmsActivity"

    const-string/jumbo v4, "get intent"

    invoke-static {v3, v4, v2}, Lcom/ali/user/mobile/e/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :catch_1
    move-exception v2

    goto :goto_2
.end method

.method public sendSms()V
    .locals 1

    new-instance v0, Lcom/ali/user/mobile/login/ui/v;

    invoke-direct {v0, p0}, Lcom/ali/user/mobile/login/ui/v;-><init>(Lcom/ali/user/mobile/login/ui/LoginManualSmsActivity;)V

    invoke-static {v0}, Lcom/ali/user/mobile/accountbiz/c;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected setAppId()V
    .locals 1

    const-string/jumbo v0, "20000008"

    iput-object v0, p0, Lcom/ali/user/mobile/login/ui/LoginManualSmsActivity;->mAppId:Ljava/lang/String;

    return-void
.end method

.method public verifySms(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/ali/user/mobile/login/ui/s;

    invoke-direct {v0, p0, p1}, Lcom/ali/user/mobile/login/ui/s;-><init>(Lcom/ali/user/mobile/login/ui/LoginManualSmsActivity;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/ali/user/mobile/accountbiz/c;->a(Ljava/lang/Runnable;)V

    return-void
.end method
