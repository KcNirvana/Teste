.class final Lcom/miui/networkassistant/service/tm/TrafficManageService$11;
.super Landroid/database/ContentObserver;
.source ""


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/service/tm/TrafficManageService;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$11;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5

    const/16 v4, 0x20

    const-string/jumbo v0, "TrafficManageService"

    const-string/jumbo v1, "mina mDeviceProvisionedObserver onChange"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$11;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    iget-object v0, v0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$11;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    iget-object v0, v0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$11;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    iget-object v0, v0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method
