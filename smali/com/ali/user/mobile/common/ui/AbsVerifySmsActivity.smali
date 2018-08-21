.class public abstract Lcom/ali/user/mobile/common/ui/AbsVerifySmsActivity;
.super Lcom/ali/user/mobile/base/BaseActivity;
.source "AbsVerifySmsActivity.java"


# static fields
.field private static final sCountDown:I = 0x3c

.field private static final sTag:Ljava/lang/String; = "Reg_absSms"


# instance fields
.field private mCountDown:Landroid/widget/TextView;

.field private mCountDownStart:I

.field private mCounter:Landroid/animation/ValueAnimator;

.field private mError:Landroid/widget/TextView;

.field private mInput:Lcom/ali/user/mobile/ui/widget/AUBoxInput;

.field private final mLifeListener:Landroid/animation/Animator$AnimatorListener;

.field private final mResendListener:Landroid/view/View$OnClickListener;

.field private mScrollView:Lcom/ali/user/mobile/util/ResizeScrollView;

.field private final mUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/ali/user/mobile/base/BaseActivity;-><init>()V

    new-instance v0, Lcom/ali/user/mobile/common/ui/c;

    invoke-direct {v0, p0}, Lcom/ali/user/mobile/common/ui/c;-><init>(Lcom/ali/user/mobile/common/ui/AbsVerifySmsActivity;)V

    iput-object v0, p0, Lcom/ali/user/mobile/common/ui/AbsVerifySmsActivity;->mUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    new-instance v0, Lcom/ali/user/mobile/common/ui/d;

    invoke-direct {v0, p0}, Lcom/ali/user/mobile/common/ui/d;-><init>(Lcom/ali/user/mobile/common/ui/AbsVerifySmsActivity;)V

    iput-object v0, p0, Lcom/ali/user/mobile/common/ui/AbsVerifySmsActivity;->mLifeListener:Landroid/animation/Animator$AnimatorListener;

    new-instance v0, Lcom/ali/user/mobile/common/ui/e;

    invoke-direct {v0, p0}, Lcom/ali/user/mobile/common/ui/e;-><init>(Lcom/ali/user/mobile/common/ui/AbsVerifySmsActivity;)V

    iput-object v0, p0, Lcom/ali/user/mobile/common/ui/AbsVerifySmsActivity;->mResendListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/ali/user/mobile/common/ui/AbsVerifySmsActivity;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/common/ui/AbsVerifySmsActivity;->mCountDown:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/ali/user/mobile/common/ui/AbsVerifySmsActivity;)I
    .locals 1

    iget v0, p0, Lcom/ali/user/mobile/common/ui/AbsVerifySmsActivity;->mCountDownStart:I

    return v0
.end method

.method static synthetic access$200(Lcom/ali/user/mobile/common/ui/AbsVerifySmsActivity;)Landroid/view/View$OnClickListener;
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/common/ui/AbsVerifySmsActivity;->mResendListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/ali/user/mobile/common/ui/AbsVerifySmsActivity;Ljava/util/ArrayList;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/ali/user/mobile/common/ui/AbsVerifySmsActivity;->showListDialog(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$400(Lcom/ali/user/mobile/common/ui/AbsVerifySmsActivity;)Lcom/ali/user/mobile/util/ResizeScrollView;
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/common/ui/AbsVerifySmsActivity;->mScrollView:Lcom/ali/user/mobile/util/ResizeScrollView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/ali/user/mobile/common/ui/AbsVerifySmsActivity;)Lcom/ali/user/mobile/ui/widget/AUBoxInput;
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/common/ui/AbsVerifySmsActivity;->mInput:Lcom/ali/user/mobile/ui/widget/AUBoxInput;

    return-object v0
.end method

