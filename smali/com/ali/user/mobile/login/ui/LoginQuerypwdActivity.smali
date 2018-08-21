.class public Lcom/ali/user/mobile/login/ui/LoginQuerypwdActivity;
.super Lcom/ali/user/mobile/common/ui/AbsSupplyLoginPwdActivity;
.source "LoginQuerypwdActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LoginQuerypwdActivity"


# instance fields
.field private mLoginId:Ljava/lang/String;

.field private mScene:Ljava/lang/String;

.field private mSupplyResult:I

.field private toastCodes:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/ali/user/mobile/common/ui/AbsSupplyLoginPwdActivity;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/ali/user/mobile/login/ui/LoginQuerypwdActivity;->mSupplyResult:I

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "6451"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "6457"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/ali/user/mobile/login/ui/LoginQuerypwdActivity;->toastCodes:[Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/ali/user/mobile/login/ui/LoginQuerypwdActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/ali/user/mobile/login/ui/LoginQuerypwdActivity;->onSupplyPasswordCancel()V

    return-void
.end method

.method static synthetic access$100(Lcom/ali/user/mobile/login/ui/LoginQuerypwdActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ali/user/mobile/login/ui/LoginQuerypwdActivity;->supplyBackground(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/ali/user/mobile/login/ui/LoginQuerypwdActivity;Lcom/ali/user/mobile/rpc/vo/mobilegw/login/SupplyLoginPwdResPb;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ali/user/mobile/login/ui/LoginQuerypwdActivity;->onSupplyResponse(Lcom/ali/user/mobile/rpc/vo/mobilegw/login/SupplyLoginPwdResPb;)V

    return-void
.end method

.method static synthetic access$300(Lcom/ali/user/mobile/login/ui/LoginQuerypwdActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/ali/user/mobile/login/ui/LoginQuerypwdActivity;->onSupplyPasswordSuccess()V

    return-void
.end method

.method private initMainTip()V
    .locals 7

    const/16 v6, 0x21

    const/4 v5, 0x1

    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/LoginQuerypwdActivity;->mLoginId:Ljava/lang/String;

    invoke-static {v0}, Lcom/ali/user/mobile/i/e;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/LoginQuerypwdActivity;->mLoginId:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/ali/user/mobile/i/e;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    sget v1, Lcom/ali/user/mobile/security/ui/R$string;->alipay_login_query_pwd_tip:I

    invoke-virtual {p0, v1}, Lcom/ali/user/mobile/login/ui/LoginQuerypwdActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    new-instance v3, Landroid/text/SpannableString;

    invoke-direct {v3, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    const/high16 v4, -0x1000000

    invoke-direct {v1, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v2

    invoke-virtual {v3, v1, v2, v4, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    new-instance v1, Landroid/text/style/StyleSpan;

    invoke-direct {v1, v5}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v2

    invoke-virtual {v3, v1, v2, v0, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {p0, v3}, Lcom/ali/user/mobile/login/ui/LoginQuerypwdActivity;->setMainTip(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/LoginQuerypwdActivity;->mLoginId:Ljava/lang/String;

    goto :goto_0
.end method

.method private initTitleBarView()V
    .locals 2

    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/LoginQuerypwdActivity;->mTitle:Lcom/ali/user/mobile/ui/widget/APTitleBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/ui/widget/APTitleBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/LoginQuerypwdActivity;->mTitle:Lcom/ali/user/mobile/ui/widget/APTitleBar;

    invoke-virtual {v0}, Lcom/ali/user/mobile/ui/widget/APTitleBar;->getTitlebarBg()Lcom/ali/user/mobile/ui/widget/APRelativeLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/LoginQuerypwdActivity;->mTitle:Lcom/ali/user/mobile/ui/widget/APTitleBar;

    invoke-virtual {v0}, Lcom/ali/user/mobile/ui/widget/APTitleBar;->getTitlebarBg()Lcom/ali/user/mobile/ui/widget/APRelativeLayout;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/ui/widget/APRelativeLayout;->setBackgroundColor(I)V

    :cond_0
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/LoginQuerypwdActivity;->mTitle:Lcom/ali/user/mobile/ui/widget/APTitleBar;

    new-instance v1, Lcom/ali/user/mobile/login/ui/x;

    invoke-direct {v1, p0}, Lcom/ali/user/mobile/login/ui/x;-><init>(Lcom/ali/user/mobile/login/ui/LoginQuerypwdActivity;)V

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/ui/widget/APTitleBar;->setBackButtonListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private isToastCode(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/ali/user/mobile/login/ui/LoginQuerypwdActivity;->toastCodes:[Ljava/lang/String;

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private onSupplyPasswordCancel()V
    .locals 2

    const/16 v0, 0x3e9

    iput v0, p0, Lcom/ali/user/mobile/login/ui/LoginQuerypwdActivity;->mSupplyResult:I

    invoke-static {}, Lcom/ali/user/mobile/login/g;->a()Lcom/ali/user/mobile/login/g;

    move-result-object v0

    iget v1, p0, Lcom/ali/user/mobile/login/ui/LoginQuerypwdActivity;->mSupplyResult:I

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/login/g;->a(I)V

    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/LoginQuerypwdActivity;->finish()V

    return-void
.end method

.method private onSupplyPasswordSuccess()V
    .locals 2

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/ali/user/mobile/login/ui/LoginQuerypwdActivity;->mSupplyResult:I

    invoke-static {}, Lcom/ali/user/mobile/login/g;->a()Lcom/ali/user/mobile/login/g;

    move-result-object v0

    iget v1, p0, Lcom/ali/user/mobile/login/ui/LoginQuerypwdActivity;->mSupplyResult:I

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/login/g;->a(I)V

    return-void
.end method

.method private onSupplyResponse(Lcom/ali/user/mobile/rpc/vo/mobilegw/login/SupplyLoginPwdResPb;)V
    .locals 4

    const/4 v2, 0x0

    const-string/jumbo v0, "1000"

    iget-object v1, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/SupplyLoginPwdResPb;->resultCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/ali/user/mobile/security/ui/R$drawable;->alipay_simple_toast_ok:I

    iget-object v1, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/SupplyLoginPwdResPb;->memo:Ljava/lang/String;

    invoke-static {p0, v0, v1, v2}, Lcom/ali/user/mobile/ui/widget/e/a;->a(Landroid/content/Context;ILjava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/ali/user/mobile/login/ui/aa;

    invoke-direct {v1, p0}, Lcom/ali/user/mobile/login/ui/aa;-><init>(Lcom/ali/user/mobile/login/ui/LoginQuerypwdActivity;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/SupplyLoginPwdResPb;->resultCode:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/ali/user/mobile/login/ui/LoginQuerypwdActivity;->isToastCode(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/SupplyLoginPwdResPb;->memo:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/login/ui/LoginQuerypwdActivity;->toast(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/SupplyLoginPwdResPb;->memo:Ljava/lang/String;

    invoke-virtual {p0, v0, v2}, Lcom/ali/user/mobile/login/ui/LoginQuerypwdActivity;->showErrorTip(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private supplyBackground(Ljava/lang/String;)V
    .locals 4

    const-string/jumbo v0, "LoginQuerypwdActivity"

    const-string/jumbo v1, "start to supply querypwd"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    const-string/jumbo v0, ""

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/login/ui/LoginQuerypwdActivity;->showProgress(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/LoginQuerypwdActivity;->mConfirm:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/ali/user/mobile/login/ui/LoginQuerypwdActivity;->setButtonEnable(Landroid/widget/Button;Z)V

    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/LoginQuerypwdActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ali/user/mobile/g/c;->a(Landroid/content/Context;)Lcom/ali/user/mobile/rpc/vo/mobilegw/RSAPKeyResult;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/LoginQuerypwdActivity;->dismissProgress()V

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "get rsa from server failed!!!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lcom/alipay/android/phone/mrpc/core/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/LoginQuerypwdActivity;->dismissProgress()V

    throw v0

    :cond_0
    :try_start_1
    iget-object v0, v0, Lcom/ali/user/mobile/rpc/vo/mobilegw/RSAPKeyResult;->rsaPK:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/ali/user/mobile/g/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/ali/user/mobile/a/a;->f()Lcom/ali/user/mobile/h/b;

    move-result-object v1

    iget-object v2, p0, Lcom/ali/user/mobile/login/ui/LoginQuerypwdActivity;->mLoginId:Ljava/lang/String;

    iget-object v3, p0, Lcom/ali/user/mobile/login/ui/LoginQuerypwdActivity;->mScene:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v0}, Lcom/ali/user/mobile/h/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ali/user/mobile/rpc/vo/mobilegw/login/SupplyLoginPwdResPb;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/LoginQuerypwdActivity;->dismissProgress()V

    new-instance v1, Lcom/ali/user/mobile/login/ui/z;

    invoke-direct {v1, p0, v0}, Lcom/ali/user/mobile/login/ui/z;-><init>(Lcom/ali/user/mobile/login/ui/LoginQuerypwdActivity;Lcom/ali/user/mobile/rpc/vo/mobilegw/login/SupplyLoginPwdResPb;)V

    invoke-virtual {p0, v1}, Lcom/ali/user/mobile/login/ui/LoginQuerypwdActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Lcom/alipay/android/phone/mrpc/core/RpcException; {:try_start_1 .. :try_end_1} :catch_0

    return-void
.end method


# virtual methods
.method public doSupply(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/ali/user/mobile/login/ui/y;

    invoke-direct {v0, p0, p1}, Lcom/ali/user/mobile/login/ui/y;-><init>(Lcom/ali/user/mobile/login/ui/LoginQuerypwdActivity;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/ali/user/mobile/accountbiz/c;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected getInputHint()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/LoginQuerypwdActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/ali/user/mobile/security/ui/R$string;->alipay_reg_pwd_supply:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getPageName()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "login"

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/ali/user/mobile/common/ui/AbsSupplyLoginPwdActivity;->onCreate(Landroid/os/Bundle;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/LoginQuerypwdActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "loginId"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/login/ui/LoginQuerypwdActivity;->mLoginId:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/LoginQuerypwdActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "scene"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/login/ui/LoginQuerypwdActivity;->mScene:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-direct {p0}, Lcom/ali/user/mobile/login/ui/LoginQuerypwdActivity;->initTitleBarView()V

    invoke-direct {p0}, Lcom/ali/user/mobile/login/ui/LoginQuerypwdActivity;->initMainTip()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/login/ui/LoginQuerypwdActivity;->setExclude(Z)V

    invoke-static {}, Lcom/ali/user/mobile/login/g;->a()Lcom/ali/user/mobile/login/g;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ali/user/mobile/login/g;->a(Lcom/ali/user/mobile/login/ui/LoginQuerypwdActivity;)V

    const-string/jumbo v0, ""

    const-string/jumbo v1, "LoginQuerypwdActivity"

    const-string/jumbo v2, "login"

    const-string/jumbo v3, ""

    invoke-static {v0, v1, v2, v3}, Lcom/ali/user/mobile/e/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "LoginQuerypwdActivity"

    const-string/jumbo v2, "get intent"

    invoke-static {v1, v2, v0}, Lcom/ali/user/mobile/e/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/ali/user/mobile/login/ui/LoginQuerypwdActivity;->onSupplyPasswordCancel()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/ali/user/mobile/common/ui/AbsSupplyLoginPwdActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected setAppId()V
    .locals 1

    const-string/jumbo v0, "20000008"

    iput-object v0, p0, Lcom/ali/user/mobile/login/ui/LoginQuerypwdActivity;->mAppId:Ljava/lang/String;

    return-void
.end method
