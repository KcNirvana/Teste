.class final Lcom/miui/securitycenter/service/e;
.super Landroid/content/BroadcastReceiver;
.source ""


# instance fields
.field final synthetic aXX:Lcom/miui/securitycenter/service/NotificationService;


# direct methods
.method constructor <init>(Lcom/miui/securitycenter/service/NotificationService;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securitycenter/service/e;->aXX:Lcom/miui/securitycenter/service/NotificationService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    const/4 v4, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v2, 0x0

    const-string/jumbo v1, "com.miui.securitycenter.action.UPDATE_NOTIFICATION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v0, "update_notification"

    invoke-static {v0}, Lcom/miui/common/b/h;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/securitycenter/service/e;->aXX:Lcom/miui/securitycenter/service/NotificationService;

    const-string/jumbo v1, "notify"

    invoke-virtual {p2, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/securitycenter/service/NotificationService;->brr(Lcom/miui/securitycenter/service/NotificationService;Z)Z

    iget-object v0, p0, Lcom/miui/securitycenter/service/e;->aXX:Lcom/miui/securitycenter/service/NotificationService;

    invoke-static {p1}, Lcom/miui/powercenter/a/a;->baC(Landroid/content/Context;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/securitycenter/service/NotificationService;->bro(Lcom/miui/securitycenter/service/NotificationService;I)I

    iget-object v0, p0, Lcom/miui/securitycenter/service/e;->aXX:Lcom/miui/securitycenter/service/NotificationService;

    invoke-static {v0, v2, v3}, Lcom/miui/securitycenter/service/NotificationService;->brw(Lcom/miui/securitycenter/service/NotificationService;J)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v1, "com.miui.securitycenter.action.CLEAR_MEMORY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v0, "clear_memory"

    invoke-static {v0}, Lcom/miui/common/b/h;->d(Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.android.systemui.taskmanager.Clear"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-wide/16 v0, 0x3e8

    iget-object v2, p0, Lcom/miui/securitycenter/service/e;->aXX:Lcom/miui/securitycenter/service/NotificationService;

    invoke-static {}, Lcom/miui/daemon/performance/PerfShielderManager;->getFreeMemory()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Lcom/miui/securitycenter/service/NotificationService;->brv(Lcom/miui/securitycenter/service/NotificationService;J)J

    iget-object v2, p0, Lcom/miui/securitycenter/service/e;->aXX:Lcom/miui/securitycenter/service/NotificationService;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Lcom/miui/securitycenter/service/NotificationService;->bru(Lcom/miui/securitycenter/service/NotificationService;J)J

    iget-object v2, p0, Lcom/miui/securitycenter/service/e;->aXX:Lcom/miui/securitycenter/service/NotificationService;

    invoke-static {v2, v0, v1}, Lcom/miui/securitycenter/service/NotificationService;->brw(Lcom/miui/securitycenter/service/NotificationService;J)V

    goto :goto_0

    :cond_2
    const-string/jumbo v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "update_battery"

    invoke-static {v0}, Lcom/miui/common/b/h;->d(Ljava/lang/String;)V

    const-string/jumbo v0, "level"

    invoke-virtual {p2, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string/jumbo v1, "scale"

    invoke-virtual {p2, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    mul-int/lit8 v0, v0, 0x64

    div-int/2addr v0, v1

    iget-object v1, p0, Lcom/miui/securitycenter/service/e;->aXX:Lcom/miui/securitycenter/service/NotificationService;

    invoke-static {v1}, Lcom/miui/securitycenter/service/NotificationService;->bri(Lcom/miui/securitycenter/service/NotificationService;)I

    move-result v1

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lcom/miui/securitycenter/service/e;->aXX:Lcom/miui/securitycenter/service/NotificationService;

    invoke-static {v1, v0}, Lcom/miui/securitycenter/service/NotificationService;->bro(Lcom/miui/securitycenter/service/NotificationService;I)I

    iget-object v0, p0, Lcom/miui/securitycenter/service/e;->aXX:Lcom/miui/securitycenter/service/NotificationService;

    invoke-static {v0, v2, v3}, Lcom/miui/securitycenter/service/NotificationService;->brw(Lcom/miui/securitycenter/service/NotificationService;J)V

    goto :goto_0
.end method
