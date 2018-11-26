.class final Lcom/miui/luckymoney/service/LuckyMoneyMonitorService$5;
.super Landroid/content/BroadcastReceiver;
.source ""


# instance fields
.field final synthetic this$0:Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;


# direct methods
.method constructor <init>(Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService$5;->this$0:Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "android.intent.action.USER_PRESENT"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService$5;->this$0:Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;

    invoke-static {v0}, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->-get3(Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;)Lcom/miui/luckymoney/config/CommonConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/luckymoney/config/CommonConfig;->isShakeSendStickerEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService$5;->this$0:Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;

    invoke-static {v0}, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->-wrap3(Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;)V

    :cond_0
    iget-object v0, p0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService$5;->this$0:Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;

    invoke-static {v0}, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->-get1(Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;)Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService$5;->this$0:Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;

    invoke-static {v0}, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->-get1(Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;)Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;->removeCancleFloatView()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string/jumbo v1, "android.intent.action.SCREEN_OFF"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService$5;->this$0:Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;

    invoke-static {v0}, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->-wrap5(Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;)V

    iget-object v0, p0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService$5;->this$0:Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;

    iget-object v0, v0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService$5;->this$0:Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;

    iget-object v1, v1, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
