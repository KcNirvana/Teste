.class public interface abstract Lmiui/video/transcoder/VideoDecoder$DecodeUpdateListener;
.super Ljava/lang/Object;
.source "VideoDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/video/transcoder/VideoDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DecodeUpdateListener"
.end annotation


# virtual methods
.method public abstract onDecodeBuffer(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
.end method

.method public abstract onDecodeStop(Z)V
.end method

.method public abstract onError()V
.end method

.method public abstract onOutputFormatChange(Landroid/media/MediaFormat;)V
.end method
