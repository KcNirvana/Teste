.class public Lcom/miui/personalassistant/util/ThreadDispatcher;
.super Ljava/lang/Object;
.source "ThreadDispatcher.java"


# static fields
.field protected static mHandler:Landroid/os/Handler;

.field private static sInstance:Lcom/miui/personalassistant/util/ThreadDispatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/miui/personalassistant/util/ThreadDispatcher;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/miui/personalassistant/util/ThreadDispatcher;
    .locals 2

    const-class v1, Lcom/miui/personalassistant/util/ThreadDispatcher;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/miui/personalassistant/util/ThreadDispatcher;->sInstance:Lcom/miui/personalassistant/util/ThreadDispatcher;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/personalassistant/util/ThreadDispatcher;

    invoke-direct {v0}, Lcom/miui/personalassistant/util/ThreadDispatcher;-><init>()V

    sput-object v0, Lcom/miui/personalassistant/util/ThreadDispatcher;->sInstance:Lcom/miui/personalassistant/util/ThreadDispatcher;

    :cond_0
    sget-object v0, Lcom/miui/personalassistant/util/ThreadDispatcher;->sInstance:Lcom/miui/personalassistant/util/ThreadDispatcher;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static postToMainThread(Ljava/lang/Runnable;)V
    .locals 1

    sget-object v0, Lcom/miui/personalassistant/util/ThreadDispatcher;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/miui/personalassistant/util/ThreadDispatcher;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
