.class public interface abstract Lcom/miui/video/player/service/localvideoplayer/subtitle/interfaces/ISubtitleTrack;
.super Ljava/lang/Object;
.source "ISubtitleTrack.java"


# virtual methods
.method public abstract closeSubtitle()V
.end method

.method public abstract getCurrentSubtitleTimeOffset()I
.end method

.method public abstract getSelectedSubtitleTrack()I
.end method

.method public abstract getSubtitleTimeOffsets()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSubtitleTracks()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/video/player/service/localvideoplayer/subtitle/SubtitleTrack;",
            ">;"
        }
    .end annotation
.end method

.method public abstract selectSubtitleTrack(I)V
.end method

.method public abstract setOnSubtitleTextListener(Lcom/miui/video/player/service/localvideoplayer/subtitle/interfaces/ISubtitleTextListener;)V
.end method

.method public abstract setOnSubtitleTrackListener(Lcom/miui/video/player/service/localvideoplayer/subtitle/interfaces/ISubtitleTrackListener;)V
.end method

.method public abstract setSubtitleTimeOffset(I)V
.end method

.method public abstract setSubtitleTimeOffsets(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation
.end method
