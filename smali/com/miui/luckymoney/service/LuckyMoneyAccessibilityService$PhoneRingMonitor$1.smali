.class final Lcom/miui/luckymoney/service/LuckyMoneyAccessibilityService$PhoneRingMonitor$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/miui/luckymoney/service/LuckyMoneyAccessibilityService$PhoneRingMonitor;


# direct methods
.method constructor <init>(Lcom/miui/luckymoney/service/LuckyMoneyAccessibilityService$PhoneRingMonitor;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/luckymoney/service/LuckyMoneyAccessibilityService$PhoneRingMonitor$1;->this$1:Lcom/miui/luckymoney/service/LuckyMoneyAccessibilityService$PhoneRingMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/miui/luckymoney/service/LuckyMoneyAccessibilityService$PhoneRingMonitor$1;->this$1:Lcom/miui/luckymoney/service/LuckyMoneyAccessibilityService$PhoneRingMonitor;

    iget-object v0, v0, Lcom/miui/luckymoney/service/LuckyMoneyAccessibilityService$PhoneRingMonitor;->this$0:Lcom/miui/luckymoney/service/LuckyMoneyAccessibilityService;

    invoke-static {v0}, Lcom/miui/luckymoney/service/LuckyMoneyAccessibilityService;->-get3(Lcom/miui/luckymoney/service/LuckyMoneyAccessibilityService;)Lcom/miui/luckymoney/controller/Pipeline;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/luckymoney/service/LuckyMoneyAccessibilityService$PhoneRingMonitor$1;->this$1:Lcom/miui/luckymoney/service/LuckyMoneyAccessibilityService$PhoneRingMonitor;

    iget-object v0, v0, Lcom/miui/luckymoney/service/LuckyMoneyAccessibilityService$PhoneRingMonitor;->this$0:Lcom/miui/luckymoney/service/LuckyMoneyAccessibilityService;

    invoke-static {v0}, Lcom/miui/luckymoney/service/LuckyMoneyAccessibilityService;->-get3(Lcom/miui/luckymoney/service/LuckyMoneyAccessibilityService;)Lcom/miui/luckymoney/controller/Pipeline;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/luckymoney/controller/Pipeline;->notifyPhoneArrived()V

    :cond_0
    return-void
.end method
