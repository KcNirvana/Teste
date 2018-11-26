.class final Lcom/miui/powercenter/autotask/K;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lmiui/widget/NumberPicker$OnValueChangeListener;


# instance fields
.field final synthetic aLW:Lcom/miui/powercenter/autotask/ChooseConditionActivity;


# direct methods
.method constructor <init>(Lcom/miui/powercenter/autotask/ChooseConditionActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/autotask/K;->aLW:Lcom/miui/powercenter/autotask/ChooseConditionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChange(Lmiui/widget/NumberPicker;II)V
    .locals 2

    iget-object v0, p0, Lcom/miui/powercenter/autotask/K;->aLW:Lcom/miui/powercenter/autotask/ChooseConditionActivity;

    invoke-static {v0}, Lcom/miui/powercenter/autotask/ChooseConditionActivity;->aWP(Lcom/miui/powercenter/autotask/ChooseConditionActivity;)Landroid/widget/RadioButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/powercenter/autotask/K;->aLW:Lcom/miui/powercenter/autotask/ChooseConditionActivity;

    invoke-static {v0, p3}, Lcom/miui/powercenter/autotask/ChooseConditionActivity;->aWV(Lcom/miui/powercenter/autotask/ChooseConditionActivity;I)I

    iget-object v0, p0, Lcom/miui/powercenter/autotask/K;->aLW:Lcom/miui/powercenter/autotask/ChooseConditionActivity;

    invoke-static {v0}, Lcom/miui/powercenter/autotask/ChooseConditionActivity;->aXd(Lcom/miui/powercenter/autotask/ChooseConditionActivity;)V

    iget-object v0, p0, Lcom/miui/powercenter/autotask/K;->aLW:Lcom/miui/powercenter/autotask/ChooseConditionActivity;

    invoke-static {v0}, Lcom/miui/powercenter/autotask/ChooseConditionActivity;->aWO(Lcom/miui/powercenter/autotask/ChooseConditionActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->sendAccessibilityEvent(I)V

    :cond_0
    return-void
.end method
