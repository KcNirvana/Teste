.class public Lcom/ali/user/mobile/login/view/UsedLoginView;
.super Lcom/ali/user/mobile/login/view/PasswordLoginView;
.source "UsedLoginView.java"


# instance fields
.field protected mForgetPasswordCenter:Landroid/widget/TextView;

.field protected mForgetPasswordRight:Landroid/widget/TextView;

.field protected mLoginButton:Landroid/widget/Button;

.field protected mReg:Landroid/widget/TextView;

.field protected mSmsAndForgetPasswordView:Landroid/view/View;

.field protected mSmsLoginView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ali/user/mobile/login/view/PasswordLoginView;-><init>(Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;)V

    return-void
.end method


# virtual methods
.method protected doInflate(Landroid/content/Context;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/ali/user/mobile/login/view/PasswordLoginView;->doInflate(Landroid/content/Context;)V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/ali/user/mobile/security/ui/R$layout;->alipay_layout_used_login:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->loginButton:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ali/user/mobile/login/view/UsedLoginView;->mLoginButton:Landroid/widget/Button;

    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->smsAndForgetPassword:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/login/view/UsedLoginView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/login/view/UsedLoginView;->mSmsAndForgetPasswordView:Landroid/view/View;

    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->smsLoginView:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ali/user/mobile/login/view/UsedLoginView;->mSmsLoginView:Landroid/widget/TextView;

    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->forgetPasswordRight:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ali/user/mobile/login/view/UsedLoginView;->mForgetPasswordRight:Landroid/widget/TextView;

    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->forgetPasswordCenter:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ali/user/mobile/login/view/UsedLoginView;->mForgetPasswordCenter:Landroid/widget/TextView;

    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->pwd_reg_entery:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ali/user/mobile/login/view/UsedLoginView;->mReg:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/ali/user/mobile/login/view/UsedLoginView;->mLoginButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/ali/user/mobile/login/view/UsedLoginView;->mSmsLoginView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/ali/user/mobile/login/view/UsedLoginView;->mForgetPasswordRight:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/ali/user/mobile/login/view/UsedLoginView;->mForgetPasswordCenter:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/ali/user/mobile/login/view/UsedLoginView;->mReg:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/ali/user/mobile/login/view/UsedLoginView;->mLoginButton:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/login/view/UsedLoginView;->addNullCheckButton(Landroid/widget/Button;)V

    iget-object v0, p0, Lcom/ali/user/mobile/login/view/UsedLoginView;->mLoginButton:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/login/view/UsedLoginView;->initInputBoxIme(Landroid/widget/Button;)V

    return-void
.end method

.method protected doInitData()V
    .locals 9

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/ali/user/mobile/login/view/UsedLoginView;->trustLoginWithExtLoginParam()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ali/user/mobile/login/view/UsedLoginView;->mParams:Landroid/os/Bundle;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ali/user/mobile/login/view/UsedLoginView;->mCurrentSelectedHistory:Lcom/ali/user/mobile/account/bean/UserInfo;

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/login/view/UsedLoginView;->setLoginHistoryAccount(Lcom/ali/user/mobile/account/bean/UserInfo;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/ali/user/mobile/login/view/UsedLoginView;->mAttatchActivity:Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;

    invoke-virtual {v0}, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->getIsFromRegist()Z

    move-result v3

    iget-object v0, p0, Lcom/ali/user/mobile/login/view/UsedLoginView;->mParams:Landroid/os/Bundle;

    const-string/jumbo v4, "source_accountSelectAccount"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iget-object v0, p0, Lcom/ali/user/mobile/login/view/UsedLoginView;->mParams:Landroid/os/Bundle;

    const-string/jumbo v5, "source_forgotPayPwd"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    iget-object v0, p0, Lcom/ali/user/mobile/login/view/UsedLoginView;->mParams:Landroid/os/Bundle;

    const-string/jumbo v6, "login_param"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/user/mobile/login/LoginParam;

    const-string/jumbo v6, "UsedLoginView"

    const-string/jumbo v7, "login init, FromRegist:%s, accountSelect:%s, fromForgotPayPwd:%s, extLoginParam:%s"

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v8, v2

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v8, v1

    const/4 v3, 0x2

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v8, v3

    const/4 v3, 0x3

    aput-object v0, v8, v3

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_3

    if-eqz v4, :cond_2

    const-string/jumbo v0, "UsedLoginView"

    const-string/jumbo v1, "\u6dfb\u52a0\u8d26\u6237\uff0c\u4e0d\u5728\u8f93\u5165\u6846\u4e2d\u8bbe\u7f6e\u5df2\u767b\u5f55\u8d26\u6237"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/view/UsedLoginView;->checkToForgetPassword()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/ali/user/mobile/login/view/UsedLoginView;->mCurrentSelectedHistory:Lcom/ali/user/mobile/account/bean/UserInfo;

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/login/view/UsedLoginView;->setLoginHistoryAccount(Lcom/ali/user/mobile/account/bean/UserInfo;)V

    goto :goto_1

    :cond_3
    iget-object v3, v0, Lcom/ali/user/mobile/login/LoginParam;->loginAccount:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/ali/user/mobile/login/view/UsedLoginView;->getLoginHistoryFromAccount(Ljava/lang/String;)Lcom/ali/user/mobile/account/bean/UserInfo;

    move-result-object v3

    if-nez v3, :cond_5

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/ali/user/mobile/login/view/UsedLoginView;->setPortraitImage(ZLcom/ali/user/mobile/account/bean/UserInfo;)V

    iget-object v3, v0, Lcom/ali/user/mobile/login/LoginParam;->loginAccount:Ljava/lang/String;

    iget-object v0, p0, Lcom/ali/user/mobile/login/view/UsedLoginView;->mAttatchActivity:Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;

    invoke-virtual {v0}, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->getIsFromRegist()Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v1

    :goto_2
    invoke-virtual {p0, v3, v0}, Lcom/ali/user/mobile/login/view/UsedLoginView;->setAccount(Ljava/lang/String;Z)V

    goto :goto_1

    :cond_4
    move v0, v2

    goto :goto_2

    :cond_5
    invoke-virtual {p0, v3}, Lcom/ali/user/mobile/login/view/UsedLoginView;->setLoginHistoryAccount(Lcom/ali/user/mobile/account/bean/UserInfo;)V

    goto :goto_1
.end method

.method protected initRds()V
    .locals 3

    invoke-super {p0}, Lcom/ali/user/mobile/login/view/PasswordLoginView;->initRds()V

    iget-object v0, p0, Lcom/ali/user/mobile/login/view/UsedLoginView;->mAttatchActivity:Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;

    iget-object v1, p0, Lcom/ali/user/mobile/login/view/UsedLoginView;->mForgetPasswordCenter:Landroid/widget/TextView;

    const-string/jumbo v2, "GetPwdBtn"

    invoke-virtual {v0, v1, v2}, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->initRdsFocusChange(Landroid/view/View;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ali/user/mobile/login/view/UsedLoginView;->mAttatchActivity:Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;

    iget-object v1, p0, Lcom/ali/user/mobile/login/view/UsedLoginView;->mLoginButton:Landroid/widget/Button;

    const-string/jumbo v2, "LoginBtn"

    invoke-virtual {v0, v1, v2}, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->initRdsFocusChange(Landroid/view/View;Ljava/lang/String;)V

    return-void
.end method

.method protected isSupportFaceLogin()Z
    .locals 4

    const/4 v0, 0x0

    const-string/jumbo v1, "UsedLoginView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isSupportFaceLogin:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public myName()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "fromloginpw"

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/ali/user/mobile/security/ui/R$id;->loginButton:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/ali/user/mobile/login/view/UsedLoginView;->mLoginButton:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/login/view/UsedLoginView;->onLoginClicked(Landroid/widget/Button;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/ali/user/mobile/security/ui/R$id;->forgetPasswordCenter:I

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/ali/user/mobile/security/ui/R$id;->forgetPasswordRight:I

    if-ne v0, v1, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/view/UsedLoginView;->doForgotPasswordAction()V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/ali/user/mobile/security/ui/R$id;->smsLoginView:I

    if-ne v0, v1, :cond_3

    const-string/jumbo v0, "UC-LOG-161225-06"

    const-string/jumbo v1, "messagelogintwo"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ali/user/mobile/login/view/UsedLoginView;->mAttatchActivity:Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->enterState(I)V

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/ali/user/mobile/security/ui/R$id;->pwd_reg_entery:I

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/ali/user/mobile/login/view/UsedLoginView;->mAttatchActivity:Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;

    sget v1, Lcom/ali/user/mobile/security/ui/R$string;->alipay_registNew:I

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/login/view/UsedLoginView;->performDialogAction(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    invoke-super {p0, p1}, Lcom/ali/user/mobile/login/view/PasswordLoginView;->onClick(Landroid/view/View;)V

    goto :goto_0
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/ali/user/mobile/login/view/PasswordLoginView;->onNewIntent(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/ali/user/mobile/login/view/UsedLoginView;->doInitData()V

    return-void
.end method

.method public onViewRestart()V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x0

    invoke-super {p0}, Lcom/ali/user/mobile/login/view/PasswordLoginView;->onViewRestart()V

    const-string/jumbo v0, "UC-LOG-161225-01"

    const-string/jumbo v1, "loginpage"

    iget-object v2, p0, Lcom/ali/user/mobile/login/view/UsedLoginView;->mFrom:Ljava/lang/String;

    sget-object v3, Lcom/ali/user/mobile/register/a/b;->a:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v5}, Lcom/ali/user/mobile/e/c;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ali/user/mobile/login/view/UsedLoginView;->mAttatchActivity:Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->setRightCornerViewEnable(Z)V

    const-string/jumbo v0, ""

    :try_start_0
    iget-object v1, p0, Lcom/ali/user/mobile/login/view/UsedLoginView;->mAttatchActivity:Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;

    invoke-virtual {v1}, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "accountBetweenView"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/ali/user/mobile/i/e;->d(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/login/view/UsedLoginView;->getLoginHistoryFromAccount(Ljava/lang/String;)Lcom/ali/user/mobile/account/bean/UserInfo;

    move-result-object v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/ali/user/mobile/login/view/UsedLoginView;->mAttatchActivity:Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;

    iget-object v1, v1, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->mInsideAccount:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/ali/user/mobile/login/view/UsedLoginView;->mAttatchActivity:Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;

    iget-object v1, v1, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->mInsideAccount:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/ali/user/mobile/login/view/UsedLoginView;->setAccount(Ljava/lang/String;Z)V

    :goto_1
    invoke-virtual {p0, v4, v5}, Lcom/ali/user/mobile/login/view/UsedLoginView;->setPortraitImage(ZLcom/ali/user/mobile/account/bean/UserInfo;)V

    :cond_0
    :goto_2
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/view/UsedLoginView;->setScrollBound()V

    iput-boolean v4, p0, Lcom/ali/user/mobile/login/view/UsedLoginView;->mIsAccountInputted:Z

    iput-boolean v4, p0, Lcom/ali/user/mobile/login/view/UsedLoginView;->mIsPasswordInputted:Z

    return-void

    :catch_0
    move-exception v1

    const-string/jumbo v2, "UsedLoginView"

    const-string/jumbo v3, "get intent"

    invoke-static {v2, v3, v1}, Lcom/ali/user/mobile/e/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0, v4}, Lcom/ali/user/mobile/login/view/UsedLoginView;->setAccount(Ljava/lang/String;Z)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v1}, Lcom/ali/user/mobile/login/view/UsedLoginView;->setLoginHistoryAccount(Lcom/ali/user/mobile/account/bean/UserInfo;)V

    goto :goto_2
.end method

.method public onViewStart()V
    .locals 5

    invoke-super {p0}, Lcom/ali/user/mobile/login/view/PasswordLoginView;->onViewStart()V

    const-string/jumbo v0, "UC-LOG-161225-01"

    const-string/jumbo v1, "loginpage"

    iget-object v2, p0, Lcom/ali/user/mobile/login/view/UsedLoginView;->mFrom:Ljava/lang/String;

    sget-object v3, Lcom/ali/user/mobile/register/a/b;->a:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/ali/user/mobile/e/c;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ali/user/mobile/login/view/UsedLoginView;->mAttatchActivity:Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->setRightCornerViewEnable(Z)V

    invoke-virtual {p0}, Lcom/ali/user/mobile/login/view/UsedLoginView;->doInitData()V

    invoke-virtual {p0}, Lcom/ali/user/mobile/login/view/UsedLoginView;->initInputTrace()V

    invoke-virtual {p0}, Lcom/ali/user/mobile/login/view/UsedLoginView;->setScrollBound()V

    return-void
.end method

.method public onViewStop()V
    .locals 3

    invoke-super {p0}, Lcom/ali/user/mobile/login/view/PasswordLoginView;->onViewStop()V

    invoke-virtual {p0, p0}, Lcom/ali/user/mobile/login/view/UsedLoginView;->closeInputMethod(Landroid/view/View;)V

    iget-object v0, p0, Lcom/ali/user/mobile/login/view/UsedLoginView;->mAttatchActivity:Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;

    invoke-virtual {v0}, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "accountBetweenView"

    invoke-virtual {p0}, Lcom/ali/user/mobile/login/view/UsedLoginView;->getLoginAccount()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/ali/user/mobile/login/view/UsedLoginView;->mAttatchActivity:Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;

    invoke-virtual {v0}, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "facadeBetweenView"

    invoke-virtual {p0}, Lcom/ali/user/mobile/login/view/UsedLoginView;->getShownAccount()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-void
.end method

.method protected performDialogAction(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-super {p0, p1, v0}, Lcom/ali/user/mobile/login/view/PasswordLoginView;->performDialogAction(Ljava/lang/String;Z)V

    return-void
.end method

.method protected setScrollBound()V
    .locals 4

    const/16 v2, 0x8

    const/4 v3, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/ali/user/mobile/login/view/UsedLoginView;->isOpenSmsLoginNative()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ali/user/mobile/login/view/UsedLoginView;->mForgetPasswordCenter:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/ali/user/mobile/login/view/UsedLoginView;->mSmsAndForgetPasswordView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/ali/user/mobile/login/view/UsedLoginView;->mAttatchActivity:Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;

    iget-object v1, p0, Lcom/ali/user/mobile/login/view/UsedLoginView;->mAccountInputBox:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    iget-object v2, p0, Lcom/ali/user/mobile/login/view/UsedLoginView;->mSmsAndForgetPasswordView:Landroid/view/View;

    invoke-virtual {v0, v1, v2, v3}, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->setScrollBound(Landroid/view/View;Landroid/view/View;Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/ali/user/mobile/login/view/UsedLoginView;->mForgetPasswordCenter:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/ali/user/mobile/login/view/UsedLoginView;->mSmsAndForgetPasswordView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/ali/user/mobile/login/view/UsedLoginView;->mAttatchActivity:Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;

    iget-object v1, p0, Lcom/ali/user/mobile/login/view/UsedLoginView;->mAccountInputBox:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    iget-object v2, p0, Lcom/ali/user/mobile/login/view/UsedLoginView;->mForgetPasswordCenter:Landroid/widget/TextView;

    invoke-virtual {v0, v1, v2, v3}, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->setScrollBound(Landroid/view/View;Landroid/view/View;Z)V

    goto :goto_0
.end method

.method protected uiCustomize()V
    .locals 2

    invoke-super {p0}, Lcom/ali/user/mobile/login/view/PasswordLoginView;->uiCustomize()V

    iget-object v0, p0, Lcom/ali/user/mobile/login/view/UsedLoginView;->mLoginButton:Landroid/widget/Button;

    invoke-static {v0}, Lcom/ali/user/mobile/common/a/d;->a(Landroid/widget/Button;)V

    invoke-static {}, Lcom/ali/user/mobile/common/a/d;->h()I

    move-result v0

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/ali/user/mobile/login/view/UsedLoginView;->mSmsLoginView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/ali/user/mobile/login/view/UsedLoginView;->mForgetPasswordRight:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/ali/user/mobile/login/view/UsedLoginView;->mForgetPasswordCenter:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    return-void
.end method

.method protected whereAmIFrom()V
    .locals 2

    iget-object v0, p0, Lcom/ali/user/mobile/login/view/UsedLoginView;->mAttatchActivity:Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;

    invoke-virtual {v0}, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->getState()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/ali/user/mobile/login/view/UsedLoginView;->mAttatchActivity:Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;

    invoke-virtual {v0}, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->isFromAccountManager()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "fromaccountmanager"

    iput-object v0, p0, Lcom/ali/user/mobile/login/view/UsedLoginView;->mFrom:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/view/UsedLoginView;->hasLoginHistory()Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "firstpage"

    iput-object v0, p0, Lcom/ali/user/mobile/login/view/UsedLoginView;->mFrom:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "fromloginpw"

    iput-object v0, p0, Lcom/ali/user/mobile/login/view/UsedLoginView;->mFrom:Ljava/lang/String;

    goto :goto_0

    :cond_2
    invoke-super {p0}, Lcom/ali/user/mobile/login/view/PasswordLoginView;->whereAmIFrom()V

    goto :goto_0
.end method
