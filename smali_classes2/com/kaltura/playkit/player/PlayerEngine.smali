.class public interface abstract Lcom/kaltura/playkit/player/PlayerEngine;
.super Ljava/lang/Object;
.source "PlayerEngine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kaltura/playkit/player/PlayerEngine$StateChangedListener;,
        Lcom/kaltura/playkit/player/PlayerEngine$EventListener;
    }
.end annotation


# virtual methods
.method public abstract changeTrack(Ljava/lang/String;)V
.end method

.method public abstract destroy()V
.end method

.method public abstract getBufferedPosition()J
.end method

.method public abstract getController(Ljava/lang/Class;)Lcom/kaltura/playkit/PKController;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/kaltura/playkit/PKController;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation
.end method

.method public abstract getCurrentError()Lcom/kaltura/playkit/PKError;
.end method

.method public abstract getCurrentPosition()J
.end method

.method public abstract getDuration()J
.end method

.method public abstract getLastSelectedTrack(I)Lcom/kaltura/playkit/player/BaseTrack;
.end method

.method public abstract getMetadata()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/kaltura/playkit/player/metadata/PKMetadata;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPKTracks()Lcom/kaltura/playkit/player/PKTracks;
.end method

.method public abstract getPlaybackInfo()Lcom/kaltura/playkit/PlaybackInfo;
.end method

.method public abstract getPlaybackRate()F
.end method

.method public abstract getView()Lcom/kaltura/playkit/player/PlayerView;
.end method

.method public abstract getVolume()F
.end method

.method public abstract isLive()Z
.end method

.method public abstract isPlaying()Z
.end method

.method public abstract load(Lcom/kaltura/playkit/player/PKMediaSourceConfig;)V
.end method

.method public abstract onOrientationChanged()V
.end method

.method public abstract pause()V
.end method

.method public abstract play()V
.end method

.method public abstract release()V
.end method

.method public abstract replay()V
.end method

.method public abstract restore()V
.end method

.method public abstract seekTo(J)V
.end method

.method public abstract setEventListener(Lcom/kaltura/playkit/player/PlayerEngine$EventListener;)V
.end method

.method public abstract setPlaybackRate(F)V
.end method

.method public abstract setStateChangedListener(Lcom/kaltura/playkit/player/PlayerEngine$StateChangedListener;)V
.end method

.method public abstract setVolume(F)V
.end method

.method public abstract startFrom(J)V
.end method

.method public abstract stop()V
.end method
