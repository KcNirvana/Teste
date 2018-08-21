.class public Lcom/ali/user/mobile/login/view/SmsLoginView;
.super Lcom/ali/user/mobile/login/view/LoginView;
.source "SmsLoginView.java"


# instance fields
.field private a:Ljava/lang/String;

.field protected mCountryCode:Ljava/lang/String;

.field protected mCountryName:Ljava/lang/String;

.field protected mLoginAccount:Ljava/lang/String;

.field protected mLoginButton:Landroid/widget/Button;

.field protected mPhoneChangedListener:Landroid/text/TextWatcher;

.field protected mPhoneInputBox:Lcom/ali/user/mobile/ui/widget/AUPhoneInputBox;

.field protected mSmsRegView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/ali/user/mobile/login/view/LoginView;-><init>(Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;)V

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/ali/user/mobile/login/view/SmsLoginView;->mLoginAccount:Ljava/lang/String;

    const-string/jumbo v0, "logout"

    iput-object v0, p0, Lcom/ali/user/mobile/login/view/SmsLoginView;->a:Ljava/lang/String;

    return-void
.end method

.method private a()V
    .locals 2

    iget-object v0, p0, Lcom/ali/user/mobile/login/view/SmsLoginView;->mCurrentSelectedHistory:Lcom/ali/user/mobile/account/bean/UserInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ali/user/mobile/login/view/SmsLoginView;->mCurrentSelectedHistory:Lcom/ali/user/mobile/account/bean/UserInfo;

    invoke-virtual {v0}, Lcom/ali/user/mobile/account/bean/UserInfo;->getLogonId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ali/user/mobile/i/e;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ali/user/mobile/login/view/SmsLoginView;->mCurrentSelectedHistory:Lcom/ali/user/mobile/account/bean/UserInfo;

    invoke-virtual {v0}, Lcom/ali/user/mobile/account/bean/UserInfo;->getLogonId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/login/view/SmsLoginView;->mLoginAccount:Ljava/lang/String;

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/ali/user/mobile/login/view/SmsLoginView;->mCurrentSelectedHistory:Lcom/ali/user/mobile/account/bean/UserInfo;

    invoke-virtual {p0, v0, v1}, Lcom/ali/user/mobile/login/view/SmsLoginView;->setPortraitImage(ZLcom/ali/user/mobile/account/bean/UserInfo;)V

    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginSendMSGResPb;)V
    .locals 3

    const-string/jumbo v0, "SmsLoginView"

    const-string/jumbo v1, "sms without permission"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/ali/user/mobile/login/view/SmsLoginView;->mAttatchActivity:Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;

    const-class v2, Lcom/ali/user/mobile/login/ui/LoginManualSmsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "loginId"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "showAccount"

    invoke-virtual {p0}, Lcom/ali/user/mobile/login/view/SmsLoginView;->getShownAccount()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "countryCodeBetweenView"

    iget-object v2, p0, Lcom/ali/user/mobile/login/view/SmsLoginView;->mCountryCode:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "token"

    iget-object v2, p2, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginSendMSGResPb;->token:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/ali/user/mobile/login/view/SmsLoginView;->mCurrentSelectedHistory:Lcom/ali/user/mobile/account/bean/UserInfo;

    if-eqz v1, :cond_0

    const-string/jumbo v1, "userId"

    iget-object v2, p0, Lcom/ali/user/mobile/login/view/SmsLoginView;->mCurrentSelectedHistory:Lcom/ali/user/mobile/account/bean/UserInfo;

    invoke-virtual {v2}, Lcom/ali/user/mobile/account/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    iget-object v1, p0, Lcom/ali/user/mobile/login/view/SmsLoginView;->mAttatchActivity:Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;

    const/16 v2, 0x2000

    invoke-virtual {v1, v0, v2}, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginSendMSGResPb;)V
    .locals 7

    const/4 v4, 0x0

    if-nez p3, :cond_0

    const-string/jumbo v0, "SmsLoginView"

    const-string/jumbo v1, "LoginSendMSGResPb=null"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "1000"

    iget-object v1, p3, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginSendMSGResPb;->resultCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1, p3}, Lcom/ali/user/mobile/login/view/SmsLoginView;->a(Ljava/lang/String;Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginSendMSGResPb;)V

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "6401"

    iget-object v1, p3, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginSendMSGResPb;->resultCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ali/user/mobile/login/view/SmsLoginView;->mAttatchActivity:Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;

    const-string/jumbo v1, ""

    iget-object v2, p0, Lcom/ali/user/mobile/login/view/SmsLoginView;->mAttatchActivity:Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;

    sget v3, Lcom/ali/user/mobile/security/ui/R$string;->alipay_sms_rds_suspect:I

    invoke-virtual {v2, v3}, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/ali/user/mobile/login/view/SmsLoginView;->mAttatchActivity:Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;

    sget v5, Lcom/ali/user/mobile/security/ui/R$string;->alipay_iknow:I

    invoke-virtual {v3, v5}, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    move-object v6, v4

    invoke-virtual/range {v0 .. v6}, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1, p3}, Lcom/ali/user/mobile/login/view/SmsLoginView;->b(Ljava/lang/String;Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginSendMSGResPb;)V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lcom/ali/user/mobile/login/view/SmsLoginView;->mAttatchActivity:Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->showProgress(Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Lcom/ali/user/mobile/login/MsgLoginParam;

    invoke-direct {v0}, Lcom/ali/user/mobile/login/MsgLoginParam;-><init>()V

    iput-object p1, v0, Lcom/ali/user/mobile/login/MsgLoginParam;->loginId:Ljava/lang/String;

    iput-object p2, v0, Lcom/ali/user/mobile/login/MsgLoginParam;->envJson:Ljava/lang/String;

    iput-object p3, v0, Lcom/ali/user/mobile/login/MsgLoginParam;->verifyId:Ljava/lang/String;

    invoke-static {}, Lcom/ali/user/mobile/a/a;->f()Lcom/ali/user/mobile/h/b;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/ali/user/mobile/h/b;->a(Lcom/ali/user/mobile/login/MsgLoginParam;)Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginSendMSGResPb;

    move-result-object v0

    const-string/jumbo v1, "SmsLoginView"

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

    iget-object v1, p0, Lcom/ali/user/mobile/login/view/SmsLoginView;->mAttatchActivity:Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;

    invoke-virtual {v1}, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->dismissProgress()V

    invoke-direct {p0, p1, p2, v0}, Lcom/ali/user/mobile/login/view/SmsLoginView;->a(Ljava/lang/String;Ljava/lang/String;Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginSendMSGResPb;)V
    :try_end_0
    .catch Lcom/alipay/android/phone/mrpc/core/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/ali/user/mobile/login/view/SmsLoginView;->mAttatchActivity:Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;

    invoke-virtual {v1}, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->dismissProgress()V

    throw v0
.end method

.method static synthetic access$000(Lcom/ali/user/mobile/login/view/SmsLoginView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/ali/user/mobile/login/view/SmsLoginView;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginSendMSGResPb;)V
    .locals 12

    const/4 v4, 0x0

    const-string/jumbo v0, "6415"

    iget-object v1, p2, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginSendMSGResPb;->resultCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "6414"

    iget-object v1, p2, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginSendMSGResPb;->resultCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "6410"

    iget-object v1, p2, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginSendMSGResPb;->resultCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "6413"

    iget-object v1, p2, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginSendMSGResPb;->resultCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "6402"

    iget-object v1, p2, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginSendMSGResPb;->resultCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "6403"

    iget-object v1, p2, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginSendMSGResPb;->resultCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/ali/user/mobile/login/view/SmsLoginView;->mAttatchActivity:Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;

    const-string/jumbo v1, ""

    iget-object v2, p2, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginSendMSGResPb;->memo:Ljava/lang/String;

    iget-object v3, p0, Lcom/ali/user/mobile/login/view/SmsLoginView;->mAttatchActivity:Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;

    sget v5, Lcom/ali/user/mobile/security/ui/R$string;->alipay_iknow:I

    invoke-virtual {v3, v5}, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    move-object v6, v4

    invoke-virtual/range {v0 .. v6}, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "6407"

    iget-object v1, p2, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginSendMSGResPb;->resultCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "6405"

    iget-object v1, p2, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginSendMSGResPb;->resultCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iget-object v5, p0, Lcom/ali/user/mobile/login/view/SmsLoginView;->mAttatchActivity:Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;

    const-string/jumbo v6, ""

    iget-object v7, p2, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginSendMSGResPb;->memo:Ljava/lang/String;

    iget-object v0, p0, Lcom/ali/user/mobile/login/view/SmsLoginView;->mAttatchActivity:Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;

    sget v1, Lcom/ali/user/mobile/security/ui/R$string;->alipay_password_login:I

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lcom/ali/user/mobile/login/view/r;

    invoke-direct {v9, p0}, Lcom/ali/user/mobile/login/view/r;-><init>(Lcom/ali/user/mobile/login/view/SmsLoginView;)V

    move-object v10, v4

    move-object v11, v4

    invoke-virtual/range {v5 .. v11}, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    :cond_3
    const-string/jumbo v0, "6406"

    iget-object v1, p2, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginSendMSGResPb;->resultCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v5, p0, Lcom/ali/user/mobile/login/view/SmsLoginView;->mAttatchActivity:Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;

    const-string/jumbo v6, ""

    iget-object v7, p2, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginSendMSGResPb;->memo:Ljava/lang/String;

    iget-object v0, p0, Lcom/ali/user/mobile/login/view/SmsLoginView;->mAttatchActivity:Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;

    sget v1, Lcom/ali/user/mobile/security/ui/R$string;->alipay_regist_now:I

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lcom/ali/user/mobile/login/view/s;

    invoke-direct {v9, p0, p1}, Lcom/ali/user/mobile/login/view/s;-><init>(Lcom/ali/user/mobile/login/view/SmsLoginView;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ali/user/mobile/login/view/SmsLoginView;->mAttatchActivity:Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;

    sget v1, Lcom/ali/user/mobile/security/ui/R$string;->alipay_confirm_cancel:I

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    move-object v11, v4

    invoke-virtual/range {v5 .. v11}, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/ali/user/mobile/login/view/SmsLoginView;->mAttatchActivity:Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;

    iget-object v1, p2, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginSendMSGResPb;->memo:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->toast(Ljava/lang/String;I)V

    goto :goto_0
.end method


# virtual methods
.method public clearAccount()V
    .locals 2

    iget-object v0, p0, Lcom/ali/user/mobile/login/view/SmsLoginView;->mPhoneInputBox:Lcom/ali/user/mobile/ui/widget/AUPhoneInputBox;

    invoke-virtual {v0}, Lcom/ali/user/mobile/ui/widget/AUPhoneInputBox;->getPhoneInput()Landroid/widget/EditText;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/ali/user/mobile/login/view/SmsLoginView;->requestAccountFocus()V

    return-void
.end method

.method public clearPassword()V
    .locals 0

    return-void
.end method

.method protected doInflate(Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/ali/user/mobile/login/view/LoginView;->doInflate(Landroid/content/Context;)V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/ali/user/mobile/security/ui/R$layout;->alipay_layout_sms_login:I

    invoke-virtual {v0, v1, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->loginButton:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ali/user/mobile/login/view/SmsLoginView;->mLoginButton:Landroid/widget/Button;

    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->smsRegView:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ali/user/mobile/login/view/SmsLoginView;->mSmsRegView:Landroid/widget/TextView;

    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->phoneInput:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/login/view/SmsLoginView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ali/user/mobile/ui/widget/AUPhoneInputBox;

    iput-object v0, p0, Lcom/ali/user/mobile/login/view/SmsLoginView;->mPhoneInputBox:Lcom/ali/user/mobile/ui/widget/AUPhoneInputBox;

    iget-object v0, p0, Lcom/ali/user/mobile/login/view/SmsLoginView;->mPhoneInputBox:Lcom/ali/user/mobile/ui/widget/AUPhoneInputBox;

    iget-object v1, p0, Lcom/ali/user/mobile/login/view/SmsLoginView;->mAttatchActivity:Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/ui/widget/AUPhoneInputBox;->attatchActivity(Lcom/ali/user/mobile/base/BaseActivity;)V

    iget-object v0, p0, Lcom/ali/user/mobile/login/view/SmsLoginView;->mPhoneInputBox:Lcom/ali/user/mobile/ui/widget/AUPhoneInputBox;

    iget-object v1, p0, Lcom/ali/user/mobile/login/view/SmsLoginView;->mAttatchActivity:Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;

    invoke-virtual {v1}, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->getRdsWraper()Lcom/ali/user/mobile/login/rds/RDSWraper;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/ui/widget/AUPhoneInputBox;->setRdsWrapper(Lcom/ali/user/mobile/login/rds/RDSWraper;)V

    iget-object v0, p0, Lcom/ali/user/mobile/login/view/SmsLoginView;->mPhoneInputBox:Lcom/ali/user/mobile/ui/widget/AUPhoneInputBox;

    iget-object v1, p0, Lcom/ali/user/mobile/login/view/SmsLoginView;->mLoginButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/ui/widget/AUPhoneInputBox;->addNeedEnabledButton(Landroid/widget/Button;)V

    iget-object v0, p0, Lcom/ali/user/mobile/login/view/SmsLoginView;->mPhoneInputBox:Lcom/ali/user/mobile/ui/widget/AUPhoneInputBox;

    const-string/jumbo v1, "fromsmslogin"

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/ui/widget/AUPhoneInputBox;->setPageName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ali/user/mobile/login/view/SmsLoginView;->mMainTip:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/ali/user/mobile/login/view/SmsLoginView;->mAttatchActivity:Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;

    invoke-virtual {v0, v3}, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->setRightCornerViewEnable(Z)V

    iget-object v0, p0, Lcom/ali/user/mobile/login/view/SmsLoginView;->mAccountImageView:Lcom/ali/user/mobile/ui/widget/APImageView;

    invoke-virtual {v0, v2}, Lcom/ali/user/mobile/ui/widget/APImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/ali/user/mobile/login/view/SmsLoginView;->mSmsRegView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/ali/user/mobile/login/view/SmsLoginView;->mLoginButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/ali/user/mobile/login/view/SmsLoginView;->mSmsRegView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected doInit()V
    .locals 5

    invoke-virtual {p0}, Lcom/ali/user/mobile/login/view/SmsLoginView;->trustLoginWithExtLoginParam()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/ali/user/mobile/login/view/SmsLoginView;->initPhoneAccount()V

    :cond_0
    iget-object v0, p0, Lcom/ali/user/mobile/login/view/SmsLoginView;->mPhoneInputBox:Lcom/ali/user/mobile/ui/widget/AUPhoneInputBox;

    invoke-virtual {v0}, Lcom/ali/user/mobile/ui/widget/AUPhoneInputBox;->getPhoneInput()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ali/user/mobile/login/view/SmsLoginView;->getPhoneChangedListener()Landroid/text/TextWatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    invoke-virtual {p0}, Lcom/ali/user/mobile/login/view/SmsLoginView;->setScrollBound()V

    invoke-virtual {p0}, Lcom/ali/user/mobile/login/view/SmsLoginView;->requestAccountFocus()V

    const-string/jumbo v0, "UC-LOG-161225-12"

    const-string/jumbo v1, "smsloginonepage"

    iget-object v2, p0, Lcom/ali/user/mobile/login/view/SmsLoginView;->a:Ljava/lang/String;

    const-string/jumbo v3, ""

    const-string/jumbo v4, "openPage"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/ali/user/mobile/e/c;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getLoginAccount()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/ali/user/mobile/login/view/SmsLoginView;->mPhoneInputBox:Lcom/ali/user/mobile/ui/widget/AUPhoneInputBox;

    invoke-virtual {v0}, Lcom/ali/user/mobile/ui/widget/AUPhoneInputBox;->getInputAreaCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/login/view/SmsLoginView;->mCountryCode:Ljava/lang/String;

    iget-object v0, p0, Lcom/ali/user/mobile/login/view/SmsLoginView;->mPhoneInputBox:Lcom/ali/user/mobile/ui/widget/AUPhoneInputBox;

    invoke-virtual {v0}, Lcom/ali/user/mobile/ui/widget/AUPhoneInputBox;->getCountryName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/login/view/SmsLoginView;->mCountryName:Ljava/lang/String;

    iget-object v0, p0, Lcom/ali/user/mobile/login/view/SmsLoginView;->mPhoneInputBox:Lcom/ali/user/mobile/ui/widget/AUPhoneInputBox;

    invoke-virtual {v0}, Lcom/ali/user/mobile/ui/widget/AUPhoneInputBox;->getInputPhoneNo()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "86"

    iget-object v2, p0, Lcom/ali/user/mobile/login/view/SmsLoginView;->mCountryCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_0
    iput-object v0, p0, Lcom/ali/user/mobile/login/view/SmsLoginView;->mLoginAccount:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/ali/user/mobile/login/view/SmsLoginView;->mLoginAccount:Ljava/lang/String;

    return-object v0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/ali/user/mobile/login/view/SmsLoginView;->mCountryCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getLoginPassword()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, ""

    return-object v0
.end method

.method protected getPhoneChangedListener()Landroid/text/TextWatcher;
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/login/view/SmsLoginView;->mPhoneChangedListener:Landroid/text/TextWatcher;

    if-nez v0, :cond_0

    new-instance v0, Lcom/ali/user/mobile/login/view/p;

    invoke-direct {v0, p0}, Lcom/ali/user/mobile/login/view/p;-><init>(Lcom/ali/user/mobile/login/view/SmsLoginView;)V

    iput-object v0, p0, Lcom/ali/user/mobile/login/view/SmsLoginView;->mPhoneChangedListener:Landroid/text/TextWatcher;

    :cond_0
    iget-object v0, p0, Lcom/ali/user/mobile/login/view/SmsLoginView;->mPhoneChangedListener:Landroid/text/TextWatcher;

    return-object v0
.end method

.method public getShownAccount()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/login/view/SmsLoginView;->mPhoneInputBox:Lcom/ali/user/mobile/ui/widget/AUPhoneInputBox;

    invoke-virtual {v0}, Lcom/ali/user/mobile/ui/widget/AUPhoneInputBox;->getInputPhoneNo()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected initMsgLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/ali/user/mobile/login/view/q;

    invoke-direct {v0, p0, p2, p1, p3}, Lcom/ali/user/mobile/login/view/q;-><init>(Lcom/ali/user/mobile/login/view/SmsLoginView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/ali/user/mobile/accountbiz/c;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected initPhoneAccount()V
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/ali/user/mobile/login/view/SmsLoginView;->mAttatchActivity:Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;

    invoke-virtual {v0}, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->getIsFromRegist()Z

    move-result v0

    if-nez v0, :cond_0

    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/ali/user/mobile/login/view/SmsLoginView;->mParams:Landroid/os/Bundle;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/ali/user/mobile/login/view/SmsLoginView;->a()V

    :goto_1
    if-eqz v1, :cond_5

    iget-object v0, p0, Lcom/ali/user/mobile/login/view/SmsLoginView;->mLoginAccount:Ljava/lang/String;

    invoke-static {v0}, Lcom/ali/user/mobile/i/e;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/login/view/SmsLoginView;->setFacade(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ali/user/mobile/login/view/SmsLoginView;->checkToForgetPassword()V

    return-void

    :cond_0
    move v1, v3

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/ali/user/mobile/login/view/SmsLoginView;->mParams:Landroid/os/Bundle;

    const-string/jumbo v4, "login_param"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/user/mobile/login/LoginParam;

    const-string/jumbo v4, "SmsLoginView"

    const-string/jumbo v5, "smslogin init, extLoginParam:%s"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-static {v5, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/ali/user/mobile/login/view/SmsLoginView;->a()V

    goto :goto_1

    :cond_2
    iget-object v2, v0, Lcom/ali/user/mobile/login/LoginParam;->loginAccount:Ljava/lang/String;

    invoke-static {v2}, Lcom/ali/user/mobile/i/e;->d(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, v0, Lcom/ali/user/mobile/login/LoginParam;->loginAccount:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/ali/user/mobile/login/view/SmsLoginView;->getLoginHistoryFromAccount(Ljava/lang/String;)Lcom/ali/user/mobile/account/bean/UserInfo;

    move-result-object v2

    if-nez v2, :cond_3

    iget-object v0, v0, Lcom/ali/user/mobile/login/LoginParam;->loginAccount:Ljava/lang/String;

    iput-object v0, p0, Lcom/ali/user/mobile/login/view/SmsLoginView;->mLoginAccount:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p0, v3, v0}, Lcom/ali/user/mobile/login/view/SmsLoginView;->setPortraitImage(ZLcom/ali/user/mobile/account/bean/UserInfo;)V

    :goto_3
    move v1, v3

    goto :goto_1

    :cond_3
    iput-object v2, p0, Lcom/ali/user/mobile/login/view/SmsLoginView;->mCurrentSelectedHistory:Lcom/ali/user/mobile/account/bean/UserInfo;

    invoke-direct {p0}, Lcom/ali/user/mobile/login/view/SmsLoginView;->a()V

    move v3, v1

    goto :goto_3

    :cond_4
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/ali/user/mobile/login/view/SmsLoginView;->mLoginAccount:Ljava/lang/String;

    move v1, v3

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/ali/user/mobile/login/view/SmsLoginView;->mLoginAccount:Ljava/lang/String;

    goto :goto_2
.end method

.method protected initRds()V
    .locals 3

    invoke-super {p0}, Lcom/ali/user/mobile/login/view/LoginView;->initRds()V

    iget-object v0, p0, Lcom/ali/user/mobile/login/view/SmsLoginView;->mAttatchActivity:Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;

    iget-object v1, p0, Lcom/ali/user/mobile/login/view/SmsLoginView;->mPhoneInputBox:Lcom/ali/user/mobile/ui/widget/AUPhoneInputBox;

    invoke-virtual {v1}, Lcom/ali/user/mobile/ui/widget/AUPhoneInputBox;->getPhoneInput()Landroid/widget/EditText;

    move-result-object v1

    const-string/jumbo v2, "PhoneET"

    invoke-virtual {v0, v1, v2}, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->initRdsTextChange(Landroid/widget/EditText;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ali/user/mobile/login/view/SmsLoginView;->mAttatchActivity:Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;

    iget-object v1, p0, Lcom/ali/user/mobile/login/view/SmsLoginView;->mPhoneInputBox:Lcom/ali/user/mobile/ui/widget/AUPhoneInputBox;

    invoke-virtual {v1}, Lcom/ali/user/mobile/ui/widget/AUPhoneInputBox;->getPhoneInput()Landroid/widget/EditText;

    move-result-object v1

    const-string/jumbo v2, "PhoneET"

    invoke-virtual {v0, v1, v2}, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->initRdsFocusChange(Landroid/view/View;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ali/user/mobile/login/view/SmsLoginView;->mAttatchActivity:Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;

    iget-object v1, p0, Lcom/ali/user/mobile/login/view/SmsLoginView;->mLoginButton:Landroid/widget/Button;

    const-string/jumbo v2, "smsLoginBtn"

    invoke-virtual {v0, v1, v2}, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->initRdsFocusChange(Landroid/view/View;Ljava/lang/String;)V

    return-void
.end method

.method public myName()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "fromsmslogin"

    return-object v0
.end method

.method protected onAccountChanged(Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v2, v3}, Lcom/ali/user/mobile/login/view/SmsLoginView;->setPortraitImage(ZLcom/ali/user/mobile/account/bean/UserInfo;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/ali/user/mobile/login/view/SmsLoginView;->mPhoneInputBox:Lcom/ali/user/mobile/ui/widget/AUPhoneInputBox;

    invoke-virtual {v0}, Lcom/ali/user/mobile/ui/widget/AUPhoneInputBox;->getInputAreaCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/login/view/SmsLoginView;->mCountryCode:Ljava/lang/String;

    const-string/jumbo v0, "86"

    iget-object v1, p0, Lcom/ali/user/mobile/login/view/SmsLoginView;->mCountryCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/ali/user/mobile/login/view/SmsLoginView;->mCountryCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_1
    const-string/jumbo v0, " "

    const-string/jumbo v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/login/view/SmsLoginView;->getLoginHistoryFromAccount(Ljava/lang/String;)Lcom/ali/user/mobile/account/bean/UserInfo;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-virtual {p0, v2, v3}, Lcom/ali/user/mobile/login/view/SmsLoginView;->setPortraitImage(ZLcom/ali/user/mobile/account/bean/UserInfo;)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/ali/user/mobile/login/view/SmsLoginView;->setPortraitImage(ZLcom/ali/user/mobile/account/bean/UserInfo;)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    const/4 v5, 0x0

    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->loginButton:I

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_0

    const-string/jumbo v0, "UC-LOG-161225-13"

    const-string/jumbo v1, "smsloginone"

    iget-object v2, p0, Lcom/ali/user/mobile/login/view/SmsLoginView;->a:Ljava/lang/String;

    const-string/jumbo v3, ""

    const-string/jumbo v4, "clicked"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/ali/user/mobile/e/c;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ali/user/mobile/login/view/SmsLoginView;->mAttatchActivity:Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;

    const-string/jumbo v1, "smsLoginBtn"

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->onRdsControlClick(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ali/user/mobile/login/view/SmsLoginView;->getLoginAccount()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v5, v5}, Lcom/ali/user/mobile/login/view/SmsLoginView;->initMsgLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->moreView:I

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/ali/user/mobile/login/view/SmsLoginView;->mAttatchActivity:Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;

    sget v2, Lcom/ali/user/mobile/security/ui/R$string;->alipay_change_account:I

    invoke-virtual {v1, v2}, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/ali/user/mobile/login/view/SmsLoginView;->mAttatchActivity:Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;

    sget v2, Lcom/ali/user/mobile/security/ui/R$string;->alipay_registNew:I

    invoke-virtual {v1, v2}, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/ali/user/mobile/login/view/SmsLoginView;->mAttatchActivity:Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;

    sget v2, Lcom/ali/user/mobile/security/ui/R$string;->alipay_loginProblems:I

    invoke-virtual {v1, v2}, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/login/view/SmsLoginView;->showListDialog(Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_1
    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->smsRegView:I

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/ali/user/mobile/login/view/SmsLoginView;->mAttatchActivity:Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;

    sget v1, Lcom/ali/user/mobile/security/ui/R$string;->alipay_registNew:I

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/login/view/SmsLoginView;->performDialogAction(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-super {p0, p1}, Lcom/ali/user/mobile/login/view/LoginView;->onClick(Landroid/view/View;)V

    goto :goto_0
.end method

.method public onNewAccount(Ljava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/ali/user/mobile/login/view/LoginView;->onNewIntent(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/ali/user/mobile/login/view/SmsLoginView;->mPhoneInputBox:Lcom/ali/user/mobile/ui/widget/AUPhoneInputBox;

    invoke-virtual {v0}, Lcom/ali/user/mobile/ui/widget/AUPhoneInputBox;->getPhoneInput()Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/ali/user/mobile/login/view/SmsLoginView;->mPhoneChangedListener:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    invoke-virtual {p0}, Lcom/ali/user/mobile/login/view/SmsLoginView;->trustLoginWithExtLoginParam()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/ali/user/mobile/login/view/SmsLoginView;->initPhoneAccount()V

    :cond_0
    iget-object v0, p0, Lcom/ali/user/mobile/login/view/SmsLoginView;->mPhoneInputBox:Lcom/ali/user/mobile/ui/widget/AUPhoneInputBox;

    invoke-virtual {v0}, Lcom/ali/user/mobile/ui/widget/AUPhoneInputBox;->getPhoneInput()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ali/user/mobile/login/view/SmsLoginView;->getPhoneChangedListener()Landroid/text/TextWatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method public onViewRestart()V
    .locals 0

    invoke-super {p0}, Lcom/ali/user/mobile/login/view/LoginView;->onViewRestart()V

    invoke-virtual {p0}, Lcom/ali/user/mobile/login/view/SmsLoginView;->doInit()V

    return-void
.end method

.method public onViewStart()V
    .locals 0

    invoke-super {p0}, Lcom/ali/user/mobile/login/view/LoginView;->onViewStart()V

    invoke-virtual {p0}, Lcom/ali/user/mobile/login/view/SmsLoginView;->doInit()V

    return-void
.end method

.method public onViewStop()V
    .locals 2

    invoke-super {p0}, Lcom/ali/user/mobile/login/view/LoginView;->onViewStop()V

    iget-object v0, p0, Lcom/ali/user/mobile/login/view/SmsLoginView;->mPhoneInputBox:Lcom/ali/user/mobile/ui/widget/AUPhoneInputBox;

    invoke-virtual {v0}, Lcom/ali/user/mobile/ui/widget/AUPhoneInputBox;->getPhoneInput()Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/ali/user/mobile/login/view/SmsLoginView;->mPhoneChangedListener:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/ali/user/mobile/login/view/SmsLoginView;->mPhoneInputBox:Lcom/ali/user/mobile/ui/widget/AUPhoneInputBox;

    invoke-virtual {v0}, Lcom/ali/user/mobile/ui/widget/AUPhoneInputBox;->getPhoneInput()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/login/view/SmsLoginView;->closeInputMethod(Landroid/view/View;)V

    return-void
.end method

.method protected performDialogAction(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/ali/user/mobile/login/view/SmsLoginView;->mAttatchActivity:Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;

    sget v1, Lcom/ali/user/mobile/security/ui/R$string;->alipay_change_account:I

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ali/user/mobile/login/view/SmsLoginView;->mAttatchActivity:Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->enterState(I)V

    iget-object v0, p0, Lcom/ali/user/mobile/login/view/SmsLoginView;->mAttatchActivity:Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;

    invoke-virtual {v0}, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->clearAccount()V

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1}, Lcom/ali/user/mobile/login/view/LoginView;->performDialogAction(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public requestAccountFocus()V
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/login/view/SmsLoginView;->mPhoneInputBox:Lcom/ali/user/mobile/ui/widget/AUPhoneInputBox;

    invoke-virtual {v0}, Lcom/ali/user/mobile/ui/widget/AUPhoneInputBox;->getPhoneInput()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    iget-object v0, p0, Lcom/ali/user/mobile/login/view/SmsLoginView;->mPhoneInputBox:Lcom/ali/user/mobile/ui/widget/AUPhoneInputBox;

    invoke-virtual {v0}, Lcom/ali/user/mobile/ui/widget/AUPhoneInputBox;->getPhoneInput()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/login/view/SmsLoginView;->showInputMethodPannel(Landroid/view/View;)V

    return-void
.end method

.method public requestPasswordFocus()V
    .locals 0

    return-void
.end method

.method protected setFacade(Ljava/lang/String;)V
    .locals 3

    const-string/jumbo v0, "+86"

    const/16 v1, 0x2d

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    const-string/jumbo v0, "-"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "+"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    aget-object p1, v1, v2

    :cond_0
    iget-object v1, p0, Lcom/ali/user/mobile/login/view/SmsLoginView;->mPhoneInputBox:Lcom/ali/user/mobile/ui/widget/AUPhoneInputBox;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, p1}, Lcom/ali/user/mobile/ui/widget/AUPhoneInputBox;->setContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected setScrollBound()V
    .locals 4

    iget-object v0, p0, Lcom/ali/user/mobile/login/view/SmsLoginView;->mAttatchActivity:Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;

    iget-object v1, p0, Lcom/ali/user/mobile/login/view/SmsLoginView;->mPhoneInputBox:Lcom/ali/user/mobile/ui/widget/AUPhoneInputBox;

    iget-object v2, p0, Lcom/ali/user/mobile/login/view/SmsLoginView;->mLoginButton:Landroid/widget/Button;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->setScrollBound(Landroid/view/View;Landroid/view/View;Z)V

    return-void
.end method

.method public showInputPassword()V
    .locals 0

    return-void
.end method

.method protected trustLoginWithExtLoginParam()Z
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/ali/user/mobile/login/view/SmsLoginView;->mParams:Landroid/os/Bundle;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ali/user/mobile/login/view/SmsLoginView;->mParams:Landroid/os/Bundle;

    const-string/jumbo v3, "login_param"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/user/mobile/login/LoginParam;

    if-eqz v0, :cond_1

    const-string/jumbo v3, "SmsLoginView"

    const-string/jumbo v4, "smslogin init check trust login, extLoginParam:%s"

    new-array v5, v1, [Ljava/lang/Object;

    aput-object v0, v5, v2

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, v0, Lcom/ali/user/mobile/login/LoginParam;->loginAccount:Ljava/lang/String;

    iput-object v3, p0, Lcom/ali/user/mobile/login/view/SmsLoginView;->mLoginAccount:Ljava/lang/String;

    iget-object v3, p0, Lcom/ali/user/mobile/login/view/SmsLoginView;->mLoginAccount:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/ali/user/mobile/login/view/SmsLoginView;->setFacade(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/ali/user/mobile/login/LoginParam;->trustLoginEnable()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v2, p0, Lcom/ali/user/mobile/login/view/SmsLoginView;->mAttatchActivity:Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;

    invoke-virtual {v2, v0}, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->getLoginParams(Lcom/ali/user/mobile/login/LoginParam;)V

    const-string/jumbo v2, "withonekeytoken"

    iget-object v3, v0, Lcom/ali/user/mobile/login/LoginParam;->validateTpye:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/ali/user/mobile/login/LoginParam;->loginAccount:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/ali/user/mobile/login/view/SmsLoginView;->getLoginHistoryFromAccount(Ljava/lang/String;)Lcom/ali/user/mobile/account/bean/UserInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string/jumbo v3, "userId"

    invoke-virtual {v2}, Lcom/ali/user/mobile/account/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lcom/ali/user/mobile/login/LoginParam;->addExternalParam(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v2, p0, Lcom/ali/user/mobile/login/view/SmsLoginView;->mAttatchActivity:Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;

    invoke-virtual {v2, v0}, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->doUnifyLogin(Lcom/ali/user/mobile/login/LoginParam;)V

    move v0, v1

    :goto_0
    return v0

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method protected uiCustomize()V
    .locals 1

    invoke-super {p0}, Lcom/ali/user/mobile/login/view/LoginView;->uiCustomize()V

    iget-object v0, p0, Lcom/ali/user/mobile/login/view/SmsLoginView;->mLoginButton:Landroid/widget/Button;

    invoke-static {v0}, Lcom/ali/user/mobile/common/a/d;->a(Landroid/widget/Button;)V

    invoke-static {}, Lcom/ali/user/mobile/common/a/d;->h()I

    return-void
.end method

.method protected whereAmIFrom()V
    .locals 2

    iget-object v0, p0, Lcom/ali/user/mobile/login/view/SmsLoginView;->mParams:Landroid/os/Bundle;

    invoke-static {v0}, Lcom/ali/user/mobile/i/b;->a(Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "fromscheme"

    iput-object v0, p0, Lcom/ali/user/mobile/login/view/SmsLoginView;->a:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/ali/user/mobile/login/view/SmsLoginView;->mAttatchActivity:Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;

    invoke-virtual {v0}, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->getState()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    const-string/jumbo v0, "fromlogout"

    iput-object v0, p0, Lcom/ali/user/mobile/login/view/SmsLoginView;->a:Ljava/lang/String;

    goto :goto_0

    :cond_1
    invoke-super {p0}, Lcom/ali/user/mobile/login/view/LoginView;->whereAmIFrom()V

    goto :goto_0
.end method
