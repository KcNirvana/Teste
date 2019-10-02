.class public interface abstract Lcom/miui/video/player/service/media/MediaPlayerControl;
.super Ljava/lang/Object;
.source "MediaPlayerControl.java"


# static fields
.field public static final RESOLUTIONHIGH:I = 0x2

.field public static final RESOLUTION_1080P:I = 0x4

.field public static final RESOLUTION_LOW:I = 0x0

.field public static final RESOLUTION_NONE:I = -0x1

.field public static final RESOLUTION_NORMAL:I = 0x1

.field public static final RESOLUTION_SUPPER:I = 0x3


# virtual methods
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

.method public abstract getCurrentResolution()Ljava/lang/String;
.end method

.method public abstract getDuration()I
.end method

.method public abstract getInitResolution()Ljava/lang/String;
.end method

.method public abstract getIsSupportChangeSpeed()Z
.end method

.method public abstract getPlaySpeed()F
.end method

.method public abstract getSupportedResolutions()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getUri()Landroid/net/Uri;
.end method

.method public abstract isAdsPlaying()Z
.end method

.method public abstract isAirkanEnable()Z
.end method

.method public abstract isInPlaybackState()Z
.end method

.method public abstract isPlaying()Z
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

.method public abstract setPlaySpeed(F)V
.end method

.method public abstract setResolution(Ljava/lang/String;)V
.end method

.method public abstract start()V
.end method

.method public abstract supportPrepare()Z
.end method
