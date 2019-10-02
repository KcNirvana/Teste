.class public final Lcom/xiaomi/ad/mediationconfig/internal/utils/GlobalHolder;
.super Ljava/lang/Object;
.source "GlobalHolder.java"


# static fields
.field private static volatile a:Landroid/content/Context;

.field private static b:Landroid/os/Handler;

.field private static c:Landroid/os/Handler;

.field private static d:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/xiaomi/ad/mediationconfig/internal/utils/GlobalHolder;->b:Landroid/os/Handler;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "background_task"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/ad/mediationconfig/internal/utils/GlobalHolder;->d:Landroid/os/HandlerThread;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getApplicationContext()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/xiaomi/ad/mediationconfig/internal/utils/GlobalHolder;->a:Landroid/content/Context;

    return-object v0
.end method

.method public static declared-synchronized getBackgroundHandler()Landroid/os/Handler;
    .locals 4

    const-class v0, Lcom/xiaomi/ad/mediationconfig/internal/utils/GlobalHolder;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/xiaomi/ad/mediationconfig/internal/utils/GlobalHolder;->c:Landroid/os/Handler;

    if-nez v1, :cond_2

    const-class v1, Lcom/xiaomi/ad/mediationconfig/internal/utils/GlobalHolder;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-object v2, Lcom/xiaomi/ad/mediationconfig/internal/utils/GlobalHolder;->c:Landroid/os/Handler;

    if-nez v2, :cond_1

    sget-object v2, Lcom/xiaomi/ad/mediationconfig/internal/utils/GlobalHolder;->d:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/xiaomi/ad/mediationconfig/internal/utils/GlobalHolder;->d:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    :cond_0
    new-instance v2, Landroid/os/Handler;

    sget-object v3, Lcom/xiaomi/ad/mediationconfig/internal/utils/GlobalHolder;->d:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v2, Lcom/xiaomi/ad/mediationconfig/internal/utils/GlobalHolder;->c:Landroid/os/Handler;

    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2

    :cond_2
    :goto_0
    sget-object v1, Lcom/xiaomi/ad/mediationconfig/internal/utils/GlobalHolder;->c:Landroid/os/Handler;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v0

    return-object v1

    :catchall_1
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getUIHandler()Landroid/os/Handler;
    .locals 1

    sget-object v0, Lcom/xiaomi/ad/mediationconfig/internal/utils/GlobalHolder;->b:Landroid/os/Handler;

    return-object v0
.end method

.method public static setApplicationContext(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcom/xiaomi/ad/mediationconfig/internal/utils/AndroidUtil;->getApplicationContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/xiaomi/ad/mediationconfig/internal/utils/GlobalHolder;->a:Landroid/content/Context;

    return-void
.end method
