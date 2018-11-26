.class public final Lcom/google/android/exoplayer2/drm/DefaultDrmSessionEventListener$EventDispatcher;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final listeners:Ljava/util/concurrent/CopyOnWriteArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionEventListener$EventDispatcher;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method


# virtual methods
.method public addListener(Landroid/os/Handler;Lcom/google/android/exoplayer2/drm/DefaultDrmSessionEventListener;)V
    .locals 2

    if-nez p1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionEventListener$EventDispatcher;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionEventListener$EventDispatcher$HandlerAndListener;

    invoke-direct {v1, p1, p2}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionEventListener$EventDispatcher$HandlerAndListener;-><init>(Landroid/os/Handler;Lcom/google/android/exoplayer2/drm/DefaultDrmSessionEventListener;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_1
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public drmKeysLoaded()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionEventListener$EventDispatcher;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionEventListener$EventDispatcher$HandlerAndListener;

    iget-object v2, v0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionEventListener$EventDispatcher$HandlerAndListener;->listener:Lcom/google/android/exoplayer2/drm/DefaultDrmSessionEventListener;

    iget-object v0, v0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionEventListener$EventDispatcher$HandlerAndListener;->handler:Landroid/os/Handler;

    new-instance v3, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionEventListener$EventDispatcher$1;

    invoke-direct {v3, p0, v2}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionEventListener$EventDispatcher$1;-><init>(Lcom/google/android/exoplayer2/drm/DefaultDrmSessionEventListener$EventDispatcher;Lcom/google/android/exoplayer2/drm/DefaultDrmSessionEventListener;)V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public drmKeysRemoved()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionEventListener$EventDispatcher;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionEventListener$EventDispatcher$HandlerAndListener;

    iget-object v2, v0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionEventListener$EventDispatcher$HandlerAndListener;->listener:Lcom/google/android/exoplayer2/drm/DefaultDrmSessionEventListener;

    iget-object v0, v0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionEventListener$EventDispatcher$HandlerAndListener;->handler:Landroid/os/Handler;

    new-instance v3, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionEventListener$EventDispatcher$4;

    invoke-direct {v3, p0, v2}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionEventListener$EventDispatcher$4;-><init>(Lcom/google/android/exoplayer2/drm/DefaultDrmSessionEventListener$EventDispatcher;Lcom/google/android/exoplayer2/drm/DefaultDrmSessionEventListener;)V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public drmKeysRestored()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionEventListener$EventDispatcher;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionEventListener$EventDispatcher$HandlerAndListener;

    iget-object v2, v0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionEventListener$EventDispatcher$HandlerAndListener;->listener:Lcom/google/android/exoplayer2/drm/DefaultDrmSessionEventListener;

    iget-object v0, v0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionEventListener$EventDispatcher$HandlerAndListener;->handler:Landroid/os/Handler;

    new-instance v3, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionEventListener$EventDispatcher$3;

    invoke-direct {v3, p0, v2}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionEventListener$EventDispatcher$3;-><init>(Lcom/google/android/exoplayer2/drm/DefaultDrmSessionEventListener$EventDispatcher;Lcom/google/android/exoplayer2/drm/DefaultDrmSessionEventListener;)V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public drmSessionManagerError(Ljava/lang/Exception;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionEventListener$EventDispatcher;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionEventListener$EventDispatcher$HandlerAndListener;

    iget-object v2, v0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionEventListener$EventDispatcher$HandlerAndListener;->listener:Lcom/google/android/exoplayer2/drm/DefaultDrmSessionEventListener;

    iget-object v0, v0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionEventListener$EventDispatcher$HandlerAndListener;->handler:Landroid/os/Handler;

    new-instance v3, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionEventListener$EventDispatcher$2;

    invoke-direct {v3, p0, v2, p1}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionEventListener$EventDispatcher$2;-><init>(Lcom/google/android/exoplayer2/drm/DefaultDrmSessionEventListener$EventDispatcher;Lcom/google/android/exoplayer2/drm/DefaultDrmSessionEventListener;Ljava/lang/Exception;)V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public removeListener(Lcom/google/android/exoplayer2/drm/DefaultDrmSessionEventListener;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionEventListener$EventDispatcher;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionEventListener$EventDispatcher$HandlerAndListener;

    iget-object v2, v0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionEventListener$EventDispatcher$HandlerAndListener;->listener:Lcom/google/android/exoplayer2/drm/DefaultDrmSessionEventListener;

    if-ne v2, p1, :cond_0

    iget-object v2, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionEventListener$EventDispatcher;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method
