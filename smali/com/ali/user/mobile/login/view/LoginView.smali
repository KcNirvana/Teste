.class public abstract Lcom/ali/user/mobile/login/view/LoginView;
.super Landroid/widget/LinearLayout;
.source "LoginView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/ali/user/mobile/login/b;


# instance fields
.field protected mAccountImageView:Lcom/ali/user/mobile/ui/widget/APImageView;

.field protected mApplicationContext:Landroid/content/Context;

.field protected mAttatchActivity:Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;

.field protected mCurrentSelectedAccount:Ljava/lang/String;

.field protected mCurrentSelectedHistory:Lcom/ali/user/mobile/account/bean/UserInfo;

.field protected mFrom:Ljava/lang/String;

.field protected mLoginHistorys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ali/user/mobile/account/bean/UserInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected mMainTip:Landroid/widget/TextView;

.field protected mParams:Landroid/os/Bundle;

.field protected final passwordLoginListener:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>(Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const-string/jumbo v0, "fromnull"

    iput-object v0, p0, Lcom/ali/user/mobile/login/view/LoginView;->mFrom:Ljava/lang/String;

    new-instance v0, Lcom/ali/user/mobile/login/view/d;

    invoke-direct {v0, p0}, Lcom/ali/user/mobile/login/view/d;-><init>(Lcom/ali/user/mobile/login/view/LoginView;)V

    iput-object v0, p0, Lcom/ali/user/mobile/login/view/LoginView;->passwordLoginListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1}, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/login/view/LoginView;->mApplicationContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/ali/user/mobile/login/view/LoginView;->mAttatchActivity:Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;

    iget-object v0, p0, Lcom/ali/user/mobile/login/view/LoginView;->mAttatchActivity:Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;

    invoke-virtual {v0}, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->getLoginHistoryList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/login/view/LoginView;->mLoginHistorys:Ljava/util/List;

    invoke-virtual {p0}, Lcom/ali/user/mobile/login/view/LoginView;->hasLoginHistory()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ali/user/mobile/login/view/LoginView;->mLoginHistorys:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/user/mobile/account/bean/UserInfo;

    iput-object v0, p0, Lcom/ali/user/mobile/login/view/LoginView;->mCurrentSelectedHistory:Lcom/ali/user/mobile/account/bean/UserInfo;

    :cond_0
    iget-object v0, p0, Lcom/ali/user/mobile/login/view/LoginView;->mAttatchActivity:Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;

    invoke-virtual {v0}, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/login/view/LoginView;->updateParam(Landroid/content/Intent;)V

    invoke-virtual {p0, p1}, Lcom/ali/user/mobile/login/view/LoginView;->doInflate(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/ali/user/mobile/login/view/LoginView;->uiCustomize()V

    invoke-virtual {p0}, Lcom/ali/user/mobile/login/view/LoginView;->initRds()V

    return-void
.end method

.method private a(Lcom/ali/user/mobile/login/LoginParam;Lcom/ali/user/mobile/login/LoginParam;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p2, p1, :cond_0

    const-string/jumbo v1, "LoginView"

    const-string/jumbo v2, "new loginParams == old loginParams"

    invoke-static {v1, v2}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_0
    if-eqz p2, :cond_2

    if-eqz p1, :cond_2

    iget-object v2, p2, Lcom/ali/user/mobile/login/LoginParam;->loginAccount:Ljava/lang/String;

    iget-object v3, p1, Lcom/ali/user/mobile/login/LoginParam;->loginAccount:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p2, Lcom/ali/user/mobile/login/LoginParam;->token:Ljava/lang/String;

    iget-object v3, p1, Lcom/ali/user/mobile/login/LoginParam;->token:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p2, Lcom/ali/user/mobile/login/LoginParam;->validateTpye:Ljava/lang/String;

    iget-object v3, p1, Lcom/ali/user/mobile/login/LoginParam;->validateTpye:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v1, "LoginView"

    const-string/jumbo v2, "new loginParams\'param == old loginParams\'param"

    invoke-static {v1, v2}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method protected checkToForgetPassword()V
    .locals 6

    const/4 v0, 0x0

    const-string/jumbo v1, "toForgetPwd"

    iget-object v2, p0, Lcom/ali/user/mobile/login/view/LoginView;->mParams:Landroid/os/Bundle;

    const-string/jumbo v3, "loginTargetBiz"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/ali/user/mobile/login/view/LoginView;->getLoginParamFromExtra()Lcom/ali/user/mobile/login/LoginParam;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string/jumbo v0, "LoginView"

    const-string/jumbo v2, "toForgetPassword with extra account:%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, v1, Lcom/ali/user/mobile/login/LoginParam;->loginAccount:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v1, Lcom/ali/user/mobile/login/LoginParam;->loginAccount:Ljava/lang/String;

    invoke-static {v1}, Lcom/ali/user/mobile/i/e;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v2, p0, Lcom/ali/user/mobile/login/view/LoginView;->mAttatchActivity:Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;

    invoke-virtual {v2, v1, v0}, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->toForgetPassword(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ali/user/mobile/login/view/LoginView;->mAttatchActivity:Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;

    invoke-virtual {v0}, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "loginTargetBiz"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    return-void

    :cond_1
    move-object v1, v0

    goto :goto_0
.end method

.method protected clearTustLoginToken()V
    .locals 3

    invoke-virtual {p0}, Lcom/ali/user/mobile/login/view/LoginView;->getLoginParamFromExtra()Lcom/ali/user/mobile/login/LoginParam;

    move-result-object v1

    iget-object v0, p0, Lcom/ali/user/mobile/login/view/LoginView;->mAttatchActivity:Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;

    invoke-virtual {v0}, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const/4 v0, 0x0

    if-eqz v2, :cond_0

    const-string/jumbo v0, "login_param"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/ali/user/mobile/login/LoginParam;

    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/ali/user/mobile/login/view/LoginView;->a(Lcom/ali/user/mobile/login/LoginParam;Lcom/ali/user/mobile/login/LoginParam;)Z

    move-result v0

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Lcom/ali/user/mobile/login/LoginParam;->disableTustLogin()V

    iget-object v0, p0, Lcom/ali/user/mobile/login/view/LoginView;->mAttatchActivity:Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;

    invoke-virtual {v0}, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v2, "login_param"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    :cond_1
    return-void
.end method

.method protected closeInputMethod(Landroid/view/View;)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/ali/user/mobile/login/view/LoginView;->mApplicationContext:Landroid/content/Context;

    const-string/jumbo v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "closeInputMethod exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected doInflate(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, -0x1

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/login/view/LoginView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v2}, Lcom/ali/user/mobile/login/view/LoginView;->setOrientation(I)V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/ali/user/mobile/security/ui/R$layout;->alipay_layout_login_head:I

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->userAccountImage:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ali/user/mobile/ui/widget/APImageView;

    iput-object v0, p0, Lcom/ali/user/mobile/login/view/LoginView;->mAccountImageView:Lcom/ali/user/mobile/ui/widget/APImageView;

    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->mainTip:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ali/user/mobile/login/view/LoginView;->mMainTip:Landroid/widget/TextView;

    return-void
.end method

.method protected getLoginHistoryFromAccount(Ljava/lang/String;)Lcom/ali/user/mobile/account/bean/UserInfo;
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/login/view/LoginView;->mAttatchActivity:Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;

    invoke-virtual {v0, p1}, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->getLoginHistoryFromAccount(Ljava/lang/String;)Lcom/ali/user/mobile/account/bean/UserInfo;

    move-result-object v0

    return-object v0
.end method

.method protected getLoginParamFromExtra()Lcom/ali/user/mobile/login/LoginParam;
    .locals 2

    iget-object v0, p0, Lcom/ali/user/mobile/login/view/LoginView;->mParams:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ali/user/mobile/login/view/LoginView;->mParams:Landroid/os/Bundle;

    const-string/jumbo v1, "login_param"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/ali/user/mobile/login/LoginParam;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected hasLoginHistory()Z
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/login/view/LoginView;->mLoginHistorys:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ali/user/mobile/login/view/LoginView;->mLoginHistorys:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected initRds()V
    .locals 3

    iget-object v0, p0, Lcom/ali/user/mobile/login/view/LoginView;->mAttatchActivity:Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;

    iget-object v1, p0, Lcom/ali/user/mobile/login/view/LoginView;->mCurrentSelectedAccount:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->initRdsPage(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ali/user/mobile/login/view/LoginView;->mAttatchActivity:Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;

    iget-object v1, p0, Lcom/ali/user/mobile/login/view/LoginView;->mAttatchActivity:Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;

    invoke-virtual {v1}, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->getResizeScrollView()Lcom/ali/user/mobile/util/ResizeScrollView;

    move-result-object v1

    const-string/jumbo v2, "LoginViewContainers"

    invoke-virtual {v0, v1, v2}, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->initRdsScreenTouch(Landroid/view/View;Ljava/lang/String;)V

    return-void
.end method

.method public abstract myName()Ljava/lang/String;
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onDestroy()V
    .locals 0

    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 4

    const-string/jumbo v0, "LoginView"

    const-string/jumbo v1, "onNewIntent:%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/ali/user/mobile/login/view/LoginView;->updateParam(Landroid/content/Intent;)V

    return-void
.end method

.method public onPause()V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 0

    return-void
.end method

.method public onStart()V
    .locals 0

    return-void
.end method

.method public onStop()V
    .locals 0

    return-void
.end method

.method public onViewRestart()V
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/login/view/LoginView;->mAttatchActivity:Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;

    invoke-virtual {v0}, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/login/view/LoginView;->updateParam(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/ali/user/mobile/login/view/LoginView;->whereAmIFrom()V

    return-void
.end method

.method public onViewStart()V
    .locals 0

    invoke-virtual {p0}, Lcom/ali/user/mobile/login/view/LoginView;->whereAmIFrom()V

    return-void
.end method

.method public onViewStop()V
    .locals 0

    invoke-virtual {p0}, Lcom/ali/user/mobile/login/view/LoginView;->clearTustLoginToken()V

    return-void
.end method

.method protected performDialogAction(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/ali/user/mobile/login/view/LoginView;->performDialogAction(Ljava/lang/String;Z)V

    return-void
.end method

.method protected performDialogAction(Ljava/lang/String;Z)V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/ali/user/mobile/login/view/LoginView;->mAttatchActivity:Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;

    sget v1, Lcom/ali/user/mobile/security/ui/R$string;->alipay_face_login:I

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/ali/user/mobile/login/view/LoginView;->mAttatchActivity:Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;

    sget v1, Lcom/ali/user/mobile/security/ui/R$string;->taobao_auth_login:I

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "UC-RLSB-160619-02"

    const-string/jumbo v1, "gotoTaoBaoLogin"

    invoke-virtual {p0}, Lcom/ali/user/mobile/login/view/LoginView;->myName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2, v4, v4}, Lcom/ali/user/mobile/e/c;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/ali/user/mobile/login/view/LoginView;->mAttatchActivity:Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;

    sget v1, Lcom/ali/user/mobile/security/ui/R$string;->alipay_registNew:I

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    if-nez p2, :cond_3

    const-string/jumbo v0, ""

    sput-object v0, Lcom/ali/user/mobile/register/a/b;->a:Ljava/lang/String;

    :cond_3
    const-string/jumbo v0, "UC-GY-161225-07"

    const-string/jumbo v1, "loginmorezc"

    invoke-virtual {p0}, Lcom/ali/user/mobile/login/view/LoginView;->myName()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/ali/user/mobile/register/a/b;->a:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/ali/user/mobile/e/c;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ali/user/mobile/login/view/LoginView;->mAttatchActivity:Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;

    const-string/jumbo v1, "RegisterBtn"

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->onRdsControlClick(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ali/user/mobile/login/view/LoginView;->mAttatchActivity:Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;

    invoke-virtual {v0, v4}, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->toRegist(Lcom/ali/user/mobile/register/Account;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/ali/user/mobile/login/view/LoginView;->mAttatchActivity:Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;

    sget v1, Lcom/ali/user/mobile/security/ui/R$string;->alipay_loginProblems:I

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "UC-GY-161225-08"

    const-string/jumbo v1, "otherproblem"

    invoke-virtual {p0}, Lcom/ali/user/mobile/login/view/LoginView;->myName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2, v4, v4}, Lcom/ali/user/mobile/e/c;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ali/user/mobile/login/view/LoginView;->toSecurityCenter()V

    goto :goto_0
.end method

.method protected setPortraitImage(ZLcom/ali/user/mobile/account/bean/UserInfo;)V
    .locals 6

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/ali/user/mobile/login/view/LoginView;->mAccountImageView:Lcom/ali/user/mobile/ui/widget/APImageView;

    sget v1, Lcom/ali/user/mobile/security/ui/R$drawable;->alipay_head:I

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/ui/widget/APImageView;->setImageResource(I)V

    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/ali/user/mobile/common/a/d;->q()Lcom/ali/user/mobile/common/a/b;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0, p2}, Lcom/ali/user/mobile/common/a/b;->a(Lcom/ali/user/mobile/account/bean/UserInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const-string/jumbo v1, "LoginView"

    const-string/jumbo v2, "custom avatar of %s is: %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p2}, Lcom/ali/user/mobile/account/bean/UserInfo;->getLogonId()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/ali/user/mobile/login/view/LoginView;->mAccountImageView:Lcom/ali/user/mobile/ui/widget/APImageView;

    invoke-virtual {v1, v0}, Lcom/ali/user/mobile/ui/widget/APImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Lcom/ali/user/mobile/account/bean/UserInfo;->getUserAvatar()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/ali/user/mobile/login/view/LoginView;->mAccountImageView:Lcom/ali/user/mobile/ui/widget/APImageView;

    sget v1, Lcom/ali/user/mobile/security/ui/R$drawable;->alipay_head:I

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/ui/widget/APImageView;->setImageResource(I)V

    goto :goto_0

    :cond_3
    invoke-virtual {p2}, Lcom/ali/user/mobile/account/bean/UserInfo;->getUserAvatar()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ali/user/mobile/login/view/LoginView;->mAccountImageView:Lcom/ali/user/mobile/ui/widget/APImageView;

    invoke-virtual {p0}, Lcom/ali/user/mobile/login/view/LoginView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/ali/user/mobile/security/ui/R$drawable;->alipay_head:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/ali/user/mobile/ui/widget/ao;->a(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method protected showInputMethodPannel(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/ali/user/mobile/login/view/LoginView;->mAttatchActivity:Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;

    invoke-virtual {v0}, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/ali/user/mobile/login/view/a;

    invoke-direct {v1, p0, p1}, Lcom/ali/user/mobile/login/view/a;-><init>(Lcom/ali/user/mobile/login/view/LoginView;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected showListDialog(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v3, 0x0

    new-instance v0, Lcom/ali/user/mobile/ui/widget/d;

    iget-object v1, p0, Lcom/ali/user/mobile/login/view/LoginView;->mAttatchActivity:Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;

    invoke-direct {v0, v1, p1}, Lcom/ali/user/mobile/ui/widget/d;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    new-instance v1, Lcom/ali/user/mobile/login/view/b;

    invoke-direct {v1, p0, v0, p1}, Lcom/ali/user/mobile/login/view/b;-><init>(Lcom/ali/user/mobile/login/view/LoginView;Lcom/ali/user/mobile/ui/widget/d;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/ui/widget/d;->a(Lcom/ali/user/mobile/ui/widget/d$b;)V

    new-instance v1, Lcom/ali/user/mobile/login/view/c;

    invoke-direct {v1, p0}, Lcom/ali/user/mobile/login/view/c;-><init>(Lcom/ali/user/mobile/login/view/LoginView;)V

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/ui/widget/d;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    invoke-virtual {v0}, Lcom/ali/user/mobile/ui/widget/d;->show()V

    const-string/jumbo v0, "UC-GY-161225-03"

    const-string/jumbo v1, "loginmore"

    invoke-virtual {p0}, Lcom/ali/user/mobile/login/view/LoginView;->myName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2, v3, v3}, Lcom/ali/user/mobile/e/c;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public toSecurityCenter()V
    .locals 0

    return-void
.end method

.method protected uiCustomize()V
    .locals 0

    return-void
.end method

.method protected updateParam(Landroid/content/Intent;)V
    .locals 5

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/login/view/LoginView;->mParams:Landroid/os/Bundle;

    const-string/jumbo v0, "LoginView"

    const-string/jumbo v1, "param updated: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/ali/user/mobile/login/view/LoginView;->mParams:Landroid/os/Bundle;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected whereAmIFrom()V
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/login/view/LoginView;->mAttatchActivity:Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;

    invoke-virtual {v0}, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->getFrom()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/login/view/LoginView;->mFrom:Ljava/lang/String;

    return-void
.end method

.method protected writeClickLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lcom/ali/user/mobile/login/view/LoginView;->getLoginAccount()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-static {p1, p2, p3, v0, v1}, Lcom/ali/user/mobile/e/c;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
