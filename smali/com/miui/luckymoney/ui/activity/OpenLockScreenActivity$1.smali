.class final Lcom/miui/luckymoney/ui/activity/OpenLockScreenActivity$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/miui/luckymoney/ui/activity/OpenLockScreenActivity;


# direct methods
.method constructor <init>(Lcom/miui/luckymoney/ui/activity/OpenLockScreenActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/luckymoney/ui/activity/OpenLockScreenActivity$1;->this$0:Lcom/miui/luckymoney/ui/activity/OpenLockScreenActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    const/16 v8, 0x12c

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/OpenLockScreenActivity$1;->this$0:Lcom/miui/luckymoney/ui/activity/OpenLockScreenActivity;

    invoke-static {v0}, Lcom/miui/luckymoney/ui/activity/OpenLockScreenActivity;->-get1(Lcom/miui/luckymoney/ui/activity/OpenLockScreenActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/OpenLockScreenActivity$1;->this$0:Lcom/miui/luckymoney/ui/activity/OpenLockScreenActivity;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/miui/luckymoney/ui/activity/OpenLockScreenActivity;->-set0(Lcom/miui/luckymoney/ui/activity/OpenLockScreenActivity;Z)Z

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/OpenLockScreenActivity$1;->this$0:Lcom/miui/luckymoney/ui/activity/OpenLockScreenActivity;

    invoke-virtual {v0}, Lcom/miui/luckymoney/ui/activity/OpenLockScreenActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/luckymoney/utils/ScreenUtil;->isScreenLocked(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/OpenLockScreenActivity$1;->this$0:Lcom/miui/luckymoney/ui/activity/OpenLockScreenActivity;

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "xiaomi.intent.action.SHOW_SECURE_KEYGUARD"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/miui/luckymoney/ui/activity/OpenLockScreenActivity;->sendBroadcast(Landroid/content/Intent;)V

    move v2, v1

    :goto_0
    if-ge v2, v8, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0xa

    :try_start_0
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v4, v6, v4

    long-to-int v0, v4

    if-gez v0, :cond_1

    move v0, v1

    :cond_1
    add-int/2addr v0, v2

    iget-object v2, p0, Lcom/miui/luckymoney/ui/activity/OpenLockScreenActivity$1;->this$0:Lcom/miui/luckymoney/ui/activity/OpenLockScreenActivity;

    invoke-virtual {v2}, Lcom/miui/luckymoney/ui/activity/OpenLockScreenActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/luckymoney/utils/ScreenUtil;->isScreenLocked(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/OpenLockScreenActivity$1;->this$0:Lcom/miui/luckymoney/ui/activity/OpenLockScreenActivity;

    invoke-virtual {v0}, Lcom/miui/luckymoney/ui/activity/OpenLockScreenActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/luckymoney/utils/ScreenUtil;->isScreenLocked(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/OpenLockScreenActivity$1;->this$0:Lcom/miui/luckymoney/ui/activity/OpenLockScreenActivity;

    invoke-virtual {v0}, Lcom/miui/luckymoney/ui/activity/OpenLockScreenActivity;->finish()V

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/OpenLockScreenActivity$1;->this$0:Lcom/miui/luckymoney/ui/activity/OpenLockScreenActivity;

    invoke-virtual {v0}, Lcom/miui/luckymoney/ui/activity/OpenLockScreenActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/luckymoney/ui/activity/OpenLockScreenActivity$1;->this$0:Lcom/miui/luckymoney/ui/activity/OpenLockScreenActivity;

    invoke-static {v1}, Lcom/miui/luckymoney/ui/activity/OpenLockScreenActivity;->-get0(Lcom/miui/luckymoney/ui/activity/OpenLockScreenActivity;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/luckymoney/utils/ScreenUtil;->unlockSecureMiuiKeyguard(Landroid/content/Context;Landroid/app/PendingIntent;)V

    :goto_2
    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_3
    move v2, v0

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/OpenLockScreenActivity$1;->this$0:Lcom/miui/luckymoney/ui/activity/OpenLockScreenActivity;

    invoke-static {v0}, Lcom/miui/luckymoney/ui/activity/OpenLockScreenActivity;->-get0(Lcom/miui/luckymoney/ui/activity/OpenLockScreenActivity;)Landroid/app/PendingIntent;

    move-result-object v0

    if-eqz v0, :cond_5

    new-instance v0, Lcom/miui/luckymoney/ui/view/PendingIntentRunnable;

    iget-object v1, p0, Lcom/miui/luckymoney/ui/activity/OpenLockScreenActivity$1;->this$0:Lcom/miui/luckymoney/ui/activity/OpenLockScreenActivity;

    invoke-static {v1}, Lcom/miui/luckymoney/ui/activity/OpenLockScreenActivity;->-get0(Lcom/miui/luckymoney/ui/activity/OpenLockScreenActivity;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/luckymoney/ui/view/PendingIntentRunnable;-><init>(Landroid/app/PendingIntent;)V

    invoke-virtual {v0}, Lcom/miui/luckymoney/ui/view/PendingIntentRunnable;->run()V

    :cond_5
    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/OpenLockScreenActivity$1;->this$0:Lcom/miui/luckymoney/ui/activity/OpenLockScreenActivity;

    invoke-virtual {v0}, Lcom/miui/luckymoney/ui/activity/OpenLockScreenActivity;->finish()V

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/OpenLockScreenActivity$1;->this$0:Lcom/miui/luckymoney/ui/activity/OpenLockScreenActivity;

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "xiaomi.intent.action.SHOW_SECURE_KEYGUARD"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/miui/luckymoney/ui/activity/OpenLockScreenActivity;->sendBroadcast(Landroid/content/Intent;)V

    invoke-static {}, Lcom/miui/luckymoney/utils/ScreenUtil;->notifyKeyguardUnlocked()V

    goto :goto_2
.end method
