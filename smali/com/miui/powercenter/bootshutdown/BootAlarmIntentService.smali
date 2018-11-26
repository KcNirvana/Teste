.class public Lcom/miui/powercenter/bootshutdown/BootAlarmIntentService;
.super Landroid/app/IntentService;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string/jumbo v0, "BootAlarmIntentService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private aSA()V
    .locals 2

    invoke-static {}, Lcom/miui/powercenter/a;->beR()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/miui/powercenter/bootshutdown/BootAlarmIntentService;->aSx()V

    :goto_0
    return-void

    :cond_0
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/miui/powercenter/bootshutdown/BootAlarmIntentService;->aSC(J)V

    goto :goto_0
.end method

.method private aSB()V
    .locals 7

    const/4 v6, 0x0

    invoke-direct {p0}, Lcom/miui/powercenter/bootshutdown/BootAlarmIntentService;->aSy()Ljava/util/Calendar;

    move-result-object v1

    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/miui/powercenter/bootshutdown/BootAlarmIntentService;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v2, "com.miui.powercenter.RESET_BOOT_TIME"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p0, v6, v0, v6}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {p0}, Lcom/miui/powercenter/bootshutdown/BootAlarmIntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v3, "alarm"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-virtual {v0, v6, v4, v5, v2}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    return-void
.end method

.method private aSC(J)V
    .locals 3

    const-string/jumbo v0, "security"

    invoke-virtual {p0, v0}, Lcom/miui/powercenter/bootshutdown/BootAlarmIntentService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/security/SecurityManager;

    const-string/jumbo v1, "com.miui.powercenter.provider.BootAlarmIntentService"

    invoke-virtual {v0, v1, p1, p2}, Lmiui/security/SecurityManager;->setWakeUpTime(Ljava/lang/String;J)V

    const-string/jumbo v0, "BootAlarmIntentService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setwakeuptime "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private aSx()V
    .locals 4

    invoke-direct {p0}, Lcom/miui/powercenter/bootshutdown/BootAlarmIntentService;->aSy()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-direct {p0, v0, v1}, Lcom/miui/powercenter/bootshutdown/BootAlarmIntentService;->aSC(J)V

    return-void
.end method

.method private aSy()Ljava/util/Calendar;
    .locals 7

    const/4 v6, 0x0

    invoke-static {}, Lcom/miui/powercenter/a;->beT()I

    move-result v0

    invoke-static {}, Lcom/miui/powercenter/a;->beV()I

    move-result v1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    div-int/lit8 v3, v0, 0x3c

    const/16 v4, 0xb

    invoke-virtual {v2, v4, v3}, Ljava/util/Calendar;->set(II)V

    rem-int/lit8 v0, v0, 0x3c

    const/16 v3, 0xc

    invoke-virtual {v2, v3, v0}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xd

    invoke-virtual {v2, v0, v6}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xe

    invoke-virtual {v2, v0, v6}, Ljava/util/Calendar;->set(II)V

    const/4 v0, 0x1

    invoke-static {p0, v1, v2, v0}, Lcom/miui/powercenter/bootshutdown/e;->aTf(Landroid/content/Context;ILjava/util/Calendar;Z)V

    return-object v2
.end method

.method private aSz()V
    .locals 4

    const-wide/16 v2, 0x0

    invoke-static {}, Lcom/miui/powercenter/a;->beR()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/miui/powercenter/bootshutdown/c;->aSP()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/miui/powercenter/a;->beL(Z)V

    invoke-direct {p0, v2, v3}, Lcom/miui/powercenter/bootshutdown/BootAlarmIntentService;->aSC(J)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/miui/powercenter/bootshutdown/BootAlarmIntentService;->aSx()V

    goto :goto_0

    :cond_1
    invoke-direct {p0, v2, v3}, Lcom/miui/powercenter/bootshutdown/BootAlarmIntentService;->aSC(J)V

    goto :goto_0
.end method


# virtual methods
.method public onCreate()V
    .locals 0

    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "com.miui.powercenter.SET_BOOT_TIME"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "BootAlarmIntentService"

    const-string/jumbo v1, "Set boot time action"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/miui/powercenter/bootshutdown/BootAlarmIntentService;->aSA()V

    invoke-direct {p0}, Lcom/miui/powercenter/bootshutdown/BootAlarmIntentService;->aSB()V

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "com.miui.powercenter.RESET_BOOT_TIME"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/miui/powercenter/a/k;->bch()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "BootAlarmIntentService"

    const-string/jumbo v1, "Reset boot time action"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/miui/powercenter/bootshutdown/BootAlarmIntentService;->aSz()V

    invoke-direct {p0}, Lcom/miui/powercenter/bootshutdown/BootAlarmIntentService;->aSB()V

    goto :goto_0
.end method
