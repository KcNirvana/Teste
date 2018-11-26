.class final Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity$4;->this$0:Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity$4;->this$0:Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;->-get8(Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;)I

    move-result v0

    const v1, 0x7f0a0073

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity$4;->this$0:Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;->-get12(Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;)Lcom/miui/common/customview/MovableLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/miui/common/customview/MovableLayout;->aGa(Z)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity$4;->this$0:Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;->-get3(Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity$4;->this$0:Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;->-get7(Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity$4;->this$0:Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;->-get7(Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity$4;->this$0:Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;->-get8(Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity$4;->this$0:Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;->-get4(Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;)Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsDialView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsDialView;->setStepPercent(I)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity$4;->this$0:Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;->-get10(Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;)Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment;->startDiagnostic()V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity$4;->this$0:Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;->-get9(Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;)Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsResultFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsResultFragment;->showResult()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f0a0073
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
