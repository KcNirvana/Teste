.class final Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity$OnScrollListener$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity$OnScrollListener;

.field final synthetic val$offset:F


# direct methods
.method constructor <init>(Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity$OnScrollListener;F)V
    .locals 0

    iput-object p1, p0, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity$OnScrollListener$1;->this$1:Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity$OnScrollListener;

    iput p2, p0, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity$OnScrollListener$1;->val$offset:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity$OnScrollListener$1;->this$1:Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity$OnScrollListener;

    iget-object v0, v0, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity$OnScrollListener;->this$0:Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;

    invoke-static {v0}, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;->-get6(Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextSize()F

    move-result v0

    iget-object v1, p0, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity$OnScrollListener$1;->this$1:Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity$OnScrollListener;

    invoke-static {v1}, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity$OnScrollListener;->-get0(Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity$OnScrollListener;)F

    move-result v1

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity$OnScrollListener$1;->this$1:Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity$OnScrollListener;

    iget-object v1, v1, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity$OnScrollListener;->this$0:Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;

    invoke-static {v1}, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;->-get7(Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity$OnScrollListener$1;->this$1:Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity$OnScrollListener;

    invoke-static {v2}, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity$OnScrollListener;->-get0(Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity$OnScrollListener;)F

    move-result v2

    iget v3, p0, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity$OnScrollListener$1;->val$offset:F

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v3, v4, v3

    mul-float/2addr v0, v3

    add-float/2addr v0, v2

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void
.end method
