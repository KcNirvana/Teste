.class public interface abstract Lcom/miui/video/biz/videoplus/player/mediacontroller/IMediaController;
.super Ljava/lang/Object;
.source "IMediaController.java"


# virtual methods
.method public abstract attachMediaEntity(Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;)V
.end method

.method public abstract attachPlayerController(Lcom/miui/video/biz/videoplus/player/IPlayerController;)V
.end method

.method public abstract enterEditMode()V
.end method

.method public abstract exitEditMode()V
.end method

.method public abstract getMediaEntity()Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;
.end method

.method public abstract hideController(Z)V
.end method

.method public abstract hideSeekBar()V
.end method

.method public abstract isInEditMode()Z
.end method

.method public abstract isShowing()Z
.end method

.method public abstract isUserLockedRotate()Z
.end method

.method public abstract onActivityDestroy()V
.end method

.method public abstract onBackPressed()Z
.end method

.method public abstract onMultiWindowMode(Z)V
.end method

.method public abstract onOrientationChanged(ZI)V
.end method

.method public abstract onPip(Z)V
.end method

.method public abstract setPauseState()V
.end method

.method public abstract setPlaySpeed(F)V
.end method

.method public abstract setPlayingState()V
.end method

.method public abstract setPreviewState()V
.end method

.method public abstract setShareScreenController(Lcom/miui/video/biz/videoplus/player/sharescreen/IShareScreenController;)V
.end method

.method public abstract setViewAlpha(F)V
.end method

.method public abstract showController(Z)V
.end method

.method public abstract togglePlayState()V
.end method
