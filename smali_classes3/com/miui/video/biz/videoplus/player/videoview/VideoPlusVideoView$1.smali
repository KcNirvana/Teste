.class Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView$1;
.super Ljava/lang/Object;
.source "VideoPlusVideoView.java"

# interfaces
.implements Lcom/miui/video/biz/videoplus/player/videoview/IRenderView$IRenderCallback;


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

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView$1;->this$0:Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSurfaceChanged(Lcom/miui/video/biz/videoplus/player/videoview/IRenderView$ISurfaceHolder;III)V
    .locals 0

    return-void
.end method

.method public onSurfaceCreated(Lcom/miui/video/biz/videoplus/player/videoview/IRenderView$ISurfaceHolder;II)V
    .locals 1

    const-string p2, "VideoPlusVideoView"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onSurfaceCreated: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView$1;->this$0:Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;

    invoke-static {v0}, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->access$000(Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;)Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView$1;->this$0:Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;

    invoke-static {p2, p1}, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->access$102(Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;Lcom/miui/video/biz/videoplus/player/videoview/IRenderView$ISurfaceHolder;)Lcom/miui/video/biz/videoplus/player/videoview/IRenderView$ISurfaceHolder;

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView$1;->this$0:Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;

    invoke-static {p1}, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->access$000(Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;)Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView$1;->this$0:Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;

    invoke-static {p1}, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->access$000(Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;)Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView$1;->this$0:Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;

    invoke-static {p2}, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->access$100(Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;)Lcom/miui/video/biz/videoplus/player/videoview/IRenderView$ISurfaceHolder;

    move-result-object p2

    invoke-interface {p2}, Lcom/miui/video/biz/videoplus/player/videoview/IRenderView$ISurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer;->setSurface(Landroid/view/Surface;)V

    goto :goto_0

    :cond_0
    const-string p1, "VideoPlusVideoView"

    const-string p2, "onSurfaceCreated: openVideo"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView$1;->this$0:Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;

    invoke-static {p1}, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->access$200(Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;)V

    :goto_0
    return-void
.end method

.method public onSurfaceDestroyed(Lcom/miui/video/biz/videoplus/player/videoview/IRenderView$ISurfaceHolder;)V
    .locals 2

    const-string p1, "VideoPlusVideoView"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSurfaceDestroyed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView$1;->this$0:Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;

    invoke-static {v1}, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->access$000(Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;)Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView$1;->this$0:Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->access$102(Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;Lcom/miui/video/biz/videoplus/player/videoview/IRenderView$ISurfaceHolder;)Lcom/miui/video/biz/videoplus/player/videoview/IRenderView$ISurfaceHolder;

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView$1;->this$0:Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->access$300(Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;Z)V

    return-void
.end method
