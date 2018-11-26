.class final Lcom/miui/networkassistant/service/tm/TrafficManageService$2;
.super Landroid/os/Handler;
.source ""


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/service/tm/TrafficManageService;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$2;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$2;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-virtual {v1}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-static {v1, v0, v2}, Lcom/miui/networkassistant/utils/ToastUtil;->makeToastText(Landroid/content/Context;II)V

    goto :goto_0

    :sswitch_1
    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$2;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-virtual {v1}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0702da

    invoke-static {v1, v0, v2}, Lcom/miui/networkassistant/utils/ToastUtil;->showCorrectionSucceed(Landroid/content/Context;II)V

    goto :goto_0

    :sswitch_2
    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$2;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-virtual {v1}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0702db

    invoke-static {v1, v0, v2}, Lcom/miui/networkassistant/utils/ToastUtil;->makeToastText(Landroid/content/Context;II)V

    goto :goto_0

    :sswitch_3
    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$2;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-static {v1, v0, v2}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->-wrap6(Lcom/miui/networkassistant/service/tm/TrafficManageService;II)V

    goto :goto_0

    :sswitch_4
    sget-boolean v0, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_DUAL_CARD:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$2;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {v0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->-wrap15(Lcom/miui/networkassistant/service/tm/TrafficManageService;)V

    :cond_1
    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$2;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->-set1(Lcom/miui/networkassistant/service/tm/TrafficManageService;Z)Z

    goto :goto_0

    :sswitch_5
    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$2;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {v0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->-wrap8(Lcom/miui/networkassistant/service/tm/TrafficManageService;)V

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$2;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {v0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->-get6(Lcom/miui/networkassistant/service/tm/TrafficManageService;)Lcom/miui/networkassistant/service/tm/LockScreenManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/networkassistant/service/tm/LockScreenManager;->initLockScreenMonitor()V

    goto :goto_0

    :sswitch_6
    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$2;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {v1}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->-get0(Lcom/miui/networkassistant/service/tm/TrafficManageService;)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$2;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {v0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->-get6(Lcom/miui/networkassistant/service/tm/TrafficManageService;)Lcom/miui/networkassistant/service/tm/LockScreenManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/networkassistant/service/tm/LockScreenManager;->initLockScreenMonitor()V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_0
        0x11 -> :sswitch_1
        0x12 -> :sswitch_2
        0x13 -> :sswitch_3
        0x14 -> :sswitch_0
        0x20 -> :sswitch_4
        0x42 -> :sswitch_6
        0x50 -> :sswitch_5
    .end sparse-switch
.end method