.method private exitSmsVerifyAlert()V
    .locals 7

    sget v0, Lcom/ali/user/mobile/security/ui/R$string;->alipay_sms_verify_alert:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/common/ui/AbsVerifySmsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, ""

    sget v0, Lcom/ali/user/mobile/security/ui/R$string;->alipay_wait:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/common/ui/AbsVerifySmsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/ali/user/mobile/common/ui/h;

    invoke-direct {v4, p0}, Lcom/ali/user/mobile/common/ui/h;-><init>(Lcom/ali/user/mobile/common/ui/AbsVerifySmsActivity;)V

    sget v0, Lcom/ali/user/mobile/security/ui/R$string;->alipay_title_back:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/common/ui/AbsVerifySmsActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/ali/user/mobile/common/ui/i;

    invoke-direct {v6, p0}, Lcom/ali/user/mobile/common/ui/i;-><init>(Lcom/ali/user/mobile/common/ui/AbsVerifySmsActivity;)V

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/ali/user/mobile/common/ui/AbsVerifySmsActivity;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method private initCountDown()V
    .locals 1

    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->reg_manual_sms_count:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/common/ui/AbsVerifySmsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ali/user/mobile/common/ui/AbsVerifySmsActivity;->mCountDown:Landroid/widget/TextView;

    return-void
.end method

.method private initError()V
    .locals 1

    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->reg_manual_sms_error:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/common/ui/AbsVerifySmsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ali/user/mobile/common/ui/AbsVerifySmsActivity;->mError:Landroid/widget/TextView;

    return-void
.end method

.method private initInput()V
    .locals 2

    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->reg_manual_sms_input:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/common/ui/AbsVerifySmsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ali/user/mobile/ui/widget/AUBoxInput;

    iput-object v0, p0, Lcom/ali/user/mobile/common/ui/AbsVerifySmsActivity;->mInput:Lcom/ali/user/mobile/ui/widget/AUBoxInput;

    iget-object v0, p0, Lcom/ali/user/mobile/common/ui/AbsVerifySmsActivity;->mInput:Lcom/ali/user/mobile/ui/widget/AUBoxInput;

    new-instance v1, Lcom/ali/user/mobile/common/ui/g;

    invoke-direct {v1, p0}, Lcom/ali/user/mobile/common/ui/g;-><init>(Lcom/ali/user/mobile/common/ui/AbsVerifySmsActivity;)V

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/ui/widget/AUBoxInput;->addTextChangedListener(Landroid/text/TextWatcher;)V

    invoke-virtual {p0}, Lcom/ali/user/mobile/common/ui/AbsVerifySmsActivity;->callUpKeyboard()V

    return-void
.end method

