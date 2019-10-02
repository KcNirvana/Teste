.class public Lcom/miui/video/base/common/task/WeakHandler;
.super Ljava/lang/Object;
.source "WeakHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/video/base/common/task/WeakHandler$ChainedRef;,
        Lcom/miui/video/base/common/task/WeakHandler$WeakRunnable;,
        Lcom/miui/video/base/common/task/WeakHandler$ExecHandler;
    }
.end annotation


# instance fields
.field private mCallback:Landroid/os/Handler$Callback;

.field private mExec:Lcom/miui/video/base/common/task/WeakHandler$ExecHandler;

.field private mLock:Ljava/util/concurrent/locks/Lock;

.field final mRunnables:Lcom/miui/video/base/common/task/WeakHandler$ChainedRef;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/miui/video/base/common/task/WeakHandler;->mLock:Ljava/util/concurrent/locks/Lock;

    new-instance v0, Lcom/miui/video/base/common/task/WeakHandler$ChainedRef;

    iget-object v1, p0, Lcom/miui/video/base/common/task/WeakHandler;->mLock:Ljava/util/concurrent/locks/Lock;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/miui/video/base/common/task/WeakHandler$ChainedRef;-><init>(Ljava/util/concurrent/locks/Lock;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/miui/video/base/common/task/WeakHandler;->mRunnables:Lcom/miui/video/base/common/task/WeakHandler$ChainedRef;

    :try_start_0
    iput-object v2, p0, Lcom/miui/video/base/common/task/WeakHandler;->mCallback:Landroid/os/Handler$Callback;

    new-instance v0, Lcom/miui/video/base/common/task/WeakHandler$ExecHandler;

    invoke-direct {v0}, Lcom/miui/video/base/common/task/WeakHandler$ExecHandler;-><init>()V

    iput-object v0, p0, Lcom/miui/video/base/common/task/WeakHandler;->mExec:Lcom/miui/video/base/common/task/WeakHandler$ExecHandler;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Landroid/os/Looper;->prepare()V

    const-string v1, "WeakHandler"

    const-string v3, "Throwable"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u3000new WeakHandler()\u3000Throwable "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v3, v0}, Lcom/miui/video/framework/log/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_0

    iput-object v2, p0, Lcom/miui/video/base/common/task/WeakHandler;->mCallback:Landroid/os/Handler$Callback;

    new-instance v0, Lcom/miui/video/base/common/task/WeakHandler$ExecHandler;

    invoke-direct {v0}, Lcom/miui/video/base/common/task/WeakHandler$ExecHandler;-><init>()V

    iput-object v0, p0, Lcom/miui/video/base/common/task/WeakHandler;->mExec:Lcom/miui/video/base/common/task/WeakHandler$ExecHandler;

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/os/Handler$Callback;)V
    .locals 3
    .param p1    # Landroid/os/Handler$Callback;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/miui/video/base/common/task/WeakHandler;->mLock:Ljava/util/concurrent/locks/Lock;

    new-instance v0, Lcom/miui/video/base/common/task/WeakHandler$ChainedRef;

    iget-object v1, p0, Lcom/miui/video/base/common/task/WeakHandler;->mLock:Ljava/util/concurrent/locks/Lock;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/miui/video/base/common/task/WeakHandler$ChainedRef;-><init>(Ljava/util/concurrent/locks/Lock;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/miui/video/base/common/task/WeakHandler;->mRunnables:Lcom/miui/video/base/common/task/WeakHandler$ChainedRef;

    iput-object p1, p0, Lcom/miui/video/base/common/task/WeakHandler;->mCallback:Landroid/os/Handler$Callback;

    new-instance v0, Lcom/miui/video/base/common/task/WeakHandler$ExecHandler;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {v0, v1}, Lcom/miui/video/base/common/task/WeakHandler$ExecHandler;-><init>(Ljava/lang/ref/WeakReference;)V

    iput-object v0, p0, Lcom/miui/video/base/common/task/WeakHandler;->mExec:Lcom/miui/video/base/common/task/WeakHandler$ExecHandler;

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;)V
    .locals 3
    .param p1    # Landroid/os/Looper;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/miui/video/base/common/task/WeakHandler;->mLock:Ljava/util/concurrent/locks/Lock;

    new-instance v0, Lcom/miui/video/base/common/task/WeakHandler$ChainedRef;

    iget-object v1, p0, Lcom/miui/video/base/common/task/WeakHandler;->mLock:Ljava/util/concurrent/locks/Lock;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/miui/video/base/common/task/WeakHandler$ChainedRef;-><init>(Ljava/util/concurrent/locks/Lock;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/miui/video/base/common/task/WeakHandler;->mRunnables:Lcom/miui/video/base/common/task/WeakHandler$ChainedRef;

    iput-object v2, p0, Lcom/miui/video/base/common/task/WeakHandler;->mCallback:Landroid/os/Handler$Callback;

    new-instance v0, Lcom/miui/video/base/common/task/WeakHandler$ExecHandler;

    invoke-direct {v0, p1}, Lcom/miui/video/base/common/task/WeakHandler$ExecHandler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/miui/video/base/common/task/WeakHandler;->mExec:Lcom/miui/video/base/common/task/WeakHandler$ExecHandler;

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V
    .locals 3
    .param p1    # Landroid/os/Looper;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Handler$Callback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/miui/video/base/common/task/WeakHandler;->mLock:Ljava/util/concurrent/locks/Lock;

    new-instance v0, Lcom/miui/video/base/common/task/WeakHandler$ChainedRef;

    iget-object v1, p0, Lcom/miui/video/base/common/task/WeakHandler;->mLock:Ljava/util/concurrent/locks/Lock;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/miui/video/base/common/task/WeakHandler$ChainedRef;-><init>(Ljava/util/concurrent/locks/Lock;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/miui/video/base/common/task/WeakHandler;->mRunnables:Lcom/miui/video/base/common/task/WeakHandler$ChainedRef;

    iput-object p2, p0, Lcom/miui/video/base/common/task/WeakHandler;->mCallback:Landroid/os/Handler$Callback;

    new-instance v0, Lcom/miui/video/base/common/task/WeakHandler$ExecHandler;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {v0, p1, v1}, Lcom/miui/video/base/common/task/WeakHandler$ExecHandler;-><init>(Landroid/os/Looper;Ljava/lang/ref/WeakReference;)V

    iput-object v0, p0, Lcom/miui/video/base/common/task/WeakHandler;->mExec:Lcom/miui/video/base/common/task/WeakHandler$ExecHandler;

    return-void
.end method

.method private wrapRunnable(Ljava/lang/Runnable;)Lcom/miui/video/base/common/task/WeakHandler$WeakRunnable;
    .locals 2
    .param p1    # Ljava/lang/Runnable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    new-instance v0, Lcom/miui/video/base/common/task/WeakHandler$ChainedRef;

    iget-object v1, p0, Lcom/miui/video/base/common/task/WeakHandler;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-direct {v0, v1, p1}, Lcom/miui/video/base/common/task/WeakHandler$ChainedRef;-><init>(Ljava/util/concurrent/locks/Lock;Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/miui/video/base/common/task/WeakHandler;->mRunnables:Lcom/miui/video/base/common/task/WeakHandler$ChainedRef;

    invoke-virtual {p1, v0}, Lcom/miui/video/base/common/task/WeakHandler$ChainedRef;->insertAfter(Lcom/miui/video/base/common/task/WeakHandler$ChainedRef;)V

    iget-object p1, v0, Lcom/miui/video/base/common/task/WeakHandler$ChainedRef;->wrapper:Lcom/miui/video/base/common/task/WeakHandler$WeakRunnable;

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Runnable can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final getHandler()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/common/task/WeakHandler;->mExec:Lcom/miui/video/base/common/task/WeakHandler$ExecHandler;

    return-object v0
.end method

.method public final getLooper()Landroid/os/Looper;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/common/task/WeakHandler;->mExec:Lcom/miui/video/base/common/task/WeakHandler$ExecHandler;

    invoke-virtual {v0}, Lcom/miui/video/base/common/task/WeakHandler$ExecHandler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method public final hasMessages(I)Z
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/common/task/WeakHandler;->mExec:Lcom/miui/video/base/common/task/WeakHandler$ExecHandler;

    invoke-virtual {v0, p1}, Lcom/miui/video/base/common/task/WeakHandler$ExecHandler;->hasMessages(I)Z

    move-result p1

    return p1
.end method

.method public final hasMessages(ILjava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/common/task/WeakHandler;->mExec:Lcom/miui/video/base/common/task/WeakHandler$ExecHandler;

    invoke-virtual {v0, p1, p2}, Lcom/miui/video/base/common/task/WeakHandler$ExecHandler;->hasMessages(ILjava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final post(Ljava/lang/Runnable;)Z
    .locals 1
    .param p1    # Ljava/lang/Runnable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/miui/video/base/common/task/WeakHandler;->mExec:Lcom/miui/video/base/common/task/WeakHandler$ExecHandler;

    invoke-direct {p0, p1}, Lcom/miui/video/base/common/task/WeakHandler;->wrapRunnable(Ljava/lang/Runnable;)Lcom/miui/video/base/common/task/WeakHandler$WeakRunnable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/miui/video/base/common/task/WeakHandler$ExecHandler;->post(Ljava/lang/Runnable;)Z

    move-result p1

    return p1
.end method

.method public final postAtFrontOfQueue(Ljava/lang/Runnable;)Z
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/common/task/WeakHandler;->mExec:Lcom/miui/video/base/common/task/WeakHandler$ExecHandler;

    invoke-direct {p0, p1}, Lcom/miui/video/base/common/task/WeakHandler;->wrapRunnable(Ljava/lang/Runnable;)Lcom/miui/video/base/common/task/WeakHandler$WeakRunnable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/miui/video/base/common/task/WeakHandler$ExecHandler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    move-result p1

    return p1
.end method

.method public final postAtTime(Ljava/lang/Runnable;J)Z
    .locals 1
    .param p1    # Ljava/lang/Runnable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/miui/video/base/common/task/WeakHandler;->mExec:Lcom/miui/video/base/common/task/WeakHandler$ExecHandler;

    invoke-direct {p0, p1}, Lcom/miui/video/base/common/task/WeakHandler;->wrapRunnable(Ljava/lang/Runnable;)Lcom/miui/video/base/common/task/WeakHandler$WeakRunnable;

    move-result-object p1

    invoke-virtual {v0, p1, p2, p3}, Lcom/miui/video/base/common/task/WeakHandler$ExecHandler;->postAtTime(Ljava/lang/Runnable;J)Z

    move-result p1

    return p1
.end method

.method public final postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/common/task/WeakHandler;->mExec:Lcom/miui/video/base/common/task/WeakHandler$ExecHandler;

    invoke-direct {p0, p1}, Lcom/miui/video/base/common/task/WeakHandler;->wrapRunnable(Ljava/lang/Runnable;)Lcom/miui/video/base/common/task/WeakHandler$WeakRunnable;

    move-result-object p1

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/miui/video/base/common/task/WeakHandler$ExecHandler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    move-result p1

    return p1
.end method

.method public final postDelayed(Ljava/lang/Runnable;J)Z
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/common/task/WeakHandler;->mExec:Lcom/miui/video/base/common/task/WeakHandler$ExecHandler;

    invoke-direct {p0, p1}, Lcom/miui/video/base/common/task/WeakHandler;->wrapRunnable(Ljava/lang/Runnable;)Lcom/miui/video/base/common/task/WeakHandler$WeakRunnable;

    move-result-object p1

    invoke-virtual {v0, p1, p2, p3}, Lcom/miui/video/base/common/task/WeakHandler$ExecHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result p1

    return p1
.end method

.method public final removeCallbacks(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/common/task/WeakHandler;->mRunnables:Lcom/miui/video/base/common/task/WeakHandler$ChainedRef;

    invoke-virtual {v0, p1}, Lcom/miui/video/base/common/task/WeakHandler$ChainedRef;->remove(Ljava/lang/Runnable;)Lcom/miui/video/base/common/task/WeakHandler$WeakRunnable;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/miui/video/base/common/task/WeakHandler;->mExec:Lcom/miui/video/base/common/task/WeakHandler$ExecHandler;

    invoke-virtual {v0, p1}, Lcom/miui/video/base/common/task/WeakHandler$ExecHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public final removeCallbacks(Ljava/lang/Runnable;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/common/task/WeakHandler;->mRunnables:Lcom/miui/video/base/common/task/WeakHandler$ChainedRef;

    invoke-virtual {v0, p1}, Lcom/miui/video/base/common/task/WeakHandler$ChainedRef;->remove(Ljava/lang/Runnable;)Lcom/miui/video/base/common/task/WeakHandler$WeakRunnable;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/miui/video/base/common/task/WeakHandler;->mExec:Lcom/miui/video/base/common/task/WeakHandler$ExecHandler;

    invoke-virtual {v0, p1, p2}, Lcom/miui/video/base/common/task/WeakHandler$ExecHandler;->removeCallbacks(Ljava/lang/Runnable;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final removeCallbacksAndMessages(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/common/task/WeakHandler;->mExec:Lcom/miui/video/base/common/task/WeakHandler$ExecHandler;

    invoke-virtual {v0, p1}, Lcom/miui/video/base/common/task/WeakHandler$ExecHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public final removeMessages(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/common/task/WeakHandler;->mExec:Lcom/miui/video/base/common/task/WeakHandler$ExecHandler;

    invoke-virtual {v0, p1}, Lcom/miui/video/base/common/task/WeakHandler$ExecHandler;->removeMessages(I)V

    return-void
.end method

.method public final removeMessages(ILjava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/common/task/WeakHandler;->mExec:Lcom/miui/video/base/common/task/WeakHandler$ExecHandler;

    invoke-virtual {v0, p1, p2}, Lcom/miui/video/base/common/task/WeakHandler$ExecHandler;->removeMessages(ILjava/lang/Object;)V

    return-void
.end method

.method public final sendEmptyMessage(I)Z
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/common/task/WeakHandler;->mExec:Lcom/miui/video/base/common/task/WeakHandler$ExecHandler;

    invoke-virtual {v0, p1}, Lcom/miui/video/base/common/task/WeakHandler$ExecHandler;->sendEmptyMessage(I)Z

    move-result p1

    return p1
.end method

.method public final sendEmptyMessageAtTime(IJ)Z
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/common/task/WeakHandler;->mExec:Lcom/miui/video/base/common/task/WeakHandler$ExecHandler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/miui/video/base/common/task/WeakHandler$ExecHandler;->sendEmptyMessageAtTime(IJ)Z

    move-result p1

    return p1
.end method

.method public final sendEmptyMessageDelayed(IJ)Z
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/common/task/WeakHandler;->mExec:Lcom/miui/video/base/common/task/WeakHandler$ExecHandler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/miui/video/base/common/task/WeakHandler$ExecHandler;->sendEmptyMessageDelayed(IJ)Z

    move-result p1

    return p1
.end method

.method public final sendMessage(Landroid/os/Message;)Z
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/common/task/WeakHandler;->mExec:Lcom/miui/video/base/common/task/WeakHandler$ExecHandler;

    invoke-virtual {v0, p1}, Lcom/miui/video/base/common/task/WeakHandler$ExecHandler;->sendMessage(Landroid/os/Message;)Z

    move-result p1

    return p1
.end method

.method public final sendMessageAtFrontOfQueue(Landroid/os/Message;)Z
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/common/task/WeakHandler;->mExec:Lcom/miui/video/base/common/task/WeakHandler$ExecHandler;

    invoke-virtual {v0, p1}, Lcom/miui/video/base/common/task/WeakHandler$ExecHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    move-result p1

    return p1
.end method

.method public sendMessageAtTime(Landroid/os/Message;J)Z
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/common/task/WeakHandler;->mExec:Lcom/miui/video/base/common/task/WeakHandler$ExecHandler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/miui/video/base/common/task/WeakHandler$ExecHandler;->sendMessageAtTime(Landroid/os/Message;J)Z

    move-result p1

    return p1
.end method

.method public final sendMessageDelayed(Landroid/os/Message;J)Z
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/common/task/WeakHandler;->mExec:Lcom/miui/video/base/common/task/WeakHandler$ExecHandler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/miui/video/base/common/task/WeakHandler$ExecHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move-result p1

    return p1
.end method
