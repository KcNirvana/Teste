.class public interface abstract Lcom/miui/video/player/service/media/IVideoView;
.super Ljava/lang/Object;
.source "IVideoView.java"

# interfaces
.implements Lcom/miui/video/player/service/media/MediaPlayerControl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/video/player/service/media/IVideoView$OnVideoLoadingListener;
    }
.end annotation


# virtual methods
.method public abstract asView()Landroid/view/View;
.end method

.method public abstract continuePlay(I)V
.end method

.method public abstract getVideoHeight()I
.end method

.method public abstract getVideoWidth()I
.end method

.method public abstract hasLoadingAfterAd()Z
.end method

.method public abstract onActivityDestroy()V
.end method

.method public abstract onActivityPause()V
.end method

.method public abstract onActivityResume()V
.end method

.method public abstract requestVideoLayout()V
.end method

.method public abstract setAdsPlayListener(Lcom/miui/video/player/service/media/AdsPlayListener;)V
.end method

.method public abstract setForceFullScreen(Z)V
.end method

.method public abstract setOnBufferingUpdateListener(Lcom/miui/video/player/service/media/IMediaPlayer$OnBufferingUpdateListener;)V
.end method

.method public abstract setOnCompletionListener(Lcom/miui/video/player/service/media/IMediaPlayer$OnCompletionListener;)V
.end method

.method public abstract setOnErrorListener(Lcom/miui/video/player/service/media/IMediaPlayer$OnErrorListener;)V
.end method

.method public abstract setOnInfoListener(Lcom/miui/video/player/service/media/IMediaPlayer$OnInfoListener;)V
.end method

.method public abstract setOnPreparedListener(Lcom/miui/video/player/service/media/IMediaPlayer$OnPreparedListener;)V
.end method

.method public abstract setOnSeekCompleteListener(Lcom/miui/video/player/service/media/IMediaPlayer$OnSeekCompleteListener;)V
.end method

.method public abstract setOnVideoLoadingListener(Lcom/miui/video/player/service/media/IVideoView$OnVideoLoadingListener;)V
.end method

.method public abstract setOnVideoSizeChangedListener(Lcom/miui/video/player/service/media/IMediaPlayer$OnVideoSizeChangedListener;)V
.end method
