.class public interface abstract Lcom/miui/video/biz/videoplus/player/subtitle/ISubtitleView;
.super Ljava/lang/Object;
.source "ISubtitleView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/video/biz/videoplus/player/subtitle/ISubtitleView$ISubtitleCallback;
    }
.end annotation


# virtual methods
.method public abstract addAndSelectExtraLocalSubtitle(Ljava/lang/String;)V
.end method

.method public abstract asView()Landroid/view/View;
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

.method public abstract getTextSurface()Landroid/view/SurfaceView;
.end method

.method public abstract getTextureView()Landroid/view/TextureView;
.end method

.method public abstract onMediaPlayerCreated(Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer;)V
.end method

.method public abstract onMediaPlayerReleased()V
.end method

.method public abstract onVideoPrepared()V
.end method

.method public abstract refreshSurface(Z)V
.end method

.method public abstract selectAudioTrack(Lcom/miui/video/biz/videoplus/player/subtitle/AudioTrack;)V
.end method

.method public abstract selectSubtitleTrack(Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleTrack;)V
.end method

.method public abstract setSubTrackSaveManager(Lcom/miui/video/player/service/localvideoplayer/subtitle/utils/TrackSaveManager;)V
.end method

.method public abstract setSubtitleCallback(Lcom/miui/video/biz/videoplus/player/subtitle/ISubtitleView$ISubtitleCallback;)V
.end method

.method public abstract setSubtitleFontColorIndex(I)V
.end method

.method public abstract setSubtitleFontSizeIndex(I)V
.end method

.method public abstract setSubtitleTimedTextDelay(J)V
.end method

.method public abstract setVideoEntity(Lcom/miui/video/base/database/LocalVideoEntity;)V
.end method

.method public abstract setVideoPath(Landroid/net/Uri;)V
.end method

.method public abstract setVideoSize(II)V
.end method
