.class public Lorg/videolan/libvlc/MediaList;
.super Lorg/videolan/libvlc/VLCObject;
.source "MediaList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/videolan/libvlc/MediaList$EventListener;,
        Lorg/videolan/libvlc/MediaList$Event;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/videolan/libvlc/VLCObject<",
        "Lorg/videolan/libvlc/MediaList$Event;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "LibVLC/MediaList"


# instance fields
.field private mCount:I

.field private mLocked:Z

.field private final mMediaArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lorg/videolan/libvlc/Media;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/videolan/libvlc/LibVLC;)V
    .locals 2

    invoke-direct {p0, p1}, Lorg/videolan/libvlc/VLCObject;-><init>(Lorg/videolan/libvlc/LibVLC;)V

    const/4 v0, 0x0

    iput v0, p0, Lorg/videolan/libvlc/MediaList;->mCount:I

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lorg/videolan/libvlc/MediaList;->mMediaArray:Landroid/util/SparseArray;

    iput-boolean v0, p0, Lorg/videolan/libvlc/MediaList;->mLocked:Z

    invoke-direct {p0, p1}, Lorg/videolan/libvlc/MediaList;->nativeNewFromLibVlc(Lorg/videolan/libvlc/LibVLC;)V

    invoke-direct {p0}, Lorg/videolan/libvlc/MediaList;->init()V

    return-void
.end method

.method protected constructor <init>(Lorg/videolan/libvlc/Media;)V
    .locals 2

    invoke-direct {p0, p1}, Lorg/videolan/libvlc/VLCObject;-><init>(Lorg/videolan/libvlc/VLCObject;)V

    const/4 v0, 0x0

    iput v0, p0, Lorg/videolan/libvlc/MediaList;->mCount:I

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lorg/videolan/libvlc/MediaList;->mMediaArray:Landroid/util/SparseArray;

    iput-boolean v0, p0, Lorg/videolan/libvlc/MediaList;->mLocked:Z

    invoke-direct {p0, p1}, Lorg/videolan/libvlc/MediaList;->nativeNewFromMedia(Lorg/videolan/libvlc/Media;)V

    invoke-direct {p0}, Lorg/videolan/libvlc/MediaList;->init()V

    return-void
.end method

.method protected constructor <init>(Lorg/videolan/libvlc/MediaDiscoverer;)V
    .locals 2

    invoke-direct {p0, p1}, Lorg/videolan/libvlc/VLCObject;-><init>(Lorg/videolan/libvlc/VLCObject;)V

    const/4 v0, 0x0

    iput v0, p0, Lorg/videolan/libvlc/MediaList;->mCount:I

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lorg/videolan/libvlc/MediaList;->mMediaArray:Landroid/util/SparseArray;

    iput-boolean v0, p0, Lorg/videolan/libvlc/MediaList;->mLocked:Z

    invoke-direct {p0, p1}, Lorg/videolan/libvlc/MediaList;->nativeNewFromMediaDiscoverer(Lorg/videolan/libvlc/MediaDiscoverer;)V

    invoke-direct {p0}, Lorg/videolan/libvlc/MediaList;->init()V

    return-void
.end method

.method private init()V
    .locals 3

    invoke-direct {p0}, Lorg/videolan/libvlc/MediaList;->lock()V

    invoke-direct {p0}, Lorg/videolan/libvlc/MediaList;->nativeGetCount()I

    move-result v0

    iput v0, p0, Lorg/videolan/libvlc/MediaList;->mCount:I

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/videolan/libvlc/MediaList;->mCount:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/videolan/libvlc/MediaList;->mMediaArray:Landroid/util/SparseArray;

    new-instance v2, Lorg/videolan/libvlc/Media;

    invoke-direct {v2, p0, v0}, Lorg/videolan/libvlc/Media;-><init>(Lorg/videolan/libvlc/MediaList;I)V

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lorg/videolan/libvlc/MediaList;->unlock()V

    return-void
.end method

.method private declared-synchronized insertMediaFromEvent(I)Lorg/videolan/libvlc/Media;
    .locals 4

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lorg/videolan/libvlc/MediaList;->mCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/videolan/libvlc/MediaList;->mCount:I

    iget v0, p0, Lorg/videolan/libvlc/MediaList;->mCount:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-lt v0, p1, :cond_0

    iget-object v1, p0, Lorg/videolan/libvlc/MediaList;->mMediaArray:Landroid/util/SparseArray;

    add-int/lit8 v2, v0, 0x1

    iget-object v3, p0, Lorg/videolan/libvlc/MediaList;->mMediaArray:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/videolan/libvlc/Media;

    invoke-direct {v0, p0, p1}, Lorg/videolan/libvlc/Media;-><init>(Lorg/videolan/libvlc/MediaList;I)V

    iget-object v1, p0, Lorg/videolan/libvlc/MediaList;->mMediaArray:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized lock()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/videolan/libvlc/MediaList;->mLocked:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/videolan/libvlc/MediaList;->mLocked:Z

    invoke-direct {p0}, Lorg/videolan/libvlc/MediaList;->nativeLock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "already locked"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private native nativeGetCount()I
.end method

.method private native nativeLock()V
.end method

.method private native nativeNewFromLibVlc(Lorg/videolan/libvlc/LibVLC;)V
.end method

.method private native nativeNewFromMedia(Lorg/videolan/libvlc/Media;)V
.end method

.method private native nativeNewFromMediaDiscoverer(Lorg/videolan/libvlc/MediaDiscoverer;)V
.end method

