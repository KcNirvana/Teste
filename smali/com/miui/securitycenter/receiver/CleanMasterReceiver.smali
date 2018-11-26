.class public Lcom/miui/securitycenter/receiver/CleanMasterReceiver;
.super Landroid/content/BroadcastReceiver;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static bqh()V
    .locals 12

    const-wide/32 v4, 0x5265c00

    invoke-static {}, Lcom/miui/securitycenter/Application;->getInstance()Lcom/miui/securitycenter/Application;

    move-result-object v1

    const-string/jumbo v0, "alarm"

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    const-wide/high16 v8, 0x4028000000000000L    # 12.0

    mul-double/2addr v6, v8

    double-to-int v3, v6

    add-int/lit8 v3, v3, 0xc

    const/16 v6, 0xa

    invoke-virtual {v2, v6, v3}, Ljava/util/Calendar;->add(II)V

    new-instance v3, Landroid/content/Intent;

    const-class v6, Lcom/miui/securitycenter/receiver/CleanMasterReceiver;

    invoke-direct {v3, v1, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v6, 0x2711

    const/4 v7, 0x0

    invoke-static {v1, v6, v3, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    invoke-static {}, Lcom/miui/securitycenter/a;->bsb()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v1, v8, v10

    if-nez v1, :cond_1

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    add-long/2addr v8, v4

    cmp-long v1, v2, v8

    if-lez v1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v2, v4

    :cond_0
    const/4 v1, 0x1

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    return-void

    :cond_1
    add-long v2, v4, v8

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/miui/securitycenter/a;->bsw(J)V

    invoke-static {p1}, Lcom/miui/securitycenter/dynamic/DynamicServiceManager;->getInstance(Landroid/content/Context;)Lcom/miui/securitycenter/dynamic/DynamicServiceManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/securitycenter/dynamic/DynamicServiceManager;->update(Z)V

    invoke-static {p1}, Lcom/miui/securitycenter/utils/b;->bqE(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/miui/optimizemanage/a/a;->Af(Landroid/content/Context;)V

    return-void
.end method
