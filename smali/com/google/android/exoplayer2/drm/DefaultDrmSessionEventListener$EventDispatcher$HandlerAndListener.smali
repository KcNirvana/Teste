.class final Lcom/google/android/exoplayer2/drm/DefaultDrmSessionEventListener$EventDispatcher$HandlerAndListener;
.super Ljava/lang/Object;
.source "DefaultDrmSessionEventListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/drm/DefaultDrmSessionEventListener$EventDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "HandlerAndListener"
.end annotation


# instance fields
.field public final handler:Landroid/os/Handler;

.field public final listener:Lcom/google/android/exoplayer2/drm/DefaultDrmSessionEventListener;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/google/android/exoplayer2/drm/DefaultDrmSessionEventListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionEventListener$EventDispatcher$HandlerAndListener;->handler:Landroid/os/Handler;

    iput-object p2, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionEventListener$EventDispatcher$HandlerAndListener;->listener:Lcom/google/android/exoplayer2/drm/DefaultDrmSessionEventListener;

    return-void
.end method
