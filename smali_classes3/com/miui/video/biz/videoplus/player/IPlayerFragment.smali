.class public interface abstract Lcom/miui/video/biz/videoplus/player/IPlayerFragment;
.super Ljava/lang/Object;
.source "IPlayerFragment.java"


# virtual methods
.method public abstract attachMediaController(Lcom/miui/video/biz/videoplus/player/mediacontroller/IMediaController;)V
.end method

.method public abstract attachShareScreenController(Lcom/miui/video/biz/videoplus/player/sharescreen/IShareScreenController;)V
.end method

.method public abstract isFragmentShowing()Z
.end method

.method public abstract onBackPressed()Z
.end method

.method public abstract onEnterEditMode()V
.end method

.method public abstract onExitEditMode()V
.end method

.method public abstract onPip(Z)V
.end method

.method public abstract processFragmentHide(Z)V
.end method

.method public abstract processFragmentShow()V
.end method

.method public abstract setArguments(Landroid/os/Bundle;)V
.end method

.method public abstract setContinuePlay(Z)V
.end method

.method public abstract setData(Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;)V
.end method

.method public abstract setPlayerActivity(Lcom/miui/video/biz/videoplus/player/IPlayerActivity;)V
.end method
