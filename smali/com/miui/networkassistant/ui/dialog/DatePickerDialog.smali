.class public Lcom/miui/networkassistant/ui/dialog/DatePickerDialog;
.super Lcom/miui/common/a/a/b;
.source ""

# interfaces
.implements Lmiui/widget/DatePicker$OnDateChangedListener;


# instance fields
.field private mDatePicker:Lmiui/widget/DatePicker;

.field private mDay:I

.field private mListener:Lcom/miui/networkassistant/ui/dialog/DatePickerDialog$DatePickerDialogListener;

.field private mMonth:I

.field private mYear:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/miui/networkassistant/ui/dialog/DatePickerDialog$DatePickerDialogListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/common/a/a/b;-><init>(Landroid/app/Activity;)V

    iput-object p2, p0, Lcom/miui/networkassistant/ui/dialog/DatePickerDialog;->mListener:Lcom/miui/networkassistant/ui/dialog/DatePickerDialog$DatePickerDialogListener;

    return-void
.end method


# virtual methods
.method public buildDatePickerDialog(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/miui/networkassistant/ui/dialog/DatePickerDialog;->setTitle(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/dialog/DatePickerDialog;->showDialog()V

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

    iget-object v0, p0, Lcom/miui/networkassistant/ui/dialog/DatePickerDialog;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03018a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    const v1, 0x7f0a03e2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiui/widget/DatePicker;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/dialog/DatePickerDialog;->mDatePicker:Lmiui/widget/DatePicker;

    return-void
.end method

.method protected onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/dialog/DatePickerDialog;->mListener:Lcom/miui/networkassistant/ui/dialog/DatePickerDialog$DatePickerDialogListener;

    iget v1, p0, Lcom/miui/networkassistant/ui/dialog/DatePickerDialog;->mYear:I

    iget v2, p0, Lcom/miui/networkassistant/ui/dialog/DatePickerDialog;->mMonth:I

    iget v3, p0, Lcom/miui/networkassistant/ui/dialog/DatePickerDialog;->mDay:I

    invoke-interface {v0, v1, v2, v3}, Lcom/miui/networkassistant/ui/dialog/DatePickerDialog$DatePickerDialogListener;->onDateChanged(III)V

    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method public onDateChanged(Lmiui/widget/DatePicker;IIIZ)V
    .locals 0

    iput p2, p0, Lcom/miui/networkassistant/ui/dialog/DatePickerDialog;->mYear:I

    iput p3, p0, Lcom/miui/networkassistant/ui/dialog/DatePickerDialog;->mMonth:I

    iput p4, p0, Lcom/miui/networkassistant/ui/dialog/DatePickerDialog;->mDay:I

    return-void
.end method

.method protected onShow(Landroid/app/AlertDialog;)V
    .locals 0

    return-void
.end method

.method public setData(III)V
    .locals 4

    iput p1, p0, Lcom/miui/networkassistant/ui/dialog/DatePickerDialog;->mYear:I

    iput p2, p0, Lcom/miui/networkassistant/ui/dialog/DatePickerDialog;->mMonth:I

    iput p3, p0, Lcom/miui/networkassistant/ui/dialog/DatePickerDialog;->mDay:I

    iget-object v0, p0, Lcom/miui/networkassistant/ui/dialog/DatePickerDialog;->mDatePicker:Lmiui/widget/DatePicker;

    iget v1, p0, Lcom/miui/networkassistant/ui/dialog/DatePickerDialog;->mYear:I

    iget v2, p0, Lcom/miui/networkassistant/ui/dialog/DatePickerDialog;->mMonth:I

    iget v3, p0, Lcom/miui/networkassistant/ui/dialog/DatePickerDialog;->mMonth:I

    invoke-virtual {v0, v1, v2, v3, p0}, Lmiui/widget/DatePicker;->init(IIILmiui/widget/DatePicker$OnDateChangedListener;)V

    return-void
.end method
