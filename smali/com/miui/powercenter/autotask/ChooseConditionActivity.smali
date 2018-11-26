.class public Lcom/miui/powercenter/autotask/ChooseConditionActivity;
.super Lcom/miui/powercenter/autotask/x;
.source ""


# instance fields
.field private aKJ:Landroid/widget/TextView;

.field private aKK:Landroid/widget/RadioButton;

.field private aKL:I

.field private aKM:Ljava/lang/String;

.field private aKN:I

.field private aKO:Lcom/miui/powercenter/autotask/AutoTask;

.field private aKP:Landroid/view/ViewGroup;

.field private aKQ:Landroid/widget/RadioButton;

.field private aKR:Lmiui/widget/TimePicker$OnTimeChangedListener;

.field private aKS:Landroid/widget/TextView;

.field private aKT:Lmiui/widget/NumberPicker$OnValueChangeListener;

.field private aKU:Lcom/miui/powercenter/autotask/v;

.field private aKV:Landroid/widget/RadioButton;

.field private aKW:Landroid/widget/TextView;

.field private aKX:Landroid/widget/TextView;

.field private aKY:Landroid/widget/RadioButton;

.field private aKZ:Lcom/miui/powercenter/autotask/DayTimePicker;

.field private aLa:Landroid/view/ViewGroup;

.field private aLb:Landroid/widget/RadioButton;

.field private aLc:I

.field private mNumberPicker:Lmiui/widget/NumberPicker;

.field private mOnClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/16 v2, 0x582

    invoke-direct {p0}, Lcom/miui/powercenter/autotask/x;-><init>()V

    const/16 v0, 0x14

    iput v0, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity;->aKL:I

    iput v2, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity;->aLc:I

    new-instance v0, Lcom/miui/powercenter/autotask/v;

    const/16 v1, 0x1a4

    invoke-direct {v0, v2, v1}, Lcom/miui/powercenter/autotask/v;-><init>(II)V

    iput-object v0, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity;->aKU:Lcom/miui/powercenter/autotask/v;

    new-instance v0, Lcom/miui/powercenter/autotask/J;

    invoke-direct {v0, p0}, Lcom/miui/powercenter/autotask/J;-><init>(Lcom/miui/powercenter/autotask/ChooseConditionActivity;)V

    iput-object v0, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity;->mOnClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/miui/powercenter/autotask/K;

    invoke-direct {v0, p0}, Lcom/miui/powercenter/autotask/K;-><init>(Lcom/miui/powercenter/autotask/ChooseConditionActivity;)V

    iput-object v0, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity;->aKT:Lmiui/widget/NumberPicker$OnValueChangeListener;

    new-instance v0, Lcom/miui/powercenter/autotask/L;

    invoke-direct {v0, p0}, Lcom/miui/powercenter/autotask/L;-><init>(Lcom/miui/powercenter/autotask/ChooseConditionActivity;)V

    iput-object v0, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity;->aKR:Lmiui/widget/TimePicker$OnTimeChangedListener;

    return-void
.end method

