.class Lorg/videolan/libvlc/AWindow$SurfaceTextureThread;
.super Ljava/lang/Object;
.source "AWindow.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/videolan/libvlc/AWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SurfaceTextureThread"
.end annotation


# instance fields
.field private mDoRelease:Z

.field private mFrameAvailable:Z

.field private mIsAttached:Z

.field private mLooper:Landroid/os/Looper;

.field private mSurface:Landroid/view/Surface;

.field private mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private mThread:Ljava/lang/Thread;


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/videolan/libvlc/AWindow$SurfaceTextureThread;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iput-object v0, p0, Lorg/videolan/libvlc/AWindow$SurfaceTextureThread;->mSurface:Landroid/view/Surface;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/videolan/libvlc/AWindow$SurfaceTextureThread;->mFrameAvailable:Z

    iput-object v0, p0, Lorg/videolan/libvlc/AWindow$SurfaceTextureThread;->mLooper:Landroid/os/Looper;

    iput-object v0, p0, Lorg/videolan/libvlc/AWindow$SurfaceTextureThread;->mThread:Ljava/lang/Thread;

    iput-boolean v1, p0, Lorg/videolan/libvlc/AWindow$SurfaceTextureThread;->mIsAttached:Z

    iput-boolean v1, p0, Lorg/videolan/libvlc/AWindow$SurfaceTextureThread;->mDoRelease:Z

    return-void
.end method

.method synthetic constructor <init>(Lorg/videolan/libvlc/AWindow$1;)V
    .locals 0

    invoke-direct {p0}, Lorg/videolan/libvlc/AWindow$SurfaceTextureThread;-><init>()V

    return-void
.end method

.method static synthetic access$1200(Lorg/videolan/libvlc/AWindow$SurfaceTextureThread;)V
    .locals 0

    invoke-direct {p0}, Lorg/videolan/libvlc/AWindow$SurfaceTextureThread;->release()V

    return-void
.end method

