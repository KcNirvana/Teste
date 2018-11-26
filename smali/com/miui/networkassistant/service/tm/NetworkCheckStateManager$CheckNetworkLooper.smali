.class Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager$CheckNetworkLooper;
.super Ljava/lang/Thread;
.source ""


# instance fields
.field private mServers:[Ljava/lang/String;

.field private ret:Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils$NetworkState;

.field final synthetic this$0:Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager;

.field private urlConnection:Ljava/net/HttpURLConnection;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager;[Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager$CheckNetworkLooper;->this$0:Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    sget-object v0, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils$NetworkState;->UNKNOWN:Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils$NetworkState;

    iput-object v0, p0, Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager$CheckNetworkLooper;->ret:Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils$NetworkState;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager$CheckNetworkLooper;->urlConnection:Ljava/net/HttpURLConnection;

    iput-object p2, p0, Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager$CheckNetworkLooper;->mServers:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v5, 0x2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager$CheckNetworkLooper;->mServers:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager$CheckNetworkLooper;->mServers:[Ljava/lang/String;

    aget-object v1, v1, v0

    const-string/jumbo v2, "NetworkDiagnostics_CheckStateManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "CheckNetworkLooper url="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager$CheckNetworkLooper;->this$0:Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager;

    invoke-static {v2}, Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager;->-get0(Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils;->CheckNetworkState(Landroid/content/Context;Ljava/lang/String;)Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils$NetworkState;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager$CheckNetworkLooper;->ret:Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils$NetworkState;

    const-string/jumbo v1, "NetworkDiagnostics_CheckStateManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "CheckNetworkLooper ret= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager$CheckNetworkLooper;->ret:Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils$NetworkState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager$CheckNetworkLooper;->ret:Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils$NetworkState;

    sget-object v2, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils$NetworkState;->CONNECTED:Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils$NetworkState;

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager$CheckNetworkLooper;->ret:Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils$NetworkState;

    sget-object v2, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils$NetworkState;->CAPTIVEPORTAL:Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils$NetworkState;

    if-ne v1, v2, :cond_0

    :cond_2
    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager$CheckNetworkLooper;->ret:Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils$NetworkState;

    sget-object v1, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils$NetworkState;->CONNECTED:Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils$NetworkState;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager$CheckNetworkLooper;->ret:Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils$NetworkState;

    sget-object v1, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils$NetworkState;->CAPTIVEPORTAL:Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils$NetworkState;

    if-ne v0, v1, :cond_5

    :cond_3
    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager$CheckNetworkLooper;->this$0:Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager;

    iget-object v0, v0, Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager$CheckNetworkLooper;->this$0:Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager;

    iget-object v1, v1, Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_4
    :goto_1
    return-void

    :cond_5
    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager$CheckNetworkLooper;->this$0:Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager;

    iget-object v0, v0, Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager$CheckNetworkLooper;->this$0:Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager;

    iget-object v0, v0, Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager$CheckNetworkLooper;->this$0:Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager;

    iget-object v1, v1, Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager;->mHandler:Landroid/os/Handler;

    const-wide/32 v2, 0x493e0

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1
.end method
