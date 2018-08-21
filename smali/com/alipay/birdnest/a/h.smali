.class public abstract Lcom/alipay/birdnest/a/h;
.super Ljava/lang/Object;
.source "ThreadPoolTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/birdnest/a/h$b;,
        Lcom/alipay/birdnest/a/h$a;,
        Lcom/alipay/birdnest/a/h$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Params:",
        "Ljava/lang/Object;",
        "Progress:",
        "Ljava/lang/Object;",
        "Result:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final MESSAGE_POST_PROGRESS:I = 0x200

.field private static final MESSAGE_POST_RESULT:I = 0x100

.field private static sHandler:Landroid/os/Handler;


# instance fields
.field private executorService:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alipay/birdnest/a/h;->executorService:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method static synthetic access$000()Landroid/os/Handler;
    .locals 1

    invoke-static {}, Lcom/alipay/birdnest/a/h;->getHandler()Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method private static getHandler()Landroid/os/Handler;
    .locals 2

    const-class v1, Lcom/alipay/birdnest/a/h;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/birdnest/a/h;->sHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    new-instance v0, Lcom/alipay/birdnest/a/h$a;

    invoke-direct {v0}, Lcom/alipay/birdnest/a/h$a;-><init>()V

    sput-object v0, Lcom/alipay/birdnest/a/h;->sHandler:Landroid/os/Handler;

    :cond_0
    sget-object v0, Lcom/alipay/birdnest/a/h;->sHandler:Landroid/os/Handler;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static removeAllPendingTasks(Ljava/util/Set;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/alipay/birdnest/a/h$b;",
            ">;)V"
        }
    .end annotation

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/alipay/birdnest/a/h;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/birdnest/a/h$b;

    const/16 v3, 0x100

    invoke-virtual {v1, v3, v0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    const/16 v3, 0x200

    invoke-virtual {v1, v3, v0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method protected varargs abstract doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)TResult;"
        }
    .end annotation
.end method

.method public varargs execute([Ljava/lang/Object;)Lcom/alipay/birdnest/a/h$b;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)",
            "Lcom/alipay/birdnest/a/h$b",
            "<TProgress;TResult;>;"
        }
    .end annotation

    new-instance v0, Lcom/alipay/birdnest/a/h$b;

    invoke-direct {v0}, Lcom/alipay/birdnest/a/h$b;-><init>()V

    iget-object v1, p0, Lcom/alipay/birdnest/a/h;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/alipay/birdnest/a/h$c;

    invoke-direct {v2, p0, v0, p1}, Lcom/alipay/birdnest/a/h$c;-><init>(Lcom/alipay/birdnest/a/h;Lcom/alipay/birdnest/a/h$b;[Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TProgress;)V"
        }
    .end annotation

    return-void
.end method
