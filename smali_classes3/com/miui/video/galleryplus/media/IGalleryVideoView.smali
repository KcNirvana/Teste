.class public interface abstract Lcom/miui/video/galleryplus/media/IGalleryVideoView;
.super Ljava/lang/Object;
.source "IGalleryVideoView.java"

# interfaces
.implements Lcom/miui/video/galleryplus/media/GalleryMediaPlayerControl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/video/galleryplus/media/IGalleryVideoView$OnVideoLoadingListener;
    }
.end annotation


# virtual methods
.method public abstract asView()Landroid/view/View;
.end method

.method public abstract changeDataSource(Ljava/lang/String;Ljava/util/Map;)V
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

.method public abstract continuePlay(I)V
.end method

.method public abstract getVideoHeight()I
.end method

.method public abstract getVideoSarDen()I
.end method

.method public abstract getVideoSarNum()I
.end method

.method public abstract getVideoWidth()I
.end method

.method public abstract hasLoadingAfterAd()Z
.end method

.method public abstract onActivityBackPress()V
.end method

.method public abstract onActivityPause()V
.end method

.method public abstract onActivityResume()V
.end method

.method public abstract requestVideoLayout()V
.end method

.method public abstract setForceFullScreen(Z)V
.end method

.method public abstract setOnBufferingUpdateListener(Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer$OnBufferingUpdateListener;)V
.end method

.method public abstract setOnCompletionListener(Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer$OnCompletionListener;)V
.end method

.method public abstract setOnErrorListener(Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer$OnErrorListener;)V
.end method

.method public abstract setOnInfoListener(Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer$OnInfoListener;)V
.end method

.method public abstract setOnPreparedListener(Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer$OnPreparedListener;)V
.end method

.method public abstract setOnSeekCompleteListener(Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer$OnSeekCompleteListener;)V
.end method

.method public abstract setOnVideoLoadingListener(Lcom/miui/video/galleryplus/media/IGalleryVideoView$OnVideoLoadingListener;)V
.end method

.method public abstract setOnVideoSizeChangedListener(Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer$OnVideoSizeChangedListener;)V
.end method
