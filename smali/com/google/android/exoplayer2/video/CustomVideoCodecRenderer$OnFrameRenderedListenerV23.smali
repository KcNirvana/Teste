.class final Lcom/google/android/exoplayer2/video/CustomVideoCodecRenderer$OnFrameRenderedListenerV23;
.super Ljava/lang/Object;
.source "CustomVideoCodecRenderer.java"

# interfaces
.implements Landroid/media/MediaCodec$OnFrameRenderedListener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x17
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/video/CustomVideoCodecRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "OnFrameRenderedListenerV23"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/exoplayer2/video/CustomVideoCodecRenderer;


# direct methods
.method private constructor <init>(Lcom/google/android/exoplayer2/video/CustomVideoCodecRenderer;Landroid/media/MediaCodec;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/video/CustomVideoCodecRenderer$OnFrameRenderedListenerV23;->this$0:Lcom/google/android/exoplayer2/video/CustomVideoCodecRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    invoke-virtual {p2, p0, p1}, Landroid/media/MediaCodec;->setOnFrameRenderedListener(Landroid/media/MediaCodec$OnFrameRenderedListener;Landroid/os/Handler;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/video/CustomVideoCodecRenderer;Landroid/media/MediaCodec;Lcom/google/android/exoplayer2/video/CustomVideoCodecRenderer$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/video/CustomVideoCodecRenderer$OnFrameRenderedListenerV23;-><init>(Lcom/google/android/exoplayer2/video/CustomVideoCodecRenderer;Landroid/media/MediaCodec;)V

    return-void
.end method


# virtual methods
.method public onFrameRendered(Landroid/media/MediaCodec;JJ)V
    .locals 0
    .param p1    # Landroid/media/MediaCodec;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object p1, p0, Lcom/google/android/exoplayer2/video/CustomVideoCodecRenderer$OnFrameRenderedListenerV23;->this$0:Lcom/google/android/exoplayer2/video/CustomVideoCodecRenderer;

    iget-object p1, p1, Lcom/google/android/exoplayer2/video/CustomVideoCodecRenderer;->tunnelingOnFrameRenderedListener:Lcom/google/android/exoplayer2/video/CustomVideoCodecRenderer$OnFrameRenderedListenerV23;

    if-eq p0, p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/video/CustomVideoCodecRenderer$OnFrameRenderedListenerV23;->this$0:Lcom/google/android/exoplayer2/video/CustomVideoCodecRenderer;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/video/CustomVideoCodecRenderer;->maybeNotifyRenderedFirstFrame()V

    return-void
.end method
