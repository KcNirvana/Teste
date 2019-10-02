.class public interface abstract Lcom/miui/video/galleryplus/media/GalleryMediaPlayerControl;
.super Ljava/lang/Object;
.source "GalleryMediaPlayerControl.java"


# virtual methods
.method public abstract accurateSeekTo(I)V
.end method

.method public abstract canBuffering()Z
.end method

.method public abstract canPause()Z
.end method

.method public abstract canSeekBackward()Z
.end method

.method public abstract canSeekForward()Z
.end method

.method public abstract close()V
.end method

.method public abstract getBufferPercentage()I
.end method

.method public abstract getCurrentPosition()I
.end method

.method public abstract getCurrentRatio()F
.end method

.method public abstract getDuration()I
.end method

.method public abstract getSupportedResolutions()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getUri()Landroid/net/Uri;
.end method

.method public abstract getVolume()F
.end method

.method public abstract isAdsPlaying()Z
.end method

.method public abstract isAirkanEnable()Z
.end method

.method public abstract isInPlaybackState()Z
.end method

.method public abstract isPlaying()Z
.end method

.method public abstract moveTo(I)V
.end method

.method public abstract pause()V
.end method

.method public abstract seekTo(I)V
.end method

.method public abstract setDataSource(Ljava/lang/String;)V
.end method

.method public abstract setDataSource(Ljava/lang/String;ILjava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setDataSource(Ljava/lang/String;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setPlayFromOutPackage(Z)V
.end method

.method public abstract setPlayRatio(F)V
.end method

.method public abstract setPlaySpeed(F)V
.end method

.method public abstract setResolution(I)V
.end method

.method public abstract setSlowMotionTime(JJ)V
.end method

.method public abstract setVolume(F)V
.end method

.method public abstract start()V
.end method

.method public abstract supportPrepare()Z
.end method
