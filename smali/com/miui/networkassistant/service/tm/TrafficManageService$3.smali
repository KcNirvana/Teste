.class final Lcom/miui/networkassistant/service/tm/TrafficManageService$3;
.super Landroid/content/BroadcastReceiver;
.source ""


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/service/tm/TrafficManageService;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$3;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$3;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {v2}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->-get4(Lcom/miui/networkassistant/service/tm/TrafficManageService;)Lcom/miui/networkassistant/config/CommonConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/networkassistant/config/CommonConfig;->getSmsNumberReceiverUpdateTime()J

    move-result-wide v2

    invoke-static {}, Lcom/miui/networkassistant/utils/DateUtil;->getTodayTimeMillis()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    const-string/jumbo v2, "TrafficManageService"

    const-string/jumbo v3, "mina mSmsReceiver"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$3;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {v2}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->-get10(Lcom/miui/networkassistant/service/tm/TrafficManageService;)Lcom/miui/networkassistant/service/tm/PurchaseSmsManager;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/miui/networkassistant/service/tm/PurchaseSmsManager;->getSlotIdFromIntent(Landroid/content/Intent;)I

    move-result v2

    if-ltz v2, :cond_1

    if-gt v2, v0, :cond_1

    :goto_0
    iget-object v3, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$3;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {v3}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->-get14(Lcom/miui/networkassistant/service/tm/TrafficManageService;)[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    move-result-object v3

    aget-object v3, v3, v2

    iget-object v3, v3, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v3}, Lcom/miui/networkassistant/config/SimUserInfo;->getTrafficPurchaseStatus()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$3;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {v3}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->-get4(Lcom/miui/networkassistant/service/tm/TrafficManageService;)Lcom/miui/networkassistant/config/CommonConfig;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/miui/networkassistant/config/CommonConfig;->setSmsNumberReceiverUpdateTime(J)Z

    iget-object v3, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$3;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {v3}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->-get14(Lcom/miui/networkassistant/service/tm/TrafficManageService;)[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    move-result-object v3

    aget-object v3, v3, v2

    iget-object v3, v3, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v3, v1}, Lcom/miui/networkassistant/config/SimUserInfo;->setTrafficPurchaseStatus(Z)Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$3;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {v0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->-get14(Lcom/miui/networkassistant/service/tm/TrafficManageService;)[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    move-result-object v0

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mTrafficCorrection:Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection;

    invoke-interface {v0}, Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$3;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {v0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->-get10(Lcom/miui/networkassistant/service/tm/TrafficManageService;)Lcom/miui/networkassistant/service/tm/PurchaseSmsManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/miui/networkassistant/service/tm/PurchaseSmsManager;->checkContainReceiveNumber(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "TrafficManageService"

    const-string/jumbo v1, "mina traffic correction by sms receiver"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$3;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {v0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->-get14(Lcom/miui/networkassistant/service/tm/TrafficManageService;)[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    move-result-object v0

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v4, v5}, Lcom/miui/networkassistant/config/SimUserInfo;->setPackageChangeUpdateTime(J)Z

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$3;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    iget-object v0, v0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput v2, v0, Landroid/os/Message;->arg1:I

    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->arg2:I

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$3;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    iget-object v1, v1, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mHandler:Landroid/os/Handler;

    const-wide/32 v2, 0x493e0

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    return-void

    :cond_1
    move v0, v1

    goto :goto_0
.end method
