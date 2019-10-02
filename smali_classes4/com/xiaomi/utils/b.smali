.class public Lcom/xiaomi/utils/b;
.super Ljava/lang/Object;
.source "BackgroundThread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/utils/b$a;
    }
.end annotation


# static fields
.field private static a:Landroid/os/Handler;

.field private static b:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a()V
    .locals 2

    sget-object v0, Lcom/xiaomi/utils/b;->b:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/xiaomi/utils/b;->b:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "IOThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/utils/b;->b:Landroid/os/HandlerThread;

    sget-object v0, Lcom/xiaomi/utils/b;->b:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/xiaomi/utils/b;->b:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/xiaomi/utils/b;->a:Landroid/os/Handler;

    :cond_1
    sget-object v0, Lcom/xiaomi/utils/b;->a:Landroid/os/Handler;

    if-nez v0, :cond_2

    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/xiaomi/utils/b;->b:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/xiaomi/utils/b;->a:Landroid/os/Handler;

    :cond_2
    return-void
.end method

.method public static a(Ljava/lang/Runnable;)V
    .locals 3

    const-class v0, Lcom/xiaomi/utils/b;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/xiaomi/utils/b;->a()V

    sget-object v1, Lcom/xiaomi/utils/b;->a:Landroid/os/Handler;

    new-instance v2, Lcom/xiaomi/utils/b$a;

    invoke-direct {v2, p0}, Lcom/xiaomi/utils/b$a;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