.method private native nativeRelease()V
.end method

.method private native nativeUnlock()V
.end method

.method private declared-synchronized removeMediaFromEvent(I)Lorg/videolan/libvlc/Media;
    .locals 4

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lorg/videolan/libvlc/MediaList;->mCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/videolan/libvlc/MediaList;->mCount:I

    iget-object v0, p0, Lorg/videolan/libvlc/MediaList;->mMediaArray:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/videolan/libvlc/Media;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/videolan/libvlc/Media;->release()V

    :cond_0
    :goto_0
    iget v1, p0, Lorg/videolan/libvlc/MediaList;->mCount:I

    if-ge p1, v1, :cond_1

    iget-object v1, p0, Lorg/videolan/libvlc/MediaList;->mMediaArray:Landroid/util/SparseArray;

    iget-object v2, p0, Lorg/videolan/libvlc/MediaList;->mMediaArray:Landroid/util/SparseArray;

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move p1, v3

    goto :goto_0

    :cond_1
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized unlock()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/videolan/libvlc/MediaList;->mLocked:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/videolan/libvlc/MediaList;->mLocked:Z

    invoke-direct {p0}, Lorg/videolan/libvlc/MediaList;->nativeUnlock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "not locked"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized getCount()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lorg/videolan/libvlc/MediaList;->mCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMediaAt(I)Lorg/videolan/libvlc/Media;
    .locals 1

    monitor-enter p0

    if-ltz p1, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lorg/videolan/libvlc/MediaList;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lorg/videolan/libvlc/MediaList;->mMediaArray:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/videolan/libvlc/Media;

    invoke-virtual {p1}, Lorg/videolan/libvlc/Media;->retain()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    throw p1
.end method

.method protected declared-synchronized isLocked()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/videolan/libvlc/MediaList;->mLocked:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public bridge synthetic isReleased()Z
    .locals 1

    invoke-super {p0}, Lorg/videolan/libvlc/VLCObject;->isReleased()Z

    move-result v0

    return v0
.end method

.method protected declared-synchronized onEventNative(IJJJJFLjava/lang/String;)Lorg/videolan/libvlc/MediaList$Event;
    .locals 0

    monitor-enter p0

    :try_start_0
    iget-boolean p4, p0, Lorg/videolan/libvlc/MediaList;->mLocked:Z

    if-nez p4, :cond_4

    const/4 p4, 0x1

    iput-boolean p4, p0, Lorg/videolan/libvlc/MediaList;->mLocked:Z

    const/16 p5, 0x200

    const/4 p6, 0x0

    const/4 p7, -0x1

    const/4 p8, 0x0

    if-eq p1, p5, :cond_2

    const/16 p4, 0x202

    if-eq p1, p4, :cond_1

    const/16 p2, 0x204

    if-eq p1, p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p2, Lorg/videolan/libvlc/MediaList$Event;

    invoke-direct {p2, p1, p6, p8, p7}, Lorg/videolan/libvlc/MediaList$Event;-><init>(ILorg/videolan/libvlc/Media;ZI)V

    move-object p6, p2

    goto :goto_0

    :cond_1
    long-to-int p2, p2

    if-eq p2, p7, :cond_3

    invoke-direct {p0, p2}, Lorg/videolan/libvlc/MediaList;->removeMediaFromEvent(I)Lorg/videolan/libvlc/Media;

    move-result-object p3

    new-instance p6, Lorg/videolan/libvlc/MediaList$Event;

    invoke-direct {p6, p1, p3, p8, p2}, Lorg/videolan/libvlc/MediaList$Event;-><init>(ILorg/videolan/libvlc/Media;ZI)V

    goto :goto_0

    :cond_2
    long-to-int p2, p2

    if-eq p2, p7, :cond_3

    invoke-direct {p0, p2}, Lorg/videolan/libvlc/MediaList;->insertMediaFromEvent(I)Lorg/videolan/libvlc/Media;

    move-result-object p3

    new-instance p6, Lorg/videolan/libvlc/MediaList$Event;

    invoke-direct {p6, p1, p3, p4, p2}, Lorg/videolan/libvlc/MediaList$Event;-><init>(ILorg/videolan/libvlc/Media;ZI)V

    :cond_3
    :goto_0
    iput-boolean p8, p0, Lorg/videolan/libvlc/MediaList;->mLocked:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p6

    :cond_4
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "already locked from event callback"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected bridge synthetic onEventNative(IJJJJFLjava/lang/String;)Lorg/videolan/libvlc/VLCEvent;
    .locals 0

    invoke-virtual/range {p0 .. p11}, Lorg/videolan/libvlc/MediaList;->onEventNative(IJJJJFLjava/lang/String;)Lorg/videolan/libvlc/MediaList$Event;

    move-result-object p1

    return-object p1
.end method

.method public onReleaseNative()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/videolan/libvlc/MediaList;->mMediaArray:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lorg/videolan/libvlc/MediaList;->mMediaArray:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/videolan/libvlc/Media;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/videolan/libvlc/Media;->release()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lorg/videolan/libvlc/MediaList;->nativeRelease()V

    return-void
.end method

.method public setEventListener(Lorg/videolan/libvlc/MediaList$EventListener;Landroid/os/Handler;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lorg/videolan/libvlc/VLCObject;->setEventListener(Lorg/videolan/libvlc/VLCEvent$Listener;Landroid/os/Handler;)V

    return-void
.end method
