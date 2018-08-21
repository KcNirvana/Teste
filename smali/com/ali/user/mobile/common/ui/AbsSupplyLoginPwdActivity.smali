.class public abstract Lcom/ali/user/mobile/common/ui/AbsSupplyLoginPwdActivity;
.super Lcom/ali/user/mobile/base/BaseActivity;
.source "AbsSupplyLoginPwdActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final sTag:Ljava/lang/String; = "Reg_AbsSupplyLoginPwdActivity"


# instance fields
.field protected mCanComeBack:Z

.field protected mConfirm:Landroid/widget/Button;

.field private mErrorTip:Landroid/widget/TextView;

.field protected mHasNullChecker:Lcom/ali/user/mobile/ui/widget/an;

.field private mLoginPasswordInput:Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;

.field private mLoginPwdInputBox:Lcom/ali/user/mobile/ui/widget/AUInputBox;

.field private mMainTip:Landroid/widget/TextView;

.field protected mTitle:Lcom/ali/user/mobile/ui/widget/APTitleBar;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/ali/user/mobile/base/BaseActivity;-><init>()V

    return-void
.end method

.method private initButton()V
    .locals 2

    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->reg_confirm:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/common/ui/AbsSupplyLoginPwdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ali/user/mobile/common/ui/AbsSupplyLoginPwdActivity;->mConfirm:Landroid/widget/Button;

    iget-object v0, p0, Lcom/ali/user/mobile/common/ui/AbsSupplyLoginPwdActivity;->mConfirm:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/ali/user/mobile/common/ui/AbsSupplyLoginPwdActivity;->mConfirm:Landroid/widget/Button;

    invoke-static {v0}, Lcom/ali/user/mobile/common/a/d;->a(Landroid/widget/Button;)V

    iget-object v0, p0, Lcom/ali/user/mobile/common/ui/AbsSupplyLoginPwdActivity;->mHasNullChecker:Lcom/ali/user/mobile/ui/widget/an;

    iget-object v1, p0, Lcom/ali/user/mobile/common/ui/AbsSupplyLoginPwdActivity;->mConfirm:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/ui/widget/an;->a(Landroid/widget/Button;)V

    return-void
.end method

.method private initContext()V
    .locals 1

    new-instance v0, Lcom/ali/user/mobile/ui/widget/an;

    invoke-direct {v0}, Lcom/ali/user/mobile/ui/widget/an;-><init>()V

    iput-object v0, p0, Lcom/ali/user/mobile/common/ui/AbsSupplyLoginPwdActivity;->mHasNullChecker:Lcom/ali/user/mobile/ui/widget/an;

    return-void
.end method

