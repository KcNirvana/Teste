.class final Lcom/miui/networkassistant/service/tm/TrafficManageService$12;
.super Landroid/content/BroadcastReceiver;
.source ""


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/service/tm/TrafficManageService;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$12;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string/jumbo v0, "TrafficManageService"

    const-string/jumbo v1, "mina mUserSwitchReceiver onReceive"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$12;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {}, Lcom/miui/common/b/f;->aHO()I

    move-result v1

    invoke-static {v1}, Lcom/miui/common/b/f;->aIe(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->-set0(Lcom/miui/networkassistant/service/tm/TrafficManageService;I)I

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$12;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {v0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->-get2(Lcom/miui/networkassistant/service/tm/TrafficManageService;)[Lcom/miui/networkassistant/service/tm/AppMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$12;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {v1}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->-get5(Lcom/miui/networkassistant/service/tm/TrafficManageService;)I

    move-result v1

    aget-object v0, v0, v1

    invoke-static {}, Lcom/miui/common/b/f;->aHO()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/service/tm/AppMonitor;->initData(I)V

    return-void
.end method
