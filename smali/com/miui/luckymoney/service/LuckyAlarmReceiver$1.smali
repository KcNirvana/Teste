.class final Lcom/miui/luckymoney/service/LuckyAlarmReceiver$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/miui/luckymoney/service/LuckyAlarmReceiver;

.field final synthetic val$alarmLockScreenView:Lcom/miui/luckymoney/ui/view/AlarmLockScreenView;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/miui/luckymoney/service/LuckyAlarmReceiver;Lcom/miui/luckymoney/ui/view/AlarmLockScreenView;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/luckymoney/service/LuckyAlarmReceiver$1;->this$0:Lcom/miui/luckymoney/service/LuckyAlarmReceiver;

    iput-object p2, p0, Lcom/miui/luckymoney/service/LuckyAlarmReceiver$1;->val$alarmLockScreenView:Lcom/miui/luckymoney/ui/view/AlarmLockScreenView;

    iput-object p3, p0, Lcom/miui/luckymoney/service/LuckyAlarmReceiver$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/miui/luckymoney/service/LuckyAlarmReceiver$1;->val$alarmLockScreenView:Lcom/miui/luckymoney/ui/view/AlarmLockScreenView;

    invoke-virtual {v0}, Lcom/miui/luckymoney/ui/view/AlarmLockScreenView;->dismiss()V

    iget-object v0, p0, Lcom/miui/luckymoney/service/LuckyAlarmReceiver$1;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/luckymoney/service/LuckyAlarmReceiver$1;->this$0:Lcom/miui/luckymoney/service/LuckyAlarmReceiver;

    invoke-static {v1}, Lcom/miui/luckymoney/service/LuckyAlarmReceiver;->-get0(Lcom/miui/luckymoney/service/LuckyAlarmReceiver;)Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x0

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v0, v2, v1, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/luckymoney/service/LuckyAlarmReceiver$1;->val$context:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/miui/luckymoney/utils/ScreenUtil;->unlockKeyguard(Landroid/content/Context;Landroid/app/PendingIntent;)V

    iget-object v0, p0, Lcom/miui/luckymoney/service/LuckyAlarmReceiver$1;->this$0:Lcom/miui/luckymoney/service/LuckyAlarmReceiver;

    invoke-static {v0}, Lcom/miui/luckymoney/service/LuckyAlarmReceiver;->-get0(Lcom/miui/luckymoney/service/LuckyAlarmReceiver;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/luckymoney/stats/MiStatUtil;->recordLuckyAlarmLockedNoti(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/miui/luckymoney/service/LuckyAlarmReceiver$1;->val$context:Landroid/content/Context;

    const v1, 0x7f060001

    invoke-static {v0, v1}, Lcom/miui/luckymoney/utils/NotificationUtil;->stopNotification(Landroid/content/Context;I)V

    return-void
.end method
