.class public Lcom/miui/networkassistant/monitor/GolbalReceiver;
.super Landroid/content/BroadcastReceiver;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String; = "GolbalReceiver"

.field private static sMonitorMap:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/miui/networkassistant/monitor/GolbalReceiver;->sMonitorMap:Ljava/util/HashMap;

    new-instance v0, Lcom/miui/networkassistant/monitor/impl/BootMonitor;

    invoke-direct {v0}, Lcom/miui/networkassistant/monitor/impl/BootMonitor;-><init>()V

    invoke-virtual {v0}, Lcom/miui/networkassistant/monitor/impl/BootMonitor;->register()V

    new-instance v0, Lcom/miui/networkassistant/monitor/impl/ImsiMonitor;

    invoke-direct {v0}, Lcom/miui/networkassistant/monitor/impl/ImsiMonitor;-><init>()V

    invoke-virtual {v0}, Lcom/miui/networkassistant/monitor/impl/ImsiMonitor;->register()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static declared-synchronized addMonitor(Ljava/lang/String;Lcom/miui/networkassistant/monitor/IMonitor;)V
    .locals 3

    const-class v1, Lcom/miui/networkassistant/monitor/GolbalReceiver;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/miui/networkassistant/monitor/GolbalReceiver;->sMonitorMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v2, Lcom/miui/networkassistant/monitor/GolbalReceiver;->sMonitorMap:Ljava/util/HashMap;

    invoke-virtual {v2, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "GolbalReceiver"

    const-string/jumbo v2, "onReceive, action:%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/miui/networkassistant/monitor/GolbalReceiver;->sMonitorMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/networkassistant/monitor/IMonitor;

    invoke-interface {v0, p1, p2}, Lcom/miui/networkassistant/monitor/IMonitor;->invoke(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    return-void
.end method
