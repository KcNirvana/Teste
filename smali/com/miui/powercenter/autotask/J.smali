.class final Lcom/miui/powercenter/autotask/J;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic aLV:Lcom/miui/powercenter/autotask/ChooseConditionActivity;


# direct methods
.method constructor <init>(Lcom/miui/powercenter/autotask/ChooseConditionActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/autotask/J;->aLV:Lcom/miui/powercenter/autotask/ChooseConditionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/powercenter/autotask/J;->aLV:Lcom/miui/powercenter/autotask/ChooseConditionActivity;

    invoke-static {v0}, Lcom/miui/powercenter/autotask/ChooseConditionActivity;->aWQ(Lcom/miui/powercenter/autotask/ChooseConditionActivity;)Landroid/widget/RadioButton;

    move-result-object v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/miui/powercenter/autotask/J;->aLV:Lcom/miui/powercenter/autotask/ChooseConditionActivity;

    invoke-static {v0}, Lcom/miui/powercenter/autotask/ChooseConditionActivity;->aWP(Lcom/miui/powercenter/autotask/ChooseConditionActivity;)Landroid/widget/RadioButton;

    move-result-object v0

    if-ne p1, v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/miui/powercenter/autotask/J;->aLV:Lcom/miui/powercenter/autotask/ChooseConditionActivity;

    invoke-static {v0, p1}, Lcom/miui/powercenter/autotask/ChooseConditionActivity;->aXa(Lcom/miui/powercenter/autotask/ChooseConditionActivity;Landroid/view/View;)V

    iget-object v0, p0, Lcom/miui/powercenter/autotask/J;->aLV:Lcom/miui/powercenter/autotask/ChooseConditionActivity;

    invoke-static {v0}, Lcom/miui/powercenter/autotask/ChooseConditionActivity;->aWZ(Lcom/miui/powercenter/autotask/ChooseConditionActivity;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/miui/powercenter/autotask/J;->aLV:Lcom/miui/powercenter/autotask/ChooseConditionActivity;

    invoke-static {v0}, Lcom/miui/powercenter/autotask/ChooseConditionActivity;->aWS(Lcom/miui/powercenter/autotask/ChooseConditionActivity;)Landroid/widget/RadioButton;

    move-result-object v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/miui/powercenter/autotask/J;->aLV:Lcom/miui/powercenter/autotask/ChooseConditionActivity;

    invoke-static {v0}, Lcom/miui/powercenter/autotask/ChooseConditionActivity;->aWU(Lcom/miui/powercenter/autotask/ChooseConditionActivity;)Landroid/widget/RadioButton;

    move-result-object v0

    if-eq p1, v0, :cond_3

    iget-object v0, p0, Lcom/miui/powercenter/autotask/J;->aLV:Lcom/miui/powercenter/autotask/ChooseConditionActivity;

    invoke-static {v0}, Lcom/miui/powercenter/autotask/ChooseConditionActivity;->aWT(Lcom/miui/powercenter/autotask/ChooseConditionActivity;)Landroid/widget/RadioButton;

    move-result-object v0

    if-ne p1, v0, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/miui/powercenter/autotask/J;->aLV:Lcom/miui/powercenter/autotask/ChooseConditionActivity;

    invoke-static {v0, p1}, Lcom/miui/powercenter/autotask/ChooseConditionActivity;->aXc(Lcom/miui/powercenter/autotask/ChooseConditionActivity;Landroid/view/View;)V

    iget-object v0, p0, Lcom/miui/powercenter/autotask/J;->aLV:Lcom/miui/powercenter/autotask/ChooseConditionActivity;

    invoke-static {v0}, Lcom/miui/powercenter/autotask/ChooseConditionActivity;->aXb(Lcom/miui/powercenter/autotask/ChooseConditionActivity;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/miui/powercenter/autotask/J;->aLV:Lcom/miui/powercenter/autotask/ChooseConditionActivity;

    iget-object v0, v0, Lcom/miui/powercenter/autotask/ChooseConditionActivity;->aLu:Landroid/widget/Button;

    if-ne p1, v0, :cond_5

    iget-object v0, p0, Lcom/miui/powercenter/autotask/J;->aLV:Lcom/miui/powercenter/autotask/ChooseConditionActivity;

    invoke-virtual {v0}, Lcom/miui/powercenter/autotask/ChooseConditionActivity;->aWG()V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/miui/powercenter/autotask/J;->aLV:Lcom/miui/powercenter/autotask/ChooseConditionActivity;

    iget-object v0, v0, Lcom/miui/powercenter/autotask/ChooseConditionActivity;->aLv:Landroid/widget/Button;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/miui/powercenter/autotask/J;->aLV:Lcom/miui/powercenter/autotask/ChooseConditionActivity;

    invoke-static {v0}, Lcom/miui/powercenter/autotask/ChooseConditionActivity;->aWX(Lcom/miui/powercenter/autotask/ChooseConditionActivity;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/miui/powercenter/autotask/J;->aLV:Lcom/miui/powercenter/autotask/ChooseConditionActivity;

    const v1, 0x7f07047d

    invoke-static {v0, v1}, Lcom/miui/common/b/o;->aIX(Landroid/content/Context;I)V

    return-void

    :cond_6
    iget-object v0, p0, Lcom/miui/powercenter/autotask/J;->aLV:Lcom/miui/powercenter/autotask/ChooseConditionActivity;

    invoke-static {v0}, Lcom/miui/powercenter/autotask/ChooseConditionActivity;->aWY(Lcom/miui/powercenter/autotask/ChooseConditionActivity;)V

    iget-object v0, p0, Lcom/miui/powercenter/autotask/J;->aLV:Lcom/miui/powercenter/autotask/ChooseConditionActivity;

    invoke-virtual {v0}, Lcom/miui/powercenter/autotask/ChooseConditionActivity;->finish()V

    goto :goto_0
.end method
