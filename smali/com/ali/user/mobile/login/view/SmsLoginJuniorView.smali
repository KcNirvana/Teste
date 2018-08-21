.class public Lcom/ali/user/mobile/login/view/SmsLoginJuniorView;
.super Lcom/ali/user/mobile/login/view/SmsLoginView;
.source "SmsLoginJuniorView.java"


# direct methods
.method public constructor <init>(Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ali/user/mobile/login/view/SmsLoginView;-><init>(Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;)V

    return-void
.end method

.method private a()V
    .locals 5

    const/16 v4, 0x8

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/ali/user/mobile/login/view/SmsLoginJuniorView;->mMainTip:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/ali/user/mobile/login/view/SmsLoginJuniorView;->mMainTip:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ali/user/mobile/login/view/SmsLoginJuniorView;->mAttatchActivity:Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;

    sget v2, Lcom/ali/user/mobile/security/ui/R$string;->alipay_sms_login:I

    invoke-virtual {v1, v2}, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ali/user/mobile/login/view/SmsLoginJuniorView;->mAttatchActivity:Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;

    invoke-virtual {v0, v3}, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->setRightCornerViewEnable(Z)V

    iget-object v0, p0, Lcom/ali/user/mobile/login/view/SmsLoginJuniorView;->mAccountImageView:Lcom/ali/user/mobile/ui/widget/APImageView;

    invoke-virtual {v0, v4}, Lcom/ali/user/mobile/ui/widget/APImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/ali/user/mobile/login/view/SmsLoginJuniorView;->mSmsRegView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/ali/user/mobile/login/view/SmsLoginJuniorView;->mAttatchActivity:Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;

    invoke-virtual {v0}, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->getTitleBar()Lcom/ali/user/mobile/ui/widget/APTitleBar;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/ali/user/mobile/ui/widget/APTitleBar;->setVisibility(I)V

    invoke-virtual {v0}, Lcom/ali/user/mobile/ui/widget/APTitleBar;->getTitlebarBg()Lcom/ali/user/mobile/ui/widget/APRelativeLayout;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/ali/user/mobile/ui/widget/APTitleBar;->getTitlebarBg()Lcom/ali/user/mobile/ui/widget/APRelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/ali/user/mobile/ui/widget/APRelativeLayout;->setBackgroundColor(I)V

    :cond_0
    iget-object v0, p0, Lcom/ali/user/mobile/login/view/SmsLoginJuniorView;->mPhoneInputBox:Lcom/ali/user/mobile/ui/widget/AUPhoneInputBox;

    invoke-virtual {v0}, Lcom/ali/user/mobile/ui/widget/AUPhoneInputBox;->getPhoneInput()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ali/user/mobile/login/view/SmsLoginJuniorView;->getPhoneChangedListener()Landroid/text/TextWatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method


# virtual methods
.method protected doInflate(Landroid/content/Context;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/ali/user/mobile/login/view/SmsLoginView;->doInflate(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/ali/user/mobile/login/view/SmsLoginJuniorView;->mPhoneInputBox:Lcom/ali/user/mobile/ui/widget/AUPhoneInputBox;

    const-string/jumbo v1, "fromsms2"

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/ui/widget/AUPhoneInputBox;->setPageName(Ljava/lang/String;)V

    return-void
.end method

.method protected initPhoneAccountJunior()V
    .locals 4

    const-string/jumbo v0, ""

    :try_start_0
    iget-object v1, p0, Lcom/ali/user/mobile/login/view/SmsLoginJuniorView;->mAttatchActivity:Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;

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

    if-nez v1, :cond_1

    invoke-static {v0}, Lcom/ali/user/mobile/i/e;->d(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iput-object v0, p0, Lcom/ali/user/mobile/login/view/SmsLoginJuniorView;->mLoginAccount:Ljava/lang/String;

    const-string/jumbo v0, ""

    :try_start_1
    iget-object v1, p0, Lcom/ali/user/mobile/login/view/SmsLoginJuniorView;->mAttatchActivity:Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;

    invoke-virtual {v1}, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "facadeBetweenView"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/ali/user/mobile/login/view/SmsLoginJuniorView;->mLoginAccount:Ljava/lang/String;

    :cond_0
    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/login/view/SmsLoginJuniorView;->setFacade(Ljava/lang/String;)V

    :goto_2
    return-void

    :catch_0
    move-exception v1

    const-string/jumbo v2, "SmsLoginJuniorView"

    const-string/jumbo v3, "get intent"

    invoke-static {v2, v3, v1}, Lcom/ali/user/mobile/e/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v1

    const-string/jumbo v2, "SmsLoginJuniorView"

    const-string/jumbo v3, "get intent"

    invoke-static {v2, v3, v1}, Lcom/ali/user/mobile/e/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_1
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/ali/user/mobile/login/view/SmsLoginJuniorView;->mLoginAccount:Ljava/lang/String;

    const-string/jumbo v0, ""

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/login/view/SmsLoginJuniorView;->setFacade(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public myName()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "fromsmslogin2"

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    const/4 v5, 0x0

    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->loginButton:I

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_0

    const-string/jumbo v0, "UC-LOG-161225-15"

    const-string/jumbo v1, "smslogintwo"

    const-string/jumbo v2, ""

    const-string/jumbo v3, ""

    const-string/jumbo v4, "clicked"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/ali/user/mobile/e/c;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ali/user/mobile/login/view/SmsLoginJuniorView;->mAttatchActivity:Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;

    const-string/jumbo v1, "smsLoginBtn"

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->onRdsControlClick(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ali/user/mobile/login/view/SmsLoginJuniorView;->getLoginAccount()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v5, v5}, Lcom/ali/user/mobile/login/view/SmsLoginJuniorView;->initMsgLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1}, Lcom/ali/user/mobile/login/view/SmsLoginView;->onClick(Landroid/view/View;)V

    goto :goto_0
.end method

.method public onViewRestart()V
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/login/view/SmsLoginJuniorView;->mAttatchActivity:Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;

    invoke-virtual {v0}, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/login/view/SmsLoginJuniorView;->updateParam(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/ali/user/mobile/login/view/SmsLoginJuniorView;->onViewStart()V

    return-void
.end method

.method public onViewStart()V
    .locals 5

    const-string/jumbo v0, "UC-LOG-161225-14"

    const-string/jumbo v1, "smslogintwopage"

    const-string/jumbo v2, ""

    const-string/jumbo v3, ""

    const-string/jumbo v4, "openPage"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/ali/user/mobile/e/c;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ali/user/mobile/login/view/SmsLoginJuniorView;->initPhoneAccountJunior()V

    invoke-direct {p0}, Lcom/ali/user/mobile/login/view/SmsLoginJuniorView;->a()V

    invoke-virtual {p0}, Lcom/ali/user/mobile/login/view/SmsLoginJuniorView;->setScrollBound()V

    invoke-virtual {p0}, Lcom/ali/user/mobile/login/view/SmsLoginJuniorView;->requestAccountFocus()V

    return-void
.end method

.method public onViewStop()V
    .locals 3

    invoke-super {p0}, Lcom/ali/user/mobile/login/view/SmsLoginView;->onViewStop()V

    iget-object v0, p0, Lcom/ali/user/mobile/login/view/SmsLoginJuniorView;->mAttatchActivity:Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;

    invoke-virtual {v0}, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "accountBetweenView"

    invoke-virtual {p0}, Lcom/ali/user/mobile/login/view/SmsLoginJuniorView;->getLoginAccount()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/ali/user/mobile/login/view/SmsLoginJuniorView;->mAttatchActivity:Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;

    invoke-virtual {v0}, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "facadeBetweenView"

    invoke-virtual {p0}, Lcom/ali/user/mobile/login/view/SmsLoginJuniorView;->getShownAccount()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-void
.end method

.method protected uiCustomize()V
    .locals 3

    invoke-super {p0}, Lcom/ali/user/mobile/login/view/SmsLoginView;->uiCustomize()V

    iget-object v0, p0, Lcom/ali/user/mobile/login/view/SmsLoginJuniorView;->mLoginButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/ali/user/mobile/login/view/SmsLoginJuniorView;->mAttatchActivity:Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;

    sget v2, Lcom/ali/user/mobile/security/ui/R$string;->alipay_sms_send:I

    invoke-virtual {v1, v2}, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
