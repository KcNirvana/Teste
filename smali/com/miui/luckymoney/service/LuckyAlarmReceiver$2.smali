.class final Lcom/miui/luckymoney/service/LuckyAlarmReceiver$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/miui/luckymoney/service/LuckyAlarmReceiver;

.field final synthetic val$alarmHeadsUpView:Lcom/miui/luckymoney/ui/view/AlarmHeadsUpView;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/miui/luckymoney/service/LuckyAlarmReceiver;Landroid/content/Context;Lcom/miui/luckymoney/ui/view/AlarmHeadsUpView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/luckymoney/service/LuckyAlarmReceiver$2;->this$0:Lcom/miui/luckymoney/service/LuckyAlarmReceiver;

    iput-object p2, p0, Lcom/miui/luckymoney/service/LuckyAlarmReceiver$2;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/miui/luckymoney/service/LuckyAlarmReceiver$2;->val$alarmHeadsUpView:Lcom/miui/luckymoney/ui/view/AlarmHeadsUpView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/luckymoney/service/LuckyAlarmReceiver$2;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/luckymoney/service/LuckyAlarmReceiver$2;->this$0:Lcom/miui/luckymoney/service/LuckyAlarmReceiver;

    invoke-static {v1}, Lcom/miui/luckymoney/service/LuckyAlarmReceiver;->-get0(Lcom/miui/luckymoney/service/LuckyAlarmReceiver;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/miui/luckymoney/service/LuckyAlarmReceiver$2;->val$context:Landroid/content/Context;

    const v1, 0x7f060001

    invoke-static {v0, v1}, Lcom/miui/luckymoney/utils/NotificationUtil;->stopNotification(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/miui/luckymoney/service/LuckyAlarmReceiver$2;->val$alarmHeadsUpView:Lcom/miui/luckymoney/ui/view/AlarmHeadsUpView;

    invoke-virtual {v0}, Lcom/miui/luckymoney/ui/view/AlarmHeadsUpView;->dismiss()V

    iget-object v0, p0, Lcom/miui/luckymoney/service/LuckyAlarmReceiver$2;->this$0:Lcom/miui/luckymoney/service/LuckyAlarmReceiver;

    invoke-static {v0}, Lcom/miui/luckymoney/service/LuckyAlarmReceiver;->-get0(Lcom/miui/luckymoney/service/LuckyAlarmReceiver;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/luckymoney/stats/MiStatUtil;->recordLuckyAlarmNoti(Ljava/lang/String;Z)V

    return-void
.end method
