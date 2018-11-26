.class final Lcom/miui/networkassistant/service/tm/TrafficSimManager$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection$TrafficCorrectionListener;


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/service/tm/TrafficSimManager;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/service/tm/TrafficSimManager;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager$1;->this$0:Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTrafficCorrected(Lcom/miui/networkassistant/model/TrafficUsedStatus;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager$1;->this$0:Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    invoke-static {v0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->-get2(Lcom/miui/networkassistant/service/tm/TrafficSimManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager$1;->this$0:Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    invoke-static {v0, p1}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->-wrap9(Lcom/miui/networkassistant/service/tm/TrafficSimManager;Lcom/miui/networkassistant/model/TrafficUsedStatus;)V

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager$1;->this$0:Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    invoke-static {v0, p1}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->-wrap10(Lcom/miui/networkassistant/service/tm/TrafficSimManager;Lcom/miui/networkassistant/model/TrafficUsedStatus;)V

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager$1;->this$0:Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    invoke-static {v0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->-wrap7(Lcom/miui/networkassistant/service/tm/TrafficSimManager;)V

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager$1;->this$0:Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    invoke-static {v0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->-wrap8(Lcom/miui/networkassistant/service/tm/TrafficSimManager;)V

    invoke-virtual {p1}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->getReturnCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_1
    :goto_0
    :pswitch_0
    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager$1;->this$0:Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    invoke-static {v0, p1}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->-wrap11(Lcom/miui/networkassistant/service/tm/TrafficSimManager;Lcom/miui/networkassistant/model/TrafficUsedStatus;)V

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager$1;->this$0:Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    invoke-virtual {v0, p1}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->saveCorrectionResult(Lcom/miui/networkassistant/model/TrafficUsedStatus;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager$1;->this$0:Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    invoke-static {v0, p1}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->-wrap0(Lcom/miui/networkassistant/service/tm/TrafficSimManager;Lcom/miui/networkassistant/model/TrafficUsedStatus;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager$1;->this$0:Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    invoke-static {v0, p1}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->-wrap1(Lcom/miui/networkassistant/service/tm/TrafficSimManager;Lcom/miui/networkassistant/model/TrafficUsedStatus;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager$1;->this$0:Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    invoke-virtual {v0, p1, v3}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->saveCorrectedPkgsAndUsageValues(Lcom/miui/networkassistant/model/TrafficUsedStatus;Z)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager$1;->this$0:Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->-set0(Lcom/miui/networkassistant/service/tm/TrafficSimManager;Z)Z

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager$1;->this$0:Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    invoke-static {v0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->-get1(Lcom/miui/networkassistant/service/tm/TrafficSimManager;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager$1;->this$0:Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager$1;->this$0:Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    invoke-static {v1}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->-get0(Lcom/miui/networkassistant/service/tm/TrafficSimManager;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager$1;->this$0:Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    iget-object v2, v2, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v2}, Lcom/miui/networkassistant/config/SimUserInfo;->getSlotNum()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->-wrap13(Lcom/miui/networkassistant/service/tm/TrafficSimManager;Landroid/content/Context;I)V

    :cond_2
    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager$1;->this$0:Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    invoke-static {v0, v3}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->-wrap6(Lcom/miui/networkassistant/service/tm/TrafficSimManager;Z)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager$1;->this$0:Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager$1;->this$0:Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    invoke-static {v1}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->-get0(Lcom/miui/networkassistant/service/tm/TrafficSimManager;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager$1;->this$0:Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    iget-object v2, v2, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v2}, Lcom/miui/networkassistant/config/SimUserInfo;->getSlotNum()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->-wrap14(Lcom/miui/networkassistant/service/tm/TrafficSimManager;Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager$1;->this$0:Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    invoke-static {v0, v3}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->-wrap6(Lcom/miui/networkassistant/service/tm/TrafficSimManager;Z)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager$1;->this$0:Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    invoke-static {v0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->-wrap12(Lcom/miui/networkassistant/service/tm/TrafficSimManager;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
