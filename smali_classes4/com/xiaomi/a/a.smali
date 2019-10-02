.class public final Lcom/xiaomi/a/a;
.super Ljava/lang/Object;
.source "Debugger.java"


# static fields
.field private static volatile a:Z

.field private static final b:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/xiaomi/a/a$1;

    invoke-direct {v0}, Lcom/xiaomi/a/a$1;-><init>()V

    sput-object v0, Lcom/xiaomi/a/a;->b:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public static declared-synchronized a()V
    .locals 4

    const-class v0, Lcom/xiaomi/a/a;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/xiaomi/a/a;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x1

    :try_start_1
    sput-boolean v1, Lcom/xiaomi/a/a;->a:Z

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "com.xiaomi.ad.intent.DEBUG_ON"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "com.xiaomi.ad.intent.DEBUG_OFF"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "com.xiaomi.ad.intent.STAGING_ON"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "com.xiaomi.ad.intent.STAGING_OFF"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-static {}, Lcom/xiaomi/miglobaladsdk/MiAdManager;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/xiaomi/a/a;->b:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
