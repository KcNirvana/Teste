.class Lmiui/video/transcoder/VideoTranscoder$MediaCodecHandlerThread;
.super Landroid/os/HandlerThread;
.source "VideoTranscoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/video/transcoder/VideoTranscoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MediaCodecHandlerThread"
.end annotation


# instance fields
.field public mHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lmiui/video/transcoder/VideoTranscoder$MediaCodecHandlerThread;->start()V

    new-instance p1, Landroid/os/Handler;

    invoke-virtual {p0}, Lmiui/video/transcoder/VideoTranscoder$MediaCodecHandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lmiui/video/transcoder/VideoTranscoder$MediaCodecHandlerThread;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-super {p0}, Landroid/os/HandlerThread;->run()V

    invoke-virtual {p0}, Lmiui/video/transcoder/VideoTranscoder$MediaCodecHandlerThread;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "thread exit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
