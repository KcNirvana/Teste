.class Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment$DiagnoseWifiTask;
.super Landroid/os/AsyncTask;
.source ""


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment;


# direct methods
.method private constructor <init>(Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment$DiagnoseWifiTask;->this$0:Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment;Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment$DiagnoseWifiTask;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment$DiagnoseWifiTask;-><init>(Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 6

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment$DiagnoseWifiTask;->this$0:Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment;->-get4(Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment;)Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsManager;->isWifiEnable()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment$DiagnoseWifiTask;->this$0:Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment;->-get1(Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnoseItemFactory;->getInstance(Landroid/content/Context;)Lcom/miui/networkassistant/netdiagnose/NetworkDiagnoseItemFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnoseItemFactory;->getAllWifiItem()Ljava/util/List;

    move-result-object v3

    :try_start_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v2, v1

    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/networkassistant/netdiagnose/AbstractNetworkDiagoneItem;

    invoke-virtual {v0}, Lcom/miui/networkassistant/netdiagnose/AbstractNetworkDiagoneItem;->reset()V

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/networkassistant/netdiagnose/AbstractNetworkDiagoneItem;

    invoke-virtual {v0}, Lcom/miui/networkassistant/netdiagnose/AbstractNetworkDiagoneItem;->getItemName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment$DiagnoseWifiTask;->this$0:Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment;->-get2(Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v2, 0x2

    iput v2, v0, Landroid/os/Message;->what:I

    iput-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment$DiagnoseWifiTask;->this$0:Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment;

    invoke-static {v2}, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment;->-get2(Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/networkassistant/netdiagnose/AbstractNetworkDiagoneItem;

    invoke-virtual {v0}, Lcom/miui/networkassistant/netdiagnose/AbstractNetworkDiagoneItem;->check()V

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/networkassistant/netdiagnose/AbstractNetworkDiagoneItem;

    invoke-virtual {v0}, Lcom/miui/networkassistant/netdiagnose/AbstractNetworkDiagoneItem;->getIsContinueDiagnose()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    :goto_2
    const/4 v0, 0x0

    return-object v0

    :cond_3
    const-wide/16 v4, 0x3e8

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment$DiagnoseWifiTask;->this$0:Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment;->-get2(Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v2, 0x3

    iput v2, v0, Landroid/os/Message;->what:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    iput v2, v0, Landroid/os/Message;->arg2:I

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment$DiagnoseWifiTask;->this$0:Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment;

    invoke-static {v2}, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment;->-get2(Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment$DiagnoseWifiTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment$DiagnoseWifiTask;->this$0:Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment;->-get2(Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/miui/networkassistant/ui/fragment/NetworkDiagnosticsScanningFragment$DiagnoseWifiTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    return-void
.end method
