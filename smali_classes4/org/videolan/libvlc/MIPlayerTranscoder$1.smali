.class Lorg/videolan/libvlc/MIPlayerTranscoder$1;
.super Ljava/lang/Object;
.source "MIPlayerTranscoder.java"

# interfaces
.implements Lmiui/video/transcoder/EncodeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/videolan/libvlc/MIPlayerTranscoder;->transcoderVideo()I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/videolan/libvlc/MIPlayerTranscoder;


# direct methods
.method constructor <init>(Lorg/videolan/libvlc/MIPlayerTranscoder;)V
    .locals 0

    iput-object p1, p0, Lorg/videolan/libvlc/MIPlayerTranscoder$1;->this$0:Lorg/videolan/libvlc/MIPlayerTranscoder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEncodeFinish()V
    .locals 2

    iget-object v0, p0, Lorg/videolan/libvlc/MIPlayerTranscoder$1;->this$0:Lorg/videolan/libvlc/MIPlayerTranscoder;

    invoke-static {v0}, Lorg/videolan/libvlc/MIPlayerTranscoder;->access$000(Lorg/videolan/libvlc/MIPlayerTranscoder;)Lorg/videolan/libvlc/MIPlayerTranscoder$onCompletionListener;

    move-result-object v0

    invoke-interface {v0}, Lorg/videolan/libvlc/MIPlayerTranscoder$onCompletionListener;->onCompletion()V

    const/4 v0, 0x0

    invoke-static {v0}, Lorg/videolan/libvlc/MIPlayerTranscoder;->access$102(Z)Z

    const-string v0, "MIPlayerTranscoder"

    const-string v1, "transcoder finished!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onError()V
    .locals 2

    const-string v0, "MIPlayerTranscoder"

    const-string v1, "got error, is in transcoding! "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lorg/videolan/libvlc/MIPlayerTranscoder$1;->this$0:Lorg/videolan/libvlc/MIPlayerTranscoder;

    invoke-static {v0}, Lorg/videolan/libvlc/MIPlayerTranscoder;->access$200(Lorg/videolan/libvlc/MIPlayerTranscoder;)Lmiui/video/transcoder/VideoTranscoder;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/videolan/libvlc/MIPlayerTranscoder$1;->this$0:Lorg/videolan/libvlc/MIPlayerTranscoder;

    invoke-static {v0}, Lorg/videolan/libvlc/MIPlayerTranscoder;->access$200(Lorg/videolan/libvlc/MIPlayerTranscoder;)Lmiui/video/transcoder/VideoTranscoder;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/video/transcoder/VideoTranscoder;->cancelSave()V

    :cond_0
    iget-object v0, p0, Lorg/videolan/libvlc/MIPlayerTranscoder$1;->this$0:Lorg/videolan/libvlc/MIPlayerTranscoder;

    invoke-static {v0}, Lorg/videolan/libvlc/MIPlayerTranscoder;->access$300(Lorg/videolan/libvlc/MIPlayerTranscoder;)Lorg/videolan/libvlc/MIPlayerTranscoder$onErrorListener;

    move-result-object v0

    invoke-interface {v0}, Lorg/videolan/libvlc/MIPlayerTranscoder$onErrorListener;->onError()V

    const/4 v0, 0x0

    invoke-static {v0}, Lorg/videolan/libvlc/MIPlayerTranscoder;->access$102(Z)Z

    return-void
.end method
