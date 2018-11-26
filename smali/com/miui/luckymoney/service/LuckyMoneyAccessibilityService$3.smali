.class final Lcom/miui/luckymoney/service/LuckyMoneyAccessibilityService$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/miui/luckymoney/service/LuckyMoneyAccessibilityService;

.field final synthetic val$source:Landroid/view/accessibility/AccessibilityNodeInfo;


# direct methods
.method constructor <init>(Lcom/miui/luckymoney/service/LuckyMoneyAccessibilityService;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/luckymoney/service/LuckyMoneyAccessibilityService$3;->this$0:Lcom/miui/luckymoney/service/LuckyMoneyAccessibilityService;

    iput-object p2, p0, Lcom/miui/luckymoney/service/LuckyMoneyAccessibilityService$3;->val$source:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/miui/luckymoney/service/LuckyMoneyAccessibilityService$3;->val$source:Landroid/view/accessibility/AccessibilityNodeInfo;

    if-eqz v0, :cond_0

    const-string/jumbo v1, "\u53d1\u4e86\u4e00\u4e2a\u7ea2\u5305"

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->findAccessibilityNodeInfosByText(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/miui/luckymoney/service/LuckyMoneyAccessibilityService$3;->this$0:Lcom/miui/luckymoney/service/LuckyMoneyAccessibilityService;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/luckymoney/service/LuckyMoneyAccessibilityService;->-set0(Lcom/miui/luckymoney/service/LuckyMoneyAccessibilityService;Z)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/miui/luckymoney/service/LuckyMoneyAccessibilityService$3;->this$0:Lcom/miui/luckymoney/service/LuckyMoneyAccessibilityService;

    invoke-static {v0, v2}, Lcom/miui/luckymoney/service/LuckyMoneyAccessibilityService;->-set0(Lcom/miui/luckymoney/service/LuckyMoneyAccessibilityService;Z)Z

    goto :goto_0
.end method
