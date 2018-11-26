.class final Lcom/miui/networkassistant/service/ts/TrafficStatisticManager$UpdateAppTrafficHandler;
.super Landroid/os/Handler;
.source ""


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;


# direct methods
.method public constructor <init>(Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/service/ts/TrafficStatisticManager$UpdateAppTrafficHandler;->this$0:Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/miui/networkassistant/service/ts/TrafficStatisticManager$UpdateAppTrafficHandler;->this$0:Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;

    invoke-static {v0}, Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;->-wrap1(Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/miui/networkassistant/service/ts/TrafficStatisticManager$UpdateAppTrafficHandler;->this$0:Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;

    invoke-static {v0}, Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;->-wrap2(Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;)V

    iget-object v0, p0, Lcom/miui/networkassistant/service/ts/TrafficStatisticManager$UpdateAppTrafficHandler;->this$0:Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;

    invoke-static {v0}, Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;->-wrap0(Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
