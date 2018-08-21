.class public abstract Lcom/alipay/android/app/d/b/e;
.super Ljava/lang/Object;
.source "MspAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/android/app/d/b/e$a;,
        Lcom/alipay/android/app/d/b/e$b;
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
.field private static final MESSAGE_POST_RESULT:I = 0x1

.field private static sHandler:Lcom/alipay/android/app/d/b/e$b;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/alipay/android/app/d/b/e;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-direct {p0, p1}, Lcom/alipay/android/app/d/b/e;->postResult(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/alipay/android/app/d/b/e;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alipay/android/app/d/b/e;->finish(Ljava/lang/Object;)V

    return-void
.end method

.method private final varargs executeOnThread([Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/alipay/android/app/d/b/f;

    invoke-direct {v1, p0, p1}, Lcom/alipay/android/app/d/b/f;-><init>(Lcom/alipay/android/app/d/b/e;[Ljava/lang/Object;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private finish(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    const/4 v0, 0x2

    const-string/jumbo v1, ""

    const-string/jumbo v2, "MspAsyncTask::finish"

    const-string/jumbo v3, "finished"

    invoke-static {v0, v1, v2, v3}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/alipay/android/app/d/b/e;->onPostExecute(Ljava/lang/Object;)V

    return-void
.end method

.method private static getHandler()Landroid/os/Handler;
    .locals 2

    const-class v1, Lcom/alipay/android/app/d/b/e;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/android/app/d/b/e;->sHandler:Lcom/alipay/android/app/d/b/e$b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/alipay/android/app/d/b/e$b;

    invoke-direct {v0}, Lcom/alipay/android/app/d/b/e$b;-><init>()V

    sput-object v0, Lcom/alipay/android/app/d/b/e;->sHandler:Lcom/alipay/android/app/d/b/e$b;

    :cond_0
    sget-object v0, Lcom/alipay/android/app/d/b/e;->sHandler:Lcom/alipay/android/app/d/b/e$b;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private postResult(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)TResult;"
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v0, 0x2

    const-string/jumbo v1, ""

    const-string/jumbo v2, "MspAsyncTask::postResult"

    const-string/jumbo v3, "send message."

    invoke-static {v0, v1, v2, v3}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/android/app/d/b/e;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/alipay/android/app/d/b/e$a;

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-direct {v1, p0, v2}, Lcom/alipay/android/app/d/b/e$a;-><init>(Lcom/alipay/android/app/d/b/e;[Ljava/lang/Object;)V

    invoke-virtual {v0, v4, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-object p1
.end method


# virtual methods
.method protected varargs abstract doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)TResult;"
        }
    .end annotation
.end method

.method public final varargs execute([Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)V"
        }
    .end annotation

    const/4 v0, 0x2

    const-string/jumbo v1, ""

    const-string/jumbo v2, "MspAsyncTask::execute"

    const-string/jumbo v3, "start"

    invoke-static {v0, v1, v2, v3}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/alipay/android/app/d/b/e;->executeOnThread([Ljava/lang/Object;)V

    return-void
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
