.class public Lcom/miui/powercenter/savemode/a;
.super Ljava/lang/Object;
.source ""


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bdV(Landroid/content/Context;J)V
    .locals 5

    const/4 v4, 0x1

    invoke-static {}, Lcom/miui/powercenter/a;->bfj()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lcom/miui/powercenter/savemode/a;->bdX(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/miui/powercenter/a/a;->baL(Landroid/content/Context;)Z

    move-result v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/miui/powercenter/savemode/a;->bea()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/miui/powercenter/a;->bfl()I

    move-result v0

    invoke-static {v0, v4}, Lcom/miui/powercenter/savemode/a;->bdZ(IZ)J

    move-result-wide v0

    const-string/jumbo v2, "PowerSaveAlarmHelper"

    const-string/jumbo v3, "Close save mode in future"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    add-long/2addr v0, p1

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v1}, Lcom/miui/powercenter/savemode/a;->beb(Landroid/content/Context;ZJ)V

    :goto_1
    return-void

    :cond_1
    const-string/jumbo v2, "PowerSaveAlarmHelper"

    const-string/jumbo v3, "Close save mode now"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/miui/powercenter/savemode/a;->bea()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string/jumbo v2, "PowerSaveAlarmHelper"

    const-string/jumbo v3, "Open save mode now"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    add-long/2addr v0, p1

    invoke-static {p0, v4, v0, v1}, Lcom/miui/powercenter/savemode/a;->beb(Landroid/content/Context;ZJ)V

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/miui/powercenter/a;->bfk()I

    move-result v0

    invoke-static {v0, v4}, Lcom/miui/powercenter/savemode/a;->bdZ(IZ)J

    move-result-wide v0

    const-string/jumbo v2, "PowerSaveAlarmHelper"

    const-string/jumbo v3, "Open save mode in future"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public static bdW(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcom/miui/powercenter/savemode/a;->bdX(Landroid/content/Context;)V

    return-void
.end method

.method private static bdX(Landroid/content/Context;)V
    .locals 2

    const-string/jumbo v0, "alarm"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/miui/powercenter/savemode/a;->bdY(Landroid/content/Context;Z)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    return-void
.end method

.method private static bdY(Landroid/content/Context;Z)Landroid/app/PendingIntent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/powercenter/provider/PowerSaveService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "com.miui.powercenter.action.CHANGE_POWER_MODE_ALARM"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "extra_key_power_mode_open"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v1, 0x0

    const/high16 v2, 0x8000000

    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private static bdZ(IZ)J
    .locals 6

    const/4 v4, 0x0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    div-int/lit8 v1, p0, 0x3c

    const/16 v2, 0xb

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    rem-int/lit8 v1, p0, 0x3c

    const/16 v2, 0xc

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xd

    invoke-virtual {v0, v1, v4}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xe

    invoke-virtual {v0, v1, v4}, Ljava/util/Calendar;->set(II)V

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-gtz v1, :cond_0

    const/4 v1, 0x7

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    :cond_0
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method private static bea()Z
    .locals 8

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {}, Lcom/miui/powercenter/a;->bfk()I

    move-result v0

    invoke-static {v0, v3}, Lcom/miui/powercenter/savemode/a;->bdZ(IZ)J

    move-result-wide v4

    invoke-static {}, Lcom/miui/powercenter/a;->bfl()I

    move-result v0

    invoke-static {v0, v3}, Lcom/miui/powercenter/savemode/a;->bdZ(IZ)J

    move-result-wide v0

    cmp-long v6, v0, v4

    if-gez v6, :cond_0

    invoke-static {}, Lcom/miui/powercenter/a;->bfl()I

    move-result v0

    invoke-static {v0, v2}, Lcom/miui/powercenter/savemode/a;->bdZ(IZ)J

    move-result-wide v0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    cmp-long v4, v6, v4

    if-ltz v4, :cond_1

    cmp-long v0, v6, v0

    if-gez v0, :cond_1

    move v0, v2

    :goto_0
    return v0

    :cond_1
    move v0, v3

    goto :goto_0
.end method

.method private static beb(Landroid/content/Context;ZJ)V
    .locals 4

    const-string/jumbo v0, "alarm"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    invoke-static {p0, p1}, Lcom/miui/powercenter/savemode/a;->bdY(Landroid/content/Context;Z)Landroid/app/PendingIntent;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, p2, p3, v1}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    return-void
.end method

.method public static setAlarm(Landroid/content/Context;)V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-static {p0, v0, v1}, Lcom/miui/powercenter/savemode/a;->bdV(Landroid/content/Context;J)V

    return-void
.end method
