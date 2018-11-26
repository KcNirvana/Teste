.class public Lcom/miui/analytics/DeviceInfoManager;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String; = "DeviceInfoManager"

.field private static mMainHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/miui/analytics/DeviceInfoManager;->mMainHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static handleTask(Landroid/content/Context;Z)V
    .locals 4

    const-string/jumbo v0, "DeviceInfoManager"

    const-string/jumbo v1, "handleTask:"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "device_info_thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/miui/analytics/DeviceInfoManager$1;

    invoke-direct {v2, p0, v0}, Lcom/miui/analytics/DeviceInfoManager$1;-><init>(Landroid/content/Context;Landroid/os/HandlerThread;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    sget-object v0, Lcom/miui/analytics/DeviceInfoManager;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/miui/analytics/DeviceInfoManager$2;

    invoke-direct {v1, p0}, Lcom/miui/analytics/DeviceInfoManager$2;-><init>(Landroid/content/Context;)V

    const-wide/32 v2, 0x1b77400

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
