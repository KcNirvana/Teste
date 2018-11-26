.class final Lcom/miui/luckymoney/service/LuckyMoneyMonitorService$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic this$0:Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;


# direct methods
.method constructor <init>(Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService$2;->this$0:Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4

    iget-object v0, p0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService$2;->this$0:Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;

    invoke-static {p2}, Lcom/miui/gamebooster/service/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/gamebooster/service/INotificationListener;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->-set5(Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;Lcom/miui/gamebooster/service/INotificationListener;)Lcom/miui/gamebooster/service/INotificationListener;

    :try_start_0
    iget-object v0, p0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService$2;->this$0:Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;

    invoke-static {v0}, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->-get11(Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;)Lcom/miui/gamebooster/service/INotificationListener;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService$2;->this$0:Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;

    invoke-static {v1}, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->-get12(Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;)Lcom/miui/gamebooster/service/NotificationListenerCallback;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/miui/gamebooster/service/INotificationListener;->ot(Lcom/miui/gamebooster/service/INotificationListenerCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->-get0()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mNoticationListenerBinder:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService$2;->this$0:Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;->-set5(Lcom/miui/luckymoney/service/LuckyMoneyMonitorService;Lcom/miui/gamebooster/service/INotificationListener;)Lcom/miui/gamebooster/service/INotificationListener;

    return-void
.end method
