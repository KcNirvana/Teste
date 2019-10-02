.class public interface abstract Lcom/miui/video/biz/videoplus/player/IPlayerController;
.super Ljava/lang/Object;
.source "IPlayerController.java"

# interfaces
.implements Lcom/miui/video/biz/videoplus/player/sharescreen/IShareScreenController;
.implements Lcom/miui/video/biz/videoplus/player/sharescreen/IShareScreenController$OnShareScreenServiceListener;


# virtual methods
.method public abstract enterPip()V
.end method

.method public abstract getImageController()Lcom/miui/video/biz/videoplus/player/IPlayerImageController;
.end method

.method public abstract getVideoController()Lcom/miui/video/biz/videoplus/player/IPlayerVideoController;
.end method

.method public abstract hideMoreDialog()V
.end method

.method public abstract isImage()Z
.end method

.method public abstract onLandscapeMode()V
.end method

.method public abstract onPortraitMode()V
.end method

.method public abstract onUserLockRotate()V
.end method

.method public abstract onUserUnLockRotate()V
.end method

.method public abstract showMoreDialog(Lcom/miui/video/biz/videoplus/player/dialog/PlayerMoreDialog$RootViewType;)V
.end method
