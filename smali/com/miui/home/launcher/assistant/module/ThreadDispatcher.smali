.class public Lcom/miui/home/launcher/assistant/module/ThreadDispatcher;
.super Ljava/lang/Object;
.source "ThreadDispatcher.java"


# static fields
.field private static sInstance:Lcom/miui/home/launcher/assistant/module/ThreadDispatcher;


# instance fields
.field protected mHandler:Landroid/os/Handler;


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/module/ThreadDispatcher;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/miui/home/launcher/assistant/module/ThreadDispatcher;
    .locals 2

    const-class v1, Lcom/miui/home/launcher/assistant/module/ThreadDispatcher;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/miui/home/launcher/assistant/module/ThreadDispatcher;->sInstance:Lcom/miui/home/launcher/assistant/module/ThreadDispatcher;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/home/launcher/assistant/module/ThreadDispatcher;

    invoke-direct {v0}, Lcom/miui/home/launcher/assistant/module/ThreadDispatcher;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/assistant/module/ThreadDispatcher;->sInstance:Lcom/miui/home/launcher/assistant/module/ThreadDispatcher;

    :cond_0
    sget-object v0, Lcom/miui/home/launcher/assistant/module/ThreadDispatcher;->sInstance:Lcom/miui/home/launcher/assistant/module/ThreadDispatcher;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public postToMainThread(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/module/ThreadDispatcher;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/module/ThreadDispatcher;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public runInBackgroud(Ljava/lang/Runnable;)V
    .locals 1

    invoke-static {}, Lcom/miui/home/launcher/assistant/module/AssistTaskManager;->getInstance()Lcom/miui/home/launcher/assistant/module/AssistTaskManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/assistant/module/AssistTaskManager;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public submitRunable(Ljava/lang/Runnable;)I
    .locals 1

    invoke-static {}, Lcom/miui/home/launcher/assistant/module/AssistTaskManager;->getInstance()Lcom/miui/home/launcher/assistant/module/AssistTaskManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/assistant/module/AssistTaskManager;->submit(Ljava/lang/Runnable;)I

    move-result v0

    return v0
.end method