.method private initTip()V
    .locals 3

    invoke-static {}, Lcom/ali/user/mobile/register/b;->a()Lcom/ali/user/mobile/register/b;

    move-result-object v1

    const-string/jumbo v0, ""

    iget-object v2, v1, Lcom/ali/user/mobile/register/b;->c:Lcom/ali/user/mobile/register/c/a;

    if-eqz v2, :cond_1

    iget-object v1, v1, Lcom/ali/user/mobile/register/b;->c:Lcom/ali/user/mobile/register/c/a;

    invoke-virtual {v1}, Lcom/ali/user/mobile/register/c/a;->a()Lcom/ali/user/mobile/register/a/b;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/ali/user/mobile/register/a/b;->a()Lcom/ali/user/mobile/register/Account;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/ali/user/mobile/register/a/b;->a()Lcom/ali/user/mobile/register/Account;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ali/user/mobile/register/Account;->accountForDisplay()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lcom/ali/user/mobile/i/e;->e(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/ali/user/mobile/i/e;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/common/ui/AbsVerifySmsActivity;->initTip(Ljava/lang/String;)V

    return-void

    :cond_1
    const-string/jumbo v1, "Reg_absSms"

    const-string/jumbo v2, "no account for display"

    invoke-static {v1, v2}, Lcom/ali/user/mobile/e/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private initTitleBar()V
    .locals 3

    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->titlebar:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/common/ui/AbsVerifySmsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ali/user/mobile/ui/widget/APTitleBar;

    invoke-virtual {v0}, Lcom/ali/user/mobile/ui/widget/APTitleBar;->getTitlebarBg()Lcom/ali/user/mobile/ui/widget/APRelativeLayout;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/ali/user/mobile/ui/widget/APTitleBar;->getTitlebarBg()Lcom/ali/user/mobile/ui/widget/APRelativeLayout;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/ali/user/mobile/ui/widget/APRelativeLayout;->setBackgroundColor(I)V

    :cond_0
    invoke-static {v0}, Lcom/ali/user/mobile/common/a/d;->a(Lcom/ali/user/mobile/ui/widget/APTitleBar;)V

    return-void
.end method

.method private initView()V
    .locals 0

    invoke-direct {p0}, Lcom/ali/user/mobile/common/ui/AbsVerifySmsActivity;->initTitleBar()V

    invoke-direct {p0}, Lcom/ali/user/mobile/common/ui/AbsVerifySmsActivity;->initTip()V

    invoke-direct {p0}, Lcom/ali/user/mobile/common/ui/AbsVerifySmsActivity;->initInput()V

    invoke-direct {p0}, Lcom/ali/user/mobile/common/ui/AbsVerifySmsActivity;->initError()V

    invoke-direct {p0}, Lcom/ali/user/mobile/common/ui/AbsVerifySmsActivity;->initCountDown()V

    invoke-direct {p0}, Lcom/ali/user/mobile/common/ui/AbsVerifySmsActivity;->initWrapper()V

    return-void
.end method

.method private initWrapper()V
    .locals 4

    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->scrollview:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/common/ui/AbsVerifySmsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ali/user/mobile/util/ResizeScrollView;

    iput-object v0, p0, Lcom/ali/user/mobile/common/ui/AbsVerifySmsActivity;->mScrollView:Lcom/ali/user/mobile/util/ResizeScrollView;

    new-instance v0, Lcom/ali/user/mobile/util/k;

    iget-object v1, p0, Lcom/ali/user/mobile/common/ui/AbsVerifySmsActivity;->mScrollView:Lcom/ali/user/mobile/util/ResizeScrollView;

    invoke-direct {v0, v1}, Lcom/ali/user/mobile/util/k;-><init>(Lcom/ali/user/mobile/util/ResizeScrollView;)V

    iget-object v1, p0, Lcom/ali/user/mobile/common/ui/AbsVerifySmsActivity;->mInput:Lcom/ali/user/mobile/ui/widget/AUBoxInput;

    iget-object v2, p0, Lcom/ali/user/mobile/common/ui/AbsVerifySmsActivity;->mCountDown:Landroid/widget/TextView;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ali/user/mobile/util/k;->a(Landroid/view/View;Landroid/view/View;Z)V

    return-void
.end method


# virtual methods
.method protected callUpKeyboard()V
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/common/ui/AbsVerifySmsActivity;->mInput:Lcom/ali/user/mobile/ui/widget/AUBoxInput;

    invoke-virtual {v0}, Lcom/ali/user/mobile/ui/widget/AUBoxInput;->performClick()Z

    iget-object v0, p0, Lcom/ali/user/mobile/common/ui/AbsVerifySmsActivity;->mInput:Lcom/ali/user/mobile/ui/widget/AUBoxInput;

    invoke-virtual {v0}, Lcom/ali/user/mobile/ui/widget/AUBoxInput;->getRealInput()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/common/ui/AbsVerifySmsActivity;->showInputMethodPannel(Landroid/view/View;)V

    return-void
.end method

.method public clearInput()V
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/common/ui/AbsVerifySmsActivity;->mInput:Lcom/ali/user/mobile/ui/widget/AUBoxInput;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/ali/user/mobile/common/ui/AbsVerifySmsActivity;->mInput:Lcom/ali/user/mobile/ui/widget/AUBoxInput;

    invoke-virtual {v0}, Lcom/ali/user/mobile/ui/widget/AUBoxInput;->clear()V

    iget-object v0, p0, Lcom/ali/user/mobile/common/ui/AbsVerifySmsActivity;->mInput:Lcom/ali/user/mobile/ui/widget/AUBoxInput;

    invoke-virtual {v0}, Lcom/ali/user/mobile/ui/widget/AUBoxInput;->performClick()Z

    goto :goto_0
.end method

.method public hideError()V
    .locals 2

    iget-object v0, p0, Lcom/ali/user/mobile/common/ui/AbsVerifySmsActivity;->mError:Landroid/widget/TextView;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/ali/user/mobile/common/ui/AbsVerifySmsActivity;->mError:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public hideHints()V
    .locals 2

    iget-object v0, p0, Lcom/ali/user/mobile/common/ui/AbsVerifySmsActivity;->mCountDown:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ali/user/mobile/common/ui/AbsVerifySmsActivity;->mCountDown:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/ali/user/mobile/common/ui/AbsVerifySmsActivity;->mError:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ali/user/mobile/common/ui/AbsVerifySmsActivity;->mError:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method protected initTip(Ljava/lang/String;)V
    .locals 8

    const/16 v7, 0x11

    const/4 v6, 0x1

    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->reg_manual_sms_tip:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/common/ui/AbsVerifySmsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/ali/user/mobile/common/ui/AbsVerifySmsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/ali/user/mobile/security/ui/R$string;->alipay_reg_manual_sms_tip:I

    new-array v3, v6, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    new-instance v3, Landroid/text/style/AbsoluteSizeSpan;

    const/16 v4, 0x13

    invoke-direct {v3, v4, v6}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v1

    invoke-virtual {v2, v3, v1, v4, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Lcom/ali/user/mobile/common/ui/AbsVerifySmsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/ali/user/mobile/security/ui/R$color;->alipay_mainTextColor:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-direct {v3, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v1

    invoke-virtual {v2, v3, v1, v4, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    new-instance v3, Landroid/text/style/StyleSpan;

    invoke-direct {v3, v6}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v1

    invoke-virtual {v2, v3, v1, v4, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/common/ui/AbsVerifySmsActivity;->mInput:Lcom/ali/user/mobile/ui/widget/AUBoxInput;

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/common/ui/AbsVerifySmsActivity;->closeInputMethod(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/ali/user/mobile/common/ui/AbsVerifySmsActivity;->exitSmsVerifyAlert()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/ali/user/mobile/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    sget v0, Lcom/ali/user/mobile/security/ui/R$layout;->alipay_activity_manual_sms:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/common/ui/AbsVerifySmsActivity;->setContentView(I)V

    invoke-direct {p0}, Lcom/ali/user/mobile/common/ui/AbsVerifySmsActivity;->initView()V

    invoke-virtual {p0}, Lcom/ali/user/mobile/common/ui/AbsVerifySmsActivity;->startCountDown()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/common/ui/AbsVerifySmsActivity;->mCounter:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ali/user/mobile/common/ui/AbsVerifySmsActivity;->mCounter:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    iget-object v0, p0, Lcom/ali/user/mobile/common/ui/AbsVerifySmsActivity;->mCounter:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    iget-object v0, p0, Lcom/ali/user/mobile/common/ui/AbsVerifySmsActivity;->mCounter:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    invoke-super {p0}, Lcom/ali/user/mobile/base/BaseActivity;->onDestroy()V

    return-void
.end method

.method protected onGoBack()V
    .locals 0

    return-void
.end method

.method protected onResume()V
    .locals 4

    invoke-super {p0}, Lcom/ali/user/mobile/base/BaseActivity;->onResume()V

    iget-object v0, p0, Lcom/ali/user/mobile/common/ui/AbsVerifySmsActivity;->mScrollView:Lcom/ali/user/mobile/util/ResizeScrollView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ali/user/mobile/common/ui/AbsVerifySmsActivity;->mScrollView:Lcom/ali/user/mobile/util/ResizeScrollView;

    new-instance v1, Lcom/ali/user/mobile/common/ui/f;

    invoke-direct {v1, p0}, Lcom/ali/user/mobile/common/ui/f;-><init>(Lcom/ali/user/mobile/common/ui/AbsVerifySmsActivity;)V

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v1, v2, v3}, Lcom/ali/user/mobile/util/ResizeScrollView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method protected onWait()V
    .locals 0

    return-void
.end method

.method protected performDialogAction(Ljava/lang/String;)V
    .locals 1

    sget v0, Lcom/ali/user/mobile/security/ui/R$string;->alipay_reg_manual_sms_resend:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/common/ui/AbsVerifySmsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/ali/user/mobile/common/ui/AbsVerifySmsActivity;->hideHints()V

    invoke-virtual {p0}, Lcom/ali/user/mobile/common/ui/AbsVerifySmsActivity;->sendSms()V

    invoke-virtual {p0}, Lcom/ali/user/mobile/common/ui/AbsVerifySmsActivity;->callUpKeyboard()V

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1}, Lcom/ali/user/mobile/base/BaseActivity;->performDialogAction(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public abstract sendSms()V
.end method

.method public showError(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/ali/user/mobile/common/ui/AbsVerifySmsActivity;->mError:Landroid/widget/TextView;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ali/user/mobile/common/ui/AbsVerifySmsActivity;->mError:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v0, p0, Lcom/ali/user/mobile/common/ui/AbsVerifySmsActivity;->mError:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/ali/user/mobile/common/ui/AbsVerifySmsActivity;->mError:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/ali/user/mobile/ui/widget/ar;->a(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/ali/user/mobile/common/ui/AbsVerifySmsActivity;->clearInput()V

    goto :goto_0
.end method

.method public showHint()V
    .locals 2

    iget-object v0, p0, Lcom/ali/user/mobile/common/ui/AbsVerifySmsActivity;->mCountDown:Landroid/widget/TextView;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/ali/user/mobile/common/ui/AbsVerifySmsActivity;->mCountDown:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method protected startCountDown()V
    .locals 7

    const/4 v6, 0x0

    const/16 v0, 0x3c

    iput v0, p0, Lcom/ali/user/mobile/common/ui/AbsVerifySmsActivity;->mCountDownStart:I

    invoke-virtual {p0}, Lcom/ali/user/mobile/common/ui/AbsVerifySmsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    :try_start_0
    const-string/jumbo v2, "start"

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v2, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    :goto_0
    const-string/jumbo v2, "start"

    invoke-virtual {v3, v2}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long v0, v2, v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    rsub-int/lit8 v0, v0, 0x3c

    iput v0, p0, Lcom/ali/user/mobile/common/ui/AbsVerifySmsActivity;->mCountDownStart:I

    const-string/jumbo v0, "Reg_absSms"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "start count "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/ali/user/mobile/common/ui/AbsVerifySmsActivity;->mCountDownStart:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [I

    iget v1, p0, Lcom/ali/user/mobile/common/ui/AbsVerifySmsActivity;->mCountDownStart:I

    aput v1, v0, v6

    const/4 v1, 0x1

    aput v6, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/common/ui/AbsVerifySmsActivity;->mCounter:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/ali/user/mobile/common/ui/AbsVerifySmsActivity;->mCounter:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/ali/user/mobile/common/ui/AbsVerifySmsActivity;->mCounter:Landroid/animation/ValueAnimator;

    iget v1, p0, Lcom/ali/user/mobile/common/ui/AbsVerifySmsActivity;->mCountDownStart:I

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/ali/user/mobile/common/ui/AbsVerifySmsActivity;->mCounter:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/ali/user/mobile/common/ui/AbsVerifySmsActivity;->mUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/ali/user/mobile/common/ui/AbsVerifySmsActivity;->mCounter:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/ali/user/mobile/common/ui/AbsVerifySmsActivity;->mLifeListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/ali/user/mobile/common/ui/AbsVerifySmsActivity;->mCounter:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :catch_0
    move-exception v2

    const-string/jumbo v4, "Reg_absSms"

    const-string/jumbo v5, "get intent "

    invoke-static {v4, v5, v2}, Lcom/ali/user/mobile/e/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public abstract verifySms(Ljava/lang/String;)V
.end method
