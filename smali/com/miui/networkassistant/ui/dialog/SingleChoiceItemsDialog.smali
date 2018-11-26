.class public Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog;
.super Lcom/miui/common/a/a/b;
.source ""


# instance fields
.field private mActionFlag:I

.field private mItems:[Ljava/lang/String;

.field private mListener:Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog$SingleChoiceItemsDialogListener;

.field private mSelectedIndex:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog$SingleChoiceItemsDialogListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/common/a/a/b;-><init>(Landroid/app/Activity;)V

    iput-object p2, p0, Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog;->mListener:Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog$SingleChoiceItemsDialogListener;

    return-void
.end method


# virtual methods
.method public buildDialog(Ljava/lang/String;[Ljava/lang/String;II)V
    .locals 0

    iput p4, p0, Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog;->mActionFlag:I

    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog;->clearDialog()V

    invoke-virtual {p0, p1}, Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog;->setTitle(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog;->mItems:[Ljava/lang/String;

    iput p3, p0, Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog;->mSelectedIndex:I

    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog;->showDialog()V

    return-void
.end method

.method protected getNegativeButtonText()I
    .locals 1

    const v0, 0x7f070238

    return v0
.end method

.method protected getPositiveButtonText()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onBuild(Landroid/app/AlertDialog;)V
    .locals 0

    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    if-ltz p2, :cond_0

    iput p2, p0, Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog;->mSelectedIndex:I

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog;->mListener:Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog$SingleChoiceItemsDialogListener;

    iget v1, p0, Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog;->mSelectedIndex:I

    iget v2, p0, Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog;->mActionFlag:I

    invoke-interface {v0, v1, v2}, Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog$SingleChoiceItemsDialogListener;->onSelectItemUpdate(II)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method protected onPrepareBuild(Landroid/app/AlertDialog$Builder;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog;->mItems:[Ljava/lang/String;

    iget v1, p0, Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog;->mSelectedIndex:I

    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog;->getOnClickListener()Landroid/content/DialogInterface$OnClickListener;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    return-void
.end method

.method protected onShow(Landroid/app/AlertDialog;)V
    .locals 0

    return-void
.end method
