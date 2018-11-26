.class public Lcom/miui/powercenter/autotask/g;
.super Landroid/content/BroadcastReceiver;
.source ""


# instance fields
.field private aKv:Ljava/util/SortedSet;

.field private aKw:Ljava/util/SortedSet;

.field private aKx:Z

.field private aKy:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    new-instance v0, Ljava/util/TreeSet;

    new-instance v1, Lcom/miui/powercenter/autotask/j;

    invoke-direct {v1, v2}, Lcom/miui/powercenter/autotask/j;-><init>(Lcom/miui/powercenter/autotask/j;)V

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lcom/miui/powercenter/autotask/g;->aKv:Ljava/util/SortedSet;

    new-instance v0, Ljava/util/TreeSet;

    new-instance v1, Lcom/miui/powercenter/autotask/i;

    invoke-direct {v1, v2}, Lcom/miui/powercenter/autotask/i;-><init>(Lcom/miui/powercenter/autotask/i;)V

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lcom/miui/powercenter/autotask/g;->aKw:Ljava/util/SortedSet;

    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/powercenter/autotask/g;->aKy:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/powercenter/autotask/g;->aKx:Z

    invoke-direct {p0, p1}, Lcom/miui/powercenter/autotask/g;->init(Landroid/content/Context;)V

    return-void
.end method

