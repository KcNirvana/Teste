.class final Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsResultFragment$IssuseListViewAdapter$1$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$2:Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsResultFragment$IssuseListViewAdapter$1;

.field final synthetic val$item:Lcom/miui/networkassistant/netdiagnose/AbstractNetworkDiagoneItem;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsResultFragment$IssuseListViewAdapter$1;Lcom/miui/networkassistant/netdiagnose/AbstractNetworkDiagoneItem;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsResultFragment$IssuseListViewAdapter$1$1;->this$2:Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsResultFragment$IssuseListViewAdapter$1;

    iput-object p2, p0, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsResultFragment$IssuseListViewAdapter$1$1;->val$item:Lcom/miui/networkassistant/netdiagnose/AbstractNetworkDiagoneItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsResultFragment$IssuseListViewAdapter$1$1;->this$2:Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsResultFragment$IssuseListViewAdapter$1;

    iget-object v0, v0, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsResultFragment$IssuseListViewAdapter$1;->this$1:Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsResultFragment$IssuseListViewAdapter;

    iget-object v0, v0, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsResultFragment$IssuseListViewAdapter;->this$0:Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsResultFragment;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsResultFragment;->-get0(Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsResultFragment;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsResultFragment$IssuseListViewAdapter$1$1;->val$item:Lcom/miui/networkassistant/netdiagnose/AbstractNetworkDiagoneItem;

    invoke-virtual {v0}, Lcom/miui/networkassistant/netdiagnose/AbstractNetworkDiagoneItem;->fix()Lcom/miui/networkassistant/netdiagnose/AbstractNetworkDiagoneItem$FixedResult;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsResultFragment$IssuseListViewAdapter$1$1;->this$2:Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsResultFragment$IssuseListViewAdapter$1;

    iget-object v1, v1, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsResultFragment$IssuseListViewAdapter$1;->this$1:Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsResultFragment$IssuseListViewAdapter;

    iget-object v1, v1, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsResultFragment$IssuseListViewAdapter;->this$0:Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsResultFragment;

    invoke-static {v1}, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsResultFragment;->-get0(Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsResultFragment;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    const/4 v2, 0x1

    iput v2, v1, Landroid/os/Message;->what:I

    invoke-virtual {v0}, Lcom/miui/networkassistant/netdiagnose/AbstractNetworkDiagoneItem$FixedResult;->ordinal()I

    move-result v0

    iput v0, v1, Landroid/os/Message;->arg1:I

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsResultFragment$IssuseListViewAdapter$1$1;->this$2:Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsResultFragment$IssuseListViewAdapter$1;

    iget-object v0, v0, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsResultFragment$IssuseListViewAdapter$1;->this$1:Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsResultFragment$IssuseListViewAdapter;

    iget-object v0, v0, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsResultFragment$IssuseListViewAdapter;->this$0:Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsResultFragment;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsResultFragment;->-get0(Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsResultFragment;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
