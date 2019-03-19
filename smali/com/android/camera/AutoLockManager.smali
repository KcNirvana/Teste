.class public Lcom/android/camera/AutoLockManager;
.super Ljava/lang/Object;
.source "AutoLockManager.java"


# static fields
.field public static HIBERNATION_TIMEOUT:I

.field private static MILLIS_IN_MINUTE:J

.field private static final TAG:Ljava/lang/String;

.field private static sMap:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/content/Context;",
            "Lcom/android/camera/AutoLockManager;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCameraAlwaysKeepScreenOn:Z

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mHibernationTimeOut:J

.field private mPaused:Z

.field private mScreenOffTimeOut:J


# direct methods
.method static synthetic -wrap0(Lcom/android/camera/AutoLockManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/AutoLockManager;->hibernate()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/camera/AutoLockManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/AutoLockManager;->lockScreen()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/android/camera/AutoLockManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/AutoLockManager;->TAG:Ljava/lang/String;

    const/4 v0, 0x3

    sput v0, Lcom/android/camera/AutoLockManager;->HIBERNATION_TIMEOUT:I

    const-wide/32 v0, 0xea60

    sput-wide v0, Lcom/android/camera/AutoLockManager;->MILLIS_IN_MINUTE:J

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/android/camera/AutoLockManager;->sMap:Ljava/util/WeakHashMap;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 6

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v2, 0x3a98

    iput-wide v2, p0, Lcom/android/camera/AutoLockManager;->mScreenOffTimeOut:J

    iput-boolean v4, p0, Lcom/android/camera/AutoLockManager;->mCameraAlwaysKeepScreenOn:Z

    iput-object p1, p0, Lcom/android/camera/AutoLockManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "camera.debug.timeout_seconds"

    invoke-static {v1, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const-string/jumbo v1, "camera_always_keep_screen_on"

    invoke-static {v1, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/camera/AutoLockManager;->mCameraAlwaysKeepScreenOn:Z

    if-lez v0, :cond_0

    int-to-long v2, v0

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/camera/AutoLockManager;->mHibernationTimeOut:J

    :goto_0
    invoke-direct {p0, p1}, Lcom/android/camera/AutoLockManager;->updateScreenOffTimeout(Landroid/content/Context;)V

    return-void

    :cond_0
    sget-wide v2, Lcom/android/camera/AutoLockManager;->MILLIS_IN_MINUTE:J

    invoke-static {}, Lcom/android/camera/Device;->getHibernationTimeout()I

    move-result v1

    int-to-long v4, v1

    mul-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/camera/AutoLockManager;->mHibernationTimeOut:J

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/camera/AutoLockManager;
    .locals 2

    sget-object v1, Lcom/android/camera/AutoLockManager;->sMap:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/AutoLockManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/camera/AutoLockManager;

    invoke-direct {v0, p0}, Lcom/android/camera/AutoLockManager;-><init>(Landroid/content/Context;)V

    sget-object v1, Lcom/android/camera/AutoLockManager;->sMap:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method private hibernate()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/AutoLockManager;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->onHibernate()V

    return-void
.end method

.method private initHandler()V
    .locals 3

    iget-object v1, p0, Lcom/android/camera/AutoLockManager;->mHandler:Landroid/os/Handler;

    if-nez v1, :cond_0

    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "my_handler_thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Lcom/android/camera/AutoLockManager$1;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/camera/AutoLockManager$1;-><init>(Lcom/android/camera/AutoLockManager;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/camera/AutoLockManager;->mHandler:Landroid/os/Handler;

    :cond_0
    return-void
.end method

.method private lockScreen()V
    .locals 2

    iget-boolean v1, p0, Lcom/android/camera/AutoLockManager;->mPaused:Z

    if-nez v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.miui.app.ExtraStatusBarManager.TRIGGER_TOGGLE_LOCK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/camera/AutoLockManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public static removeInstance(Landroid/content/Context;)V
    .locals 2

    sget-object v1, Lcom/android/camera/AutoLockManager;->sMap:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/AutoLockManager;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/camera/AutoLockManager;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/android/camera/AutoLockManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->quit()V

    :cond_0
    return-void
.end method

.method private updateScreenOffTimeout(Landroid/content/Context;)V
    .locals 4

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "screen_off_timeout"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    int-to-long v2, v1

    iput-wide v2, p0, Lcom/android/camera/AutoLockManager;->mScreenOffTimeOut:J
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/android/camera/AutoLockManager;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/provider/Settings$SettingNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public hibernateDelayed()V
    .locals 5

    const/4 v4, 0x1

    iget-boolean v0, p0, Lcom/android/camera/AutoLockManager;->mCameraAlwaysKeepScreenOn:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-wide v0, p0, Lcom/android/camera/AutoLockManager;->mHibernationTimeOut:J

    iget-wide v2, p0, Lcom/android/camera/AutoLockManager;->mScreenOffTimeOut:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/camera/AutoLockManager;->initHandler()V

    iget-object v0, p0, Lcom/android/camera/AutoLockManager;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/AutoLockManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/camera/AutoLockManager;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->isVideoRecording()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/AutoLockManager;->mHandler:Landroid/os/Handler;

    iget-wide v2, p0, Lcom/android/camera/AutoLockManager;->mHibernationTimeOut:J

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_2
    return-void
.end method

.method public onPause()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/AutoLockManager;->mPaused:Z

    invoke-virtual {p0}, Lcom/android/camera/AutoLockManager;->removeMessage()V

    return-void
.end method

.method public onResume()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/AutoLockManager;->mPaused:Z

    iget-object v0, p0, Lcom/android/camera/AutoLockManager;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/camera/AutoLockManager;->updateScreenOffTimeout(Landroid/content/Context;)V

    return-void
.end method

.method public onUserInteraction()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/camera/AutoLockManager;->hibernateDelayed()V

    return-void
.end method

.method public removeMessage()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/camera/AutoLockManager;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/AutoLockManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
