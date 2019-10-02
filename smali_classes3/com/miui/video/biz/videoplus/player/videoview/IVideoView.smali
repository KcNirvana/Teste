.class public interface abstract Lcom/miui/video/biz/videoplus/player/videoview/IVideoView;
.super Ljava/lang/Object;
.source "IVideoView.java"

# interfaces
.implements Lcom/miui/video/biz/videoplus/player/videoview/IMediaPlayerControl;
.implements Lcom/miui/video/biz/videoplus/player/videoview/ISubtitleTrack;


# virtual methods
.method public abstract asView()Landroid/view/View;
.end method

.method public abstract getPreViewSurface()Landroid/view/Surface;
.end method

.method public abstract getTransformView()Lcom/miui/video/biz/videoplus/player/widget/ITransformView;
.end method

.method public abstract getTransformViewPreSurface()Lcom/miui/video/biz/videoplus/player/widget/ITransformView;
.end method

.method public abstract hidePreviewSurface()V
.end method

.method public abstract setInline()V
.end method

.method public abstract setOnBufferingUpdateListener(Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer$OnBufferingUpdateListener;)V
.end method

.method public abstract setOnCompletionListener(Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer$OnCompletionListener;)V
.end method

.method public abstract setOnErrorListener(Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer$OnErrorListener;)V
.end method

.method public abstract setOnInfoListener(Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer$OnInfoListener;)V
.end method

.method public abstract setOnPreparedListener(Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer$OnPreparedListener;)V
.end method

.method public abstract setOnSeekCompleteListener(Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer$OnSeekCompleteListener;)V
.end method

.method public abstract setOnVideoSizeChangedListener(Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer$OnVideoSizeChangedListener;)V
.end method

.method public abstract setProbablySize(II)V
.end method

.method public abstract showPreviewSurface()V
.end method
