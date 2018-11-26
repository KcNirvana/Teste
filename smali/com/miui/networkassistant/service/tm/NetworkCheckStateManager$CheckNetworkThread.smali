.class Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager$CheckNetworkThread;
.super Ljava/lang/Thread;
.source ""


# instance fields
.field private mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mServers:[Ljava/lang/String;

.field private ret:Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils$NetworkState;

.field final synthetic this$0:Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager;

.field private urlConnection:Ljava/net/HttpURLConnection;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager;[Ljava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager$CheckNetworkThread;->this$0:Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    sget-object v0, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils$NetworkState;->UNKNOWN:Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils$NetworkState;

    iput-object v0, p0, Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager$CheckNetworkThread;->ret:Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils$NetworkState;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager$CheckNetworkThread;->urlConnection:Ljava/net/HttpURLConnection;

    iput-object p2, p0, Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager$CheckNetworkThread;->mServers:[Ljava/lang/String;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager$CheckNetworkThread;->mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager$CheckNetworkThread;->mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager$CheckNetworkThread;->mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public run()V
    .locals 5

    const-string/jumbo v0, "NetworkDiagnostics_CheckStateManager"

    const-string/jumbo v1, "CheckNetworkThread run."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager$CheckNetworkThread;->this$0:Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager;

    invoke-static {v0}, Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager;->-get0(Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/common/network/f;->aMh(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager$CheckNetworkThread;->this$0:Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager;

    invoke-static {v0}, Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager;->-get0(Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager$CheckNetworkThread;->this$0:Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager;

    invoke-static {v1}, Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager;->-get0(Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmiui/provider/ExtraNetwork;->isMobileRestrict(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils$NetworkState;->CONNECTED:Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils$NetworkState;

    iput-object v0, p0, Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager$CheckNetworkThread;->ret:Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils$NetworkState;

    const-string/jumbo v0, "NetworkDiagnostics_CheckStateManager"

    const-string/jumbo v1, "networkassistant not have permission to access network!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager$CheckNetworkThread;->this$0:Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager;

    invoke-static {v0}, Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager;->-get0(Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager$CheckNetworkThread;->this$0:Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager;

    invoke-static {v1}, Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager;->-get3(Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager;)Lcom/miui/networkassistant/dual/SimCardHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/networkassistant/dual/SimCardHelper;->getCurrentMobileSlotNum()I

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/networkassistant/utils/TelephonyUtil;->isNetworkRoaming(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils$NetworkState;->CONNECTED:Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils$NetworkState;

    iput-object v0, p0, Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager$CheckNetworkThread;->ret:Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils$NetworkState;

    const-string/jumbo v0, "NetworkDiagnostics_CheckStateManager"

    const-string/jumbo v1, "network roaming!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager$CheckNetworkThread;->ret:Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils$NetworkState;

    sget-object v1, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils$NetworkState;->UNKNOWN:Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils$NetworkState;

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager$CheckNetworkThread;->mServers:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager$CheckNetworkThread;->mServers:[Ljava/lang/String;

    aget-object v1, v1, v0

    const-string/jumbo v2, "NetworkDiagnostics_CheckStateManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "CheckNetworkThread url="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager$CheckNetworkThread;->mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_5

    sget-object v0, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils$NetworkState;->CANCELLED:Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils$NetworkState;

    iput-object v0, p0, Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager$CheckNetworkThread;->ret:Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils$NetworkState;

    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager$CheckNetworkThread;->mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils$NetworkState;->CANCELLED:Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils$NetworkState;

    iput-object v0, p0, Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager$CheckNetworkThread;->ret:Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils$NetworkState;

    :cond_3
    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager$CheckNetworkThread;->this$0:Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager;

    iget-object v0, v0, Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager$CheckNetworkThread;->ret:Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils$NetworkState;

    invoke-virtual {v1}, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils$NetworkState;->ordinal()I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager$CheckNetworkThread;->this$0:Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager;

    iget-object v1, v1, Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_3
    return-void

    :cond_4
    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager$CheckNetworkThread;->this$0:Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager;

    invoke-static {v0}, Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager;->-get0(Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/common/network/f;->aLT(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager$CheckNetworkThread;->this$0:Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager;

    invoke-static {v0}, Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager;->-get0(Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils;->isIgnoreCheckWifiState(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils$NetworkState;->CONNECTED:Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils$NetworkState;

    iput-object v0, p0, Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager$CheckNetworkThread;->ret:Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils$NetworkState;

    const-string/jumbo v0, "NetworkDiagnostics_CheckStateManager"

    const-string/jumbo v1, "check state ignored!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    :cond_5
    :try_start_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    :cond_7
    iget-object v2, p0, Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager$CheckNetworkThread;->this$0:Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager;

    invoke-static {v2}, Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager;->-get0(Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils;->CheckNetworkState(Landroid/content/Context;Ljava/lang/String;)Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils$NetworkState;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager$CheckNetworkThread;->ret:Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils$NetworkState;

    const-string/jumbo v1, "NetworkDiagnostics_CheckStateManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "CheckNetworkThread ret= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager$CheckNetworkThread;->ret:Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils$NetworkState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager$CheckNetworkThread;->ret:Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils$NetworkState;

    sget-object v2, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils$NetworkState;->CONNECTED:Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils$NetworkState;

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager$CheckNetworkThread;->ret:Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils$NetworkState;

    sget-object v2, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils$NetworkState;->CAPTIVEPORTAL:Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils$NetworkState;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-ne v1, v2, :cond_6

    goto/16 :goto_2
.end method
