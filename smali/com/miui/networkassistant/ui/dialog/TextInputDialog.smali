.class public Lcom/miui/networkassistant/ui/dialog/TextInputDialog;
.super Lcom/miui/common/a/a/b;
.source ""


# instance fields
.field private mActionFlag:I

.field private mHint:Ljava/lang/String;

.field private mInpuText:Landroid/widget/EditText;

.field private mInputDialogListener:Lcom/miui/networkassistant/ui/dialog/TextInputDialog$TextInputDialogListener;

.field private mIsNumberText:Z

.field private mOkButton:Landroid/widget/Button;

.field private mTextWatcher:Landroid/text/TextWatcher;


# direct methods
.method static synthetic -get0(Lcom/miui/networkassistant/ui/dialog/TextInputDialog;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/dialog/TextInputDialog;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic -get1(Lcom/miui/networkassistant/ui/dialog/TextInputDialog;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/dialog/TextInputDialog;->mInpuText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic -get2(Lcom/miui/networkassistant/ui/dialog/TextInputDialog;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/dialog/TextInputDialog;->mOkButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic -get3(Lcom/miui/networkassistant/ui/dialog/TextInputDialog;)Landroid/text/TextWatcher;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/dialog/TextInputDialog;->mTextWatcher:Landroid/text/TextWatcher;

    return-object v0
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/miui/networkassistant/ui/dialog/TextInputDialog$TextInputDialogListener;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/miui/common/a/a/b;-><init>(Landroid/app/Activity;)V

    new-instance v0, Lcom/miui/networkassistant/ui/dialog/TextInputDialog$1;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/dialog/TextInputDialog$1;-><init>(Lcom/miui/networkassistant/ui/dialog/TextInputDialog;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/dialog/TextInputDialog;->mTextWatcher:Landroid/text/TextWatcher;

    iput-object p2, p0, Lcom/miui/networkassistant/ui/dialog/TextInputDialog;->mInputDialogListener:Lcom/miui/networkassistant/ui/dialog/TextInputDialog$TextInputDialogListener;

    return-void
.end method


# virtual methods
.method public buildInputDialog(II)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/miui/networkassistant/ui/dialog/TextInputDialog;->buildInputDialog(III)V

    return-void
.end method

.method public buildInputDialog(III)V
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/dialog/TextInputDialog;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0, p3}, Lcom/miui/networkassistant/ui/dialog/TextInputDialog;->buildInputDialog(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public buildInputDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/miui/networkassistant/ui/dialog/TextInputDialog;->buildInputDialog(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public buildInputDialog(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    iput p3, p0, Lcom/miui/networkassistant/ui/dialog/TextInputDialog;->mActionFlag:I

    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/dialog/TextInputDialog;->clearDialog()V

    iput-object p2, p0, Lcom/miui/networkassistant/ui/dialog/TextInputDialog;->mHint:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/miui/networkassistant/ui/dialog/TextInputDialog;->setTitle(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/dialog/TextInputDialog;->showDialog()V

    return-void
.end method

.method protected getNegativeButtonText()I
    .locals 1

    const v0, 0x7f070238

    return v0
.end method

.method protected getPositiveButtonText()I
    .locals 1

    const v0, 0x7f070239

    return v0
.end method

.method protected onBuild(Landroid/app/AlertDialog;)V
    .locals 6

    const/4 v5, 0x1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/dialog/TextInputDialog;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030078

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f0a0183

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/dialog/TextInputDialog;->mInpuText:Landroid/widget/EditText;

    invoke-static {}, Lcom/miui/networkassistant/utils/DeviceUtil;->isCNLanguage()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/dialog/TextInputDialog;->mHint:Ljava/lang/String;

    :goto_0
    iget-object v2, p0, Lcom/miui/networkassistant/ui/dialog/TextInputDialog;->mInpuText:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/dialog/TextInputDialog;->mInpuText:Landroid/widget/EditText;

    new-array v2, v5, [Landroid/text/InputFilter;

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    const/16 v4, 0xc8

    invoke-direct {v3, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    iget-boolean v0, p0, Lcom/miui/networkassistant/ui/dialog/TextInputDialog;->mIsNumberText:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/dialog/TextInputDialog;->mInpuText:Landroid/widget/EditText;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setInputType(I)V

    :goto_1
    invoke-virtual {p1, v1}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    new-instance v0, Lcom/miui/networkassistant/ui/dialog/TextInputDialog$2;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/dialog/TextInputDialog$2;-><init>(Lcom/miui/networkassistant/ui/dialog/TextInputDialog;)V

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    new-instance v0, Lcom/miui/networkassistant/ui/dialog/TextInputDialog$3;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/dialog/TextInputDialog$3;-><init>(Lcom/miui/networkassistant/ui/dialog/TextInputDialog;)V

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/networkassistant/ui/dialog/TextInputDialog;->mInpuText:Landroid/widget/EditText;

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setInputType(I)V

    goto :goto_1
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/dialog/TextInputDialog;->mInpuText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/dialog/TextInputDialog;->mInputDialogListener:Lcom/miui/networkassistant/ui/dialog/TextInputDialog$TextInputDialogListener;

    iget v2, p0, Lcom/miui/networkassistant/ui/dialog/TextInputDialog;->mActionFlag:I

    invoke-interface {v1, v0, v2}, Lcom/miui/networkassistant/ui/dialog/TextInputDialog$TextInputDialogListener;->onTextSetted(Ljava/lang/String;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, -0x2

    if-ne p2, v0, :cond_0

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0
.end method

.method protected onShow(Landroid/app/AlertDialog;)V
    .locals 2

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/dialog/TextInputDialog;->mOkButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/dialog/TextInputDialog;->mOkButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method public setNumberText(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/networkassistant/ui/dialog/TextInputDialog;->mIsNumberText:Z

    return-void
.end method
