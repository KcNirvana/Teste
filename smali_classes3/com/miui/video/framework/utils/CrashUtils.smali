.class public Lcom/miui/video/framework/utils/CrashUtils;
.super Ljava/lang/Object;
.source "CrashUtils.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# static fields
.field private static volatile mInstance:Lcom/miui/video/framework/utils/CrashUtils;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    return-void
.end method

.method public static getInstance()Lcom/miui/video/framework/utils/CrashUtils;
    .locals 2

    sget-object v0, Lcom/miui/video/framework/utils/CrashUtils;->mInstance:Lcom/miui/video/framework/utils/CrashUtils;

    if-nez v0, :cond_1

    const-class v0, Lcom/miui/video/framework/utils/CrashUtils;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/miui/video/framework/utils/CrashUtils;->mInstance:Lcom/miui/video/framework/utils/CrashUtils;

    if-nez v1, :cond_0

    new-instance v1, Lcom/miui/video/framework/utils/CrashUtils;

    invoke-direct {v1}, Lcom/miui/video/framework/utils/CrashUtils;-><init>()V

    sput-object v1, Lcom/miui/video/framework/utils/CrashUtils;->mInstance:Lcom/miui/video/framework/utils/CrashUtils;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/miui/video/framework/utils/CrashUtils;->mInstance:Lcom/miui/video/framework/utils/CrashUtils;

    return-object v0
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p2}, Lcom/miui/video/framework/log/LogUtils;->runOutputAllLog(Ljava/lang/Throwable;)V

    const-wide/16 p1, 0xbb8

    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p1

    invoke-static {p1}, Landroid/os/Process;->killProcess(I)V

    return-void
.end method
