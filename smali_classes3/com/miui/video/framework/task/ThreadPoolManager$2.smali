.class final Lcom/miui/video/framework/task/ThreadPoolManager$2;
.super Ljava/lang/Object;
.source "ThreadPoolManager.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/framework/task/ThreadPoolManager;->getThreadFactory(Ljava/lang/String;I)Ljava/util/concurrent/ThreadFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field count:I

.field final synthetic val$name:Ljava/lang/String;

.field final synthetic val$priority:I


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/framework/task/ThreadPoolManager$2;->val$name:Ljava/lang/String;

    iput p2, p0, Lcom/miui/video/framework/task/ThreadPoolManager$2;->val$priority:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/miui/video/framework/task/ThreadPoolManager$2;->count:I

    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 6

    iget v0, p0, Lcom/miui/video/framework/task/ThreadPoolManager$2;->count:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/miui/video/framework/task/ThreadPoolManager$2;->count:I

    new-instance v0, Ljava/lang/Thread;

    const-string v2, "threadpool-%s-%d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/miui/video/framework/task/ThreadPoolManager$2;->val$name:Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    iget v4, p0, Lcom/miui/video/framework/task/ThreadPoolManager$2;->count:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/Thread;->setDaemon(Z)V

    iget p1, p0, Lcom/miui/video/framework/task/ThreadPoolManager$2;->val$priority:I

    invoke-virtual {v0, p1}, Ljava/lang/Thread;->setPriority(I)V

    return-object v0
.end method
