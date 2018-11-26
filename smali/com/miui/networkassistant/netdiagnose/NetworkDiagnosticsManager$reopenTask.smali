.class Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsManager$reopenTask;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field mTimeoutSecs:J

.field final synthetic this$0:Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsManager;


# direct methods
.method public constructor <init>(Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsManager;J)V
    .locals 4

    const-wide/16 v2, 0xa

    iput-object p1, p0, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsManager$reopenTask;->this$0:Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p2, p0, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsManager$reopenTask;->mTimeoutSecs:J

    iget-wide v0, p0, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsManager$reopenTask;->mTimeoutSecs:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iput-wide v2, p0, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsManager$reopenTask;->mTimeoutSecs:J

    :cond_0
    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .locals 8

    const/4 v2, 0x0

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsManager$reopenTask;->this$0:Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsManager;

    invoke-static {v0}, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsManager;->-get0(Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsManager;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    move v1, v2

    :goto_0
    int-to-long v4, v1

    iget-wide v6, p0, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsManager$reopenTask;->mTimeoutSecs:J

    cmp-long v4, v4, v6

    if-gez v4, :cond_1

    const-wide/16 v4, 0x3e8

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v4

    if-ne v4, v3, :cond_3

    invoke-virtual {v0, v3}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    move v2, v3

    :cond_1
    if-nez v2, :cond_2

    invoke-virtual {v0, v3}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    :cond_2
    const-wide/16 v0, 0x1388

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsManager$reopenTask;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
