.class public Lcom/miui/powercenter/autotask/d;
.super Landroid/content/BroadcastReceiver;
.source ""


# instance fields
.field private aKt:Ljava/util/List;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/powercenter/autotask/d;->aKt:Ljava/util/List;

    iput-object p1, p0, Lcom/miui/powercenter/autotask/d;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/miui/powercenter/autotask/d;->init()V

    invoke-direct {p0}, Lcom/miui/powercenter/autotask/d;->aVD()V

    return-void
.end method

.method private aVA()V
    .locals 3

    iget-object v0, p0, Lcom/miui/powercenter/autotask/d;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/powercenter/autotask/f;->aVI(Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object v1

    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Lcom/miui/powercenter/autotask/AutoTask;

    invoke-direct {v0, v1}, Lcom/miui/powercenter/autotask/AutoTask;-><init>(Landroid/database/Cursor;)V

    invoke-virtual {v0}, Lcom/miui/powercenter/autotask/AutoTask;->aXT()Z

    move-result v2

    if-nez v2, :cond_2

    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return-void

    :cond_2
    :try_start_1
    invoke-direct {p0, v0}, Lcom/miui/powercenter/autotask/d;->aVt(Lcom/miui/powercenter/autotask/AutoTask;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private aVB(Lcom/miui/powercenter/autotask/e;)V
    .locals 6

    iget-object v0, p0, Lcom/miui/powercenter/autotask/d;->aKt:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/powercenter/autotask/e;

    iget-wide v2, v0, Lcom/miui/powercenter/autotask/e;->id:J

    iget-wide v4, p1, Lcom/miui/powercenter/autotask/e;->id:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private aVC(JJZ)V
    .locals 5

    const/4 v3, 0x0

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/powercenter/autotask/d;->mContext:Landroid/content/Context;

    const-class v2, Lcom/miui/powercenter/provider/PowerSaveService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "com.miui.powercenter.action.TIME_AUTO_TASK_ALARM"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "task_id"

    invoke-virtual {v0, v1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string/jumbo v1, "task_restore"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/powercenter/autotask/d;->mContext:Landroid/content/Context;

    const/high16 v2, 0x8000000

    invoke-static {v1, v3, v0, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iget-object v0, p0, Lcom/miui/powercenter/autotask/d;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "alarm"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    invoke-virtual {v0, v3, p1, p2, v1}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    return-void
.end method

.method private aVD()V
    .locals 12

    const-wide/16 v4, 0x0

    iget-object v0, p0, Lcom/miui/powercenter/autotask/d;->aKt:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/miui/powercenter/autotask/d;->aVu()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/powercenter/autotask/d;->aKt:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/miui/powercenter/autotask/d;->aKt:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-wide v2, v4

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/powercenter/autotask/e;

    cmp-long v6, v2, v4

    if-nez v6, :cond_1

    iget-wide v2, v0, Lcom/miui/powercenter/autotask/e;->time:J

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-wide v6, v0, Lcom/miui/powercenter/autotask/e;->time:J

    cmp-long v6, v6, v2

    if-gtz v6, :cond_2

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    cmp-long v0, v2, v4

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/miui/powercenter/autotask/d;->aVu()V

    return-void

    :cond_3
    const/4 v0, 0x0

    move v7, v0

    :goto_1
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v7, v0, :cond_4

    const-string/jumbo v1, "AutoTaskAlarmReceiver"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "enabled task id "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/powercenter/autotask/e;

    iget-wide v10, v0, Lcom/miui/powercenter/autotask/e;->id:J

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, " minTime "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v2, v3}, Lcom/miui/powercenter/a/d;->bbd(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/powercenter/autotask/e;

    iget-wide v4, v0, Lcom/miui/powercenter/autotask/e;->id:J

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/powercenter/autotask/e;

    iget-boolean v6, v0, Lcom/miui/powercenter/autotask/e;->aKu:Z

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/miui/powercenter/autotask/d;->aVC(JJZ)V

    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_1

    :cond_4
    return-void
.end method

.method private aVE()V
    .locals 1

    iget-object v0, p0, Lcom/miui/powercenter/autotask/d;->aKt:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-direct {p0}, Lcom/miui/powercenter/autotask/d;->aVA()V

    invoke-direct {p0}, Lcom/miui/powercenter/autotask/d;->aVD()V

    return-void
.end method

.method private aVs(Lcom/miui/powercenter/autotask/e;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/miui/powercenter/autotask/d;->aVB(Lcom/miui/powercenter/autotask/e;)V

    iget-object v0, p0, Lcom/miui/powercenter/autotask/d;->aKt:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private aVt(Lcom/miui/powercenter/autotask/AutoTask;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/miui/powercenter/autotask/d;->aVw(Lcom/miui/powercenter/autotask/AutoTask;)Lcom/miui/powercenter/autotask/e;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/miui/powercenter/autotask/d;->aVs(Lcom/miui/powercenter/autotask/e;)V

    :cond_0
    return-void
.end method

.method private aVu()V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/powercenter/autotask/d;->mContext:Landroid/content/Context;

    const-class v2, Lcom/miui/powercenter/provider/PowerSaveService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "com.miui.powercenter.action.TIME_AUTO_TASK_ALARM"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/powercenter/autotask/d;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v3, 0x8000000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iget-object v0, p0, Lcom/miui/powercenter/autotask/d;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "alarm"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    return-void
.end method

.method private aVv(Lcom/miui/powercenter/autotask/u;I)J
    .locals 5

    const/4 v4, 0x0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget v1, p1, Lcom/miui/powercenter/autotask/u;->aLr:I

    const/16 v2, 0xb

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    iget v1, p1, Lcom/miui/powercenter/autotask/u;->aLs:I

    const/16 v2, 0xc

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xd

    invoke-virtual {v0, v1, v4}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xe

    invoke-virtual {v0, v1, v4}, Ljava/util/Calendar;->set(II)V

    iget-object v1, p0, Lcom/miui/powercenter/autotask/d;->mContext:Landroid/content/Context;

    invoke-static {v1, p2, v0}, Lcom/miui/powercenter/a/j;->bca(Landroid/content/Context;ILjava/util/Calendar;)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method private aVw(Lcom/miui/powercenter/autotask/AutoTask;)Lcom/miui/powercenter/autotask/e;
    .locals 6

    const/4 v4, 0x0

    new-instance v1, Lcom/miui/powercenter/autotask/e;

    invoke-direct {v1, v4}, Lcom/miui/powercenter/autotask/e;-><init>(Lcom/miui/powercenter/autotask/e;)V

    invoke-virtual {p1}, Lcom/miui/powercenter/autotask/AutoTask;->getId()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/miui/powercenter/autotask/e;->id:J

    invoke-virtual {p1}, Lcom/miui/powercenter/autotask/AutoTask;->aXU()I

    move-result v2

    const-string/jumbo v0, "hour_minute"

    invoke-virtual {p1, v0}, Lcom/miui/powercenter/autotask/AutoTask;->aYb(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "hour_minute"

    invoke-virtual {p1, v0}, Lcom/miui/powercenter/autotask/AutoTask;->aYc(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/miui/powercenter/autotask/AutoTask;->aYd(I)Lcom/miui/powercenter/autotask/u;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lcom/miui/powercenter/autotask/d;->aVv(Lcom/miui/powercenter/autotask/u;I)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/miui/powercenter/autotask/e;->time:J

    :goto_0
    return-object v1

    :cond_0
    const-string/jumbo v0, "hour_minute_duration"

    invoke-virtual {p1, v0}, Lcom/miui/powercenter/autotask/AutoTask;->aYb(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "hour_minute_duration"

    invoke-virtual {p1, v0}, Lcom/miui/powercenter/autotask/AutoTask;->aYc(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    new-instance v3, Lcom/miui/powercenter/autotask/v;

    invoke-direct {v3, v0}, Lcom/miui/powercenter/autotask/v;-><init>(I)V

    iget v0, v3, Lcom/miui/powercenter/autotask/v;->start:I

    invoke-static {v0}, Lcom/miui/powercenter/autotask/AutoTask;->aYd(I)Lcom/miui/powercenter/autotask/u;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lcom/miui/powercenter/autotask/d;->aVv(Lcom/miui/powercenter/autotask/u;I)J

    move-result-wide v4

    iget v0, v3, Lcom/miui/powercenter/autotask/v;->aLt:I

    invoke-static {v0}, Lcom/miui/powercenter/autotask/AutoTask;->aYd(I)Lcom/miui/powercenter/autotask/u;

    move-result-object v0

    const/16 v2, 0x7f

    invoke-direct {p0, v0, v2}, Lcom/miui/powercenter/autotask/d;->aVv(Lcom/miui/powercenter/autotask/u;I)J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/miui/powercenter/autotask/AutoTask;->aXV()Z

    move-result v0

    if-eqz v0, :cond_1

    cmp-long v0, v2, v4

    if-gez v0, :cond_1

    iput-wide v2, v1, Lcom/miui/powercenter/autotask/e;->time:J

    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/miui/powercenter/autotask/e;->aKu:Z

    goto :goto_0

    :cond_1
    iput-wide v4, v1, Lcom/miui/powercenter/autotask/e;->time:J

    goto :goto_0

    :cond_2
    return-object v4
.end method

.method private aVx(J)V
    .locals 3

    new-instance v0, Lcom/miui/powercenter/autotask/e;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/powercenter/autotask/e;-><init>(Lcom/miui/powercenter/autotask/e;)V

    iput-wide p1, v0, Lcom/miui/powercenter/autotask/e;->id:J

    invoke-direct {p0, v0}, Lcom/miui/powercenter/autotask/d;->aVB(Lcom/miui/powercenter/autotask/e;)V

    invoke-direct {p0}, Lcom/miui/powercenter/autotask/d;->aVD()V

    return-void
.end method

.method private aVy(J)V
    .locals 3

    iget-object v0, p0, Lcom/miui/powercenter/autotask/d;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/miui/powercenter/autotask/f;->aVJ(Landroid/content/Context;J)Lcom/miui/powercenter/autotask/AutoTask;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "AutoTaskAlarmReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "get task null, id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-direct {p0, v0}, Lcom/miui/powercenter/autotask/d;->aVz(Lcom/miui/powercenter/autotask/AutoTask;)V

    return-void
.end method

.method private aVz(Lcom/miui/powercenter/autotask/AutoTask;)V
    .locals 4

    invoke-virtual {p1}, Lcom/miui/powercenter/autotask/AutoTask;->aXT()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/powercenter/autotask/e;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/powercenter/autotask/e;-><init>(Lcom/miui/powercenter/autotask/e;)V

    invoke-virtual {p1}, Lcom/miui/powercenter/autotask/AutoTask;->getId()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/miui/powercenter/autotask/e;->id:J

    invoke-direct {p0, v0}, Lcom/miui/powercenter/autotask/d;->aVB(Lcom/miui/powercenter/autotask/e;)V

    :goto_0
    invoke-direct {p0}, Lcom/miui/powercenter/autotask/d;->aVD()V

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/powercenter/autotask/d;->aVt(Lcom/miui/powercenter/autotask/AutoTask;)V

    goto :goto_0
.end method

.method private init()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/powercenter/autotask/d;->aVA()V

    return-void
.end method


# virtual methods
.method public aVq(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "com.miui.powercenter.action.TASK_UPDATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "com.miui.powercenter.action.TASK_DELETE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "com.miui.powercenter.action.TASK_RESET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method public aVr(Landroid/content/Context;)V
    .locals 1

    invoke-static {p1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6

    const-string/jumbo v0, "AutoTaskAlarmReceiver info begin"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Task size "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/powercenter/autotask/d;->aKt:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/powercenter/autotask/d;->aKt:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/powercenter/autotask/e;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, v0, Lcom/miui/powercenter/autotask/e;->id:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " time "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, v0, Lcom/miui/powercenter/autotask/e;->time:J

    invoke-static {v4, v5}, Lcom/miui/powercenter/a/d;->bbd(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " restore "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v0, v0, Lcom/miui/powercenter/autotask/e;->aKu:Z

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "end"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const/4 v0, 0x0

    const-string/jumbo v1, "com.miui.powercenter.action.TASK_UPDATE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v0, "id"

    const-wide/16 v2, -0x1

    invoke-virtual {p2, v0, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    invoke-direct {p0, v0, v1}, Lcom/miui/powercenter/autotask/d;->aVy(J)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v1, "com.miui.powercenter.action.TASK_DELETE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "ids"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v1

    if-eqz v1, :cond_0

    array-length v2, v1

    if-lez v2, :cond_0

    :goto_1
    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-wide v2, v1, v0

    invoke-direct {p0, v2, v3}, Lcom/miui/powercenter/autotask/d;->aVx(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const-string/jumbo v0, "com.miui.powercenter.action.TASK_RESET"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "AutoTaskAlarmReceiver"

    const-string/jumbo v1, "time changed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/miui/powercenter/autotask/d;->aVE()V

    goto :goto_0
.end method
