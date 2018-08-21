.class public Lcom/ali/user/mobile/register/ui/AliuserRegisterSuccessActivity;
.super Lcom/ali/user/mobile/base/BaseActivity;
.source "AliuserRegisterSuccessActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AliuserRegisterSuccessActivity"

.field private static final sCountDown:I = 0x3


# instance fields
.field private mAnimator:Landroid/animation/ValueAnimator;

.field protected mAppName:Ljava/lang/String;

.field private mConfirmButton:Landroid/widget/Button;

.field private mEndListener:Landroid/animation/Animator$AnimatorListener;

.field protected mHandler:Landroid/os/Handler;

.field protected mMobileNo:Ljava/lang/String;

.field protected mRegionNo:Ljava/lang/String;

.field protected mToken:Ljava/lang/String;

.field private mTvTip:Landroid/widget/TextView;

.field private mUpdate:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field protected mUserRegisterService:Lcom/ali/user/mobile/h/c;

.field private mWebView2:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/ali/user/mobile/base/BaseActivity;-><init>()V

    new-instance v0, Lcom/ali/user/mobile/register/ui/e;

    invoke-direct {v0, p0}, Lcom/ali/user/mobile/register/ui/e;-><init>(Lcom/ali/user/mobile/register/ui/AliuserRegisterSuccessActivity;)V

    iput-object v0, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterSuccessActivity;->mUpdate:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    new-instance v0, Lcom/ali/user/mobile/register/ui/f;

    invoke-direct {v0, p0}, Lcom/ali/user/mobile/register/ui/f;-><init>(Lcom/ali/user/mobile/register/ui/AliuserRegisterSuccessActivity;)V

    iput-object v0, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterSuccessActivity;->mEndListener:Landroid/animation/Animator$AnimatorListener;

    return-void
.end method

