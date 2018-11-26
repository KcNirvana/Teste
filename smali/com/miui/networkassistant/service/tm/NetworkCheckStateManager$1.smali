.class final Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager$1;
.super Landroid/os/Handler;
.source ""


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager$1;->this$0:Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager$1;->this$0:Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager;

    invoke-virtual {v0}, Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager;->networkConnected()V

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager$1;->this$0:Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager;

    invoke-static {v0}, Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager;->-get1(Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager$CheckNetworkLooper;

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager$1;->this$0:Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager;

    iget-object v2, p0, Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager$1;->this$0:Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager;

    invoke-static {v2}, Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager;->-get2(Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager;)[Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager$CheckNetworkLooper;-><init>(Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager;[Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager$CheckNetworkLooper;->start()V

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager$1;->this$0:Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager;

    invoke-static {}, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils$NetworkState;->values()[Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils$NetworkState;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager;->-wrap0(Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager;Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils$NetworkState;)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x10 -> :sswitch_2
    .end sparse-switch
.end method
