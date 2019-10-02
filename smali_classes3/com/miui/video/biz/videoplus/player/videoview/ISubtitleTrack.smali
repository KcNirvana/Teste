.class public interface abstract Lcom/miui/video/biz/videoplus/player/videoview/ISubtitleTrack;
.super Ljava/lang/Object;
.source "ISubtitleTrack.java"


# virtual methods
.method public abstract addAndSelectExtraLocalSubtitle(Ljava/lang/String;)V
.end method

.method public abstract getAudioTracks()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/video/biz/videoplus/player/subtitle/AudioTrack;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSubtitleFontColorIndex()I
.end method

.method public abstract getSubtitleFontSizeIndex()I
.end method

.method public abstract getSubtitleTracks()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleTrack;",
            ">;"
        }
    .end annotation
.end method

.method public abstract selectAudioTrack(Lcom/miui/video/biz/videoplus/player/subtitle/AudioTrack;)V
.end method

.method public abstract selectSubtitleTrack(Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleTrack;)V
.end method

.method public abstract setSubtitleFontColorIndex(I)V
.end method

.method public abstract setSubtitleFontSizeIndex(I)V
.end method

.method public abstract setSubtitleTimedTextDelay(Ljava/lang/String;J)V
.end method

.method public abstract setTrackSaveManager(Lcom/miui/video/player/service/localvideoplayer/subtitle/utils/TrackSaveManager;)V
.end method

.method public abstract setVideoEntity(Lcom/miui/video/base/database/LocalVideoEntity;)V
.end method
