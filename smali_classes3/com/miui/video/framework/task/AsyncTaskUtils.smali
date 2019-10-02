.class public abstract Lcom/miui/video/framework/task/AsyncTaskUtils;
.super Ljava/lang/Object;
.source "AsyncTaskUtils.java"


# static fields
.field public static final ASYNC_EXECUTOR_LEVEL_IMAGEWORKER:I = 0x4

.field public static final ASYNC_EXECUTOR_LEVEL_IO:I = 0x0

.field public static final ASYNC_EXECUTOR_LEVEL_NETWORK:I = 0x1

.field public static final ASYNC_EXECUTOR_LEVEL_URGENT:I = 0x2

.field public static final ASYNC_EXECUTOR_MSG:I = 0x64

.field public static final ASYNC_INIT_IO_HANDLER:I = 0x65

.field public static mCallback:Landroid/os/Handler$Callback;

.field public static mIOHandler:Landroid/os/Handler;

.field private static mInitIOHandlerRunner:Ljava/lang/Runnable;

.field public static mUIHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/miui/video/framework/task/AsyncTaskUtils$1;

    invoke-direct {v0}, Lcom/miui/video/framework/task/AsyncTaskUtils$1;-><init>()V

    sput-object v0, Lcom/miui/video/framework/task/AsyncTaskUtils;->mCallback:Landroid/os/Handler$Callback;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    sget-object v2, Lcom/miui/video/framework/task/AsyncTaskUtils;->mCallback:Landroid/os/Handler$Callback;

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    sput-object v0, Lcom/miui/video/framework/task/AsyncTaskUtils;->mUIHandler:Landroid/os/Handler;

    new-instance v0, Lcom/miui/video/framework/task/AsyncTaskUtils$2;

    invoke-direct {v0}, Lcom/miui/video/framework/task/AsyncTaskUtils$2;-><init>()V

    sput-object v0, Lcom/miui/video/framework/task/AsyncTaskUtils;->mInitIOHandlerRunner:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/Runnable;
    .locals 1

    sget-object v0, Lcom/miui/video/framework/task/AsyncTaskUtils;->mInitIOHandlerRunner:Ljava/lang/Runnable;

    return-object v0
.end method

