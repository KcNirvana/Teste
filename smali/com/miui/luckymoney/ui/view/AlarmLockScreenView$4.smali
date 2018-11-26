.class final Lcom/miui/luckymoney/ui/view/AlarmLockScreenView$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/miui/luckymoney/ui/view/AlarmLockScreenView;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/miui/luckymoney/ui/view/AlarmLockScreenView;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/luckymoney/ui/view/AlarmLockScreenView$4;->this$0:Lcom/miui/luckymoney/ui/view/AlarmLockScreenView;

    iput-object p2, p0, Lcom/miui/luckymoney/ui/view/AlarmLockScreenView$4;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/miui/luckymoney/ui/view/AlarmLockScreenView$4;->this$0:Lcom/miui/luckymoney/ui/view/AlarmLockScreenView;

    invoke-virtual {v0}, Lcom/miui/luckymoney/ui/view/AlarmLockScreenView;->dismiss()V

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/luckymoney/ui/view/AlarmLockScreenView$4;->val$context:Landroid/content/Context;

    const-class v2, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/luckymoney/ui/view/AlarmLockScreenView$4;->val$context:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/luckymoney/ui/view/AlarmLockScreenView$4;->val$context:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/miui/luckymoney/utils/ScreenUtil;->unlockKeyguard(Landroid/content/Context;Landroid/app/PendingIntent;)V

    iget-object v0, p0, Lcom/miui/luckymoney/ui/view/AlarmLockScreenView$4;->val$context:Landroid/content/Context;

    const v1, 0x7f060001

    invoke-static {v0, v1}, Lcom/miui/luckymoney/utils/NotificationUtil;->stopNotification(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/miui/luckymoney/ui/view/AlarmLockScreenView$4;->this$0:Lcom/miui/luckymoney/ui/view/AlarmLockScreenView;

    invoke-virtual {v0}, Lcom/miui/luckymoney/ui/view/AlarmLockScreenView;->dismiss()V

    return-void
.end method
