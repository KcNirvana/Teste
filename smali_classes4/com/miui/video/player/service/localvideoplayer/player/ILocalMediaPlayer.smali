.class public interface abstract Lcom/miui/video/player/service/localvideoplayer/player/ILocalMediaPlayer;
.super Ljava/lang/Object;
.source "ILocalMediaPlayer.java"

# interfaces
.implements Lcom/miui/video/player/service/media/IMediaPlayer;


# virtual methods
.method public abstract addTimedTextSource(Ljava/lang/String;Ljava/lang/String;Lcom/miui/video/player/service/localvideoplayer/player/OnAddTimedTextListener;)V
.end method

.method public abstract deselectTrack(I)V
.end method

.method public abstract getPlaySpeed()F
.end method

.method public abstract getSelectedTrack(I)I
.end method

.method public abstract getTrackInfo()[Ltv/danmaku/ijk/media/player/misc/ITrackInfo;
.end method

.method public abstract getVolume()F
.end method

.method public abstract selectTrack(I)V
.end method

.method public abstract setOnTimedTextListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnTimedTextListener;)V
.end method

.method public abstract setPlaySpeed(F)V
.end method

.method public abstract setSlowMotionTime(JJ)V
.end method

.method public abstract setSubtitleTimedTextDelay(J)V
.end method

.method public abstract setTimedTextView(Landroid/view/SurfaceView;)V
.end method

.method public abstract setTimedTextView(Landroid/view/TextureView;)V
.end method

.method public abstract setVolume(F)V
.end method
