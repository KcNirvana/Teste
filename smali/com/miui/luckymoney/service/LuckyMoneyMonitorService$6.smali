.class final Lcom/miui/luckymoney/service/LuckyMoneyMonitorService$6;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/hardware/SensorEventListener;


# instance fields
.field final synthetic this$0:Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;


# direct methods
.method constructor <init>(Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService$6;->this$0:Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService$6;->this$0:Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;

    invoke-static {v2}, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->-get9(Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;)J

    move-result-wide v2

    sub-long v2, v0, v2

    const-wide/16 v4, 0x32

    cmp-long v4, v2, v4

    if-ltz v4, :cond_1

    iget-object v4, p0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService$6;->this$0:Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;

    invoke-static {v4, v0, v1}, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->-set4(Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;J)J

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v8

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v9

    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v5, 0x2

    aget v4, v4, v5

    iget-object v5, p0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService$6;->this$0:Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;

    invoke-static {v5}, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->-get6(Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;)F

    move-result v5

    sub-float v5, v0, v5

    iget-object v6, p0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService$6;->this$0:Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;

    invoke-static {v6}, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->-get7(Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;)F

    move-result v6

    sub-float v6, v1, v6

    iget-object v7, p0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService$6;->this$0:Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;

    invoke-static {v7}, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->-get8(Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;)F

    move-result v7

    sub-float v7, v4, v7

    mul-float/2addr v5, v5

    mul-float/2addr v6, v6

    add-float/2addr v5, v6

    mul-float v6, v7, v7

    add-float/2addr v5, v6

    float-to-double v6, v5

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    long-to-double v2, v2

    div-double v2, v6, v2

    const-wide v6, 0x40c3880000000000L    # 10000.0

    mul-double/2addr v2, v6

    const-wide v6, 0x40b5180000000000L    # 5400.0

    cmpl-double v2, v2, v6

    if-ltz v2, :cond_0

    iget-object v2, p0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService$6;->this$0:Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;

    invoke-static {v2}, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->-get5(Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v2, v3}, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->-set0(Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;I)I

    iget-object v2, p0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService$6;->this$0:Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;

    invoke-static {v2}, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->-get5(Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;)I

    move-result v2

    const/4 v3, 0x3

    if-lt v2, v3, :cond_0

    iget-object v2, p0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService$6;->this$0:Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;

    iget-object v2, v2, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v2, v9}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService$6;->this$0:Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;

    iget-object v3, v3, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object v2, p0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService$6;->this$0:Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;

    invoke-static {v2, v8}, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->-set0(Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;I)I

    :cond_0
    iget-object v2, p0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService$6;->this$0:Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;

    invoke-static {v2, v0}, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->-set1(Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;F)F

    iget-object v0, p0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService$6;->this$0:Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;

    invoke-static {v0, v1}, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->-set2(Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;F)F

    iget-object v0, p0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService$6;->this$0:Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;

    invoke-static {v0, v4}, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->-set3(Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;F)F

    :cond_1
    return-void
.end method
