.class final Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsResultFragment$IssuseListViewAdapter$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$1:Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsResultFragment$IssuseListViewAdapter;

.field final synthetic val$item:Lcom/miui/networkassistant/netdiagnose/AbstractNetworkDiagoneItem;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsResultFragment$IssuseListViewAdapter;Lcom/miui/networkassistant/netdiagnose/AbstractNetworkDiagoneItem;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsResultFragment$IssuseListViewAdapter$1;->this$1:Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsResultFragment$IssuseListViewAdapter;

    iput-object p2, p0, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsResultFragment$IssuseListViewAdapter$1;->val$item:Lcom/miui/networkassistant/netdiagnose/AbstractNetworkDiagoneItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsResultFragment$IssuseListViewAdapter$1;->this$1:Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsResultFragment$IssuseListViewAdapter;

    iget-object v0, v0, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsResultFragment$IssuseListViewAdapter;->this$0:Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsResultFragment;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsResultFragment$IssuseListViewAdapter$1;->val$item:Lcom/miui/networkassistant/netdiagnose/AbstractNetworkDiagoneItem;

    invoke-virtual {v1}, Lcom/miui/networkassistant/netdiagnose/AbstractNetworkDiagoneItem;->getFixingWaitProgressDlgMsg()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsResultFragment$ProgressDialogFragment;->newInstance(Ljava/lang/String;)Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsResultFragment$ProgressDialogFragment;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsResultFragment;->mProgressDialog:Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsResultFragment$ProgressDialogFragment;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsResultFragment$IssuseListViewAdapter$1;->this$1:Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsResultFragment$IssuseListViewAdapter;

    iget-object v0, v0, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsResultFragment$IssuseListViewAdapter;->this$0:Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsResultFragment;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsResultFragment;->-get1(Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsResultFragment;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsResultFragment$IssuseListViewAdapter$1;->this$1:Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsResultFragment$IssuseListViewAdapter;

    iget-object v0, v0, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsResultFragment$IssuseListViewAdapter;->this$0:Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsResultFragment;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsResultFragment;->-set0(Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsResultFragment;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsResultFragment$IssuseListViewAdapter$1$1;

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsResultFragment$IssuseListViewAdapter$1;->val$item:Lcom/miui/networkassistant/netdiagnose/AbstractNetworkDiagoneItem;

    invoke-direct {v1, p0, v2}, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsResultFragment$IssuseListViewAdapter$1$1;-><init>(Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsResultFragment$IssuseListViewAdapter$1;Lcom/miui/networkassistant/netdiagnose/AbstractNetworkDiagoneItem;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
