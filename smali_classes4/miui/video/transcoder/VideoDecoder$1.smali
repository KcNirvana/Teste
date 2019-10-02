.class Lmiui/video/transcoder/VideoDecoder$1;
.super Ljava/lang/Object;
.source "VideoDecoder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/video/transcoder/VideoDecoder;->stop()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/video/transcoder/VideoDecoder;


# direct methods
.method constructor <init>(Lmiui/video/transcoder/VideoDecoder;)V
    .locals 0

    iput-object p1, p0, Lmiui/video/transcoder/VideoDecoder$1;->this$0:Lmiui/video/transcoder/VideoDecoder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lmiui/video/transcoder/VideoDecoder$1;->this$0:Lmiui/video/transcoder/VideoDecoder;

    invoke-static {v0}, Lmiui/video/transcoder/VideoDecoder;->access$700(Lmiui/video/transcoder/VideoDecoder;)Lmiui/video/transcoder/VideoDecoder$DecodeUpdateListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/video/transcoder/VideoDecoder$1;->this$0:Lmiui/video/transcoder/VideoDecoder;

    invoke-static {v0}, Lmiui/video/transcoder/VideoDecoder;->access$700(Lmiui/video/transcoder/VideoDecoder;)Lmiui/video/transcoder/VideoDecoder$DecodeUpdateListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lmiui/video/transcoder/VideoDecoder$DecodeUpdateListener;->onDecodeStop(Z)V

    :cond_0
    return-void
.end method
