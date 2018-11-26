.class final Lcom/miui/luckymoney/service/LuckyMoneyAccessibilityService$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/miui/luckymoney/service/LuckyMoneyAccessibilityService;

.field private times:I

.field final synthetic val$source:Landroid/view/accessibility/AccessibilityNodeInfo;


# direct methods
.method constructor <init>(Lcom/miui/luckymoney/service/LuckyMoneyAccessibilityService;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    iput-object p1, p0, Lcom/miui/luckymoney/service/LuckyMoneyAccessibilityService$1;->this$0:Lcom/miui/luckymoney/service/LuckyMoneyAccessibilityService;

    iput-object p2, p0, Lcom/miui/luckymoney/service/LuckyMoneyAccessibilityService$1;->val$source:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/luckymoney/service/LuckyMoneyAccessibilityService$1;->times:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const-wide/16 v4, 0x258

    const/4 v3, 0x2

    invoke-static {}, Lcom/miui/luckymoney/service/LuckyMoneyAccessibilityService;->-get0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/miui/luckymoney/service/LuckyMoneyAccessibilityService$1;->times:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/luckymoney/service/LuckyMoneyAccessibilityService$1;->this$0:Lcom/miui/luckymoney/service/LuckyMoneyAccessibilityService;

    invoke-virtual {v0}, Lcom/miui/luckymoney/service/LuckyMoneyAccessibilityService;->getRootInActiveWindow()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/luckymoney/service/LuckyMoneyAccessibilityService$1;->val$source:Landroid/view/accessibility/AccessibilityNodeInfo;

    :cond_0
    if-nez v0, :cond_2

    invoke-static {}, Lcom/miui/luckymoney/service/LuckyMoneyAccessibilityService;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "nodeinfo is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/miui/luckymoney/service/LuckyMoneyAccessibilityService$1;->times:I

    if-ge v0, v3, :cond_1

    iget v0, p0, Lcom/miui/luckymoney/service/LuckyMoneyAccessibilityService$1;->times:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/miui/luckymoney/service/LuckyMoneyAccessibilityService$1;->times:I

    iget-object v0, p0, Lcom/miui/luckymoney/service/LuckyMoneyAccessibilityService$1;->this$0:Lcom/miui/luckymoney/service/LuckyMoneyAccessibilityService;

    invoke-static {v0}, Lcom/miui/luckymoney/service/LuckyMoneyAccessibilityService;->-get2(Lcom/miui/luckymoney/service/LuckyMoneyAccessibilityService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void

    :cond_2
    const-string/jumbo v1, "\u5143"

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->findAccessibilityNodeInfosByText(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_4

    invoke-static {}, Lcom/miui/luckymoney/service/LuckyMoneyAccessibilityService;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "not find \u5143"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/miui/luckymoney/service/LuckyMoneyAccessibilityService$1;->times:I

    if-ge v0, v3, :cond_3

    iget v0, p0, Lcom/miui/luckymoney/service/LuckyMoneyAccessibilityService$1;->times:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/miui/luckymoney/service/LuckyMoneyAccessibilityService$1;->times:I

    iget-object v0, p0, Lcom/miui/luckymoney/service/LuckyMoneyAccessibilityService$1;->this$0:Lcom/miui/luckymoney/service/LuckyMoneyAccessibilityService;

    invoke-static {v0}, Lcom/miui/luckymoney/service/LuckyMoneyAccessibilityService;->-get2(Lcom/miui/luckymoney/service/LuckyMoneyAccessibilityService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    return-void

    :cond_4
    :try_start_0
    iget-object v1, p0, Lcom/miui/luckymoney/service/LuckyMoneyAccessibilityService$1;->this$0:Lcom/miui/luckymoney/service/LuckyMoneyAccessibilityService;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo;

    const-string/jumbo v2, "\u5df2\u5b58\u5165\u4f59\u989d"

    invoke-static {v1, v0, v2}, Lcom/miui/luckymoney/service/LuckyMoneyAccessibilityService;->-wrap0(Lcom/miui/luckymoney/service/LuckyMoneyAccessibilityService;Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/miui/luckymoney/service/LuckyMoneyAccessibilityService;->-get0()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "moneyStr "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/miui/luckymoney/service/LuckyMoneyAccessibilityService$1;->this$0:Lcom/miui/luckymoney/service/LuckyMoneyAccessibilityService;

    invoke-static {v1}, Lcom/miui/luckymoney/service/LuckyMoneyAccessibilityService;->-get1(Lcom/miui/luckymoney/service/LuckyMoneyAccessibilityService;)Lcom/miui/luckymoney/config/CommonConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/luckymoney/config/CommonConfig;->getReceiveTotalLuckyMoney()J

    move-result-wide v2

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-long v0, v0

    iget-object v4, p0, Lcom/miui/luckymoney/service/LuckyMoneyAccessibilityService$1;->this$0:Lcom/miui/luckymoney/service/LuckyMoneyAccessibilityService;

    invoke-static {v4}, Lcom/miui/luckymoney/service/LuckyMoneyAccessibilityService;->-get1(Lcom/miui/luckymoney/service/LuckyMoneyAccessibilityService;)Lcom/miui/luckymoney/config/CommonConfig;

    move-result-object v4

    add-long/2addr v2, v0

    invoke-virtual {v4, v2, v3}, Lcom/miui/luckymoney/config/CommonConfig;->saveReceiveTotalLuckyMoney(J)V

    iget-object v2, p0, Lcom/miui/luckymoney/service/LuckyMoneyAccessibilityService$1;->this$0:Lcom/miui/luckymoney/service/LuckyMoneyAccessibilityService;

    invoke-static {v2}, Lcom/miui/luckymoney/service/LuckyMoneyAccessibilityService;->-get1(Lcom/miui/luckymoney/service/LuckyMoneyAccessibilityService;)Lcom/miui/luckymoney/config/CommonConfig;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/luckymoney/service/LuckyMoneyAccessibilityService$1;->this$0:Lcom/miui/luckymoney/service/LuckyMoneyAccessibilityService;

    invoke-static {v3}, Lcom/miui/luckymoney/service/LuckyMoneyAccessibilityService;->-get1(Lcom/miui/luckymoney/service/LuckyMoneyAccessibilityService;)Lcom/miui/luckymoney/config/CommonConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/luckymoney/config/CommonConfig;->getQQMoney()J

    move-result-wide v4

    add-long/2addr v4, v0

    invoke-virtual {v2, v4, v5}, Lcom/miui/luckymoney/config/CommonConfig;->setQQMoney(J)V

    iget-object v2, p0, Lcom/miui/luckymoney/service/LuckyMoneyAccessibilityService$1;->this$0:Lcom/miui/luckymoney/service/LuckyMoneyAccessibilityService;

    invoke-static {v2}, Lcom/miui/luckymoney/service/LuckyMoneyAccessibilityService;->-get1(Lcom/miui/luckymoney/service/LuckyMoneyAccessibilityService;)Lcom/miui/luckymoney/config/CommonConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/luckymoney/config/CommonConfig;->getTodayQQMoney()J

    move-result-wide v2

    iget-object v4, p0, Lcom/miui/luckymoney/service/LuckyMoneyAccessibilityService$1;->this$0:Lcom/miui/luckymoney/service/LuckyMoneyAccessibilityService;

    invoke-static {v4}, Lcom/miui/luckymoney/service/LuckyMoneyAccessibilityService;->-get1(Lcom/miui/luckymoney/service/LuckyMoneyAccessibilityService;)Lcom/miui/luckymoney/config/CommonConfig;

    move-result-object v4

    add-long/2addr v0, v2

    invoke-virtual {v4, v0, v1}, Lcom/miui/luckymoney/config/CommonConfig;->setTodayQQMoney(J)V

    :cond_5
    :goto_0
    return-void

    :cond_6
    iget v0, p0, Lcom/miui/luckymoney/service/LuckyMoneyAccessibilityService$1;->times:I

    if-ge v0, v3, :cond_5

    iget v0, p0, Lcom/miui/luckymoney/service/LuckyMoneyAccessibilityService$1;->times:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/miui/luckymoney/service/LuckyMoneyAccessibilityService$1;->times:I

    iget-object v0, p0, Lcom/miui/luckymoney/service/LuckyMoneyAccessibilityService$1;->this$0:Lcom/miui/luckymoney/service/LuckyMoneyAccessibilityService;

    invoke-static {v0}, Lcom/miui/luckymoney/service/LuckyMoneyAccessibilityService;->-get2(Lcom/miui/luckymoney/service/LuckyMoneyAccessibilityService;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x258

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/miui/luckymoney/service/LuckyMoneyAccessibilityService;->-get0()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "QQ get money failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