.method private aWB()V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity;->aKO:Lcom/miui/powercenter/autotask/AutoTask;

    invoke-virtual {v1}, Lcom/miui/powercenter/autotask/AutoTask;->aYl()V

    iget-object v1, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity;->aKQ:Landroid/widget/RadioButton;

    invoke-virtual {v1}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity;->aKO:Lcom/miui/powercenter/autotask/AutoTask;

    const-string/jumbo v2, "hour_minute"

    iget v3, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity;->aLc:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/miui/powercenter/autotask/AutoTask;->aYm(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    :goto_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "task"

    iget-object v3, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity;->aKO:Lcom/miui/powercenter/autotask/AutoTask;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string/jumbo v2, "bundle"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/miui/powercenter/autotask/ChooseConditionActivity;->setResult(ILandroid/content/Intent;)V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity;->aKK:Landroid/widget/RadioButton;

    invoke-virtual {v1}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity;->aKO:Lcom/miui/powercenter/autotask/AutoTask;

    const-string/jumbo v2, "battery_level_down"

    iget v3, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity;->aKL:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/miui/powercenter/autotask/AutoTask;->aYm(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity;->aKV:Landroid/widget/RadioButton;

    invoke-virtual {v1}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity;->aKO:Lcom/miui/powercenter/autotask/AutoTask;

    const-string/jumbo v2, "hour_minute_duration"

    iget-object v3, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity;->aKU:Lcom/miui/powercenter/autotask/v;

    invoke-virtual {v3}, Lcom/miui/powercenter/autotask/v;->getValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/miui/powercenter/autotask/AutoTask;->aYm(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private aWC()Z
    .locals 2

    iget-object v0, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity;->aKV:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity;->aKU:Lcom/miui/powercenter/autotask/v;

    iget v0, v0, Lcom/miui/powercenter/autotask/v;->start:I

    iget-object v1, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity;->aKU:Lcom/miui/powercenter/autotask/v;

    iget v1, v1, Lcom/miui/powercenter/autotask/v;->aLt:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private aWF()Z
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity;->aKQ:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "hour_minute"

    iget-object v1, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity;->aKM:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return v2

    :cond_0
    iget v0, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity;->aKN:I

    iget v1, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity;->aLc:I

    if-eq v0, v1, :cond_5

    return v2

    :cond_1
    iget-object v0, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity;->aKK:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "battery_level_down"

    iget-object v1, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity;->aKM:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    return v2

    :cond_2
    iget v0, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity;->aKN:I

    iget v1, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity;->aKL:I

    if-eq v0, v1, :cond_5

    return v2

    :cond_3
    iget-object v0, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity;->aKV:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string/jumbo v0, "hour_minute_duration"

    iget-object v1, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity;->aKM:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    return v2

    :cond_4
    iget v0, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity;->aKN:I

    iget-object v1, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity;->aKU:Lcom/miui/powercenter/autotask/v;

    invoke-virtual {v1}, Lcom/miui/powercenter/autotask/v;->getValue()I

    move-result v1

    if-eq v0, v1, :cond_5

    return v2

    :cond_5
    const/4 v0, 0x0

    return v0
.end method

.method private aWH()V
    .locals 4

    const/4 v3, 0x4

    const/16 v1, 0x8

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity;->aKS:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity;->aKJ:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity;->aKQ:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity;->aKZ:Lcom/miui/powercenter/autotask/DayTimePicker;

    invoke-virtual {v0, v2}, Lcom/miui/powercenter/autotask/DayTimePicker;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity;->aKP:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity;->aLa:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity;->aKS:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-direct {p0}, Lcom/miui/powercenter/autotask/ChooseConditionActivity;->aWM()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity;->aKK:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity;->aKZ:Lcom/miui/powercenter/autotask/DayTimePicker;

    invoke-virtual {v0, v1}, Lcom/miui/powercenter/autotask/DayTimePicker;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity;->aKP:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity;->aLa:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity;->aKK:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity;->mNumberPicker:Lmiui/widget/NumberPicker;

    iget v1, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity;->aKL:I

    invoke-virtual {v0, v1}, Lmiui/widget/NumberPicker;->setValue(I)V

    iget-object v0, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity;->aKJ:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-direct {p0}, Lcom/miui/powercenter/autotask/ChooseConditionActivity;->aWL()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity;->aKV:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity;->aKZ:Lcom/miui/powercenter/autotask/DayTimePicker;

    invoke-virtual {v0, v1}, Lcom/miui/powercenter/autotask/DayTimePicker;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity;->aKP:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity;->aLa:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity;->aLb:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity;->aKY:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    invoke-direct {p0}, Lcom/miui/powercenter/autotask/ChooseConditionActivity;->aWN()V

    goto :goto_0
.end method

.method private aWI(Landroid/view/View;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity;->aKQ:Landroid/widget/RadioButton;

    if-ne v0, p1, :cond_1

    iget-object v0, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity;->aKK:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity;->aKV:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity;->aKK:Landroid/widget/RadioButton;

    if-ne v0, p1, :cond_2

    iget-object v0, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity;->aKQ:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity;->aKV:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity;->aKV:Landroid/widget/RadioButton;

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity;->aKQ:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity;->aKK:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0
.end method

.method private aWJ()V
    .locals 3

    iget-object v0, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity;->aKZ:Lcom/miui/powercenter/autotask/DayTimePicker;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/powercenter/autotask/DayTimePicker;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity;->aLb:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity;->aKU:Lcom/miui/powercenter/autotask/v;

    iget v0, v0, Lcom/miui/powercenter/autotask/v;->start:I

    invoke-static {v0}, Lcom/miui/powercenter/autotask/AutoTask;->aYd(I)Lcom/miui/powercenter/autotask/u;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity;->aKZ:Lcom/miui/powercenter/autotask/DayTimePicker;

    iget v2, v0, Lcom/miui/powercenter/autotask/u;->aLr:I

    iget v0, v0, Lcom/miui/powercenter/autotask/u;->aLs:I

    invoke-virtual {v1, v2, v0}, Lcom/miui/powercenter/autotask/DayTimePicker;->aVp(II)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity;->aKY:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity;->aKU:Lcom/miui/powercenter/autotask/v;

    iget v0, v0, Lcom/miui/powercenter/autotask/v;->aLt:I

    invoke-static {v0}, Lcom/miui/powercenter/autotask/AutoTask;->aYd(I)Lcom/miui/powercenter/autotask/u;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity;->aKZ:Lcom/miui/powercenter/autotask/DayTimePicker;

    iget v2, v0, Lcom/miui/powercenter/autotask/u;->aLr:I

    iget v0, v0, Lcom/miui/powercenter/autotask/u;->aLs:I

    invoke-virtual {v1, v2, v0}, Lcom/miui/powercenter/autotask/DayTimePicker;->aVp(II)V

    goto :goto_0
.end method

.method private aWK(Landroid/view/View;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity;->aLb:Landroid/widget/RadioButton;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity;->aKY:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity;->aKY:Landroid/widget/RadioButton;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity;->aLb:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0
.end method

.method private aWL()V
    .locals 3

    iget-object v0, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity;->aKJ:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity;->aKL:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private aWM()V
    .locals 4

    iget v0, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity;->aLc:I

    invoke-static {v0}, Lcom/miui/powercenter/autotask/AutoTask;->aYd(I)Lcom/miui/powercenter/autotask/u;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity;->aKZ:Lcom/miui/powercenter/autotask/DayTimePicker;

    iget v2, v0, Lcom/miui/powercenter/autotask/u;->aLr:I

    iget v3, v0, Lcom/miui/powercenter/autotask/u;->aLs:I

    invoke-virtual {v1, v2, v3}, Lcom/miui/powercenter/autotask/DayTimePicker;->aVp(II)V

    iget-object v1, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity;->aKS:Landroid/widget/TextView;

    iget v2, v0, Lcom/miui/powercenter/autotask/u;->aLr:I

    iget v0, v0, Lcom/miui/powercenter/autotask/u;->aLs:I

    invoke-static {v2, v0}, Lcom/miui/powercenter/a/d;->getFormatTime(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private aWN()V
    .locals 4

    iget-object v0, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity;->aKU:Lcom/miui/powercenter/autotask/v;

    iget v0, v0, Lcom/miui/powercenter/autotask/v;->start:I

    invoke-static {v0}, Lcom/miui/powercenter/autotask/AutoTask;->aYd(I)Lcom/miui/powercenter/autotask/u;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity;->aKU:Lcom/miui/powercenter/autotask/v;

    iget v1, v1, Lcom/miui/powercenter/autotask/v;->aLt:I

    invoke-static {v1}, Lcom/miui/powercenter/autotask/AutoTask;->aYd(I)Lcom/miui/powercenter/autotask/u;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity;->aKX:Landroid/widget/TextView;

    iget v3, v0, Lcom/miui/powercenter/autotask/u;->aLr:I

    iget v0, v0, Lcom/miui/powercenter/autotask/u;->aLs:I

    invoke-static {v3, v0}, Lcom/miui/powercenter/a/d;->getFormatTime(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity;->aKW:Landroid/widget/TextView;

    iget v2, v1, Lcom/miui/powercenter/autotask/u;->aLr:I

    iget v1, v1, Lcom/miui/powercenter/autotask/u;->aLs:I

    invoke-static {v2, v1}, Lcom/miui/powercenter/a/d;->getFormatTime(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic aWO(Lcom/miui/powercenter/autotask/ChooseConditionActivity;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity;->aKJ:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic aWP(Lcom/miui/powercenter/autotask/ChooseConditionActivity;)Landroid/widget/RadioButton;
    .locals 1

    iget-object v0, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity;->aKK:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic aWQ(Lcom/miui/powercenter/autotask/ChooseConditionActivity;)Landroid/widget/RadioButton;
    .locals 1

    iget-object v0, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity;->aKQ:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic aWR(Lcom/miui/powercenter/autotask/ChooseConditionActivity;)Lcom/miui/powercenter/autotask/v;
    .locals 1

    iget-object v0, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity;->aKU:Lcom/miui/powercenter/autotask/v;

    return-object v0
.end method

.method static synthetic aWS(Lcom/miui/powercenter/autotask/ChooseConditionActivity;)Landroid/widget/RadioButton;
    .locals 1

    iget-object v0, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity;->aKV:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic aWT(Lcom/miui/powercenter/autotask/ChooseConditionActivity;)Landroid/widget/RadioButton;
    .locals 1

    iget-object v0, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity;->aKY:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic aWU(Lcom/miui/powercenter/autotask/ChooseConditionActivity;)Landroid/widget/RadioButton;
    .locals 1

    iget-object v0, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity;->aLb:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic aWV(Lcom/miui/powercenter/autotask/ChooseConditionActivity;I)I
    .locals 0

    iput p1, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity;->aKL:I

    return p1
.end method

.method static synthetic aWW(Lcom/miui/powercenter/autotask/ChooseConditionActivity;I)I
    .locals 0

    iput p1, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity;->aLc:I

    return p1
.end method

.method static synthetic aWX(Lcom/miui/powercenter/autotask/ChooseConditionActivity;)Z
    .locals 1

    invoke-direct {p0}, Lcom/miui/powercenter/autotask/ChooseConditionActivity;->aWC()Z

    move-result v0

    return v0
.end method

.method static synthetic aWY(Lcom/miui/powercenter/autotask/ChooseConditionActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/powercenter/autotask/ChooseConditionActivity;->aWB()V

    return-void
.end method

.method static synthetic aWZ(Lcom/miui/powercenter/autotask/ChooseConditionActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/powercenter/autotask/ChooseConditionActivity;->aWH()V

    return-void
.end method

.method static synthetic aXa(Lcom/miui/powercenter/autotask/ChooseConditionActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/powercenter/autotask/ChooseConditionActivity;->aWI(Landroid/view/View;)V

    return-void
.end method

.method static synthetic aXb(Lcom/miui/powercenter/autotask/ChooseConditionActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/powercenter/autotask/ChooseConditionActivity;->aWJ()V

    return-void
.end method

.method static synthetic aXc(Lcom/miui/powercenter/autotask/ChooseConditionActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/powercenter/autotask/ChooseConditionActivity;->aWK(Landroid/view/View;)V

    return-void
.end method

.method static synthetic aXd(Lcom/miui/powercenter/autotask/ChooseConditionActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/powercenter/autotask/ChooseConditionActivity;->aWL()V

    return-void
.end method

.method static synthetic aXe(Lcom/miui/powercenter/autotask/ChooseConditionActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/powercenter/autotask/ChooseConditionActivity;->aWM()V

    return-void
.end method

.method static synthetic aXf(Lcom/miui/powercenter/autotask/ChooseConditionActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/powercenter/autotask/ChooseConditionActivity;->aWN()V

    return-void
.end method


# virtual methods
.method protected aWD()Landroid/view/View$OnClickListener;
    .locals 1

    iget-object v0, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity;->mOnClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method protected aWE()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/miui/powercenter/autotask/ChooseConditionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0704c3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected aWG()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/powercenter/autotask/ChooseConditionActivity;->aWF()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/miui/powercenter/autotask/M;

    invoke-direct {v0, p0}, Lcom/miui/powercenter/autotask/M;-><init>(Lcom/miui/powercenter/autotask/ChooseConditionActivity;)V

    invoke-static {p0, v0}, Lcom/miui/powercenter/autotask/w;->aYK(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/miui/powercenter/autotask/ChooseConditionActivity;->finish()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    const/4 v2, 0x1

    invoke-super {p0, p1}, Lcom/miui/powercenter/autotask/x;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030106

    invoke-virtual {p0, v0}, Lcom/miui/powercenter/autotask/ChooseConditionActivity;->setContentView(I)V

    const v0, 0x7f0a02f3

    invoke-virtual {p0, v0}, Lcom/miui/powercenter/autotask/ChooseConditionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity;->aKQ:Landroid/widget/RadioButton;

    iget-object v0, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity;->aKQ:Landroid/widget/RadioButton;

    iget-object v1, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a02f6

    invoke-virtual {p0, v0}, Lcom/miui/powercenter/autotask/ChooseConditionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity;->aKK:Landroid/widget/RadioButton;

    iget-object v0, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity;->aKK:Landroid/widget/RadioButton;

    iget-object v1, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a02f9

    invoke-virtual {p0, v0}, Lcom/miui/powercenter/autotask/ChooseConditionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity;->aKV:Landroid/widget/RadioButton;

    iget-object v0, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity;->aKV:Landroid/widget/RadioButton;

    iget-object v1, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a02fb

    invoke-virtual {p0, v0}, Lcom/miui/powercenter/autotask/ChooseConditionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity;->aLa:Landroid/view/ViewGroup;

    const v0, 0x7f0a02fc

    invoke-virtual {p0, v0}, Lcom/miui/powercenter/autotask/ChooseConditionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity;->aLb:Landroid/widget/RadioButton;

    iget-object v0, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity;->aLb:Landroid/widget/RadioButton;

    iget-object v1, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a02fe

    invoke-virtual {p0, v0}, Lcom/miui/powercenter/autotask/ChooseConditionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity;->aKY:Landroid/widget/RadioButton;

    iget-object v0, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity;->aKY:Landroid/widget/RadioButton;

    iget-object v1, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0300

    invoke-virtual {p0, v0}, Lcom/miui/powercenter/autotask/ChooseConditionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/powercenter/autotask/DayTimePicker;

    iput-object v0, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity;->aKZ:Lcom/miui/powercenter/autotask/DayTimePicker;

    iget-object v0, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity;->aKZ:Lcom/miui/powercenter/autotask/DayTimePicker;

    const v1, 0x7f0704e4

    invoke-virtual {v0, v1}, Lcom/miui/powercenter/autotask/DayTimePicker;->setTitle(I)V

    iget-object v0, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity;->aKZ:Lcom/miui/powercenter/autotask/DayTimePicker;

    const v1, 0x7f07041b

    invoke-virtual {v0, v1}, Lcom/miui/powercenter/autotask/DayTimePicker;->aVm(I)V

    iget-object v0, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity;->aKZ:Lcom/miui/powercenter/autotask/DayTimePicker;

    iget-object v1, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity;->aKR:Lmiui/widget/TimePicker$OnTimeChangedListener;

    invoke-virtual {v0, v1}, Lcom/miui/powercenter/autotask/DayTimePicker;->aVo(Lmiui/widget/TimePicker$OnTimeChangedListener;)V

    const v0, 0x7f0a0301

    invoke-virtual {p0, v0}, Lcom/miui/powercenter/autotask/ChooseConditionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity;->aKP:Landroid/view/ViewGroup;

    const v0, 0x7f0a0302

    invoke-virtual {p0, v0}, Lcom/miui/powercenter/autotask/ChooseConditionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiui/widget/NumberPicker;

    iput-object v0, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity;->mNumberPicker:Lmiui/widget/NumberPicker;

    iget-object v0, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity;->mNumberPicker:Lmiui/widget/NumberPicker;

    invoke-virtual {v0, v2}, Lmiui/widget/NumberPicker;->setMinValue(I)V

    iget-object v0, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity;->mNumberPicker:Lmiui/widget/NumberPicker;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lmiui/widget/NumberPicker;->setMaxValue(I)V

    iget-object v0, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity;->mNumberPicker:Lmiui/widget/NumberPicker;

    const-string/jumbo v1, "%"

    invoke-virtual {v0, v1}, Lmiui/widget/NumberPicker;->setLabel(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity;->mNumberPicker:Lmiui/widget/NumberPicker;

    iget-object v1, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity;->aKT:Lmiui/widget/NumberPicker$OnValueChangeListener;

    invoke-virtual {v0, v1}, Lmiui/widget/NumberPicker;->setOnValueChangedListener(Lmiui/widget/NumberPicker$OnValueChangeListener;)V

    const v0, 0x7f0a02f4

    invoke-virtual {p0, v0}, Lcom/miui/powercenter/autotask/ChooseConditionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity;->aKS:Landroid/widget/TextView;

    const v0, 0x7f0a02f7

    invoke-virtual {p0, v0}, Lcom/miui/powercenter/autotask/ChooseConditionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity;->aKJ:Landroid/widget/TextView;

    const v0, 0x7f0a02fd

    invoke-virtual {p0, v0}, Lcom/miui/powercenter/autotask/ChooseConditionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity;->aKX:Landroid/widget/TextView;

    const v0, 0x7f0a02ff

    invoke-virtual {p0, v0}, Lcom/miui/powercenter/autotask/ChooseConditionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity;->aKW:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/miui/powercenter/autotask/ChooseConditionActivity;->aWM()V

    invoke-direct {p0}, Lcom/miui/powercenter/autotask/ChooseConditionActivity;->aWL()V

    invoke-virtual {p0}, Lcom/miui/powercenter/autotask/ChooseConditionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "bundle"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "task"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/miui/powercenter/autotask/AutoTask;

    iput-object v0, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity;->aKO:Lcom/miui/powercenter/autotask/AutoTask;

    iget-object v0, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity;->aKO:Lcom/miui/powercenter/autotask/AutoTask;

    invoke-static {v0}, Lcom/miui/powercenter/autotask/w;->aYI(Lcom/miui/powercenter/autotask/AutoTask;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity;->aKM:Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity;->aKO:Lcom/miui/powercenter/autotask/AutoTask;

    iget-object v1, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity;->aKM:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/miui/powercenter/autotask/AutoTask;->aYc(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity;->aKN:I

    :cond_0
    const-string/jumbo v0, "battery_level_down"

    iget-object v1, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity;->aKM:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity;->aKK:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity;->aKO:Lcom/miui/powercenter/autotask/AutoTask;

    iget-object v1, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity;->aKM:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/miui/powercenter/autotask/AutoTask;->aYc(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity;->aKL:I

    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/miui/powercenter/autotask/ChooseConditionActivity;->aWH()V

    return-void

    :cond_2
    const-string/jumbo v0, "hour_minute"

    iget-object v1, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity;->aKM:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity;->aKQ:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity;->aKO:Lcom/miui/powercenter/autotask/AutoTask;

    iget-object v1, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity;->aKM:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/miui/powercenter/autotask/AutoTask;->aYc(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity;->aLc:I

    goto :goto_0

    :cond_3
    const-string/jumbo v0, "hour_minute_duration"

    iget-object v1, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity;->aKM:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity;->aKV:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity;->aKO:Lcom/miui/powercenter/autotask/AutoTask;

    iget-object v1, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity;->aKM:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/miui/powercenter/autotask/AutoTask;->aYc(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity;->aKU:Lcom/miui/powercenter/autotask/v;

    invoke-virtual {v1, v0}, Lcom/miui/powercenter/autotask/v;->aYD(I)V

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/miui/powercenter/autotask/x;->onWindowFocusChanged(Z)V

    iget-object v0, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity;->aKQ:Landroid/widget/RadioButton;

    iget-object v1, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity;->aKS:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getWidth()I

    move-result v1

    invoke-virtual {v0, v2, v2, v1, v2}, Landroid/widget/RadioButton;->setPaddingRelative(IIII)V

    iget-object v0, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity;->aKK:Landroid/widget/RadioButton;

    iget-object v1, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity;->aKJ:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getWidth()I

    move-result v1

    invoke-virtual {v0, v2, v2, v1, v2}, Landroid/widget/RadioButton;->setPaddingRelative(IIII)V

    return-void
.end method
