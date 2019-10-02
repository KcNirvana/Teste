.class Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView$9;
.super Ljava/lang/Object;
.source "VideoPlusVideoView.java"

# interfaces
.implements Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer$OnInfoListener;


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

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView$9;->this$0:Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInfo(Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer;II)Z
    .locals 3

    const-string v0, "VideoPlusVideoView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onInfo: what="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " extra="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView$9;->this$0:Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;

    invoke-static {v0}, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->access$2300(Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;)Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer$OnInfoListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView$9;->this$0:Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;

    invoke-static {v0}, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->access$2300(Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;)Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer$OnInfoListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer$OnInfoListener;->onInfo(Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer;II)Z

    :cond_0
    const p1, 0x186a1

    const/high16 p3, 0x3f800000    # 1.0f

    if-ne p2, p1, :cond_1

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView$9;->this$0:Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;

    invoke-static {p1}, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->access$000(Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;)Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView$9;->this$0:Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;

    invoke-static {p1}, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->access$000(Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;)Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer;

    move-result-object p1

    invoke-interface {p1}, Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer;->getCurrentRatio()F

    move-result p1

    cmpg-float p1, p1, p3

    if-gtz p1, :cond_2

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView$9;->this$0:Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;

    iget-object p2, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView$9;->this$0:Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;

    invoke-static {p2}, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->access$000(Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;)Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer;

    move-result-object p2

    invoke-interface {p2}, Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer;->getCurrentRatio()F

    move-result p2

    invoke-static {p1, p2}, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->access$2402(Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;F)F

    const-string p1, "VideoPlusVideoView"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onInfo: what mLastToastRatio :"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView$9;->this$0:Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;

    invoke-static {p3}, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->access$2400(Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;)F

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const p1, 0x186a2

    if-ne p2, p1, :cond_2

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView$9;->this$0:Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;

    invoke-static {p1}, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->access$000(Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;)Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView$9;->this$0:Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;

    invoke-static {p1}, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->access$000(Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;)Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer;

    move-result-object p1

    invoke-interface {p1}, Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer;->getCurrentRatio()F

    move-result p1

    const-string p2, "VideoPlusVideoView"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onInfo: what mLastToastRatio ratio:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    cmpl-float p2, p1, p3

    if-lez p2, :cond_2

    iget-object p2, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView$9;->this$0:Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;

    invoke-static {p2}, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->access$2400(Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;)F

    move-result p2

    cmpl-float p2, p2, p1

    if-eqz p2, :cond_2

    invoke-static {}, Lcom/miui/video/common/library/utils/ToastUtils;->getInstance()Lcom/miui/video/common/library/utils/ToastUtils;

    move-result-object p2

    sget p3, Lcom/miui/video/biz/videoplus/R$string;->plus_player_speed_toast_error:I

    invoke-virtual {p2, p3}, Lcom/miui/video/common/library/utils/ToastUtils;->showToast(I)Lcom/miui/video/common/library/utils/ToastUtils;

    iget-object p2, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView$9;->this$0:Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;

    invoke-static {p2, p1}, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->access$2402(Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;F)F

    :cond_2
    :goto_0
    const/4 p1, 0x1

    return p1
.end method