.method static synthetic access$000(Lcom/ali/user/mobile/register/ui/AliuserRegisterSuccessActivity;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterSuccessActivity;->mConfirmButton:Landroid/widget/Button;

    return-object v0
.end method

.method private initDatas()V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/AliuserRegisterSuccessActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/ali/user/mobile/security/ui/R$string;->alipay_account:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterSuccessActivity;->mMobileNo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/AliuserRegisterSuccessActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/ali/user/mobile/security/ui/R$string;->alipay_use_follow_service:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterSuccessActivity;->mTvTip:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterSuccessActivity;->mConfirmButton:Landroid/widget/Button;

    new-instance v1, Lcom/ali/user/mobile/register/ui/g;

    invoke-direct {v1, p0}, Lcom/ali/user/mobile/register/ui/g;-><init>(Lcom/ali/user/mobile/register/ui/AliuserRegisterSuccessActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initViews()V
    .locals 3

    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->imageTip:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/register/ui/AliuserRegisterSuccessActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    sget v1, Lcom/ali/user/mobile/security/ui/R$id;->reigsterSuccessTip:I

    invoke-virtual {p0, v1}, Lcom/ali/user/mobile/register/ui/AliuserRegisterSuccessActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sget v2, Lcom/ali/user/mobile/security/ui/R$id;->textTip:I

    invoke-virtual {p0, v2}, Lcom/ali/user/mobile/register/ui/AliuserRegisterSuccessActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterSuccessActivity;->mTvTip:Landroid/widget/TextView;

    sget v2, Lcom/ali/user/mobile/security/ui/R$id;->webTip:I

    invoke-virtual {p0, v2}, Lcom/ali/user/mobile/register/ui/AliuserRegisterSuccessActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/webkit/WebView;

    iput-object v2, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterSuccessActivity;->mWebView2:Landroid/webkit/WebView;

    sget v2, Lcom/ali/user/mobile/security/ui/R$id;->comfirmSetting:I

    invoke-virtual {p0, v2}, Lcom/ali/user/mobile/register/ui/AliuserRegisterSuccessActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterSuccessActivity;->mConfirmButton:Landroid/widget/Button;

    invoke-static {}, Lcom/ali/user/mobile/info/AppInfo;->getInstance()Lcom/ali/user/mobile/info/AppInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ali/user/mobile/info/AppInfo;->getAppName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterSuccessActivity;->mAppName:Ljava/lang/String;

    iget-object v2, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterSuccessActivity;->mAppName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, ""

    iput-object v2, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterSuccessActivity;->mAppName:Ljava/lang/String;

    :cond_0
    iget-object v2, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterSuccessActivity;->mConfirmButton:Landroid/widget/Button;

    invoke-static {v2}, Lcom/ali/user/mobile/common/a/d;->a(Landroid/widget/Button;)V

    invoke-static {}, Lcom/ali/user/mobile/common/a/d;->o()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    invoke-static {}, Lcom/ali/user/mobile/common/a/d;->p()I

    move-result v0

    const v2, 0x7fffffff

    if-eq v0, v2, :cond_2

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_2
    return-void
.end method

.method private initWebview()V
    .locals 2

    const-string/jumbo v0, "AliuserRegisterSuccessActivity"

    const-string/jumbo v1, "loadUrl:https://ds.alipay.com/help/icon.htm"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterSuccessActivity;->mWebView2:Landroid/webkit/WebView;

    const-string/jumbo v1, "https://ds.alipay.com/help/icon.htm"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterSuccessActivity;->mWebView2:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    return-void
.end method


# virtual methods
.method protected goLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/ali/user/mobile/register/ui/AliuserRegisterSuccessActivity;->goLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method protected goLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/ali/user/mobile/register/a/c;->c()V

    new-instance v0, Lcom/ali/user/mobile/login/LoginParam;

    invoke-direct {v0}, Lcom/ali/user/mobile/login/LoginParam;-><init>()V

    iput-object p1, v0, Lcom/ali/user/mobile/login/LoginParam;->loginAccount:Ljava/lang/String;

    iput-object p2, v0, Lcom/ali/user/mobile/login/LoginParam;->token:Ljava/lang/String;

    iput-object p3, v0, Lcom/ali/user/mobile/login/LoginParam;->validateTpye:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/AliuserRegisterSuccessActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/ali/user/mobile/a/a;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "login_param"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string/jumbo v0, "from_register"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v0, "loginTargetBiz"

    invoke-virtual {v1, v0, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p4, :cond_0

    const/high16 v0, 0x4000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v0, 0x20000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_0
    invoke-virtual {p0, v1}, Lcom/ali/user/mobile/register/ui/AliuserRegisterSuccessActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/ali/user/mobile/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/AliuserRegisterSuccessActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "token"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterSuccessActivity;->mToken:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/AliuserRegisterSuccessActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "mobile_for_sms"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterSuccessActivity;->mMobileNo:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/AliuserRegisterSuccessActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "regionNo"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterSuccessActivity;->mRegionNo:Ljava/lang/String;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterSuccessActivity;->mHandler:Landroid/os/Handler;

    invoke-static {}, Lcom/ali/user/mobile/a/a;->g()Lcom/ali/user/mobile/h/c;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterSuccessActivity;->mUserRegisterService:Lcom/ali/user/mobile/h/c;

    sget v0, Lcom/ali/user/mobile/security/ui/R$layout;->alipay_activity_register_success:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/register/ui/AliuserRegisterSuccessActivity;->setContentView(I)V

    invoke-direct {p0}, Lcom/ali/user/mobile/register/ui/AliuserRegisterSuccessActivity;->initViews()V

    invoke-direct {p0}, Lcom/ali/user/mobile/register/ui/AliuserRegisterSuccessActivity;->initDatas()V

    invoke-direct {p0}, Lcom/ali/user/mobile/register/ui/AliuserRegisterSuccessActivity;->initWebview()V

    const-string/jumbo v0, ""

    const-string/jumbo v1, "AliuserRegisterSuccessActivity"

    const-string/jumbo v2, "login"

    const-string/jumbo v3, ""

    invoke-static {v0, v1, v2, v3}, Lcom/ali/user/mobile/e/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/ali/user/mobile/base/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onResume()V
    .locals 4

    invoke-super {p0}, Lcom/ali/user/mobile/base/BaseActivity;->onResume()V

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterSuccessActivity;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterSuccessActivity;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterSuccessActivity;->mAnimator:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterSuccessActivity;->mAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterSuccessActivity;->mUpdate:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterSuccessActivity;->mAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterSuccessActivity;->mEndListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterSuccessActivity;->mAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterSuccessActivity;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterSuccessActivity;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x3
        0x0
    .end array-data
.end method

.method protected setAppId()V
    .locals 1

    const-string/jumbo v0, "20000009"

    iput-object v0, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterSuccessActivity;->mAppId:Ljava/lang/String;

    return-void
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 2

    const-string/jumbo v0, "token"

    iget-object v1, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterSuccessActivity;->mToken:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v0, "mobile_for_sms"

    iget-object v1, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterSuccessActivity;->mMobileNo:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v0, "regionNo"

    iget-object v1, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterSuccessActivity;->mRegionNo:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-super {p0, p1}, Lcom/ali/user/mobile/base/BaseActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
