.class final Lcom/miui/networkassistant/service/tm/TrafficManageService$5;
.super Landroid/content/BroadcastReceiver;
.source ""


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/service/tm/TrafficManageService;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$5;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    const/16 v7, 0x13

    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string/jumbo v0, "TrafficManageService"

    const-string/jumbo v1, "mina mAutoCorrectionReceiver onReceive"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/miui/networkassistant/utils/DateUtil;->getTodayTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$5;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {v2, v5, v0, v1}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->-wrap0(Lcom/miui/networkassistant/service/tm/TrafficManageService;IJ)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$5;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    iget-object v3, v3, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    iput v5, v3, Landroid/os/Message;->arg1:I

    iput v5, v3, Landroid/os/Message;->arg2:I

    iget-object v4, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$5;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    iget-object v4, v4, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    sget-boolean v3, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_DUAL_CARD:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$5;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {v3, v6, v0, v1}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->-wrap0(Lcom/miui/networkassistant/service/tm/TrafficManageService;IJ)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz v2, :cond_2

    const-wide/32 v0, 0x86470

    :goto_0
    iget-object v2, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$5;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    iget-object v2, v2, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    iput v6, v2, Landroid/os/Message;->arg1:I

    iput v5, v2, Landroid/os/Message;->arg2:I

    iget-object v3, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$5;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    iget-object v3, v3, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_1
    return-void

    :cond_2
    const-wide/16 v0, 0x0

    goto :goto_0
.end method
