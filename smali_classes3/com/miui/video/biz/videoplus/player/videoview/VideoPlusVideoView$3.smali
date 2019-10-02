.class Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView$3;
.super Ljava/lang/Object;
.source "VideoPlusVideoView.java"

# interfaces
.implements Lcom/miui/video/biz/videoplus/player/subtitle/ISubtitleView$ISubtitleCallback;


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

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView$3;->this$0:Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSurfaceTextureViewCreated()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView$3;->this$0:Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->access$502(Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;Z)Z

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView$3;->this$0:Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;

    invoke-static {v0}, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->access$000(Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;)Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "VideoPlusVideoView"

    const-string v1, "mSubtitleCallback: openVideo"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView$3;->this$0:Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;

    invoke-static {v0}, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->access$200(Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;)V

    :goto_0
    return-void
.end method

.method public onSurfaceViewCreated()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView$3;->this$0:Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;

    invoke-static {v0}, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->access$000(Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;)Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "VideoPlusVideoView"

    const-string v1, " mSubtitleCallback: openVideo"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView$3;->this$0:Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;

    invoke-static {v0}, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->access$200(Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;)V

    :goto_0
    return-void
.end method

.method public onSurfaceViewDestroyed()V
    .locals 2

    const-string v0, "VideoPlusVideoView"

    const-string v1, "release : "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView$3;->this$0:Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->access$300(Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;Z)V

    return-void
.end method