.method public static varargs exe(ILandroid/os/AsyncTask;[Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Params:",
            "Ljava/lang/Object;",
            "Progress:",
            "Ljava/lang/Object;",
            "Result:",
            "Ljava/lang/Object;",
            ">(I",
            "Landroid/os/AsyncTask<",
            "TParams;TProgress;TResult;>;[TParams;)V"
        }
    .end annotation

    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    invoke-static {p0}, Lcom/miui/video/framework/task/ThreadPoolManager;->getThreadPoolExecutor(I)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object p0

    invoke-virtual {p1, p0, p2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "async task pool full"

    invoke-static {p0}, Lcom/miui/video/framework/log/LogUtils;->v(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static exeIOTask(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    :try_start_0
    invoke-static {}, Lcom/miui/video/framework/task/ThreadPoolManager;->getIOThreadPoolExecutor()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/miui/video/framework/log/LogUtils;->e(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static varargs exeIOTask(Landroid/os/AsyncTask;[Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Params:",
            "Ljava/lang/Object;",
            "Progress:",
            "Ljava/lang/Object;",
            "Result:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/os/AsyncTask<",
            "TParams;TProgress;TResult;>;[TParams;)V"
        }
    .end annotation

    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    invoke-static {}, Lcom/miui/video/framework/task/ThreadPoolManager;->getIOThreadPoolExecutor()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "async task pool full"

    invoke-static {p0}, Lcom/miui/video/framework/log/LogUtils;->v(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static exeNetWorkTask(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    :try_start_0
    invoke-static {}, Lcom/miui/video/framework/task/ThreadPoolManager;->getNetworkThreadPoolExecutor()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/miui/video/framework/log/LogUtils;->e(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static varargs exeNetWorkTask(Landroid/os/AsyncTask;[Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Params:",
            "Ljava/lang/Object;",
            "Progress:",
            "Ljava/lang/Object;",
            "Result:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/os/AsyncTask<",
            "TParams;TProgress;TResult;>;[TParams;)V"
        }
    .end annotation

    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    invoke-static {}, Lcom/miui/video/framework/task/ThreadPoolManager;->getNetworkThreadPoolExecutor()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "async task pool full"

    invoke-static {p0}, Lcom/miui/video/framework/log/LogUtils;->v(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static exePlayerTask(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    :try_start_0
    invoke-static {}, Lcom/miui/video/framework/task/ThreadPoolManager;->getPlayerThreadPoolExecutor()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/miui/video/framework/log/LogUtils;->e(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static exePreloadTask(Ljava/util/Comparator;Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator;",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    :try_start_0
    invoke-static {p0}, Lcom/miui/video/framework/task/ThreadPoolManager;->getPreloadThreadPoolExecutor(Ljava/util/Comparator;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/miui/video/framework/log/LogUtils;->e(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static exeUrgentTask(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    :try_start_0
    invoke-static {}, Lcom/miui/video/framework/task/ThreadPoolManager;->getUrgentThreadPoolExecutor()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/miui/video/framework/log/LogUtils;->e(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static varargs exeUrgentTask(Landroid/os/AsyncTask;[Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Params:",
            "Ljava/lang/Object;",
            "Progress:",
            "Ljava/lang/Object;",
            "Result:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/os/AsyncTask<",
            "TParams;TProgress;TResult;>;[TParams;)V"
        }
    .end annotation

    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    invoke-static {}, Lcom/miui/video/framework/task/ThreadPoolManager;->getUrgentThreadPoolExecutor()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "async task pool full"

    invoke-static {p0}, Lcom/miui/video/framework/log/LogUtils;->v(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static getUIHandler()Landroid/os/Handler;
    .locals 3

    sget-object v0, Lcom/miui/video/framework/task/AsyncTaskUtils;->mUIHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    sget-object v2, Lcom/miui/video/framework/task/AsyncTaskUtils;->mCallback:Landroid/os/Handler$Callback;

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    sput-object v0, Lcom/miui/video/framework/task/AsyncTaskUtils;->mUIHandler:Landroid/os/Handler;

    :cond_0
    sget-object v0, Lcom/miui/video/framework/task/AsyncTaskUtils;->mUIHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static removeCallbacks(Ljava/lang/Runnable;)V
    .locals 1

    sget-object v0, Lcom/miui/video/framework/task/AsyncTaskUtils;->mUIHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/miui/video/framework/task/AsyncTaskUtils;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public static removeIORunnable(Ljava/lang/Runnable;)V
    .locals 1

    sget-object v0, Lcom/miui/video/framework/task/AsyncTaskUtils;->mIOHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/miui/video/framework/task/AsyncTaskUtils;->mIOHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public static runOnIOThread(Ljava/lang/Runnable;)V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-static {p0, v0, v1}, Lcom/miui/video/framework/task/AsyncTaskUtils;->runOnIOThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public static runOnIOThread(Ljava/lang/Runnable;J)V
    .locals 1

    sget-object v0, Lcom/miui/video/framework/task/AsyncTaskUtils;->mIOHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/miui/video/framework/task/AsyncTaskUtils;->mIOHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_0
    sget-object v0, Lcom/miui/video/framework/task/AsyncTaskUtils;->mUIHandler:Landroid/os/Handler;

    invoke-static {v0, p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object p0

    const/16 v0, 0x64

    iput v0, p0, Landroid/os/Message;->what:I

    invoke-static {}, Lcom/miui/video/framework/task/AsyncTaskUtils;->getUIHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    sget-object p0, Lcom/miui/video/framework/task/AsyncTaskUtils;->mIOHandler:Landroid/os/Handler;

    if-nez p0, :cond_1

    invoke-static {}, Lcom/miui/video/framework/task/AsyncTaskUtils;->getUIHandler()Landroid/os/Handler;

    move-result-object p0

    const/16 p1, 0x65

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    return-void
.end method

.method public static runOnUIHandler(Ljava/lang/Runnable;)V
    .locals 1

    invoke-static {}, Lcom/miui/video/framework/task/AsyncTaskUtils;->getUIHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static runOnUIHandler(Ljava/lang/Runnable;J)V
    .locals 1

    invoke-static {}, Lcom/miui/video/framework/task/AsyncTaskUtils;->getUIHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
