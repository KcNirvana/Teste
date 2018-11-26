.class public Lcom/miui/powercenter/bootshutdown/ShutdownAlarmIntentService;
.super Landroid/app/IntentService;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string/jumbo v0, "ShutdownAlarmIntentService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private aSW()V
    .locals 2

    invoke-static {p0}, Lcom/miui/powercenter/bootshutdown/a;->aSp(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/miui/powercenter/bootshutdown/ShutdownAlarmIntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    invoke-direct {p0}, Lcom/miui/powercenter/bootshutdown/ShutdownAlarmIntentService;->aSZ()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    invoke-direct {p0}, Lcom/miui/powercenter/bootshutdown/ShutdownAlarmIntentService;->aSY()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    return-void
.end method

.method private aSX()Z
    .locals 5

    const/4 v4, 0x0

    invoke-static {}, Lcom/miui/powercenter/a;->beX()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    invoke-static {}, Lcom/miui/powercenter/a;->beW()I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v4}, Lcom/miui/powercenter/a;->beM(Z)V

    return v4

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private aSY()Landroid/app/PendingIntent;
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/powercenter/bootshutdown/ShutdownAlarmIntentService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "com.miui.powercenter.SHUTDOWN_NOW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/miui/powercenter/bootshutdown/ShutdownAlarmIntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2, v0, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private aSZ()Landroid/app/PendingIntent;
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/powercenter/bootshutdown/ShutdownAlarmIntentService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "com.miui.powercenter.SHUTDOWN_ORNOT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/miui/powercenter/bootshutdown/ShutdownAlarmIntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2, v0, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private aTa()V
    .locals 6

    const/4 v5, 0x0

    invoke-static {}, Lcom/miui/powercenter/a;->beS()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/powercenter/bootshutdown/ShutdownAlarmIntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-static {}, Lcom/miui/powercenter/a;->beU()I

    move-result v2

    div-int/lit8 v3, v2, 0x3c

    const/16 v4, 0xb

    invoke-virtual {v1, v4, v3}, Ljava/util/Calendar;->set(II)V

    rem-int/lit8 v2, v2, 0x3c

    const/16 v3, 0xc

    invoke-virtual {v1, v3, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xd

    invoke-virtual {v1, v2, v5}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xe

    invoke-virtual {v1, v2, v5}, Ljava/util/Calendar;->set(II)V

    invoke-static {}, Lcom/miui/powercenter/a;->beW()I

    move-result v2

    invoke-static {p0, v2, v1, v5}, Lcom/miui/powercenter/bootshutdown/e;->aTf(Landroid/content/Context;ILjava/util/Calendar;Z)V

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-direct {p0}, Lcom/miui/powercenter/bootshutdown/ShutdownAlarmIntentService;->aSZ()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v5, v2, v3, v1}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    :cond_0
    return-void
.end method

.method private aTb()V
    .locals 6

    invoke-virtual {p0}, Lcom/miui/powercenter/bootshutdown/ShutdownAlarmIntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x4e20

    add-long/2addr v2, v4

    invoke-direct {p0}, Lcom/miui/powercenter/bootshutdown/ShutdownAlarmIntentService;->aSY()Landroid/app/PendingIntent;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v2, v3, v1}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    return-void
.end method

.method private aTc()V
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x19

    if-le v0, v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.android.internal.intent.action.REQUEST_SHUTDOWN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    :goto_0
    const-string/jumbo v1, "android.intent.extra.KEY_CONFIRM"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/miui/powercenter/bootshutdown/ShutdownAlarmIntentService;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.ACTION_REQUEST_SHUTDOWN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private aTd()V
    .locals 3

    invoke-virtual {p0}, Lcom/miui/powercenter/bootshutdown/ShutdownAlarmIntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const-string/jumbo v1, "tag"

    const v2, 0x10000006

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    return-void
.end method


# virtual methods
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

    const-string/jumbo v1, "com.miui.powercenter.CANCEL_SHUTDOWN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "ShutdownOnService"

    const-string/jumbo v1, "ACTION_CANCEL_SHUTDOWN"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/miui/powercenter/bootshutdown/ShutdownAlarmIntentService;->aSW()V

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "com.miui.powercenter.SET_SHUTDOWN_ALARM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string/jumbo v0, "ShutdownOnService"

    const-string/jumbo v1, "ACTION_SET_SHUTDOWN_ALARM"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/miui/powercenter/bootshutdown/a;->aSp(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/miui/powercenter/bootshutdown/ShutdownAlarmIntentService;->aSW()V

    invoke-direct {p0}, Lcom/miui/powercenter/bootshutdown/ShutdownAlarmIntentService;->aTa()V

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "com.miui.powercenter.RESET_SHUTDOWNTIME"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string/jumbo v0, "ShutdownOnService"

    const-string/jumbo v1, "ACTION_RESET_SHUTDOWNTIME"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/miui/powercenter/bootshutdown/ShutdownAlarmIntentService;->aSW()V

    invoke-direct {p0}, Lcom/miui/powercenter/bootshutdown/ShutdownAlarmIntentService;->aSX()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/miui/powercenter/bootshutdown/ShutdownAlarmIntentService;->aTa()V

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "com.miui.powercenter.SHUTDOWN_ORNOT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string/jumbo v0, "ShutdownOnService"

    const-string/jumbo v1, "ACTION_SHUTDOWN_ORNOT"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/miui/powercenter/bootshutdown/a;->aSu(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/miui/powercenter/bootshutdown/ShutdownAlarmIntentService;->aTb()V

    invoke-direct {p0}, Lcom/miui/powercenter/bootshutdown/ShutdownAlarmIntentService;->aTd()V

    goto :goto_0

    :cond_6
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "com.miui.powercenter.SHUTDOWN_NOW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "ShutdownOnService"

    const-string/jumbo v1, "ACTION_SHUTDOWN_NOW"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/miui/powercenter/bootshutdown/a;->aSp(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/miui/powercenter/bootshutdown/a;->aSm(Landroid/content/Context;)Z

    move-result v0

    invoke-static {}, Lcom/miui/powercenter/a/k;->bck()Z

    move-result v1

    if-nez v0, :cond_7

    const-string/jumbo v0, "ShutdownOnService"

    const-string/jumbo v1, "canceled, phone not idle"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/miui/powercenter/bootshutdown/a;->aSs(Landroid/content/Context;)V

    goto/16 :goto_0

    :cond_7
    if-eqz v1, :cond_8

    const-string/jumbo v0, "ShutdownOnService"

    const-string/jumbo v1, "canceled, playing game"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/miui/powercenter/bootshutdown/a;->aSt(Landroid/content/Context;)V

    goto/16 :goto_0

    :cond_8
    const-string/jumbo v0, "ShutdownOnService"

    const-string/jumbo v1, "shutdown now"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/miui/powercenter/bootshutdown/c;->aSN(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/miui/powercenter/bootshutdown/ShutdownAlarmIntentService;->aTc()V

    goto/16 :goto_0
.end method
