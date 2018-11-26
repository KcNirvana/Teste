.class final Lcom/miui/luckymoney/utils/ScreenUtil$1;
.super Landroid/content/BroadcastReceiver;
.source ""


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/miui/luckymoney/utils/ScreenUtil;->-set1(Z)Z

    invoke-static {}, Lcom/miui/luckymoney/utils/ScreenUtil;->-get0()Landroid/app/PendingIntent;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/miui/luckymoney/ui/view/PendingIntentRunnable;

    invoke-static {}, Lcom/miui/luckymoney/utils/ScreenUtil;->-get0()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/luckymoney/ui/view/PendingIntentRunnable;-><init>(Landroid/app/PendingIntent;)V

    invoke-virtual {v0}, Lcom/miui/luckymoney/ui/view/PendingIntentRunnable;->run()V

    invoke-static {v2}, Lcom/miui/luckymoney/utils/ScreenUtil;->-set0(Landroid/app/PendingIntent;)Landroid/app/PendingIntent;

    invoke-static {}, Lcom/miui/luckymoney/utils/ScreenUtil;->notifyKeyguardUnlocked()V

    :cond_0
    return-void
.end method
