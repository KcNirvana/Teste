.class final Lcom/miui/luckymoney/service/LuckyMoneyMonitorService$12;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;

.field final synthetic val$businessMessage:Lcom/miui/luckymoney/model/message/AppMessage;


# direct methods
.method constructor <init>(Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;Lcom/miui/luckymoney/model/message/AppMessage;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService$12;->this$0:Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;

    iput-object p2, p0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService$12;->val$businessMessage:Lcom/miui/luckymoney/model/message/AppMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService$12;->this$0:Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;

    invoke-static {v0}, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->-get4(Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/luckymoney/service/PhoneStateMonitor;->isPhoneBusy(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "phone is busy, do not remind business lunky monkey"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService$12;->this$0:Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;

    invoke-static {v0}, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->-get2(Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;)Lcom/miui/luckymoney/controller/Pipeline;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService$12;->this$0:Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;

    invoke-static {v0}, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->-get2(Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;)Lcom/miui/luckymoney/controller/Pipeline;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService$12;->val$businessMessage:Lcom/miui/luckymoney/model/message/AppMessage;

    invoke-virtual {v0, v1}, Lcom/miui/luckymoney/controller/Pipeline;->process(Lcom/miui/luckymoney/model/message/AppMessage;)Z

    :cond_1
    return-void
.end method
