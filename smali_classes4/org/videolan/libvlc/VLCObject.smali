.class abstract Lorg/videolan/libvlc/VLCObject;
.super Ljava/lang/Object;
.source "VLCObject.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lorg/videolan/libvlc/VLCEvent;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mEventListener:Lorg/videolan/libvlc/VLCEvent$Listener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/videolan/libvlc/VLCEvent$Listener<",
            "TT;>;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mInstance:J

.field final mLibVLC:Lorg/videolan/libvlc/LibVLC;

.field private mNativeRefCount:I


# direct methods
.method protected constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/videolan/libvlc/VLCObject;->mEventListener:Lorg/videolan/libvlc/VLCEvent$Listener;

    iput-object v0, p0, Lorg/videolan/libvlc/VLCObject;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    iput v1, p0, Lorg/videolan/libvlc/VLCObject;->mNativeRefCount:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lorg/videolan/libvlc/VLCObject;->mInstance:J

    iput-object v0, p0, Lorg/videolan/libvlc/VLCObject;->mLibVLC:Lorg/videolan/libvlc/LibVLC;

    return-void
.end method

.method protected constructor <init>(Lorg/videolan/libvlc/LibVLC;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/videolan/libvlc/VLCObject;->mEventListener:Lorg/videolan/libvlc/VLCEvent$Listener;

    iput-object v0, p0, Lorg/videolan/libvlc/VLCObject;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    iput v0, p0, Lorg/videolan/libvlc/VLCObject;->mNativeRefCount:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/videolan/libvlc/VLCObject;->mInstance:J

    iput-object p1, p0, Lorg/videolan/libvlc/VLCObject;->mLibVLC:Lorg/videolan/libvlc/LibVLC;

    return-void
.end method

.method protected constructor <init>(Lorg/videolan/libvlc/VLCObject;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/videolan/libvlc/VLCObject;->mEventListener:Lorg/videolan/libvlc/VLCEvent$Listener;

    iput-object v0, p0, Lorg/videolan/libvlc/VLCObject;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    iput v0, p0, Lorg/videolan/libvlc/VLCObject;->mNativeRefCount:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/videolan/libvlc/VLCObject;->mInstance:J

    iget-object p1, p1, Lorg/videolan/libvlc/VLCObject;->mLibVLC:Lorg/videolan/libvlc/LibVLC;

    iput-object p1, p0, Lorg/videolan/libvlc/VLCObject;->mLibVLC:Lorg/videolan/libvlc/LibVLC;

    return-void
.end method

.method private declared-synchronized dispatchEventFromNative(IJJJJFLjava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/videolan/libvlc/VLCObject;->isReleased()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-virtual/range {p0 .. p11}, Lorg/videolan/libvlc/VLCObject;->onEventNative(IJJJJFLjava/lang/String;)Lorg/videolan/libvlc/VLCEvent;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p2, p0, Lorg/videolan/libvlc/VLCObject;->mEventListener:Lorg/videolan/libvlc/VLCEvent$Listener;

    if-eqz p2, :cond_1

    iget-object p2, p0, Lorg/videolan/libvlc/VLCObject;->mHandler:Landroid/os/Handler;

    if-eqz p2, :cond_1

    iget-object p2, p0, Lorg/videolan/libvlc/VLCObject;->mHandler:Landroid/os/Handler;

    new-instance p3, Lorg/videolan/libvlc/VLCObject$1EventRunnable;

    iget-object p4, p0, Lorg/videolan/libvlc/VLCObject;->mEventListener:Lorg/videolan/libvlc/VLCEvent$Listener;

    invoke-direct {p3, p0, p4, p1}, Lorg/videolan/libvlc/VLCObject$1EventRunnable;-><init>(Lorg/videolan/libvlc/VLCObject;Lorg/videolan/libvlc/VLCEvent$Listener;Lorg/videolan/libvlc/VLCEvent;)V

    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private static dispatchEventFromWeakNative(Ljava/lang/Object;IJJJJFLjava/lang/String;)V
    .locals 13

    move-object v0, p0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lorg/videolan/libvlc/VLCObject;

    if-eqz v1, :cond_0

    move v2, p1

    move-wide v3, p2

    move-wide/from16 v5, p4

    move-wide/from16 v7, p6

    move-wide/from16 v9, p8

    move/from16 v11, p10

    move-object/from16 v12, p11

    invoke-direct/range {v1 .. v12}, Lorg/videolan/libvlc/VLCObject;->dispatchEventFromNative(IJJJJFLjava/lang/String;)V

    :cond_0
    return-void
.end method

.method private getWeakReference()Ljava/lang/Object;
    .locals 1

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method private native nativeDetachEvents()V
.end method


# virtual methods
.method public declared-synchronized isReleased()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lorg/videolan/libvlc/VLCObject;->mNativeRefCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected abstract onEventNative(IJJJJFLjava/lang/String;)Lorg/videolan/libvlc/VLCEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJJJF",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation
.end method

.method protected abstract onReleaseNative()V
.end method

.method public final release()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lorg/videolan/libvlc/VLCObject;->mNativeRefCount:I

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    iget v0, p0, Lorg/videolan/libvlc/VLCObject;->mNativeRefCount:I

    if-lez v0, :cond_1

    iget v0, p0, Lorg/videolan/libvlc/VLCObject;->mNativeRefCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/videolan/libvlc/VLCObject;->mNativeRefCount:I

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    :goto_0
    if-nez v0, :cond_2

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lorg/videolan/libvlc/VLCObject;->setEventListener(Lorg/videolan/libvlc/VLCEvent$Listener;)V

    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_3

    invoke-direct {p0}, Lorg/videolan/libvlc/VLCObject;->nativeDetachEvents()V

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lorg/videolan/libvlc/VLCObject;->onReleaseNative()V

    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_3
    :goto_1
    return-void

    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public final declared-synchronized retain()Z
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lorg/videolan/libvlc/VLCObject;->mNativeRefCount:I

    if-lez v0, :cond_0

    iget v0, p0, Lorg/videolan/libvlc/VLCObject;->mNativeRefCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/videolan/libvlc/VLCObject;->mNativeRefCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v1

    :cond_0
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized setEventListener(Lorg/videolan/libvlc/VLCEvent$Listener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/videolan/libvlc/VLCEvent$Listener<",
            "TT;>;)V"
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lorg/videolan/libvlc/VLCObject;->setEventListener(Lorg/videolan/libvlc/VLCEvent$Listener;Landroid/os/Handler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected declared-synchronized setEventListener(Lorg/videolan/libvlc/VLCEvent$Listener;Landroid/os/Handler;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/videolan/libvlc/VLCEvent$Listener<",
            "TT;>;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/videolan/libvlc/VLCObject;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/videolan/libvlc/VLCObject;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    iput-object p1, p0, Lorg/videolan/libvlc/VLCObject;->mEventListener:Lorg/videolan/libvlc/VLCEvent$Listener;

    iget-object p1, p0, Lorg/videolan/libvlc/VLCObject;->mEventListener:Lorg/videolan/libvlc/VLCEvent$Listener;

    if-nez p1, :cond_1

    iput-object v1, p0, Lorg/videolan/libvlc/VLCObject;->mHandler:Landroid/os/Handler;

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lorg/videolan/libvlc/VLCObject;->mHandler:Landroid/os/Handler;

    if-nez p1, :cond_3

    if-eqz p2, :cond_2

    goto :goto_0

    :cond_2
    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    :goto_0
    iput-object p2, p0, Lorg/videolan/libvlc/VLCObject;->mHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
