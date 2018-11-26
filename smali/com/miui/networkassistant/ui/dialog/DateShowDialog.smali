.class public Lcom/miui/networkassistant/ui/dialog/DateShowDialog;
.super Lcom/miui/common/a/a/b;
.source ""


# instance fields
.field private mCurrentDate:I

.field private mDateDialogListener:Lcom/miui/networkassistant/ui/dialog/DateShowDialog$DateDialogListener;

.field private mNumberPicker:Lmiui/widget/NumberPicker;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/miui/networkassistant/ui/dialog/DateShowDialog$DateDialogListener;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/miui/common/a/a/b;-><init>(Landroid/app/Activity;)V

    const/4 v0, 0x1

    iput v0, p0, Lcom/miui/networkassistant/ui/dialog/DateShowDialog;->mCurrentDate:I

    iput-object p2, p0, Lcom/miui/networkassistant/ui/dialog/DateShowDialog;->mDateDialogListener:Lcom/miui/networkassistant/ui/dialog/DateShowDialog$DateDialogListener;

    return-void
.end method


# virtual methods
.method public buildDateDialog(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/miui/networkassistant/ui/dialog/DateShowDialog;->buildDateDialog(Ljava/lang/String;I)V

    return-void
.end method

.method public buildDateDialog(Ljava/lang/String;I)V
    .locals 0

    iput p2, p0, Lcom/miui/networkassistant/ui/dialog/DateShowDialog;->mCurrentDate:I

    invoke-virtual {p0, p1}, Lcom/miui/networkassistant/ui/dialog/DateShowDialog;->setTitle(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/dialog/DateShowDialog;->showDialog()V

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

    iget-object v0, p0, Lcom/miui/networkassistant/ui/dialog/DateShowDialog;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030076

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    const v1, 0x7f0a0182

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiui/widget/NumberPicker;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/dialog/DateShowDialog;->mNumberPicker:Lmiui/widget/NumberPicker;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/dialog/DateShowDialog;->mNumberPicker:Lmiui/widget/NumberPicker;

    const/16 v1, 0x1f

    invoke-virtual {v0, v1}, Lmiui/widget/NumberPicker;->setMaxValue(I)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/dialog/DateShowDialog;->mNumberPicker:Lmiui/widget/NumberPicker;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmiui/widget/NumberPicker;->setMinValue(I)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/dialog/DateShowDialog;->mNumberPicker:Lmiui/widget/NumberPicker;

    iget v1, p0, Lcom/miui/networkassistant/ui/dialog/DateShowDialog;->mCurrentDate:I

    invoke-virtual {v0, v1}, Lmiui/widget/NumberPicker;->setValue(I)V

    return-void
.end method

.method protected onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/dialog/DateShowDialog;->mDateDialogListener:Lcom/miui/networkassistant/ui/dialog/DateShowDialog$DateDialogListener;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/dialog/DateShowDialog;->mNumberPicker:Lmiui/widget/NumberPicker;

    invoke-virtual {v1}, Lmiui/widget/NumberPicker;->getValue()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/miui/networkassistant/ui/dialog/DateShowDialog$DateDialogListener;->onDateUpdated(I)V

    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method protected onShow(Landroid/app/AlertDialog;)V
    .locals 0

    return-void
.end method
