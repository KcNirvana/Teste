.class public Lcom/miui/networkassistant/ui/dialog/OptionTipDialog;
.super Lcom/miui/common/a/a/b;
.source ""


# instance fields
.field private mMessage:Ljava/lang/String;

.field private mOptionDialogListener:Lcom/miui/networkassistant/ui/dialog/OptionTipDialog$OptionDialogListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/miui/networkassistant/ui/dialog/OptionTipDialog$OptionDialogListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/common/a/a/b;-><init>(Landroid/app/Activity;)V

    iput-object p2, p0, Lcom/miui/networkassistant/ui/dialog/OptionTipDialog;->mOptionDialogListener:Lcom/miui/networkassistant/ui/dialog/OptionTipDialog$OptionDialogListener;

    return-void
.end method


# virtual methods
.method public buildShowDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/miui/networkassistant/ui/dialog/OptionTipDialog;->buildShowDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public buildShowDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/miui/networkassistant/ui/dialog/OptionTipDialog;->setTitle(Ljava/lang/String;)V

    invoke-virtual {p0, p4}, Lcom/miui/networkassistant/ui/dialog/OptionTipDialog;->setPostiveText(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Lcom/miui/networkassistant/ui/dialog/OptionTipDialog;->setNagetiveText(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/miui/networkassistant/ui/dialog/OptionTipDialog;->mMessage:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/dialog/OptionTipDialog;->setWeakReferenceEnabled(Z)V

    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/dialog/OptionTipDialog;->showDialog()V

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
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/ui/dialog/OptionTipDialog;->mActivity:Landroid/app/Activity;

    const v1, 0x7f030077

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f0a00b6

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    iget-object v2, p0, Lcom/miui/networkassistant/ui/dialog/OptionTipDialog;->mMessage:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setCancelable(Z)V

    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const/4 v0, -0x1

    if-ne v0, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/miui/networkassistant/ui/dialog/OptionTipDialog;->mOptionDialogListener:Lcom/miui/networkassistant/ui/dialog/OptionTipDialog$OptionDialogListener;

    invoke-interface {v1, v0}, Lcom/miui/networkassistant/ui/dialog/OptionTipDialog$OptionDialogListener;->onOptionUpdated(Z)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onShow(Landroid/app/AlertDialog;)V
    .locals 0

    return-void
.end method
