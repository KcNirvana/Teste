.class final Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment$1;
.super Landroid/os/Handler;
.source ""


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment$1;->this$0:Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    const/4 v2, 0x1

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment$1;->this$0:Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment;->-get5(Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment;)Lcom/miui/networkassistant/ui/view/ScanningBar;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-virtual {v1, v0}, Lcom/miui/networkassistant/ui/view/ScanningBar;->setScanningItems(Ljava/util/List;)V

    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment$1;->this$0:Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment;->-get0(Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    const-class v0, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsCallback;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment$1;->this$0:Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment;

    invoke-static {v1}, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment;->-get0(Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment$1;->this$0:Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment;->-get0(Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsCallback;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment$1;->this$0:Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment;

    invoke-static {v1}, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment;->-get4(Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment;)Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsManager;->getCurNetworkState()Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils$NetworkState;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsCallback;->onNetworkDiagnosticsDone(Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils$NetworkState;)V

    const/16 v1, 0x64

    invoke-interface {v0, v1}, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsCallback;->onNetworkDiagnosticsProcessChanged(I)V

    :cond_1
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment$1;->this$0:Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment;->-wrap0(Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment;)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment$1;->this$0:Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment;->-get3(Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment$1;->this$0:Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment;->-get5(Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment;)Lcom/miui/networkassistant/ui/view/ScanningBar;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1, v2}, Lcom/miui/networkassistant/ui/view/ScanningBar;->setScanningRet(IZ)V

    const-class v0, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsCallback;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment$1;->this$0:Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment;

    invoke-static {v1}, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment;->-get0(Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment$1;->this$0:Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment;->-get0(Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsCallback;

    iget v1, p1, Landroid/os/Message;->arg1:I

    add-int/lit8 v1, v1, 0x1

    int-to-double v2, v1

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v2, v4

    iget v1, p1, Landroid/os/Message;->arg2:I

    int-to-double v4, v1

    div-double/2addr v2, v4

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    mul-double/2addr v2, v4

    double-to-int v1, v2

    invoke-interface {v0, v1}, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsCallback;->onNetworkDiagnosticsProcessChanged(I)V

    goto :goto_0
.end method
