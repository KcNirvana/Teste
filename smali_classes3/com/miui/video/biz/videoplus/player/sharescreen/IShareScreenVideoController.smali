.class public interface abstract Lcom/miui/video/biz/videoplus/player/sharescreen/IShareScreenVideoController;
.super Ljava/lang/Object;
.source "IShareScreenVideoController.java"

# interfaces
.implements Lcom/miui/video/biz/videoplus/player/sharescreen/IShareScreenImageController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/video/biz/videoplus/player/sharescreen/IShareScreenVideoController$OnVideoListener;
    }
.end annotation


# virtual methods
.method public abstract closeOnRemote()V
.end method

.method public abstract getCurrentPositionOnRemote()I
.end method

.method public abstract getDurationOnRemote()I
.end method

.method public abstract getVolumeOnRemote()I
.end method

.method public abstract isInPlayBackStateOnRemote()Z
.end method

.method public abstract isPlayingOnRemote()Z
.end method

.method public abstract pauseOnRemote()V
.end method

.method public abstract registerOnVideoListenerOnRemote(Lcom/miui/video/biz/videoplus/player/sharescreen/IShareScreenVideoController$OnVideoListener;)V
.end method

.method public abstract seekToOnRemote(I)V
.end method

.method public abstract setDataSourceOnRemote(Ljava/lang/String;I)V
.end method

.method public abstract setVolumeOnRemote(I)V
.end method

.method public abstract startOnRemote()V
.end method

.method public abstract unRegisterOnVideoListenerOnRemote(Lcom/miui/video/biz/videoplus/player/sharescreen/IShareScreenVideoController$OnVideoListener;)V
.end method
