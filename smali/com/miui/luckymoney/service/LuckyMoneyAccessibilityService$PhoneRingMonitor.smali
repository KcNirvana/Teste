.class Lcom/miui/luckymoney/service/LuckyMoneyAccessibilityService$PhoneRingMonitor;
.super Landroid/telephony/PhoneStateListener;
.source ""


# instance fields
.field final synthetic this$0:Lcom/miui/luckymoney/service/LuckyMoneyAccessibilityService;


# direct methods
.method private constructor <init>(Lcom/miui/luckymoney/service/LuckyMoneyAccessibilityService;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/luckymoney/service/LuckyMoneyAccessibilityService$PhoneRingMonitor;->this$0:Lcom/miui/luckymoney/service/LuckyMoneyAccessibilityService;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/luckymoney/service/LuckyMoneyAccessibilityService;Lcom/miui/luckymoney/service/LuckyMoneyAccessibilityService$PhoneRingMonitor;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/luckymoney/service/LuckyMoneyAccessibilityService$PhoneRingMonitor;-><init>(Lcom/miui/luckymoney/service/LuckyMoneyAccessibilityService;)V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/telephony/PhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/miui/luckymoney/service/LuckyMoneyAccessibilityService$PhoneRingMonitor;->this$0:Lcom/miui/luckymoney/service/LuckyMoneyAccessibilityService;

    invoke-static {v0}, Lcom/miui/luckymoney/service/LuckyMoneyAccessibilityService;->-get2(Lcom/miui/luckymoney/service/LuckyMoneyAccessibilityService;)Landroid/os/Handler;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/luckymoney/service/LuckyMoneyAccessibilityService$PhoneRingMonitor;->this$0:Lcom/miui/luckymoney/service/LuckyMoneyAccessibilityService;

    invoke-static {v0}, Lcom/miui/luckymoney/service/LuckyMoneyAccessibilityService;->-get2(Lcom/miui/luckymoney/service/LuckyMoneyAccessibilityService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/miui/luckymoney/service/LuckyMoneyAccessibilityService$PhoneRingMonitor$1;

    invoke-direct {v1, p0}, Lcom/miui/luckymoney/service/LuckyMoneyAccessibilityService$PhoneRingMonitor$1;-><init>(Lcom/miui/luckymoney/service/LuckyMoneyAccessibilityService$PhoneRingMonitor;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method
