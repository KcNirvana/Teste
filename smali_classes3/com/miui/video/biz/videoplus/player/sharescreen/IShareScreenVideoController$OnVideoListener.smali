.class public interface abstract Lcom/miui/video/biz/videoplus/player/sharescreen/IShareScreenVideoController$OnVideoListener;
.super Ljava/lang/Object;
.source "IShareScreenVideoController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/biz/videoplus/player/sharescreen/IShareScreenVideoController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnVideoListener"
.end annotation


# virtual methods
.method public abstract getNextPhoto(Ljava/lang/String;Z)Ljava/lang/String;
.end method

.method public abstract getPrevPhoto(Ljava/lang/String;Z)Ljava/lang/String;
.end method

.method public abstract onCloseOnRemote()V
.end method

.method public abstract onPauseOnRemote()V
.end method

.method public abstract onStartOnRemote()V
.end method
