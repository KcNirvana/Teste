.class public interface abstract Lcom/miui/video/player/service/localvideoplayer/videoview/ITrackChange;
.super Ljava/lang/Object;
.source "ITrackChange.java"


# virtual methods
.method public abstract getAllAudioTracks()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/video/player/service/localvideoplayer/subtitle/AudioTrack;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAllSubtitleTracks()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/video/player/service/localvideoplayer/subtitle/SubtitleTrack;",
            ">;"
        }
    .end annotation
.end method

.method public abstract setAudioChange(I)V
.end method

.method public abstract setSubtitleChange(I)V
.end method
