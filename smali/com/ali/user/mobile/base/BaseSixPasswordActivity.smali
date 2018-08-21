.class public Lcom/ali/user/mobile/base/BaseSixPasswordActivity;
.super Lcom/ali/user/mobile/base/BackgroundLoginActivity;
.source "BaseSixPasswordActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/ali/user/mobile/ui/widget/APSixNumberPwdInputBox$a;


# static fields
.field private static final TAG:Ljava/lang/String; = "BaseSixPasswordActivity"


# instance fields
.field protected agreementURL:Ljava/lang/String;

.field protected insuranceInfo:Ljava/lang/String;

.field protected mConfirmSettingBtn:Landroid/widget/Button;

.field protected mInsuranceSureText:Landroid/widget/TextView;

.field protected mInsuranceText:Lcom/ali/user/mobile/ui/widget/AUCheckboxWithLinkText;

.field protected mSixNumberInput:Lcom/ali/user/mobile/ui/widget/APSixNumberPwdInputBox;

.field protected mTitleBar:Lcom/ali/user/mobile/ui/widget/APTitleBar;

.field protected optionStatus:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/ali/user/mobile/base/BackgroundLoginActivity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ali/user/mobile/base/BaseSixPasswordActivity;->optionStatus:Z

    return-void
.end method