.method private initInputSpecImage()V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/ali/user/mobile/common/ui/AbsSupplyLoginPwdActivity;->mLoginPwdInputBox:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    invoke-virtual {v0}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->getSpecialFuncImg()Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/ali/user/mobile/common/ui/AbsSupplyLoginPwdActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/ali/user/mobile/security/ui/R$dimen;->alipay_dp_13:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    invoke-virtual {v0, v2, v4, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/ali/user/mobile/common/ui/AbsSupplyLoginPwdActivity;->mLoginPasswordInput:Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;

    invoke-static {}, Landroid/text/method/HideReturnsTransformationMethod;->getInstance()Landroid/text/method/HideReturnsTransformationMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    invoke-static {}, Lcom/ali/user/mobile/common/a/d;->c()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ali/user/mobile/common/ui/AbsSupplyLoginPwdActivity;->mLoginPwdInputBox:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    sget v1, Lcom/ali/user/mobile/security/ui/R$drawable;->alipay_eye_2:I

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->setSepciaFunBtn(I)V

    :goto_0
    iget-object v0, p0, Lcom/ali/user/mobile/common/ui/AbsSupplyLoginPwdActivity;->mLoginPasswordInput:Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;

    iget-object v1, p0, Lcom/ali/user/mobile/common/ui/AbsSupplyLoginPwdActivity;->mLoginPasswordInput:Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;

    invoke-virtual {v1}, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;->getSafeText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;->setSelection(I)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/ali/user/mobile/common/ui/AbsSupplyLoginPwdActivity;->mLoginPwdInputBox:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    invoke-virtual {v1, v0}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->setSepciaFunBtn(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private initPwdInput()V
    .locals 2

    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->reg_pwd_input:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/common/ui/AbsSupplyLoginPwdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ali/user/mobile/ui/widget/AUInputBox;

    iput-object v0, p0, Lcom/ali/user/mobile/common/ui/AbsSupplyLoginPwdActivity;->mLoginPwdInputBox:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    iget-object v0, p0, Lcom/ali/user/mobile/common/ui/AbsSupplyLoginPwdActivity;->mLoginPwdInputBox:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    invoke-virtual {v0}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->getEtContent()Landroid/widget/EditText;

    move-result-object v0

    check-cast v0, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;

    iput-object v0, p0, Lcom/ali/user/mobile/common/ui/AbsSupplyLoginPwdActivity;->mLoginPasswordInput:Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;

    invoke-virtual {p0}, Lcom/ali/user/mobile/common/ui/AbsSupplyLoginPwdActivity;->getInputHint()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/ali/user/mobile/common/ui/AbsSupplyLoginPwdActivity;->mLoginPwdInputBox:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    invoke-virtual {v1, v0}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->setHint(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/ali/user/mobile/common/ui/AbsSupplyLoginPwdActivity;->mLoginPwdInputBox:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    invoke-virtual {v0}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->getSpecialFuncImg()Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/ali/user/mobile/common/ui/AbsSupplyLoginPwdActivity;->mLoginPwdInputBox:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->setInputName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ali/user/mobile/common/ui/AbsSupplyLoginPwdActivity;->mLoginPwdInputBox:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    iget-object v1, p0, Lcom/ali/user/mobile/common/ui/AbsSupplyLoginPwdActivity;->mLoginPasswordInput:Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;

    invoke-static {v0, v1}, Lcom/ali/user/mobile/ui/widget/ar;->a(Landroid/view/View;Landroid/widget/EditText;)V

    invoke-direct {p0}, Lcom/ali/user/mobile/common/ui/AbsSupplyLoginPwdActivity;->initInputSpecImage()V

    iget-object v0, p0, Lcom/ali/user/mobile/common/ui/AbsSupplyLoginPwdActivity;->mHasNullChecker:Lcom/ali/user/mobile/ui/widget/an;

    iget-object v1, p0, Lcom/ali/user/mobile/common/ui/AbsSupplyLoginPwdActivity;->mLoginPasswordInput:Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/ui/widget/an;->a(Landroid/widget/EditText;)V

    iget-object v0, p0, Lcom/ali/user/mobile/common/ui/AbsSupplyLoginPwdActivity;->mLoginPasswordInput:Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;

    iget-object v1, p0, Lcom/ali/user/mobile/common/ui/AbsSupplyLoginPwdActivity;->mHasNullChecker:Lcom/ali/user/mobile/ui/widget/an;

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/ali/user/mobile/common/ui/AbsSupplyLoginPwdActivity;->mLoginPasswordInput:Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;

    new-instance v1, Lcom/ali/user/mobile/common/ui/b;

    invoke-direct {v1, p0}, Lcom/ali/user/mobile/common/ui/b;-><init>(Lcom/ali/user/mobile/common/ui/AbsSupplyLoginPwdActivity;)V

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method private initRegisterPasswordErrorTips()V
    .locals 7

    const/16 v6, 0x21

    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->reg_pwd_error:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/common/ui/AbsSupplyLoginPwdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ali/user/mobile/common/ui/AbsSupplyLoginPwdActivity;->mErrorTip:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/ali/user/mobile/common/ui/AbsSupplyLoginPwdActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/ali/user/mobile/security/ui/R$string;->alipay_register_password_error:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ali/user/mobile/common/ui/AbsSupplyLoginPwdActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/ali/user/mobile/security/ui/R$string;->alipay_error_highlight:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2}, Landroid/text/SpannableStringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Lcom/ali/user/mobile/common/ui/AbsSupplyLoginPwdActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/ali/user/mobile/security/ui/R$color;->alipay_passwor_error_tip0_color:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-direct {v3, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v4, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {v2, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Lcom/ali/user/mobile/common/ui/AbsSupplyLoginPwdActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/ali/user/mobile/security/ui/R$color;->alipay_passwor_error_tip_color:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-direct {v1, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    invoke-virtual {v2, v1, v0, v3, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    iget-object v0, p0, Lcom/ali/user/mobile/common/ui/AbsSupplyLoginPwdActivity;->mErrorTip:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private initTitleBar()V
    .locals 5

    const/4 v1, 0x0

    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->titlebar:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/common/ui/AbsSupplyLoginPwdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ali/user/mobile/ui/widget/APTitleBar;

    iput-object v0, p0, Lcom/ali/user/mobile/common/ui/AbsSupplyLoginPwdActivity;->mTitle:Lcom/ali/user/mobile/ui/widget/APTitleBar;

    iget-object v0, p0, Lcom/ali/user/mobile/common/ui/AbsSupplyLoginPwdActivity;->mTitle:Lcom/ali/user/mobile/ui/widget/APTitleBar;

    invoke-virtual {v0}, Lcom/ali/user/mobile/ui/widget/APTitleBar;->getTitlebarBg()Lcom/ali/user/mobile/ui/widget/APRelativeLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ali/user/mobile/common/ui/AbsSupplyLoginPwdActivity;->mTitle:Lcom/ali/user/mobile/ui/widget/APTitleBar;

    invoke-virtual {v0}, Lcom/ali/user/mobile/ui/widget/APTitleBar;->getTitlebarBg()Lcom/ali/user/mobile/ui/widget/APRelativeLayout;

    move-result-object v0

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Lcom/ali/user/mobile/ui/widget/APRelativeLayout;->setBackgroundColor(I)V

    :cond_0
    iget-object v0, p0, Lcom/ali/user/mobile/common/ui/AbsSupplyLoginPwdActivity;->mTitle:Lcom/ali/user/mobile/ui/widget/APTitleBar;

    sget v2, Lcom/ali/user/mobile/security/ui/R$drawable;->alipay_selector_titlebar_close:I

    invoke-virtual {v0, v2}, Lcom/ali/user/mobile/ui/widget/APTitleBar;->setImageBackButtonIcon(I)V

    const/16 v0, 0x8

    invoke-virtual {p0}, Lcom/ali/user/mobile/common/ui/AbsSupplyLoginPwdActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_1

    :try_start_0
    const-string/jumbo v3, "come_back"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/ali/user/mobile/common/ui/AbsSupplyLoginPwdActivity;->mCanComeBack:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_1

    move v0, v1

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/ali/user/mobile/common/ui/AbsSupplyLoginPwdActivity;->mTitle:Lcom/ali/user/mobile/ui/widget/APTitleBar;

    invoke-virtual {v1, v0}, Lcom/ali/user/mobile/ui/widget/APTitleBar;->setVisibility(I)V

    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->mainTip:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/common/ui/AbsSupplyLoginPwdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ali/user/mobile/common/ui/AbsSupplyLoginPwdActivity;->mMainTip:Landroid/widget/TextView;

    return-void

    :catch_0
    move-exception v1

    const-string/jumbo v2, "Reg_AbsSupplyLoginPwdActivity"

    const-string/jumbo v3, "get intent "

    invoke-static {v2, v3, v1}, Lcom/ali/user/mobile/e/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private initView()V
    .locals 0

    invoke-direct {p0}, Lcom/ali/user/mobile/common/ui/AbsSupplyLoginPwdActivity;->initTitleBar()V

    invoke-direct {p0}, Lcom/ali/user/mobile/common/ui/AbsSupplyLoginPwdActivity;->initRegisterPasswordErrorTips()V

    invoke-direct {p0}, Lcom/ali/user/mobile/common/ui/AbsSupplyLoginPwdActivity;->initPwdInput()V

    invoke-direct {p0}, Lcom/ali/user/mobile/common/ui/AbsSupplyLoginPwdActivity;->initButton()V

    invoke-direct {p0}, Lcom/ali/user/mobile/common/ui/AbsSupplyLoginPwdActivity;->initWrapper()V

    return-void
.end method

.method private initWrapper()V
    .locals 4

    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->scrollview:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/common/ui/AbsSupplyLoginPwdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ali/user/mobile/util/ResizeScrollView;

    new-instance v1, Lcom/ali/user/mobile/util/k;

    invoke-direct {v1, v0}, Lcom/ali/user/mobile/util/k;-><init>(Lcom/ali/user/mobile/util/ResizeScrollView;)V

    iget-object v0, p0, Lcom/ali/user/mobile/common/ui/AbsSupplyLoginPwdActivity;->mLoginPwdInputBox:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    iget-object v2, p0, Lcom/ali/user/mobile/common/ui/AbsSupplyLoginPwdActivity;->mConfirm:Landroid/widget/Button;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Lcom/ali/user/mobile/util/k;->a(Landroid/view/View;Landroid/view/View;Z)V

    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->wrapper:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/common/ui/AbsSupplyLoginPwdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/ali/user/mobile/common/ui/a;

    invoke-direct {v1, p0}, Lcom/ali/user/mobile/common/ui/a;-><init>(Lcom/ali/user/mobile/common/ui/AbsSupplyLoginPwdActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method private switchTransformationMethod()V
    .locals 2

    iget-object v0, p0, Lcom/ali/user/mobile/common/ui/AbsSupplyLoginPwdActivity;->mLoginPasswordInput:Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;

    invoke-virtual {v0}, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v0

    invoke-static {}, Landroid/text/method/HideReturnsTransformationMethod;->getInstance()Landroid/text/method/HideReturnsTransformationMethod;

    move-result-object v1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/ali/user/mobile/common/ui/AbsSupplyLoginPwdActivity;->mLoginPasswordInput:Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    invoke-static {}, Lcom/ali/user/mobile/common/a/d;->d()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ali/user/mobile/common/ui/AbsSupplyLoginPwdActivity;->mLoginPwdInputBox:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    sget v1, Lcom/ali/user/mobile/security/ui/R$drawable;->alipay_eye_1:I

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->setSepciaFunBtn(I)V

    :goto_0
    iget-object v0, p0, Lcom/ali/user/mobile/common/ui/AbsSupplyLoginPwdActivity;->mLoginPasswordInput:Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;

    iget-object v1, p0, Lcom/ali/user/mobile/common/ui/AbsSupplyLoginPwdActivity;->mLoginPasswordInput:Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;

    invoke-virtual {v1}, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;->getSafeText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;->setSelection(I)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v1, p0, Lcom/ali/user/mobile/common/ui/AbsSupplyLoginPwdActivity;->mLoginPwdInputBox:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    invoke-virtual {v1, v0}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->setSepciaFunBtn(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/ali/user/mobile/common/ui/AbsSupplyLoginPwdActivity;->mLoginPasswordInput:Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;

    invoke-virtual {v0}, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v0

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/ali/user/mobile/common/ui/AbsSupplyLoginPwdActivity;->mLoginPasswordInput:Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;

    invoke-static {}, Landroid/text/method/HideReturnsTransformationMethod;->getInstance()Landroid/text/method/HideReturnsTransformationMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    invoke-static {}, Lcom/ali/user/mobile/common/a/d;->c()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/ali/user/mobile/common/ui/AbsSupplyLoginPwdActivity;->mLoginPwdInputBox:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    sget v1, Lcom/ali/user/mobile/security/ui/R$drawable;->alipay_eye_2:I

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->setSepciaFunBtn(I)V

    :goto_2
    iget-object v0, p0, Lcom/ali/user/mobile/common/ui/AbsSupplyLoginPwdActivity;->mLoginPasswordInput:Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;

    iget-object v1, p0, Lcom/ali/user/mobile/common/ui/AbsSupplyLoginPwdActivity;->mLoginPasswordInput:Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;

    invoke-virtual {v1}, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;->getSafeText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;->setSelection(I)V

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/ali/user/mobile/common/ui/AbsSupplyLoginPwdActivity;->mLoginPwdInputBox:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    invoke-virtual {v1, v0}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->setSepciaFunBtn(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2
.end method


# virtual methods
.method public abstract doSupply(Ljava/lang/String;)V
.end method

.method protected getInputHint()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, ""

    return-object v0
.end method

.method protected abstract getPageName()Ljava/lang/String;
.end method

.method protected hideErrorTip()V
    .locals 2

    iget-object v0, p0, Lcom/ali/user/mobile/common/ui/AbsSupplyLoginPwdActivity;->mErrorTip:Landroid/widget/TextView;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/ali/user/mobile/common/ui/AbsSupplyLoginPwdActivity;->mErrorTip:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ali/user/mobile/common/ui/AbsSupplyLoginPwdActivity;->mErrorTip:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 4

    iget-boolean v0, p0, Lcom/ali/user/mobile/common/ui/AbsSupplyLoginPwdActivity;->mCanComeBack:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-super {p0}, Lcom/ali/user/mobile/base/BaseActivity;->onBackPressed()V

    const-string/jumbo v0, "UC-ZC-161225-09"

    const-string/jumbo v1, "loginpasswordback"

    invoke-virtual {p0}, Lcom/ali/user/mobile/common/ui/AbsSupplyLoginPwdActivity;->getPageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/ali/user/mobile/register/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/ali/user/mobile/security/ui/R$id;->specialFuncImgButton:I

    if-ne v0, v1, :cond_1

    const-string/jumbo v0, "UC-ZC-150512-05"

    const-string/jumbo v1, "zcpwdyc"

    invoke-virtual {p0}, Lcom/ali/user/mobile/common/ui/AbsSupplyLoginPwdActivity;->getPageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2, v3}, Lcom/ali/user/mobile/register/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/ali/user/mobile/common/ui/AbsSupplyLoginPwdActivity;->switchTransformationMethod()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->reg_confirm:I

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_0

    const-string/jumbo v0, "UC-ZC-161225-10"

    const-string/jumbo v1, "enterloginpassword"

    invoke-virtual {p0}, Lcom/ali/user/mobile/common/ui/AbsSupplyLoginPwdActivity;->getPageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2, v3}, Lcom/ali/user/mobile/register/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ali/user/mobile/common/ui/AbsSupplyLoginPwdActivity;->mLoginPasswordInput:Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ali/user/mobile/common/ui/AbsSupplyLoginPwdActivity;->mConfirm:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/ali/user/mobile/common/ui/AbsSupplyLoginPwdActivity;->setButtonEnable(Landroid/widget/Button;Z)V

    iget-object v0, p0, Lcom/ali/user/mobile/common/ui/AbsSupplyLoginPwdActivity;->mLoginPasswordInput:Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/common/ui/AbsSupplyLoginPwdActivity;->closeInputMethod(Landroid/view/View;)V

    iget-object v0, p0, Lcom/ali/user/mobile/common/ui/AbsSupplyLoginPwdActivity;->mLoginPasswordInput:Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;

    invoke-virtual {v0}, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;->getSafeText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/common/ui/AbsSupplyLoginPwdActivity;->doSupply(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/ali/user/mobile/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    sget v0, Lcom/ali/user/mobile/security/ui/R$layout;->alipay_activity_reg_pwd:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/common/ui/AbsSupplyLoginPwdActivity;->setContentView(I)V

    invoke-direct {p0}, Lcom/ali/user/mobile/common/ui/AbsSupplyLoginPwdActivity;->initContext()V

    invoke-direct {p0}, Lcom/ali/user/mobile/common/ui/AbsSupplyLoginPwdActivity;->initView()V

    const-string/jumbo v0, "UC-ZC-161225-07"

    const-string/jumbo v1, "loginpasswordpage"

    invoke-virtual {p0}, Lcom/ali/user/mobile/common/ui/AbsSupplyLoginPwdActivity;->getPageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/ali/user/mobile/register/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/ali/user/mobile/base/BaseActivity;->onPanelClosed(ILandroid/view/Menu;)V

    return-void
.end method

.method protected setMainTip(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/common/ui/AbsSupplyLoginPwdActivity;->mMainTip:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected showErrorTip(Ljava/lang/String;Z)V
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ali/user/mobile/common/ui/AbsSupplyLoginPwdActivity;->mErrorTip:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Lcom/ali/user/mobile/common/ui/AbsSupplyLoginPwdActivity;->mErrorTip:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/ali/user/mobile/common/ui/AbsSupplyLoginPwdActivity;->mLoginPasswordInput:Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method
