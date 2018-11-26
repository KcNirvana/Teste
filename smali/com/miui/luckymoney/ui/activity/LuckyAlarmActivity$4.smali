.class final Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;

.field final synthetic val$item:Lcom/miui/luckymoney/webapi/LuckyAlarmResult$AlarmItem;


# direct methods
.method constructor <init>(Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;Lcom/miui/luckymoney/webapi/LuckyAlarmResult$AlarmItem;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity$4;->this$0:Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;

    iput-object p2, p0, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity$4;->val$item:Lcom/miui/luckymoney/webapi/LuckyAlarmResult$AlarmItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity$4;->this$0:Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;

    iget-object v1, p0, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity$4;->val$item:Lcom/miui/luckymoney/webapi/LuckyAlarmResult$AlarmItem;

    iget-object v1, v1, Lcom/miui/luckymoney/webapi/LuckyAlarmResult$AlarmItem;->intent:Landroid/content/Intent;

    invoke-static {}, Lcom/miui/common/b/f;->aHS()Landroid/os/UserHandle;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/miui/common/b/n;->aIJ(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method
