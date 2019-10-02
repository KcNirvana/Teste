.class public Lcom/miui/video/galleryplus/subtitle/BackgroundThread;
.super Ljava/lang/Object;
.source "BackgroundThread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/video/galleryplus/subtitle/BackgroundThread$RunnableWrapper;
    }
.end annotation


# static fields
.field private static sIOHandler:Landroid/os/Handler;

.field private static sIOHandlerThread:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static ensureIOThread()V
    .locals 2

    sget-object v0, Lcom/miui/video/galleryplus/subtitle/BackgroundThread;->sIOHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/miui/video/galleryplus/subtitle/BackgroundThread;->sIOHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "IOThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/miui/video/galleryplus/subtitle/BackgroundThread;->sIOHandlerThread:Landroid/os/HandlerThread;

    sget-object v0, Lcom/miui/video/galleryplus/subtitle/BackgroundThread;->sIOHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/miui/video/galleryplus/subtitle/BackgroundThread;->sIOHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/miui/video/galleryplus/subtitle/BackgroundThread;->sIOHandler:Landroid/os/Handler;

    :cond_1
    sget-object v0, Lcom/miui/video/galleryplus/subtitle/BackgroundThread;->sIOHandler:Landroid/os/Handler;

    if-nez v0, :cond_2

    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/miui/video/galleryplus/subtitle/BackgroundThread;->sIOHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/miui/video/galleryplus/subtitle/BackgroundThread;->sIOHandler:Landroid/os/Handler;

    :cond_2
    return-void
.end method

.method public static varargs executeAsyncTask(Landroid/os/AsyncTask;[Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/os/AsyncTask<",
            "TT;**>;[TT;)V"
        }
    .end annotation

    new-instance v0, Lcom/miui/video/galleryplus/subtitle/BackgroundThread$1;

    invoke-direct {v0, p0, p1}, Lcom/miui/video/galleryplus/subtitle/BackgroundThread$1;-><init>(Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/miui/video/galleryplus/subtitle/ThreadHelper;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static isOnIOThread()Z
    .locals 3

    const-class v0, Lcom/miui/video/galleryplus/subtitle/BackgroundThread;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/miui/video/galleryplus/subtitle/BackgroundThread;->ensureIOThread()V

    sget-object v1, Lcom/miui/video/galleryplus/subtitle/BackgroundThread;->sIOHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static postOnIOThread(Ljava/lang/Runnable;)V
    .locals 3

    const-class v0, Lcom/miui/video/galleryplus/subtitle/BackgroundThread;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/miui/video/galleryplus/subtitle/BackgroundThread;->ensureIOThread()V

    sget-object v1, Lcom/miui/video/galleryplus/subtitle/BackgroundThread;->sIOHandler:Landroid/os/Handler;

    new-instance v2, Lcom/miui/video/galleryplus/subtitle/BackgroundThread$RunnableWrapper;

    invoke-direct {v2, p0}, Lcom/miui/video/galleryplus/subtitle/BackgroundThread$RunnableWrapper;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static postOnIOThreadDelay(Ljava/lang/Runnable;J)V
    .locals 3

    const-class v0, Lcom/miui/video/galleryplus/subtitle/BackgroundThread;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/miui/video/galleryplus/subtitle/BackgroundThread;->ensureIOThread()V

    sget-object v1, Lcom/miui/video/galleryplus/subtitle/BackgroundThread;->sIOHandler:Landroid/os/Handler;

    new-instance v2, Lcom/miui/video/galleryplus/subtitle/BackgroundThread$RunnableWrapper;

    invoke-direct {v2, p0}, Lcom/miui/video/galleryplus/subtitle/BackgroundThread$RunnableWrapper;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1, v2, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static revokeOnIOThread(Ljava/lang/Runnable;)V
    .locals 2

    const-class v0, Lcom/miui/video/galleryplus/subtitle/BackgroundThread;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/miui/video/galleryplus/subtitle/BackgroundThread;->ensureIOThread()V

    sget-object v1, Lcom/miui/video/galleryplus/subtitle/BackgroundThread;->sIOHandler:Landroid/os/Handler;

    invoke-virtual {v1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static runOnIOThread(Ljava/lang/Runnable;)V
    .locals 2

    const-class v0, Lcom/miui/video/galleryplus/subtitle/BackgroundThread;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/miui/video/galleryplus/subtitle/BackgroundThread;->ensureIOThread()V

    new-instance v1, Lcom/miui/video/galleryplus/subtitle/BackgroundThread$RunnableWrapper;

    invoke-direct {v1, p0}, Lcom/miui/video/galleryplus/subtitle/BackgroundThread$RunnableWrapper;-><init>(Ljava/lang/Runnable;)V

    invoke-static {}, Lcom/miui/video/galleryplus/subtitle/BackgroundThread;->isOnIOThread()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {v1}, Lcom/miui/video/galleryplus/subtitle/BackgroundThread$RunnableWrapper;->run()V

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/miui/video/galleryplus/subtitle/BackgroundThread;->sIOHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static runOnIOThreadBlocking(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;)TT;"
        }
    .end annotation

    new-instance v0, Ljava/util/concurrent/FutureTask;

    invoke-direct {v0, p0}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    invoke-static {v0}, Lcom/miui/video/galleryplus/subtitle/BackgroundThread;->runOnIOThread(Ljava/lang/Runnable;)V

    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method
