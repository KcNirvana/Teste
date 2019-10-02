.class Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView$11;
.super Ljava/lang/Object;
.source "VideoPlusVideoView.java"

# interfaces
.implements Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer$OnVideoSizeChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView$11;->this$0:Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVideoSizeChanged(Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer;II)V
    .locals 3

    const-string v0, "VideoPlusVideoView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onVideoSizeChanged: w="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " h="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView$11;->this$0:Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;

    invoke-interface {p1}, Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer;->getVideoWidth()I

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->access$1002(Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;I)I

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView$11;->this$0:Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;

    invoke-interface {p1}, Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer;->getVideoHeight()I

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->access$1102(Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;I)I

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView$11;->this$0:Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;

    invoke-static {v0}, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->access$1000(Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;)I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView$11;->this$0:Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;

    invoke-static {v0}, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->access$1100(Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;)I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView$11;->this$0:Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;

    invoke-static {v0}, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->access$1500(Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;)Lcom/miui/video/biz/videoplus/player/videoview/IRenderView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView$11;->this$0:Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;

    invoke-static {v0}, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->access$1500(Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;)Lcom/miui/video/biz/videoplus/player/videoview/IRenderView;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView$11;->this$0:Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;

    invoke-static {v1}, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->access$1000(Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;)I

    move-result v1

    iget-object v2, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView$11;->this$0:Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;

    invoke-static {v2}, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->access$1100(Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/miui/video/biz/videoplus/player/videoview/IRenderView;->setVideoSize(II)V

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView$11;->this$0:Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;

    invoke-static {v0}, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->access$1700(Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;)Lcom/miui/video/biz/videoplus/player/videoview/IRenderView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView$11;->this$0:Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;

    invoke-static {v0}, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->access$1700(Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;)Lcom/miui/video/biz/videoplus/player/videoview/IRenderView;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView$11;->this$0:Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;

    invoke-static {v1}, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->access$1000(Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;)I

    move-result v1

    iget-object v2, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView$11;->this$0:Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;

    invoke-static {v2}, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->access$1100(Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/miui/video/biz/videoplus/player/videoview/IRenderView;->setVideoSize(II)V

    :cond_1
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView$11;->this$0:Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;

    invoke-static {v0}, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->access$2700(Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;)Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer$OnVideoSizeChangedListener;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView$11;->this$0:Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;

    invoke-static {v0}, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->access$2700(Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;)Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer$OnVideoSizeChangedListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer$OnVideoSizeChangedListener;->onVideoSizeChanged(Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer;II)V

    :cond_2
    return-void
.end method
