.class Lcom/miui/luckymoney/service/LuckyMoneyMonitorService$PhoneRingMonitor;
.super Landroid/telephony/PhoneStateListener;
.source ""


# instance fields
.field final synthetic this$0:Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;


# direct methods
.method private constructor <init>(Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService$PhoneRingMonitor;->this$0:Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;Lcom/miui/luckymoney/service/LuckyMoneyMonitorService$PhoneRingMonitor;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService$PhoneRingMonitor;-><init>(Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;)V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/telephony/PhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService$PhoneRingMonitor;->this$0:Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;

    iget-object v0, v0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->mMainHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService$PhoneRingMonitor;->this$0:Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;

    iget-object v0, v0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService$PhoneRingMonitor$1;

    invoke-direct {v1, p0}, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService$PhoneRingMonitor$1;-><init>(Lcom/miui/luckymoney/service/LuckyMoneyMonitorService$PhoneRingMonitor;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method