# virtual methods
.method protected afterViews()V
    .locals 4

    const/16 v3, 0x8

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/ali/user/mobile/base/BaseSixPasswordActivity;->mTitleBar:Lcom/ali/user/mobile/ui/widget/APTitleBar;

    sget v1, Lcom/ali/user/mobile/security/ui/R$string;->alipay_setting_pay_password:I

    invoke-virtual {p0, v1}, Lcom/ali/user/mobile/base/BaseSixPasswordActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/ui/widget/APTitleBar;->setTitleText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ali/user/mobile/base/BaseSixPasswordActivity;->mConfirmSettingBtn:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/ali/user/mobile/base/BaseSixPasswordActivity;->mConfirmSettingBtn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/ali/user/mobile/base/BaseSixPasswordActivity;->mSixNumberInput:Lcom/ali/user/mobile/ui/widget/APSixNumberPwdInputBox;

    invoke-virtual {v0, p0}, Lcom/ali/user/mobile/ui/widget/APSixNumberPwdInputBox;->setPwdInputListener(Lcom/ali/user/mobile/ui/widget/APSixNumberPwdInputBox$a;)V

    iget-object v0, p0, Lcom/ali/user/mobile/base/BaseSixPasswordActivity;->mSixNumberInput:Lcom/ali/user/mobile/ui/widget/APSixNumberPwdInputBox;

    invoke-virtual {v0}, Lcom/ali/user/mobile/ui/widget/APSixNumberPwdInputBox;->getSafeEditText()Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;->setAutoShowSafeKeyboard(Z)V

    iget-object v0, p0, Lcom/ali/user/mobile/base/BaseSixPasswordActivity;->mSixNumberInput:Lcom/ali/user/mobile/ui/widget/APSixNumberPwdInputBox;

    invoke-virtual {v0}, Lcom/ali/user/mobile/ui/widget/APSixNumberPwdInputBox;->getSafeEditText()Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;->requestFocus()Z

    iget-object v0, p0, Lcom/ali/user/mobile/base/BaseSixPasswordActivity;->insuranceInfo:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ali/user/mobile/base/BaseSixPasswordActivity;->mInsuranceText:Lcom/ali/user/mobile/ui/widget/AUCheckboxWithLinkText;

    invoke-virtual {v0, v3}, Lcom/ali/user/mobile/ui/widget/AUCheckboxWithLinkText;->setVisibility(I)V

    :goto_0
    iget-object v0, p0, Lcom/ali/user/mobile/base/BaseSixPasswordActivity;->mSixNumberInput:Lcom/ali/user/mobile/ui/widget/APSixNumberPwdInputBox;

    invoke-virtual {v0}, Lcom/ali/user/mobile/ui/widget/APSixNumberPwdInputBox;->getSafeEditText()Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/base/BaseSixPasswordActivity;->showInputMethodPannel(Landroid/view/View;)V

    iget-object v0, p0, Lcom/ali/user/mobile/base/BaseSixPasswordActivity;->mConfirmSettingBtn:Landroid/widget/Button;

    invoke-static {v0}, Lcom/ali/user/mobile/common/a/d;->a(Landroid/widget/Button;)V

    iget-object v0, p0, Lcom/ali/user/mobile/base/BaseSixPasswordActivity;->mTitleBar:Lcom/ali/user/mobile/ui/widget/APTitleBar;

    invoke-static {v0}, Lcom/ali/user/mobile/common/a/d;->a(Lcom/ali/user/mobile/ui/widget/APTitleBar;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/ali/user/mobile/base/BaseSixPasswordActivity;->mInsuranceText:Lcom/ali/user/mobile/ui/widget/AUCheckboxWithLinkText;

    invoke-virtual {v0, v2}, Lcom/ali/user/mobile/ui/widget/AUCheckboxWithLinkText;->setVisibility(I)V

    iget-object v0, p0, Lcom/ali/user/mobile/base/BaseSixPasswordActivity;->mInsuranceText:Lcom/ali/user/mobile/ui/widget/AUCheckboxWithLinkText;

    invoke-virtual {v0}, Lcom/ali/user/mobile/ui/widget/AUCheckboxWithLinkText;->getLinkTextView()Landroid/widget/TextView;

    move-result-object v0

    const v1, -0x767677

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/ali/user/mobile/base/BaseSixPasswordActivity;->mInsuranceText:Lcom/ali/user/mobile/ui/widget/AUCheckboxWithLinkText;

    invoke-virtual {v0}, Lcom/ali/user/mobile/ui/widget/AUCheckboxWithLinkText;->getLinkTextView()Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/ali/user/mobile/base/BaseSixPasswordActivity;->insuranceInfo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ali/user/mobile/base/BaseSixPasswordActivity;->mInsuranceText:Lcom/ali/user/mobile/ui/widget/AUCheckboxWithLinkText;

    invoke-virtual {v0}, Lcom/ali/user/mobile/ui/widget/AUCheckboxWithLinkText;->getCheckBox()Landroid/widget/CheckBox;

    move-result-object v0

    iget-boolean v1, p0, Lcom/ali/user/mobile/base/BaseSixPasswordActivity;->optionStatus:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Lcom/ali/user/mobile/base/BaseSixPasswordActivity;->mInsuranceText:Lcom/ali/user/mobile/ui/widget/AUCheckboxWithLinkText;

    invoke-virtual {v0}, Lcom/ali/user/mobile/ui/widget/AUCheckboxWithLinkText;->getCheckBox()Landroid/widget/CheckBox;

    move-result-object v0

    new-instance v1, Lcom/ali/user/mobile/base/i;

    invoke-direct {v1, p0}, Lcom/ali/user/mobile/base/i;-><init>(Lcom/ali/user/mobile/base/BaseSixPasswordActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/ali/user/mobile/base/BaseSixPasswordActivity;->agreementURL:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ali/user/mobile/base/BaseSixPasswordActivity;->mInsuranceSureText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/ali/user/mobile/base/BaseSixPasswordActivity;->mInsuranceSureText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/ali/user/mobile/base/BaseSixPasswordActivity;->agreementURL:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/base/BaseSixPasswordActivity;->initSure(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected closeKeyboard()V
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/base/BaseSixPasswordActivity;->mSixNumberInput:Lcom/ali/user/mobile/ui/widget/APSixNumberPwdInputBox;

    invoke-virtual {v0}, Lcom/ali/user/mobile/ui/widget/APSixNumberPwdInputBox;->hideInputMethod()V

    return-void
.end method

.method protected doSupplement()V
    .locals 4

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/ali/user/mobile/base/j;

    invoke-direct {v1, p0}, Lcom/ali/user/mobile/base/j;-><init>(Lcom/ali/user/mobile/base/BaseSixPasswordActivity;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Aliuser-SupplySixPassword-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method protected getOriginalKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/base/BaseSixPasswordActivity;->mSixNumberInput:Lcom/ali/user/mobile/ui/widget/APSixNumberPwdInputBox;

    invoke-virtual {v0}, Lcom/ali/user/mobile/ui/widget/APSixNumberPwdInputBox;->getInputValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected initSure(Ljava/lang/String;)V
    .locals 6

    const/16 v5, 0x21

    invoke-virtual {p0}, Lcom/ali/user/mobile/base/BaseSixPasswordActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/ali/user/mobile/security/ui/R$string;->alipay_agree_insurance:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ali/user/mobile/base/BaseSixPasswordActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/ali/user/mobile/security/ui/R$string;->alipay_insurance_name:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "$insure"

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-gez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v2

    new-instance v3, Landroid/text/SpannableString;

    invoke-direct {v3, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v0, Lcom/ali/user/mobile/register/TaoUrlSpan;

    invoke-direct {v0, p1}, Lcom/ali/user/mobile/register/TaoUrlSpan;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/ali/user/mobile/register/TaoUrlSpan;->setContext(Landroid/content/Context;)Lcom/ali/user/mobile/register/TaoUrlSpan;

    move-result-object v0

    invoke-virtual {v3, v0, v2, v1, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-static {}, Lcom/ali/user/mobile/common/a/d;->h()I

    move-result v0

    const v4, 0x7fffffff

    if-ne v0, v4, :cond_1

    invoke-virtual {p0}, Lcom/ali/user/mobile/base/BaseSixPasswordActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v4, Lcom/ali/user/mobile/security/ui/R$color;->alipay_antBlue:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    :cond_1
    new-instance v4, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v4, v0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v3, v4, v2, v1, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    iget-object v0, p0, Lcom/ali/user/mobile/base/BaseSixPasswordActivity;->mInsuranceSureText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ali/user/mobile/base/BaseSixPasswordActivity;->mInsuranceSureText:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    goto :goto_0
.end method

.method protected initViews()V
    .locals 1

    sget v0, Lcom/ali/user/mobile/security/ui/R$layout;->alipay_activity_six_password:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/base/BaseSixPasswordActivity;->setContentView(I)V

    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->titleBar:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/base/BaseSixPasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ali/user/mobile/ui/widget/APTitleBar;

    iput-object v0, p0, Lcom/ali/user/mobile/base/BaseSixPasswordActivity;->mTitleBar:Lcom/ali/user/mobile/ui/widget/APTitleBar;

    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->sixNumberPasswordInput:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/base/BaseSixPasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ali/user/mobile/ui/widget/APSixNumberPwdInputBox;

    iput-object v0, p0, Lcom/ali/user/mobile/base/BaseSixPasswordActivity;->mSixNumberInput:Lcom/ali/user/mobile/ui/widget/APSixNumberPwdInputBox;

    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->comfirmSetting:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/base/BaseSixPasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ali/user/mobile/base/BaseSixPasswordActivity;->mConfirmSettingBtn:Landroid/widget/Button;

    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->insurance:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/base/BaseSixPasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ali/user/mobile/ui/widget/AUCheckboxWithLinkText;

    iput-object v0, p0, Lcom/ali/user/mobile/base/BaseSixPasswordActivity;->mInsuranceText:Lcom/ali/user/mobile/ui/widget/AUCheckboxWithLinkText;

    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->insurance_sure:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/base/BaseSixPasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ali/user/mobile/base/BaseSixPasswordActivity;->mInsuranceSureText:Landroid/widget/TextView;

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/ali/user/mobile/security/ui/R$id;->comfirmSetting:I

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/ali/user/mobile/base/BaseSixPasswordActivity;->closeKeyboard()V

    invoke-virtual {p0}, Lcom/ali/user/mobile/base/BaseSixPasswordActivity;->doSupplement()V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/ali/user/mobile/base/BackgroundLoginActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/ali/user/mobile/base/BaseSixPasswordActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/ali/user/mobile/base/BaseSixPasswordActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "showOptionalInfo"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ali/user/mobile/base/BaseSixPasswordActivity;->insuranceInfo:Ljava/lang/String;

    const-string/jumbo v1, "agreementURL"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ali/user/mobile/base/BaseSixPasswordActivity;->agreementURL:Ljava/lang/String;

    const-string/jumbo v1, "optionStatus"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ali/user/mobile/base/BaseSixPasswordActivity;->optionStatus:Z

    :cond_0
    invoke-virtual {p0}, Lcom/ali/user/mobile/base/BaseSixPasswordActivity;->initViews()V

    invoke-virtual {p0}, Lcom/ali/user/mobile/base/BaseSixPasswordActivity;->afterViews()V

    return-void
.end method

.method protected onSupplement(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public pwdInputed(ILandroid/text/Editable;)V
    .locals 3

    const-string/jumbo v1, "BaseSixPasswordActivity"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "pwdInputed, len:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p2, :cond_0

    const-string/jumbo v0, "null"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_1

    invoke-interface {p2}, Landroid/text/Editable;->length()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/ali/user/mobile/base/BaseSixPasswordActivity;->mConfirmSettingBtn:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :goto_1
    return-void

    :cond_0
    invoke-interface {p2}, Landroid/text/Editable;->length()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/ali/user/mobile/base/BaseSixPasswordActivity;->mConfirmSettingBtn:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1
.end method

.method protected setAppId()V
    .locals 0

    return-void
.end method
