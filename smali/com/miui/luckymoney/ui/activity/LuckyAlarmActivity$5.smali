.class final Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;I)V
    .locals 0

    iput-object p1, p0, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity$5;->this$0:Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;

    iput p2, p0, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity$5;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity$5;->this$0:Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;

    invoke-static {v0}, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;->-get4(Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    iget v1, p0, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity$5;->val$index:I

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity$5;->this$0:Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;

    invoke-static {v0}, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;->-get4(Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;)Landroid/widget/ListView;

    move-result-object v0

    iget v1, p0, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity$5;->val$index:I

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    :cond_0
    return-void
.end method
