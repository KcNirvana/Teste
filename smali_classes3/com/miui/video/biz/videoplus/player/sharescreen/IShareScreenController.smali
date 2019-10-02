.class public interface abstract Lcom/miui/video/biz/videoplus/player/sharescreen/IShareScreenController;
.super Ljava/lang/Object;
.source "IShareScreenController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/video/biz/videoplus/player/sharescreen/IShareScreenController$OnShareScreenServiceListener;
    }
.end annotation


# virtual methods
.method public abstract connectDevice(Lcom/miui/video/biz/videoplus/player/sharescreen/ShareScreenDevice;)V
.end method

.method public abstract disconnectDevice()V
.end method

.method public abstract getConnectedDevice()Lcom/miui/video/biz/videoplus/player/sharescreen/ShareScreenDevice;
.end method

.method public abstract getFoundDevices()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/video/biz/videoplus/player/sharescreen/ShareScreenDevice;",
            ">;"
        }
    .end annotation
.end method

.method public abstract isConnectedDevice()Z
.end method

.method public abstract isShareScreenServiceRunning()Z
.end method

.method public abstract registerShareScreenServiceListener(Lcom/miui/video/biz/videoplus/player/sharescreen/IShareScreenController$OnShareScreenServiceListener;)V
.end method

.method public abstract releaseShareScreenService()V
.end method

.method public abstract startShareScreenService()V
.end method

.method public abstract stopShareScreenService()V
.end method

.method public abstract unRegisterShareScreenServiceListener(Lcom/miui/video/biz/videoplus/player/sharescreen/IShareScreenController$OnShareScreenServiceListener;)V
.end method
