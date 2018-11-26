.class final Lcom/miui/luckymoney/service/LuckyMoneyMonitorService$7;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field final synthetic this$0:Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;


# direct methods
.method constructor <init>(Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService$7;->this$0:Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    :pswitch_0
    invoke-static {}, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "MSG_SENSOR_SHAKE"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService$7;->this$0:Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;

    invoke-static {v0}, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->-get4(Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/luckymoney/utils/PackageUtil;->startStickerActivityWithVibrator(Landroid/content/Context;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v1, "show_float_window"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService$7;->this$0:Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;

    invoke-static {v0}, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->-get3(Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;)Lcom/miui/luckymoney/config/CommonConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/luckymoney/config/CommonConfig;->isDesktopFloatWindowEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService$7;->this$0:Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;

    invoke-static {v0}, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->-wrap0(Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;)V

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "shake_send_sticker"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService$7;->this$0:Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;

    invoke-static {v0}, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->-get3(Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;)Lcom/miui/luckymoney/config/CommonConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/luckymoney/config/CommonConfig;->isShakeSendStickerEnable()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService$7;->this$0:Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;

    invoke-static {v0}, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->-wrap3(Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService$7;->this$0:Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;

    invoke-static {v0}, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->-wrap5(Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;)V

    goto :goto_0

    :cond_3
    const-string/jumbo v1, "show_float_window_button"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v0, p0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService$7;->this$0:Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;

    invoke-static {v0}, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->-get3(Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;)Lcom/miui/luckymoney/config/CommonConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/luckymoney/config/CommonConfig;->isDesktopFloatWindowEnable()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService$7;->this$0:Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;

    invoke-static {v0}, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->-wrap0(Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService$7;->this$0:Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;

    invoke-static {v0}, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->-wrap4(Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;)V

    goto :goto_0

    :cond_5
    const-string/jumbo v1, "remove_float_window"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService$7;->this$0:Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;

    invoke-static {v0}, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->-wrap4(Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;)V

    goto/16 :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService$7;->this$0:Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;

    invoke-static {v0}, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->-get4(Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/luckymoney/stats/MiStatUtil;->trackSettingSwitchState(Landroid/content/Context;)V

    goto/16 :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService$7;->this$0:Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;

    invoke-static {v0}, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->-wrap4(Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;)V

    iget-object v0, p0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService$7;->this$0:Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;

    invoke-static {v0}, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->-wrap0(Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;)V

    invoke-static {}, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "exce remove float view"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
