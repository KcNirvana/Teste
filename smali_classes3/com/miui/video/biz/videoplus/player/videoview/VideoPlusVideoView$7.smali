.class Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView$7;
.super Ljava/lang/Object;
.source "VideoPlusVideoView.java"

# interfaces
.implements Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer$OnErrorListener;


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

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView$7;->this$0:Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer;II)Z
    .locals 3

    const-string v0, "VideoPlusVideoView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onError: what="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " extra="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView$7;->this$0:Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->access$802(Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;I)I

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView$7;->this$0:Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;

    invoke-static {v0, v1}, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->access$1602(Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;I)I

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView$7;->this$0:Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;

    invoke-static {v0}, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->access$2100(Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;)Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer$OnErrorListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView$7;->this$0:Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;

    invoke-static {v0}, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->access$2100(Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;)Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer$OnErrorListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer$OnErrorListener;->onError(Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer;II)Z

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
