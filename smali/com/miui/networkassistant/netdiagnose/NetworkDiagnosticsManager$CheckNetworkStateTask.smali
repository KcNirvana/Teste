.class Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsManager$CheckNetworkStateTask;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field mServers:[Ljava/lang/String;

.field final synthetic this$0:Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsManager;


# direct methods
.method public constructor <init>(Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsManager;[Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsManager$CheckNetworkStateTask;->this$0:Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsManager$CheckNetworkStateTask;->mServers:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public call()Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils$NetworkState;
    .locals 5

    const-string/jumbo v0, "NetworkDiagnostics_Manager"

    const-string/jumbo v1, "CheckNetworkStateTask call."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils$NetworkState;->UNKNOWN:Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils$NetworkState;

    const/4 v0, 0x0

    move v4, v0

    move-object v0, v1

    move v1, v4

    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsManager$CheckNetworkStateTask;->mServers:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsManager$CheckNetworkStateTask;->mServers:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsManager$CheckNetworkStateTask;->this$0:Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsManager;

    invoke-static {v3}, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsManager;->-get0(Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsManager;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils;->CheckNetworkState(Landroid/content/Context;Ljava/lang/String;)Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils$NetworkState;

    move-result-object v0

    sget-object v2, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils$NetworkState;->CONNECTED:Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils$NetworkState;

    if-eq v0, v2, :cond_2

    sget-object v2, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils$NetworkState;->CAPTIVEPORTAL:Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils$NetworkState;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v0, v2, :cond_0

    :cond_2
    :goto_1
    return-object v0

    :catch_0
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    goto :goto_1
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsManager$CheckNetworkStateTask;->call()Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils$NetworkState;

    move-result-object v0

    return-object v0
.end method
