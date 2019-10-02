.class public Lcom/miui/video/player/service/localvideoplayer/subtitle/utils/PlayHistoryManagerThread;
.super Ljava/lang/Object;
.source "PlayHistoryManagerThread.java"


# static fields
.field private static pool:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static executeQueryHistory(Ljava/lang/String;Lcom/miui/video/player/service/localvideoplayer/subtitle/utils/IQueryHistoryListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/miui/video/player/service/localvideoplayer/subtitle/utils/IQueryHistoryListener<",
            "Ljava/util/List<",
            "Lcom/miui/video/base/database/VideoEntity;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/miui/video/player/service/localvideoplayer/subtitle/utils/PlayHistoryManagerThread;->getExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    new-instance p1, Lcom/miui/video/player/service/localvideoplayer/subtitle/utils/PlayHistoryManagerThread$2;

    invoke-direct {p1}, Lcom/miui/video/player/service/localvideoplayer/subtitle/utils/PlayHistoryManagerThread$2;-><init>()V

    invoke-interface {p0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public static executeSaveHistory(Lcom/miui/video/base/database/LocalVideoHistoryEntity;)V
    .locals 2

    invoke-static {}, Lcom/miui/video/player/service/localvideoplayer/subtitle/utils/PlayHistoryManagerThread;->getExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/miui/video/player/service/localvideoplayer/subtitle/utils/PlayHistoryManagerThread$1;

    invoke-direct {v1, p0}, Lcom/miui/video/player/service/localvideoplayer/subtitle/utils/PlayHistoryManagerThread$1;-><init>(Lcom/miui/video/base/database/LocalVideoHistoryEntity;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method private static getExecutorService()Ljava/util/concurrent/ExecutorService;
    .locals 2

    sget-object v0, Lcom/miui/video/player/service/localvideoplayer/subtitle/utils/PlayHistoryManagerThread;->pool:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_1

    const-class v0, Lcom/miui/video/player/service/localvideoplayer/subtitle/utils/PlayHistoryManagerThread;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/miui/video/player/service/localvideoplayer/subtitle/utils/PlayHistoryManagerThread;->pool:Ljava/util/concurrent/ExecutorService;

    if-nez v1, :cond_0

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    sput-object v1, Lcom/miui/video/player/service/localvideoplayer/subtitle/utils/PlayHistoryManagerThread;->pool:Ljava/util/concurrent/ExecutorService;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/miui/video/player/service/localvideoplayer/subtitle/utils/PlayHistoryManagerThread;->pool:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method
