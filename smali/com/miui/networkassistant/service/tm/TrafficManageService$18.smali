.class final Lcom/miui/networkassistant/service/tm/TrafficManageService$18;
.super Landroid/content/BroadcastReceiver;
.source ""


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/service/tm/TrafficManageService;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$18;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$18;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {v0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->-get6(Lcom/miui/networkassistant/service/tm/TrafficManageService;)Lcom/miui/networkassistant/service/tm/LockScreenManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/miui/networkassistant/service/tm/LockScreenManager;->onLockScreenChange(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$18;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {v0, p2}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->-wrap16(Lcom/miui/networkassistant/service/tm/TrafficManageService;Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$18;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {v0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->-get8(Lcom/miui/networkassistant/service/tm/TrafficManageService;)Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$18;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {v0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->-get8(Lcom/miui/networkassistant/service/tm/TrafficManageService;)Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager;->onLockScreenChange(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
