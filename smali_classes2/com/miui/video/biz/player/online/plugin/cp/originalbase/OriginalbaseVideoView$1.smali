.class Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView$1;
.super Ljava/lang/Object;
.source "OriginalbaseVideoView.java"

# interfaces
.implements Lcom/google/android/exoplayer2/Player$EventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView$1;->this$0:Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadingChanged(Z)V
    .locals 3

    const-string v0, "OriginalbaseVideoView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLoadingChanged:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onPlaybackParametersChanged(Lcom/google/android/exoplayer2/PlaybackParameters;)V
    .locals 1

    const-string p1, "OriginalbaseVideoView"

    const-string v0, "onPlaybackParametersChanged"

    invoke-static {p1, v0}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onPlayerError(Lcom/google/android/exoplayer2/ExoPlaybackException;)V
    .locals 3

    const-string v0, "OriginalbaseVideoView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPlayerError"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ExoPlaybackException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView$1;->this$0:Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;

    invoke-static {p1}, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->access$700(Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;)V

    invoke-static {}, Lcom/miui/video/framework/utilities/NetworkUtil;->isConnected()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView$1;->this$0:Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;

    invoke-static {p1}, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->access$1000(Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView$1;->this$0:Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;

    const v0, 0x15f95

    invoke-virtual {p1, v0}, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->handleOnError(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView$1;->this$0:Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;

    const v0, 0x15f92

    invoke-virtual {p1, v0}, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->handleOnError(I)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView$1;->this$0:Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;

    const v0, 0x15f94

    invoke-virtual {p1, v0}, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->handleOnError(I)V

    :goto_0
    return-void
.end method

.method public onPlayerStateChanged(ZI)V
    .locals 6

    const/4 p1, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    packed-switch p2, :pswitch_data_0

    const-string p1, "OriginalbaseVideoView"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPlayerStateChanged playbackState error:playbackState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/miui/video/framework/log/LogUtils;->e(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    :pswitch_0
    iget-object p2, p0, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView$1;->this$0:Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;

    const/4 v0, 0x4

    iput v0, p2, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->currentPlaybackState:I

    iget-object p2, p0, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView$1;->this$0:Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;

    iget-object p2, p2, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->mOnCompletionListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnCompletionListener;

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView$1;->this$0:Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;

    invoke-static {p2}, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->access$800(Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;)Z

    move-result p2

    if-nez p2, :cond_0

    const-string p2, "OriginalbaseVideoView"

    const-string v0, "Playback ended!"

    invoke-static {p2, v0}, Lcom/miui/video/framework/log/LogUtils;->i(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView$1;->this$0:Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;

    iget-object p2, p2, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->mOnCompletionListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnCompletionListener;

    invoke-interface {p2, v1}, Lcom/miui/video/player/service/media/IMediaPlayer$OnCompletionListener;->onCompletion(Lcom/miui/video/player/service/media/IMediaPlayer;)V

    iget-object p2, p0, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView$1;->this$0:Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;

    invoke-static {p2, p1}, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->access$802(Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;Z)Z

    :cond_0
    iget-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView$1;->this$0:Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;

    invoke-static {p1}, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->access$900(Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;)V

    iget-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView$1;->this$0:Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;

    invoke-virtual {p1}, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->onCompletedStatsEvent()V

    goto/16 :goto_0

    :pswitch_1
    iget-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView$1;->this$0:Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;

    invoke-static {p1}, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->access$200(Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView$1;->this$0:Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;

    invoke-static {p1, v0}, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->access$202(Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;Z)Z

    iget-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView$1;->this$0:Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView$1;->this$0:Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;

    invoke-static {v4}, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->access$000(Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {p2, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->access$302(Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;Ljava/lang/String;)Ljava/lang/String;

    :cond_1
    iget-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView$1;->this$0:Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;

    const/4 p2, 0x3

    iput p2, p1, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->currentPlaybackState:I

    iget-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView$1;->this$0:Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;

    invoke-static {p1}, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->access$400(Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "OriginalbaseVideoView"

    const-string p2, "STATE_ONPREPARE"

    invoke-static {p1, p2}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView$1;->this$0:Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;

    invoke-virtual {p1}, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->onPreparedStatsEvent()V

    iget-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView$1;->this$0:Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;

    invoke-virtual {p1}, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->onStartStatsEvent()V

    iget-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView$1;->this$0:Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;

    invoke-static {p1, v0}, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->access$402(Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;Z)Z

    iget-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView$1;->this$0:Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;

    iget-object p1, p1, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->mOnPreparedListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnPreparedListener;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView$1;->this$0:Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;

    iget-object p1, p1, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->mOnPreparedListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnPreparedListener;

    invoke-interface {p1, v1}, Lcom/miui/video/player/service/media/IMediaPlayer$OnPreparedListener;->onPrepared(Lcom/miui/video/player/service/media/IMediaPlayer;)V

    :cond_2
    iget-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView$1;->this$0:Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;

    invoke-static {p1}, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->access$100(Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView$1;->this$0:Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;

    invoke-static {p1, v0}, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->access$102(Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;Z)Z

    iget-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView$1;->this$0:Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;

    iget-object p1, p1, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->mOnInfoListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnInfoListener;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView$1;->this$0:Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;

    iget-object p1, p1, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->mOnInfoListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnInfoListener;

    const/16 p2, 0x2be

    invoke-interface {p1, v1, p2, v0}, Lcom/miui/video/player/service/media/IMediaPlayer$OnInfoListener;->onInfo(Lcom/miui/video/player/service/media/IMediaPlayer;II)Z

    :cond_3
    iget-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView$1;->this$0:Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;

    invoke-virtual {p1}, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->onBufferEndStatsEvent()V

    :cond_4
    iget-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView$1;->this$0:Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;

    invoke-static {p1}, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->access$500(Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;)Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView$1;->this$0:Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;

    iget-object p1, p1, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->mOnBufferingUpdateListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnBufferingUpdateListener;

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView$1;->this$0:Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;

    iget-object p1, p1, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->mOnBufferingUpdateListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnBufferingUpdateListener;

    iget-object p2, p0, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView$1;->this$0:Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;

    invoke-static {p2}, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->access$500(Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;)Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getBufferedPercentage()I

    move-result p2

    invoke-interface {p1, v1, p2}, Lcom/miui/video/player/service/media/IMediaPlayer$OnBufferingUpdateListener;->onBufferingUpdate(Lcom/miui/video/player/service/media/IMediaPlayer;I)V

    :cond_5
    const-string p1, "OriginalbaseVideoView"

    const-string p2, "STATE_READY"

    invoke-static {p1, p2}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView$1;->this$0:Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;

    invoke-static {p1}, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->access$600(Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;)Z

    move-result p1

    if-eqz p1, :cond_6

    const-string p1, "OriginalbaseVideoView"

    const-string p2, "Player.STATE_READY pause"

    invoke-static {p1, p2}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView$1;->this$0:Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;

    invoke-virtual {p1}, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->pause()V

    :cond_6
    iget-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView$1;->this$0:Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;

    invoke-static {p1}, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->access$700(Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;)V

    goto :goto_0

    :pswitch_2
    const-string p2, "OriginalbaseVideoView"

    const-string v2, "STATE_BUFFERING"

    invoke-static {p2, v2}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView$1;->this$0:Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;

    const/4 v2, 0x2

    iput v2, p2, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->currentPlaybackState:I

    iget-object p2, p0, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView$1;->this$0:Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;

    invoke-virtual {p2}, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->onBufferStartStatsEvent()V

    iget-object p2, p0, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView$1;->this$0:Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;

    invoke-static {p2, p1}, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->access$102(Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;Z)Z

    iget-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView$1;->this$0:Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;

    iget-object p1, p1, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->mOnInfoListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnInfoListener;

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView$1;->this$0:Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;

    iget-object p1, p1, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->mOnInfoListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnInfoListener;

    const/16 p2, 0x2bd

    invoke-interface {p1, v1, p2, v0}, Lcom/miui/video/player/service/media/IMediaPlayer$OnInfoListener;->onInfo(Lcom/miui/video/player/service/media/IMediaPlayer;II)Z

    goto :goto_0

    :pswitch_3
    const-string p2, "OriginalbaseVideoView"

    const-string v0, "STATE_IDLE"

    invoke-static {p2, v0}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView$1;->this$0:Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;

    iput p1, p2, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->currentPlaybackState:I

    :cond_7
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onPositionDiscontinuity(I)V
    .locals 1

    const-string p1, "OriginalbaseVideoView"

    const-string v0, "onPositionDiscontinuity"

    invoke-static {p1, v0}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView$1;->this$0:Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;

    invoke-virtual {p1}, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->onSeekCompletedStatsEvent()V

    return-void
.end method

.method public onRepeatModeChanged(I)V
    .locals 1

    const-string p1, "OriginalbaseVideoView"

    const-string v0, "onRepeatModeChanged"

    invoke-static {p1, v0}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onSeekProcessed()V
    .locals 2

    const-string v0, "OriginalbaseVideoView"

    const-string v1, "onSeekProcessed"

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onShuffleModeEnabledChanged(Z)V
    .locals 1

    const-string p1, "OriginalbaseVideoView"

    const-string v0, "onShuffleModeEnabledChanged"

    invoke-static {p1, v0}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onTimelineChanged(Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;I)V
    .locals 0
    .param p2    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const-string p1, "OriginalbaseVideoView"

    const-string p2, "onTimelineChanged"

    invoke-static {p1, p2}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onTracksChanged(Lcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;)V
    .locals 2

    const-string p1, "OriginalbaseVideoView"

    const-string p2, "onTracksChanged"

    invoke-static {p1, p2}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView$1;->this$0:Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->access$002(Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;J)J

    return-void
.end method
