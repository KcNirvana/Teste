.class final Lcom/miui/networkassistant/service/tm/TrafficManageService$13;
.super Landroid/content/BroadcastReceiver;
.source ""


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/service/tm/TrafficManageService;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$13;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    sget-boolean v0, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_DUAL_CARD:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$13;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {v0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->-wrap15(Lcom/miui/networkassistant/service/tm/TrafficManageService;)V

    const-string/jumbo v0, "TrafficManageService"

    const-string/jumbo v1, "update mEffectiveSlotNum:%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$13;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {v3}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->-get0(Lcom/miui/networkassistant/service/tm/TrafficManageService;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {p1}, Lcom/miui/common/network/f;->aLZ(Landroid/content/Context;)Lcom/miui/common/network/NetworkUtils$NetworkState;

    move-result-object v0

    const-string/jumbo v1, "TrafficManageService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mina connectivity updated : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/miui/common/network/NetworkUtils$NetworkState;->aBS:Lcom/miui/common/network/NetworkUtils$NetworkState;

    if-ne v0, v1, :cond_3

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$13;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {v1}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->-wrap4(Lcom/miui/networkassistant/service/tm/TrafficManageService;)V

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$13;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {v1}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->-get10(Lcom/miui/networkassistant/service/tm/TrafficManageService;)Lcom/miui/networkassistant/service/tm/PurchaseSmsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/networkassistant/service/tm/PurchaseSmsManager;->checkPurchaseSmsNumberWhiteList()V

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$13;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {v1}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->-wrap13(Lcom/miui/networkassistant/service/tm/TrafficManageService;)V

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$13;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {v1}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->-wrap11(Lcom/miui/networkassistant/service/tm/TrafficManageService;)V

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$13;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {v1}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->-wrap10(Lcom/miui/networkassistant/service/tm/TrafficManageService;)V

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$13;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {v1}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->-get7(Lcom/miui/networkassistant/service/tm/TrafficManageService;)Lcom/miui/networkassistant/service/tm/DataUsageReportManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/miui/networkassistant/service/tm/DataUsageReportManager;->trackNetworkStateAnalytics(Lcom/miui/common/network/NetworkUtils$NetworkState;)V

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$13;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {v0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->-get14(Lcom/miui/networkassistant/service/tm/TrafficManageService;)[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$13;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {v1}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->-get0(Lcom/miui/networkassistant/service/tm/TrafficManageService;)I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->updateRoamingBeginTime()V

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$13;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {v0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->-get8(Lcom/miui/networkassistant/service/tm/TrafficManageService;)Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$13;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {v0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->-get8(Lcom/miui/networkassistant/service/tm/TrafficManageService;)Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/networkassistant/service/tm/NetworkCheckStateManager;->networkChanged()V

    :cond_2
    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$13;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {v0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->-wrap5(Lcom/miui/networkassistant/service/tm/TrafficManageService;)V

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$13;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {v0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->-wrap3(Lcom/miui/networkassistant/service/tm/TrafficManageService;)V

    return-void

    :cond_3
    sget-object v1, Lcom/miui/common/network/NetworkUtils$NetworkState;->aBP:Lcom/miui/common/network/NetworkUtils$NetworkState;

    if-ne v0, v1, :cond_1

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$13;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {v1}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->-wrap14(Lcom/miui/networkassistant/service/tm/TrafficManageService;)V

    goto :goto_0
.end method
