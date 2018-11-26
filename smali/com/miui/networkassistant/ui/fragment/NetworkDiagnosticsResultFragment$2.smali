.class final Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsResultFragment$2;
.super Landroid/os/Handler;
.source ""


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsResultFragment;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsResultFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsResultFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsResultFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsResultFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsResultFragment;

    iget-object v0, v0, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsResultFragment;->mProgressDialog:Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsResultFragment$ProgressDialogFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsResultFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsResultFragment;

    iget-object v0, v0, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsResultFragment;->mProgressDialog:Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsResultFragment$ProgressDialogFragment;

    invoke-virtual {v0}, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsResultFragment$ProgressDialogFragment;->dismiss()V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsResultFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsResultFragment;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsResultFragment;->mProgressDialog:Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsResultFragment$ProgressDialogFragment;

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsResultFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsResultFragment;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsResultFragment;->-wrap0(Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsResultFragment;)V

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsResultFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsResultFragment;

    iget-object v0, v0, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsResultFragment;->mProgressDialog:Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsResultFragment$ProgressDialogFragment;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsResultFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsResultFragment;

    invoke-virtual {v1}, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsResultFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "NetworkDiagnostics_ResultFragment"

    invoke-virtual {v0, v1, v2}, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsResultFragment$ProgressDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :pswitch_1
    :try_start_1
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsResultFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsResultFragment;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsResultFragment;->-set0(Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsResultFragment;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    sget-object v0, Lcom/miui/networkassistant/netdiagnose/AbstractNetworkDiagoneItem$FixedResult;->NETWORKCHANGED:Lcom/miui/networkassistant/netdiagnose/AbstractNetworkDiagoneItem$FixedResult;

    invoke-virtual {v0}, Lcom/miui/networkassistant/netdiagnose/AbstractNetworkDiagoneItem$FixedResult;->ordinal()I

    move-result v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsResultFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsResultFragment;

    invoke-virtual {v0}, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsResultFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f07039a

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_1
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsResultFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsResultFragment;

    iget-object v0, v0, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsResultFragment;->mProgressDialog:Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsResultFragment$ProgressDialogFragment;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsResultFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsResultFragment;

    iget-object v0, v0, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsResultFragment;->mProgressDialog:Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsResultFragment$ProgressDialogFragment;

    invoke-virtual {v0}, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsResultFragment$ProgressDialogFragment;->dismiss()V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsResultFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsResultFragment;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsResultFragment;->mProgressDialog:Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsResultFragment$ProgressDialogFragment;

    :cond_2
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsResultFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsResultFragment;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsResultFragment;->-wrap0(Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsResultFragment;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
