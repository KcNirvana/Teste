.class public Lcom/miui/f/a;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/f/a;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public start()Z
    .locals 9

    const/4 v8, 0x0

    const-string/jumbo v0, "RecommandJob"

    const-string/jumbo v1, "onStartJob: recycle recommand"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const-string/jumbo v0, "recycle_count"

    invoke-static {v0, v8}, Lcom/miui/common/persistence/a;->aMM(Ljava/lang/String;I)I

    move-result v2

    iget-object v0, p0, Lcom/miui/f/a;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/common/b/t;->aJr(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x7

    if-ge v2, v0, :cond_1

    const-string/jumbo v0, "RecommandJob"

    const-string/jumbo v3, "start app check!"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v0, "miui.intent.action.RECYCLE_PUSH"

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "com.xiaomi.mirecycle"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/miui/f/a;->context:Landroid/content/Context;

    const-string/jumbo v4, "alarm"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    const/16 v4, 0x8

    if-ge v1, v4, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    rsub-int/lit8 v1, v1, 0x8

    mul-int/lit16 v1, v1, 0xe10

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v6, v1

    add-long/2addr v4, v6

    iget-object v1, p0, Lcom/miui/f/a;->context:Landroid/content/Context;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v1, v6, v3, v7}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v4, v5, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    :goto_0
    const-string/jumbo v0, "recycle_count"

    add-int/lit8 v1, v2, 0x1

    invoke-static {v0, v1}, Lcom/miui/common/persistence/a;->aMR(Ljava/lang/String;I)V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/16 v4, 0x16

    if-lt v1, v4, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    rsub-int/lit8 v1, v1, 0x20

    mul-int/lit16 v1, v1, 0xe10

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v6, v1

    add-long/2addr v4, v6

    iget-object v1, p0, Lcom/miui/f/a;->context:Landroid/content/Context;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v1, v6, v3, v7}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v4, v5, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "RecommandJob"

    const-string/jumbo v2, "recommand exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    return v8

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/miui/f/a;->context:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
