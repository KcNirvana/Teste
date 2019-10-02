.class public interface abstract Lmiui/video/transcoder/MediaEncoder$EncodeUpdateListener;
.super Ljava/lang/Object;
.source "MediaEncoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/video/transcoder/MediaEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "EncodeUpdateListener"
.end annotation


# virtual methods
.method public abstract onEncodeEnd(Z)V
.end method

.method public abstract onError()V
.end method

.method public abstract onInputBufferAvailable(Lmiui/video/transcoder/EncodeBuffer;)V
.end method
