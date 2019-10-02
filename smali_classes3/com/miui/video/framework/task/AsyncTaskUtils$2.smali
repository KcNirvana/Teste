.class final Lcom/miui/video/framework/task/AsyncTaskUtils$2;
.super Ljava/lang/Object;
.source "AsyncTaskUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/framework/task/AsyncTaskUtils;
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
.method public run()V
    .locals 3

    sget-object v0, Lcom/miui/video/framework/task/AsyncTaskUtils;->mIOHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-class v0, Lcom/miui/video/framework/task/AsyncTaskUtils;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/miui/video/framework/task/AsyncTaskUtils;->mIOHandler:Landroid/os/Handler;

    if-nez v1, :cond_1

    invoke-static {}, Landroid/os/Looper;->prepare()V

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/miui/video/framework/task/AsyncTaskUtils;->mIOHandler:Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->loop()V

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