.method static synthetic access$1500(Lorg/videolan/libvlc/AWindow$SurfaceTextureThread;I)Z
    .locals 0

    invoke-direct {p0, p1}, Lorg/videolan/libvlc/AWindow$SurfaceTextureThread;->attachToGLContext(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1600(Lorg/videolan/libvlc/AWindow$SurfaceTextureThread;)V
    .locals 0

    invoke-direct {p0}, Lorg/videolan/libvlc/AWindow$SurfaceTextureThread;->detachFromGLContext()V

    return-void
.end method

.method static synthetic access$1700(Lorg/videolan/libvlc/AWindow$SurfaceTextureThread;[F)Z
    .locals 0

    invoke-direct {p0, p1}, Lorg/videolan/libvlc/AWindow$SurfaceTextureThread;->waitAndUpdateTexImage([F)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1800(Lorg/videolan/libvlc/AWindow$SurfaceTextureThread;)Landroid/view/Surface;
    .locals 0

    invoke-direct {p0}, Lorg/videolan/libvlc/AWindow$SurfaceTextureThread;->getSurface()Landroid/view/Surface;

    move-result-object p0

    return-object p0
.end method

.method private declared-synchronized attachToGLContext(I)Z
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/videolan/libvlc/AWindow$SurfaceTextureThread;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lorg/videolan/libvlc/AWindow$SurfaceTextureThread;->mThread:Ljava/lang/Thread;

    iget-object v0, p0, Lorg/videolan/libvlc/AWindow$SurfaceTextureThread;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :goto_0
    iget-object v0, p0, Lorg/videolan/libvlc/AWindow$SurfaceTextureThread;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    monitor-exit p0

    return v1

    :cond_0
    :try_start_2
    new-instance v0, Landroid/view/Surface;

    iget-object v2, p0, Lorg/videolan/libvlc/AWindow$SurfaceTextureThread;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-direct {v0, v2}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lorg/videolan/libvlc/AWindow$SurfaceTextureThread;->mSurface:Landroid/view/Surface;

    :cond_1
    iget-object v0, p0, Lorg/videolan/libvlc/AWindow$SurfaceTextureThread;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, p1}, Landroid/graphics/SurfaceTexture;->attachToGLContext(I)V

    iput-boolean v1, p0, Lorg/videolan/libvlc/AWindow$SurfaceTextureThread;->mFrameAvailable:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/videolan/libvlc/AWindow$SurfaceTextureThread;->mIsAttached:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized detachFromGLContext()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/videolan/libvlc/AWindow$SurfaceTextureThread;->mDoRelease:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/videolan/libvlc/AWindow$SurfaceTextureThread;->mLooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/videolan/libvlc/AWindow$SurfaceTextureThread;->mLooper:Landroid/os/Looper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v2, p0, Lorg/videolan/libvlc/AWindow$SurfaceTextureThread;->mThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    :try_start_2
    iput-object v0, p0, Lorg/videolan/libvlc/AWindow$SurfaceTextureThread;->mThread:Ljava/lang/Thread;

    iget-object v2, p0, Lorg/videolan/libvlc/AWindow$SurfaceTextureThread;->mSurface:Landroid/view/Surface;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/videolan/libvlc/AWindow$SurfaceTextureThread;->mSurface:Landroid/view/Surface;

    invoke-virtual {v2}, Landroid/view/Surface;->release()V

    iput-object v0, p0, Lorg/videolan/libvlc/AWindow$SurfaceTextureThread;->mSurface:Landroid/view/Surface;

    :cond_0
    iget-object v2, p0, Lorg/videolan/libvlc/AWindow$SurfaceTextureThread;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/videolan/libvlc/AWindow$SurfaceTextureThread;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v2}, Landroid/graphics/SurfaceTexture;->release()V

    iput-object v0, p0, Lorg/videolan/libvlc/AWindow$SurfaceTextureThread;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    :cond_1
    iput-boolean v1, p0, Lorg/videolan/libvlc/AWindow$SurfaceTextureThread;->mDoRelease:Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/videolan/libvlc/AWindow$SurfaceTextureThread;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->detachFromGLContext()V

    :goto_0
    iput-boolean v1, p0, Lorg/videolan/libvlc/AWindow$SurfaceTextureThread;->mIsAttached:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized getSurface()Landroid/view/Surface;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/videolan/libvlc/AWindow$SurfaceTextureThread;->mSurface:Landroid/view/Surface;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized release()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/videolan/libvlc/AWindow$SurfaceTextureThread;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lorg/videolan/libvlc/AWindow$SurfaceTextureThread;->mIsAttached:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/videolan/libvlc/AWindow$SurfaceTextureThread;->mDoRelease:Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/videolan/libvlc/AWindow$SurfaceTextureThread;->mSurface:Landroid/view/Surface;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/videolan/libvlc/AWindow$SurfaceTextureThread;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    iput-object v1, p0, Lorg/videolan/libvlc/AWindow$SurfaceTextureThread;->mSurface:Landroid/view/Surface;

    :cond_1
    iget-object v0, p0, Lorg/videolan/libvlc/AWindow$SurfaceTextureThread;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    iput-object v1, p0, Lorg/videolan/libvlc/AWindow$SurfaceTextureThread;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private waitAndUpdateTexImage([F)Z
    .locals 4

    monitor-enter p0

    :catch_0
    :cond_0
    :try_start_0
    iget-boolean v0, p0, Lorg/videolan/libvlc/AWindow$SurfaceTextureThread;->mFrameAvailable:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const-wide/16 v2, 0x1f4

    :try_start_1
    invoke-virtual {p0, v2, v3}, Ljava/lang/Object;->wait(J)V

    iget-boolean v0, p0, Lorg/videolan/libvlc/AWindow$SurfaceTextureThread;->mFrameAvailable:Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_0

    :try_start_2
    monitor-exit p0

    return v1

    :cond_1
    iput-boolean v1, p0, Lorg/videolan/libvlc/AWindow$SurfaceTextureThread;->mFrameAvailable:Z

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v0, p0, Lorg/videolan/libvlc/AWindow$SurfaceTextureThread;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    iget-object v0, p0, Lorg/videolan/libvlc/AWindow$SurfaceTextureThread;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, p1}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method


# virtual methods
.method public declared-synchronized onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/videolan/libvlc/AWindow$SurfaceTextureThread;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-ne p1, v0, :cond_1

    iget-boolean p1, p0, Lorg/videolan/libvlc/AWindow$SurfaceTextureThread;->mFrameAvailable:Z

    if-eqz p1, :cond_0

    const-string p1, "AWindow"

    const-string v0, "onFrameAvailable: IllegalStateException: An available frame was not updated"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 p1, 0x1

    :try_start_1
    iput-boolean p1, p0, Lorg/videolan/libvlc/AWindow$SurfaceTextureThread;->mFrameAvailable:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
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

.method public run()V
    .locals 2

    invoke-static {}, Landroid/os/Looper;->prepare()V

    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lorg/videolan/libvlc/AWindow$SurfaceTextureThread;->mLooper:Landroid/os/Looper;

    new-instance v0, Landroid/graphics/SurfaceTexture;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v0, p0, Lorg/videolan/libvlc/AWindow$SurfaceTextureThread;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget-object v0, p0, Lorg/videolan/libvlc/AWindow$SurfaceTextureThread;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->detachFromGLContext()V

    iget-object v0, p0, Lorg/videolan/libvlc/AWindow$SurfaceTextureThread;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, p0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
