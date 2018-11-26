.class final Lcom/miui/powercenter/autotask/L;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lmiui/widget/TimePicker$OnTimeChangedListener;


# instance fields
.field final synthetic aLX:Lcom/miui/powercenter/autotask/ChooseConditionActivity;


# direct methods
.method constructor <init>(Lcom/miui/powercenter/autotask/ChooseConditionActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/autotask/L;->aLX:Lcom/miui/powercenter/autotask/ChooseConditionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeChanged(Lmiui/widget/TimePicker;II)V
    .locals 2

    mul-int/lit8 v0, p2, 0x3c

    add-int/2addr v0, p3

    iget-object v1, p0, Lcom/miui/powercenter/autotask/L;->aLX:Lcom/miui/powercenter/autotask/ChooseConditionActivity;

    invoke-static {v1}, Lcom/miui/powercenter/autotask/ChooseConditionActivity;->aWQ(Lcom/miui/powercenter/autotask/ChooseConditionActivity;)Landroid/widget/RadioButton;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/powercenter/autotask/L;->aLX:Lcom/miui/powercenter/autotask/ChooseConditionActivity;

    invoke-static {v1, v0}, Lcom/miui/powercenter/autotask/ChooseConditionActivity;->aWW(Lcom/miui/powercenter/autotask/ChooseConditionActivity;I)I

    iget-object v0, p0, Lcom/miui/powercenter/autotask/L;->aLX:Lcom/miui/powercenter/autotask/ChooseConditionActivity;

    invoke-static {v0}, Lcom/miui/powercenter/autotask/ChooseConditionActivity;->aXe(Lcom/miui/powercenter/autotask/ChooseConditionActivity;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/miui/powercenter/autotask/L;->aLX:Lcom/miui/powercenter/autotask/ChooseConditionActivity;

    invoke-static {v1}, Lcom/miui/powercenter/autotask/ChooseConditionActivity;->aWS(Lcom/miui/powercenter/autotask/ChooseConditionActivity;)Landroid/widget/RadioButton;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/powercenter/autotask/L;->aLX:Lcom/miui/powercenter/autotask/ChooseConditionActivity;

    invoke-static {v1}, Lcom/miui/powercenter/autotask/ChooseConditionActivity;->aWU(Lcom/miui/powercenter/autotask/ChooseConditionActivity;)Landroid/widget/RadioButton;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/miui/powercenter/autotask/L;->aLX:Lcom/miui/powercenter/autotask/ChooseConditionActivity;

    invoke-static {v1}, Lcom/miui/powercenter/autotask/ChooseConditionActivity;->aWR(Lcom/miui/powercenter/autotask/ChooseConditionActivity;)Lcom/miui/powercenter/autotask/v;

    move-result-object v1

    iput v0, v1, Lcom/miui/powercenter/autotask/v;->start:I

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/miui/powercenter/autotask/L;->aLX:Lcom/miui/powercenter/autotask/ChooseConditionActivity;

    invoke-static {v0}, Lcom/miui/powercenter/autotask/ChooseConditionActivity;->aXf(Lcom/miui/powercenter/autotask/ChooseConditionActivity;)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/miui/powercenter/autotask/L;->aLX:Lcom/miui/powercenter/autotask/ChooseConditionActivity;

    invoke-static {v1}, Lcom/miui/powercenter/autotask/ChooseConditionActivity;->aWT(Lcom/miui/powercenter/autotask/ChooseConditionActivity;)Landroid/widget/RadioButton;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/miui/powercenter/autotask/L;->aLX:Lcom/miui/powercenter/autotask/ChooseConditionActivity;

    invoke-static {v1}, Lcom/miui/powercenter/autotask/ChooseConditionActivity;->aWR(Lcom/miui/powercenter/autotask/ChooseConditionActivity;)Lcom/miui/powercenter/autotask/v;

    move-result-object v1

    iput v0, v1, Lcom/miui/powercenter/autotask/v;->aLt:I

    goto :goto_1
.end method
