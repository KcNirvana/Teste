.class final Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity$3;->this$0:Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity$3;->this$0:Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;

    invoke-virtual {v0}, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;->finish()V

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity$3;->this$0:Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;->showImmersionMenu(Landroid/view/View;Landroid/view/ViewGroup;)V

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity$3;->this$0:Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;->-wrap1(Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0a003f -> :sswitch_0
        0x7f0a006e -> :sswitch_1
        0x7f0a0072 -> :sswitch_2
    .end sparse-switch
.end method