.method private aVV(Lcom/miui/powercenter/autotask/AutoTask;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/miui/powercenter/autotask/g;->aVW(Lcom/miui/powercenter/autotask/AutoTask;)Lcom/miui/powercenter/autotask/h;

    move-result-object v0

    const-string/jumbo v1, "battery_level_down"

    invoke-virtual {p1, v1}, Lcom/miui/powercenter/autotask/AutoTask;->aYb(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/powercenter/autotask/g;->aKv:Ljava/util/SortedSet;

    invoke-interface {v1, v0}, Ljava/util/SortedSet;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/miui/powercenter/autotask/g;->aKv:Ljava/util/SortedSet;

    invoke-interface {v1, v0}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v1, "battery_level_up"

    invoke-virtual {p1, v1}, Lcom/miui/powercenter/autotask/AutoTask;->aYb(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/powercenter/autotask/g;->aKw:Ljava/util/SortedSet;

    invoke-interface {v1, v0}, Ljava/util/SortedSet;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/miui/powercenter/autotask/g;->aKw:Ljava/util/SortedSet;

    invoke-interface {v1, v0}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private aVW(Lcom/miui/powercenter/autotask/AutoTask;)Lcom/miui/powercenter/autotask/h;
    .locals 4

    new-instance v1, Lcom/miui/powercenter/autotask/h;

    const/4 v0, 0x0

    invoke-direct {v1, v0}, Lcom/miui/powercenter/autotask/h;-><init>(Lcom/miui/powercenter/autotask/h;)V

    invoke-virtual {p1}, Lcom/miui/powercenter/autotask/AutoTask;->getId()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/miui/powercenter/autotask/h;->id:J

    invoke-virtual {p1}, Lcom/miui/powercenter/autotask/AutoTask;->aXV()Z

    move-result v0

    iput-boolean v0, v1, Lcom/miui/powercenter/autotask/h;->started:Z

    invoke-virtual {p1}, Lcom/miui/powercenter/autotask/AutoTask;->aXZ()I

    move-result v0

    iput v0, v1, Lcom/miui/powercenter/autotask/h;->aKA:I

    const-string/jumbo v0, "battery_level_down"

    invoke-virtual {p1, v0}, Lcom/miui/powercenter/autotask/AutoTask;->aYb(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "battery_level_down"

    invoke-virtual {p1, v0}, Lcom/miui/powercenter/autotask/AutoTask;->aYc(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v1, Lcom/miui/powercenter/autotask/h;->aKz:I

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    const-string/jumbo v0, "battery_level_up"

    invoke-virtual {p1, v0}, Lcom/miui/powercenter/autotask/AutoTask;->aYb(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "battery_level_up"

    invoke-virtual {p1, v0}, Lcom/miui/powercenter/autotask/AutoTask;->aYc(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v1, Lcom/miui/powercenter/autotask/h;->aKz:I

    goto :goto_0
.end method

.method private aVX(Landroid/content/Context;IZ)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget v0, p0, Lcom/miui/powercenter/autotask/g;->aKy:I

    if-eq v0, p2, :cond_2

    if-nez p3, :cond_0

    iget-object v0, p0, Lcom/miui/powercenter/autotask/g;->aKv:Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/powercenter/autotask/h;

    iget v2, v0, Lcom/miui/powercenter/autotask/h;->aKz:I

    if-lt v2, p2, :cond_1

    iget v2, v0, Lcom/miui/powercenter/autotask/h;->aKz:I

    iget v3, p0, Lcom/miui/powercenter/autotask/g;->aKy:I

    if-ge v2, v3, :cond_1

    iget-wide v2, v0, Lcom/miui/powercenter/autotask/h;->id:J

    invoke-static {p1, v2, v3, v4}, Lcom/miui/powercenter/autotask/s;->aXJ(Landroid/content/Context;JZ)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/powercenter/autotask/g;->aKw:Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/powercenter/autotask/h;

    iget v2, v0, Lcom/miui/powercenter/autotask/h;->aKz:I

    iget v3, p0, Lcom/miui/powercenter/autotask/g;->aKy:I

    if-le v2, v3, :cond_1

    iget v2, v0, Lcom/miui/powercenter/autotask/h;->aKz:I

    if-gt v2, p2, :cond_1

    iget v2, p0, Lcom/miui/powercenter/autotask/g;->aKy:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    iget-wide v2, v0, Lcom/miui/powercenter/autotask/h;->id:J

    invoke-static {p1, v2, v3, v4}, Lcom/miui/powercenter/autotask/s;->aXJ(Landroid/content/Context;JZ)V

    goto :goto_1

    :cond_1
    iput p2, p0, Lcom/miui/powercenter/autotask/g;->aKy:I

    :cond_2
    iget-boolean v0, p0, Lcom/miui/powercenter/autotask/g;->aKx:Z

    if-eq v0, p3, :cond_5

    if-eqz p3, :cond_4

    iget-object v0, p0, Lcom/miui/powercenter/autotask/g;->aKv:Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/powercenter/autotask/h;

    iget-boolean v2, v0, Lcom/miui/powercenter/autotask/h;->started:Z

    if-eqz v2, :cond_3

    iget v2, v0, Lcom/miui/powercenter/autotask/h;->aKA:I

    if-ne v2, v5, :cond_3

    iget-wide v2, v0, Lcom/miui/powercenter/autotask/h;->id:J

    invoke-static {p1, v2, v3, v5}, Lcom/miui/powercenter/autotask/s;->aXJ(Landroid/content/Context;JZ)V

    goto :goto_2

    :cond_4
    iput-boolean p3, p0, Lcom/miui/powercenter/autotask/g;->aKx:Z

    :cond_5
    return-void
.end method

.method private aVY(Landroid/content/Context;J)V
    .locals 2

    new-instance v0, Lcom/miui/powercenter/autotask/h;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/powercenter/autotask/h;-><init>(Lcom/miui/powercenter/autotask/h;)V

    iput-wide p2, v0, Lcom/miui/powercenter/autotask/h;->id:J

    iget-object v1, p0, Lcom/miui/powercenter/autotask/g;->aKv:Ljava/util/SortedSet;

    invoke-interface {v1, v0}, Ljava/util/SortedSet;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/miui/powercenter/autotask/g;->aKw:Ljava/util/SortedSet;

    invoke-interface {v1, v0}, Ljava/util/SortedSet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method private aVZ(Landroid/content/Context;J)V
    .locals 4

    const/4 v2, 0x0

    invoke-static {p1, p2, p3}, Lcom/miui/powercenter/autotask/f;->aVJ(Landroid/content/Context;J)Lcom/miui/powercenter/autotask/AutoTask;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/powercenter/autotask/g;->aVY(Landroid/content/Context;J)V

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/miui/powercenter/autotask/AutoTask;->aXT()Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v0, Lcom/miui/powercenter/autotask/h;

    invoke-direct {v0, v2}, Lcom/miui/powercenter/autotask/h;-><init>(Lcom/miui/powercenter/autotask/h;)V

    iput-wide p2, v0, Lcom/miui/powercenter/autotask/h;->id:J

    iget-object v1, p0, Lcom/miui/powercenter/autotask/g;->aKv:Ljava/util/SortedSet;

    invoke-interface {v1, v0}, Ljava/util/SortedSet;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/miui/powercenter/autotask/g;->aKw:Ljava/util/SortedSet;

    invoke-interface {v1, v0}, Ljava/util/SortedSet;->remove(Ljava/lang/Object;)Z

    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, v0}, Lcom/miui/powercenter/autotask/g;->aVV(Lcom/miui/powercenter/autotask/AutoTask;)V

    goto :goto_0
.end method

.method private init(Landroid/content/Context;)V
    .locals 3

    invoke-static {p1}, Lcom/miui/powercenter/a/a;->baC(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/miui/powercenter/autotask/g;->aKy:I

    invoke-static {p1}, Lcom/miui/powercenter/autotask/f;->aVI(Landroid/content/Context;)Landroid/database/Cursor;

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
    invoke-direct {p0, v0}, Lcom/miui/powercenter/autotask/g;->aVV(Lcom/miui/powercenter/autotask/AutoTask;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
.end method


# virtual methods
.method public aVT(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "com.miui.powercenter.action.TASK_UPDATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "com.miui.powercenter.action.TASK_DELETE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method public aVU(Landroid/content/Context;)V
    .locals 1

    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-static {p1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6

    const-string/jumbo v0, "AutoTaskBatteryReceiver info begin"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Prev percent "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/miui/powercenter/autotask/g;->aKy:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Level down size "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/powercenter/autotask/g;->aKv:Ljava/util/SortedSet;

    invoke-interface {v1}, Ljava/util/SortedSet;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/powercenter/autotask/g;->aKv:Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/powercenter/autotask/h;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, v0, Lcom/miui/powercenter/autotask/h;->id:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " level "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/miui/powercenter/autotask/h;->aKz:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " started "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, v0, Lcom/miui/powercenter/autotask/h;->started:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " restore level "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v0, v0, Lcom/miui/powercenter/autotask/h;->aKA:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Level up size "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/powercenter/autotask/g;->aKw:Ljava/util/SortedSet;

    invoke-interface {v1}, Ljava/util/SortedSet;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/powercenter/autotask/g;->aKw:Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/powercenter/autotask/h;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, v0, Lcom/miui/powercenter/autotask/h;->id:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " level "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/miui/powercenter/autotask/h;->aKz:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " started "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, v0, Lcom/miui/powercenter/autotask/h;->started:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " restore level "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v0, v0, Lcom/miui/powercenter/autotask/h;->aKA:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string/jumbo v0, "end"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v5, -0x1

    const-string/jumbo v2, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string/jumbo v2, "status"

    invoke-virtual {p2, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string/jumbo v3, "level"

    invoke-virtual {p2, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const-string/jumbo v4, "scale"

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    mul-int/lit8 v3, v3, 0x64

    div-int/2addr v3, v4

    const/4 v4, 0x2

    if-eq v2, v4, :cond_0

    const/4 v4, 0x5

    if-ne v2, v4, :cond_2

    :cond_0
    :goto_0
    invoke-direct {p0, p1, v3, v0}, Lcom/miui/powercenter/autotask/g;->aVX(Landroid/content/Context;IZ)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    const-string/jumbo v0, "com.miui.powercenter.action.TASK_UPDATE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string/jumbo v0, "id"

    const-wide/16 v2, -0x1

    invoke-virtual {p2, v0, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_1

    invoke-direct {p0, p1, v0, v1}, Lcom/miui/powercenter/autotask/g;->aVZ(Landroid/content/Context;J)V

    goto :goto_1

    :cond_4
    const-string/jumbo v0, "com.miui.powercenter.action.TASK_DELETE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "ids"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v0

    if-eqz v0, :cond_1

    array-length v2, v0

    if-lez v2, :cond_1

    :goto_2
    array-length v2, v0

    if-ge v1, v2, :cond_1

    aget-wide v2, v0, v1

    invoke-direct {p0, p1, v2, v3}, Lcom/miui/powercenter/autotask/g;->aVY(Landroid/content/Context;J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method
