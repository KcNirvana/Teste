.class final Lcom/kaltura/playkit/player/DummySurfaceWorkaroundTest$2;
.super Lcom/google/android/exoplayer2/Player$DefaultEventListener;
.source "DummySurfaceWorkaroundTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kaltura/playkit/player/DummySurfaceWorkaroundTest;->executeTest(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$player:Lcom/google/android/exoplayer2/SimpleExoPlayer;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/exoplayer2/SimpleExoPlayer;)V
    .locals 0

    iput-object p1, p0, Lcom/kaltura/playkit/player/DummySurfaceWorkaroundTest$2;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/kaltura/playkit/player/DummySurfaceWorkaroundTest$2;->val$player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-direct {p0}, Lcom/google/android/exoplayer2/Player$DefaultEventListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onPlayerError(Lcom/google/android/exoplayer2/ExoPlaybackException;)V
    .locals 1

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ExoPlaybackException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    instance-of p1, p1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$DecoderInitializationException;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/kaltura/playkit/player/DummySurfaceWorkaroundTest$2;->val$context:Landroid/content/Context;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/kaltura/playkit/player/DummySurfaceWorkaroundTest;->access$000(Landroid/content/Context;Z)V

    :cond_0
    iget-object p1, p0, Lcom/kaltura/playkit/player/DummySurfaceWorkaroundTest$2;->val$player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->release()V

    return-void
.end method

.method public onPlayerStateChanged(ZI)V
    .locals 0

    const/4 p1, 0x3

    if-ne p2, p1, :cond_0

    iget-object p1, p0, Lcom/kaltura/playkit/player/DummySurfaceWorkaroundTest$2;->val$context:Landroid/content/Context;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/kaltura/playkit/player/DummySurfaceWorkaroundTest;->access$000(Landroid/content/Context;Z)V

    iget-object p1, p0, Lcom/kaltura/playkit/player/DummySurfaceWorkaroundTest$2;->val$player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->release()V

    :cond_0
    return-void
.end method
