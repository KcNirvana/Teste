.class public Lcom/miui/home/launcher/assistant/util/SingleThreadNamedTaskExecutor;
.super Ljava/lang/Object;
.source "SingleThreadNamedTaskExecutor.java"

# interfaces
.implements Lcom/miui/home/launcher/assistant/util/NamedTaskExecutor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/assistant/util/SingleThreadNamedTaskExecutor$Worker;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SingleThreadNamedTaskExecutor"


# instance fields
.field private volatile mClosed:Z

.field private final mQueue:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Lcom/miui/home/launcher/assistant/util/NamedTask;",
            ">;"
        }
    .end annotation
.end field

.field private final mWorker:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ThreadFactory;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/home/launcher/assistant/util/SingleThreadNamedTaskExecutor;->mClosed:Z

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/util/SingleThreadNamedTaskExecutor;->mQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    new-instance v0, Lcom/miui/home/launcher/assistant/util/SingleThreadNamedTaskExecutor$Worker;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/home/launcher/assistant/util/SingleThreadNamedTaskExecutor$Worker;-><init>(Lcom/miui/home/launcher/assistant/util/SingleThreadNamedTaskExecutor;Lcom/miui/home/launcher/assistant/util/SingleThreadNamedTaskExecutor$1;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/ThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/util/SingleThreadNamedTaskExecutor;->mWorker:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/util/SingleThreadNamedTaskExecutor;->mWorker:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static synthetic access$100(Lcom/miui/home/launcher/assistant/util/SingleThreadNamedTaskExecutor;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/home/launcher/assistant/util/SingleThreadNamedTaskExecutor;->mClosed:Z

    return v0
.end method

.method static synthetic access$200(Lcom/miui/home/launcher/assistant/util/SingleThreadNamedTaskExecutor;)Ljava/util/concurrent/LinkedBlockingQueue;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/util/SingleThreadNamedTaskExecutor;->mQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    return-object v0
.end method

.method public static factory(Ljava/util/concurrent/ThreadFactory;)Lcom/miui/home/launcher/assistant/util/Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ThreadFactory;",
            ")",
            "Lcom/miui/home/launcher/assistant/util/Factory",
            "<",
            "Lcom/miui/home/launcher/assistant/util/NamedTaskExecutor;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/miui/home/launcher/assistant/util/SingleThreadNamedTaskExecutor$1;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/assistant/util/SingleThreadNamedTaskExecutor$1;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    return-object v0
.end method


# virtual methods
.method public cancelPendingTasks()V
    .locals 2

    iget-boolean v0, p0, Lcom/miui/home/launcher/assistant/util/SingleThreadNamedTaskExecutor;->mClosed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "cancelPendingTasks() after close()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/assistant/util/SingleThreadNamedTaskExecutor;->mQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    return-void
.end method

.method public close()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/home/launcher/assistant/util/SingleThreadNamedTaskExecutor;->mClosed:Z

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/util/SingleThreadNamedTaskExecutor;->mWorker:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/util/SingleThreadNamedTaskExecutor;->mQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    return-void
.end method

.method public execute(Lcom/miui/home/launcher/assistant/util/NamedTask;)V
    .locals 2

    iget-boolean v0, p0, Lcom/miui/home/launcher/assistant/util/SingleThreadNamedTaskExecutor;->mClosed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "execute() after close()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/assistant/util/SingleThreadNamedTaskExecutor;->mQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z

    return-void
.end method
