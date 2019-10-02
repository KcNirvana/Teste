.class public Lcom/miui/video/player/service/localvideoplayer/subtitle/JobRunner;
.super Ljava/lang/Object;
.source "JobRunner.java"


# static fields
.field public static sHandler:Landroid/os/Handler;

.field public static sThread:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "JobRunner"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/miui/video/player/service/localvideoplayer/subtitle/JobRunner;->sThread:Landroid/os/HandlerThread;

    sget-object v0, Lcom/miui/video/player/service/localvideoplayer/subtitle/JobRunner;->sThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/miui/video/player/service/localvideoplayer/subtitle/JobRunner;->sThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/miui/video/player/service/localvideoplayer/subtitle/JobRunner;->sHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized postJob(Ljava/lang/Runnable;)V
    .locals 2

    const-class v0, Lcom/miui/video/player/service/localvideoplayer/subtitle/JobRunner;

    monitor-enter v0

    if-eqz p0, :cond_0

    :try_start_0
    sget-object v1, Lcom/miui/video/player/service/localvideoplayer/subtitle/JobRunner;->sHandler:Landroid/os/Handler;

    invoke-virtual {v1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    :cond_0
    :goto_0
    monitor-exit v0

    return-void
.end method

.method public static declared-synchronized postJobDelay(Ljava/lang/Runnable;J)V
    .locals 2

    const-class v0, Lcom/miui/video/player/service/localvideoplayer/subtitle/JobRunner;

    monitor-enter v0

    if-eqz p0, :cond_0

    :try_start_0
    sget-object v1, Lcom/miui/video/player/service/localvideoplayer/subtitle/JobRunner;->sHandler:Landroid/os/Handler;

    invoke-virtual {v1, p0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    :cond_0
    :goto_0
    monitor-exit v0

    return-void
.end method

.method public static declared-synchronized removeJob(Ljava/lang/Runnable;)V
    .locals 2

    const-class v0, Lcom/miui/video/player/service/localvideoplayer/subtitle/JobRunner;

    monitor-enter v0

    if-eqz p0, :cond_0

    :try_start_0
    sget-object v1, Lcom/miui/video/player/service/localvideoplayer/subtitle/JobRunner;->sHandler:Landroid/os/Handler;

    invoke-virtual {v1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    :cond_0
    :goto_0
    monitor-exit v0

    return-void
.end method

.method public static declared-synchronized resetJob()V
    .locals 3

    const-class v0, Lcom/miui/video/player/service/localvideoplayer/subtitle/JobRunner;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/miui/video/player/service/localvideoplayer/subtitle/JobRunner;->sThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "JobRunner"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/miui/video/player/service/localvideoplayer/subtitle/JobRunner;->sThread:Landroid/os/HandlerThread;

    sget-object v1, Lcom/miui/video/player/service/localvideoplayer/subtitle/JobRunner;->sThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Landroid/os/Handler;

    sget-object v2, Lcom/miui/video/player/service/localvideoplayer/subtitle/JobRunner;->sThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/miui/video/player/service/localvideoplayer/subtitle/JobRunner;->sHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
