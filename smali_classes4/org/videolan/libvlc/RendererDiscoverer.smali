.class public Lorg/videolan/libvlc/RendererDiscoverer;
.super Lorg/videolan/libvlc/VLCObject;
.source "RendererDiscoverer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/videolan/libvlc/RendererDiscoverer$Description;,
        Lorg/videolan/libvlc/RendererDiscoverer$EventListener;,
        Lorg/videolan/libvlc/RendererDiscoverer$Event;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/videolan/libvlc/VLCObject<",
        "Lorg/videolan/libvlc/RendererDiscoverer$Event;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "LibVLC/RendererDiscoverer"


# instance fields
.field private final index:Landroid/support/v4/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/LongSparseArray<",
            "Lorg/videolan/libvlc/RendererItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/videolan/libvlc/LibVLC;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Lorg/videolan/libvlc/VLCObject;-><init>(Lorg/videolan/libvlc/LibVLC;)V

    new-instance v0, Landroid/support/v4/util/LongSparseArray;

    invoke-direct {v0}, Landroid/support/v4/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lorg/videolan/libvlc/RendererDiscoverer;->index:Landroid/support/v4/util/LongSparseArray;

    invoke-direct {p0, p1, p2}, Lorg/videolan/libvlc/RendererDiscoverer;->nativeNew(Lorg/videolan/libvlc/LibVLC;Ljava/lang/String;)V

    return-void
.end method

.method private static createDescriptionFromNative(Ljava/lang/String;Ljava/lang/String;)Lorg/videolan/libvlc/RendererDiscoverer$Description;
    .locals 2

    new-instance v0, Lorg/videolan/libvlc/RendererDiscoverer$Description;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lorg/videolan/libvlc/RendererDiscoverer$Description;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/videolan/libvlc/RendererDiscoverer$1;)V

    return-object v0
.end method

.method private static createItemFromNative(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJ)Lorg/videolan/libvlc/RendererItem;
    .locals 8

    new-instance v7, Lorg/videolan/libvlc/RendererItem;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-wide v5, p4

    invoke-direct/range {v0 .. v6}, Lorg/videolan/libvlc/RendererItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJ)V

    return-object v7
.end method

.method private declared-synchronized insertItemFromEvent(J)Lorg/videolan/libvlc/RendererItem;
    .locals 2

    monitor-enter p0

    :try_start_0
    new-instance v0, Lorg/videolan/libvlc/RendererItem;

    invoke-direct {v0, p0, p1, p2}, Lorg/videolan/libvlc/RendererItem;-><init>(Lorg/videolan/libvlc/RendererDiscoverer;J)V

    iget-object v1, p0, Lorg/videolan/libvlc/RendererDiscoverer;->index:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v1, p1, p2, v0}, Landroid/support/v4/util/LongSparseArray;->put(JLjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static list(Lorg/videolan/libvlc/LibVLC;)[Lorg/videolan/libvlc/RendererDiscoverer$Description;
    .locals 0

    invoke-static {p0}, Lorg/videolan/libvlc/RendererDiscoverer;->nativeList(Lorg/videolan/libvlc/LibVLC;)[Lorg/videolan/libvlc/RendererDiscoverer$Description;

    move-result-object p0

    return-object p0
.end method

.method private static native nativeList(Lorg/videolan/libvlc/LibVLC;)[Lorg/videolan/libvlc/RendererDiscoverer$Description;
.end method

.method private native nativeNew(Lorg/videolan/libvlc/LibVLC;Ljava/lang/String;)V
.end method

.method private native nativeRelease()V
.end method

.method private native nativeStart()Z
.end method

.method private native nativeStop()V
.end method

.method private declared-synchronized removeItemFromEvent(J)Lorg/videolan/libvlc/RendererItem;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/videolan/libvlc/RendererDiscoverer;->index:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/videolan/libvlc/RendererItem;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/videolan/libvlc/RendererDiscoverer;->index:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v1, p1, p2}, Landroid/support/v4/util/LongSparseArray;->remove(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public bridge synthetic isReleased()Z
    .locals 1

    invoke-super {p0}, Lorg/videolan/libvlc/VLCObject;->isReleased()Z

    move-result v0

    return v0
.end method

.method protected onEventNative(IJJJJFLjava/lang/String;)Lorg/videolan/libvlc/RendererDiscoverer$Event;
    .locals 0

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return-object p1

    :pswitch_0
    new-instance p4, Lorg/videolan/libvlc/RendererDiscoverer$Event;

    invoke-direct {p0, p2, p3}, Lorg/videolan/libvlc/RendererDiscoverer;->removeItemFromEvent(J)Lorg/videolan/libvlc/RendererItem;

    move-result-object p5

    invoke-direct {p4, p1, p2, p3, p5}, Lorg/videolan/libvlc/RendererDiscoverer$Event;-><init>(IJLorg/videolan/libvlc/RendererItem;)V

    return-object p4

    :pswitch_1
    new-instance p4, Lorg/videolan/libvlc/RendererDiscoverer$Event;

    invoke-direct {p0, p2, p3}, Lorg/videolan/libvlc/RendererDiscoverer;->insertItemFromEvent(J)Lorg/videolan/libvlc/RendererItem;

    move-result-object p5

    invoke-direct {p4, p1, p2, p3, p5}, Lorg/videolan/libvlc/RendererDiscoverer$Event;-><init>(IJLorg/videolan/libvlc/RendererItem;)V

    return-object p4

    nop

    :pswitch_data_0
    .packed-switch 0x502
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected bridge synthetic onEventNative(IJJJJFLjava/lang/String;)Lorg/videolan/libvlc/VLCEvent;
    .locals 0

    invoke-virtual/range {p0 .. p11}, Lorg/videolan/libvlc/RendererDiscoverer;->onEventNative(IJJJJFLjava/lang/String;)Lorg/videolan/libvlc/RendererDiscoverer$Event;

    move-result-object p1

    return-object p1
.end method

.method protected onReleaseNative()V
    .locals 0

    invoke-direct {p0}, Lorg/videolan/libvlc/RendererDiscoverer;->nativeRelease()V

    return-void
.end method

.method public setEventListener(Lorg/videolan/libvlc/RendererDiscoverer$EventListener;)V
    .locals 0

    invoke-super {p0, p1}, Lorg/videolan/libvlc/VLCObject;->setEventListener(Lorg/videolan/libvlc/VLCEvent$Listener;)V

    return-void
.end method

.method public start()Z
    .locals 2

    invoke-virtual {p0}, Lorg/videolan/libvlc/RendererDiscoverer;->isReleased()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/videolan/libvlc/RendererDiscoverer;->nativeStart()Z

    move-result v0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "MediaDiscoverer is released"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public stop()V
    .locals 2

    invoke-virtual {p0}, Lorg/videolan/libvlc/RendererDiscoverer;->isReleased()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/videolan/libvlc/RendererDiscoverer;->setEventListener(Lorg/videolan/libvlc/RendererDiscoverer$EventListener;)V

    invoke-direct {p0}, Lorg/videolan/libvlc/RendererDiscoverer;->nativeStop()V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "MediaDiscoverer is released"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
