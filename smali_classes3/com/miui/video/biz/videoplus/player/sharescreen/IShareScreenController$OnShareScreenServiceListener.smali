.class public interface abstract Lcom/miui/video/biz/videoplus/player/sharescreen/IShareScreenController$OnShareScreenServiceListener;
.super Ljava/lang/Object;
.source "IShareScreenController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/biz/videoplus/player/sharescreen/IShareScreenController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnShareScreenServiceListener"
.end annotation


# virtual methods
.method public abstract onDeviceConnectFail(Lcom/milink/api/v1/type/ErrorCode;)V
.end method

.method public abstract onDeviceConnectSuccess()V
.end method

.method public abstract onDeviceDisconnected()V
.end method

.method public abstract onDeviceListChanged()V
.end method

.method public abstract onServiceStarted()V
.end method

.method public abstract onServiceStopped()V
.end method
