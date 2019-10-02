.class final Lcom/miui/video/framework/task/ThreadPoolManager$1;
.super Ljava/lang/Object;
.source "ThreadPoolManager.java"

# interfaces
.implements Ljava/util/concurrent/RejectedExecutionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/framework/task/ThreadPoolManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public rejectedExecution(Ljava/lang/Runnable;Ljava/util/concurrent/ThreadPoolExecutor;)V
    .locals 0

    const-string p2, "Thread pool executor: reject work"

    invoke-static {p2}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;)V

    invoke-static {}, Lcom/miui/video/framework/task/ThreadPoolManager;->access$000()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object p2

    if-eqz p2, :cond_0

    const-string p2, "Thread pool executor: reject work, put into backup pool"

    invoke-static {p2}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;)V

    invoke-static {}, Lcom/miui/video/framework/task/ThreadPoolManager;->access$000()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
