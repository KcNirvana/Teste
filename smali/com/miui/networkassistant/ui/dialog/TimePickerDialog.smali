.class public Lcom/miui/networkassistant/ui/dialog/TimePickerDialog;
.super Lcom/miui/common/a/a/b;
.source ""

# interfaces
.implements Lmiui/widget/TimePicker$OnTimeChangedListener;


# instance fields
.field private mActionFlag:I

.field private mHour:I

.field private mMinute:I

.field private mTimePicker:Lmiui/widget/TimePicker;

.field private mTimePickerDialogListener:Lcom/miui/networkassistant/ui/dialog/TimePickerDialog$TimePickerDialogListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/miui/networkassistant/ui/dialog/TimePickerDialog$TimePickerDialogListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/common/a/a/b;-><init>(Landroid/app/Activity;)V

    iput-object p2, p0, Lcom/miui/networkassistant/ui/dialog/TimePickerDialog;->mTimePickerDialogListener:Lcom/miui/networkassistant/ui/dialog/TimePickerDialog$TimePickerDialogListener;

    return-void
.end method


# virtual methods
.method public buildTimePickerdialog(Ljava/lang/String;I)V
    .locals 0

    iput p2, p0, Lcom/miui/networkassistant/ui/dialog/TimePickerDialog;->mActionFlag:I

    invoke-virtual {p0, p1}, Lcom/miui/networkassistant/ui/dialog/TimePickerDialog;->setTitle(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/dialog/TimePickerDialog;->showDialog()V

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

    iget-object v0, p0, Lcom/miui/networkassistant/ui/dialog/TimePickerDialog;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030193

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    const v1, 0x7f0a0300

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiui/widget/TimePicker;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/dialog/TimePickerDialog;->mTimePicker:Lmiui/widget/TimePicker;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/dialog/TimePickerDialog;->mTimePicker:Lmiui/widget/TimePicker;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/widget/TimePicker;->setIs24HourView(Ljava/lang/Boolean;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/dialog/TimePickerDialog;->mTimePicker:Lmiui/widget/TimePicker;

    invoke-virtual {v0, p0}, Lmiui/widget/TimePicker;->setOnTimeChangedListener(Lmiui/widget/TimePicker$OnTimeChangedListener;)V

    return-void
.end method

.method protected onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/dialog/TimePickerDialog;->mTimePickerDialogListener:Lcom/miui/networkassistant/ui/dialog/TimePickerDialog$TimePickerDialogListener;

    iget v1, p0, Lcom/miui/networkassistant/ui/dialog/TimePickerDialog;->mHour:I

    iget v2, p0, Lcom/miui/networkassistant/ui/dialog/TimePickerDialog;->mMinute:I

    iget v3, p0, Lcom/miui/networkassistant/ui/dialog/TimePickerDialog;->mActionFlag:I

    invoke-interface {v0, v1, v2, v3}, Lcom/miui/networkassistant/ui/dialog/TimePickerDialog$TimePickerDialogListener;->onTimeUpdated(III)V

    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method protected onShow(Landroid/app/AlertDialog;)V
    .locals 0

    return-void
.end method

.method public onTimeChanged(Lmiui/widget/TimePicker;II)V
    .locals 0

    iput p2, p0, Lcom/miui/networkassistant/ui/dialog/TimePickerDialog;->mHour:I

    iput p3, p0, Lcom/miui/networkassistant/ui/dialog/TimePickerDialog;->mMinute:I

    return-void
.end method

.method public setTimePicker(II)V
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/dialog/TimePickerDialog;->mTimePicker:Lmiui/widget/TimePicker;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/dialog/TimePickerDialog;->mTimePicker:Lmiui/widget/TimePicker;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/widget/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    return-void
.end method
