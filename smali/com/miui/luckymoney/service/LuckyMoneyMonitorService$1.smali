.class final Lcom/miui/luckymoney/service/LuckyMoneyMonitorService$1;
.super Lcom/miui/gamebooster/service/NotificationListenerCallback;
.source ""


# instance fields
.field final synthetic this$0:Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;


# direct methods
.method constructor <init>(Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService$1;->this$0:Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;

    invoke-direct {p0}, Lcom/miui/gamebooster/service/NotificationListenerCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onNotificationPostedCallBack(Landroid/service/notification/StatusBarNotification;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService$1;->this$0:Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;

    invoke-virtual {v0, p1}, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->onNotificationPosted(Landroid/service/notification/StatusBarNotification;)V

    return-void
.end method

.method public onNotificationRemovedCallBack(Landroid/service/notification/StatusBarNotification;)V
    .locals 0

    return-void
.end method
