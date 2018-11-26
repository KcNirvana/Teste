.class final Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection$1;
.super Landroid/content/BroadcastReceiver;
.source ""


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection$1;->this$0:Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p0}, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection$1;->getResultCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection$1;->this$0:Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;

    new-instance v1, Lcom/miui/networkassistant/model/TrafficUsedStatus;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/miui/networkassistant/model/TrafficUsedStatus;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->onTrafficCorrected(Lcom/miui/networkassistant/model/TrafficUsedStatus;)V

    :pswitch_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method
