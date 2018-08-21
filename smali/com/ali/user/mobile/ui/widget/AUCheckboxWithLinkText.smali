.class public Lcom/ali/user/mobile/ui/widget/AUCheckboxWithLinkText;
.super Lcom/ali/user/mobile/ui/widget/APLinearLayout;
.source "AUCheckboxWithLinkText.java"


# instance fields
.field checkBoxText:Ljava/lang/String;

.field checked:Z

.field enabled:Z

.field imageView:Lcom/ali/user/mobile/ui/widget/APImageView;

.field linkText:Ljava/lang/String;

.field linkTextView:Landroid/widget/TextView;

.field mCheckBox:Landroid/widget/CheckBox;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ali/user/mobile/ui/widget/APLinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Recycle"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/ali/user/mobile/ui/widget/APLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string/jumbo v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    sget v1, Lcom/ali/user/mobile/security/ui/R$layout;->alipay_checkbox_with_link_text:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    sget-object v0, Lcom/ali/user/mobile/security/ui/R$styleable;->alipay_checkboxWithLinkText:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v1, Lcom/ali/user/mobile/security/ui/R$styleable;->alipay_checkboxWithLinkText_alipay_checkBoxText:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ali/user/mobile/ui/widget/AUCheckboxWithLinkText;->checkBoxText:Ljava/lang/String;

    sget v1, Lcom/ali/user/mobile/security/ui/R$styleable;->alipay_checkboxWithLinkText_alipay_linkText:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ali/user/mobile/ui/widget/AUCheckboxWithLinkText;->linkText:Ljava/lang/String;

    sget v1, Lcom/ali/user/mobile/security/ui/R$styleable;->alipay_checkboxWithLinkText_alipay_checked:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/ali/user/mobile/ui/widget/AUCheckboxWithLinkText;->checked:Z

    sget v1, Lcom/ali/user/mobile/security/ui/R$styleable;->alipay_checkboxWithLinkText_alipay_enabled:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/ali/user/mobile/ui/widget/AUCheckboxWithLinkText;->enabled:Z

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public getCheckBox()Landroid/widget/CheckBox;
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUCheckboxWithLinkText;->mCheckBox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method public getLinkText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUCheckboxWithLinkText;->linkText:Ljava/lang/String;

    return-object v0
.end method

.method public getLinkTextView()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUCheckboxWithLinkText;->linkTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 2

    invoke-super {p0}, Lcom/ali/user/mobile/ui/widget/APLinearLayout;->onFinishInflate()V

    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->custom_check_box:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/ui/widget/AUCheckboxWithLinkText;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUCheckboxWithLinkText;->mCheckBox:Landroid/widget/CheckBox;

    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->link_text:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/ui/widget/AUCheckboxWithLinkText;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUCheckboxWithLinkText;->linkTextView:Landroid/widget/TextView;

    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->link_image:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/ui/widget/AUCheckboxWithLinkText;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ali/user/mobile/ui/widget/APImageView;

    iput-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUCheckboxWithLinkText;->imageView:Lcom/ali/user/mobile/ui/widget/APImageView;

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUCheckboxWithLinkText;->checkBoxText:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/ui/widget/AUCheckboxWithLinkText;->setCheckBoxText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUCheckboxWithLinkText;->mCheckBox:Landroid/widget/CheckBox;

    iget-boolean v1, p0, Lcom/ali/user/mobile/ui/widget/AUCheckboxWithLinkText;->checked:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUCheckboxWithLinkText;->mCheckBox:Landroid/widget/CheckBox;

    iget-boolean v1, p0, Lcom/ali/user/mobile/ui/widget/AUCheckboxWithLinkText;->enabled:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    return-void
.end method

.method public setCheckBoxText(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUCheckboxWithLinkText;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setImageView(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUCheckboxWithLinkText;->imageView:Lcom/ali/user/mobile/ui/widget/APImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/ui/widget/APImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUCheckboxWithLinkText;->imageView:Lcom/ali/user/mobile/ui/widget/APImageView;

    invoke-virtual {v0, p1}, Lcom/ali/user/mobile/ui/widget/APImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setLinkText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ali/user/mobile/ui/widget/AUCheckboxWithLinkText;->linkText:Ljava/lang/String;

    return-void
.end method

.method public setMovementMethod()V
    .locals 2

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUCheckboxWithLinkText;->linkTextView:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    return-void
.end method

.method public setNormalTextViewText(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUCheckboxWithLinkText;->linkTextView:Landroid/widget/TextView;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUCheckboxWithLinkText;->linkTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTextViewText(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUCheckboxWithLinkText;->linkTextView:Landroid/widget/TextView;

    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTextViewText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUCheckboxWithLinkText;->linkTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ali/user/mobile/ui/widget/AUCheckboxWithLinkText;->linkText:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/ali/user/mobile/ui/widget/AUCheckboxWithLinkText;->setMovementMethod()V

    return-void
.end method

.method public setTextViewUri(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUCheckboxWithLinkText;->linkTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ali/user/mobile/ui/widget/AUCheckboxWithLinkText;->linkText:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUCheckboxWithLinkText;->linkTextView:Landroid/widget/TextView;

    new-instance v1, Lcom/ali/user/mobile/ui/widget/y;

    invoke-direct {v1, p0}, Lcom/ali/user/mobile/ui/widget/y;-><init>(Lcom/ali/user/mobile/ui/widget/AUCheckboxWithLinkText;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/ali/user/mobile/ui/widget/AUCheckboxWithLinkText;->setMovementMethod()V

    return-void
.end method
