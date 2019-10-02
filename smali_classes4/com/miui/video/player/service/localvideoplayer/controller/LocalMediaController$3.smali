.class Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController$3;
.super Ljava/lang/Object;
.source "LocalMediaController.java"

# interfaces
.implements Lcom/miui/video/player/service/controller/VideoSlideSeekBar$OnRangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;


# direct methods
.method constructor <init>(Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController$3;->this$0:Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public completeRange(I)V
    .locals 6

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController$3;->this$0:Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;

    invoke-static {v0}, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->access$1200(Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/video/player/service/localvideoplayer/utils/LocalSlideStatistic;->getInstance()Lcom/miui/video/player/service/localvideoplayer/utils/LocalSlideStatistic;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/utils/LocalSlideStatistic;->slide()V

    :cond_0
    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController$3;->this$0:Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;

    invoke-static {v0}, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->access$000(Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;)Lcom/miui/video/player/service/localvideoplayer/videoview/LocalMediaPlayerControl;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController$3;->this$0:Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;

    invoke-static {v0}, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->access$000(Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;)Lcom/miui/video/player/service/localvideoplayer/videoview/LocalMediaPlayerControl;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController$3;->this$0:Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;

    invoke-virtual {v2}, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->getMinSlidePos()I

    move-result v2

    int-to-long v2, v2

    iget-object v4, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController$3;->this$0:Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;

    invoke-virtual {v4}, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->getMaxSlidePos()I

    move-result v4

    int-to-long v4, v4

    invoke-interface {v0, v2, v3, v4, v5}, Lcom/miui/video/player/service/localvideoplayer/videoview/LocalMediaPlayerControl;->setSlowMotionTime(JJ)V

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController$3;->this$0:Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController$3;->this$0:Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;

    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->getMaxSlidePos()I

    move-result v0

    invoke-static {p1, v0}, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->access$400(Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;I)V

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController$3;->this$0:Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;

    invoke-static {p1}, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->access$000(Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;)Lcom/miui/video/player/service/localvideoplayer/videoview/LocalMediaPlayerControl;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController$3;->this$0:Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;

    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->getMaxSlidePos()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/miui/video/player/service/localvideoplayer/videoview/LocalMediaPlayerControl;->seekTo(I)V

    goto :goto_0

    :cond_1
    if-ne p1, v1, :cond_2

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController$3;->this$0:Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController$3;->this$0:Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;

    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->getMinSlidePos()I

    move-result v0

    invoke-static {p1, v0}, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->access$400(Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;I)V

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController$3;->this$0:Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;

    invoke-static {p1}, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->access$000(Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;)Lcom/miui/video/player/service/localvideoplayer/videoview/LocalMediaPlayerControl;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController$3;->this$0:Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;

    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->getMinSlidePos()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/miui/video/player/service/localvideoplayer/videoview/LocalMediaPlayerControl;->seekTo(I)V

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController$3;->this$0:Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;

    invoke-static {p1}, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->access$000(Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;)Lcom/miui/video/player/service/localvideoplayer/videoview/LocalMediaPlayerControl;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController$3;->this$0:Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;

    invoke-static {p1}, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->access$000(Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;)Lcom/miui/video/player/service/localvideoplayer/videoview/LocalMediaPlayerControl;

    move-result-object p1

    invoke-interface {p1}, Lcom/miui/video/player/service/localvideoplayer/videoview/LocalMediaPlayerControl;->isPlaying()Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController$3;->this$0:Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;

    invoke-static {p1}, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->access$500(Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController$3;->this$0:Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;

    invoke-static {p1}, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->access$1100(Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController$3;->this$0:Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;

    invoke-virtual {p1}, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->isLowFromStart()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController$3;->this$0:Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;

    invoke-virtual {p1}, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->recordVolume()V

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController$3;->this$0:Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;

    invoke-static {p1}, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->access$000(Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;)Lcom/miui/video/player/service/localvideoplayer/videoview/LocalMediaPlayerControl;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/miui/video/player/service/localvideoplayer/videoview/LocalMediaPlayerControl;->setVolume(F)V

    :cond_3
    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController$3;->this$0:Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;

    invoke-static {p1}, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->access$000(Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;)Lcom/miui/video/player/service/localvideoplayer/videoview/LocalMediaPlayerControl;

    move-result-object p1

    invoke-interface {p1}, Lcom/miui/video/player/service/localvideoplayer/videoview/LocalMediaPlayerControl;->start()V

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController$3;->this$0:Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->access$502(Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;Z)Z

    :cond_4
    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController$3;->this$0:Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;

    invoke-static {p1}, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->access$1300(Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;)Lcom/miui/video/player/service/presenter/LocalBasePresenter;

    move-result-object p1

    check-cast p1, Lcom/miui/video/player/service/presenter/VideoViewPresenter;

    invoke-virtual {p1, v1}, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->setSaveEnable(Z)V

    return-void
.end method

.method public getDuration()I
    .locals 1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController$3;->this$0:Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;

    invoke-static {v0}, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->access$000(Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;)Lcom/miui/video/player/service/localvideoplayer/videoview/LocalMediaPlayerControl;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController$3;->this$0:Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;

    invoke-static {v0}, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->access$000(Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;)Lcom/miui/video/player/service/localvideoplayer/videoview/LocalMediaPlayerControl;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/video/player/service/localvideoplayer/videoview/LocalMediaPlayerControl;->getDuration()I

    move-result v0

    :goto_0
    return v0
.end method

.method public onRange(IFF)V
    .locals 3

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController$3;->this$0:Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;

    invoke-static {v0}, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->access$000(Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;)Lcom/miui/video/player/service/localvideoplayer/videoview/LocalMediaPlayerControl;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController$3;->this$0:Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;

    invoke-static {v0}, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->access$000(Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;)Lcom/miui/video/player/service/localvideoplayer/videoview/LocalMediaPlayerControl;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/video/player/service/localvideoplayer/videoview/LocalMediaPlayerControl;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController$3;->this$0:Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;

    invoke-static {v0, v1}, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->access$502(Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;Z)Z

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController$3;->this$0:Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;

    invoke-static {v0}, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->access$000(Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;)Lcom/miui/video/player/service/localvideoplayer/videoview/LocalMediaPlayerControl;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/video/player/service/localvideoplayer/videoview/LocalMediaPlayerControl;->pause()V

    :cond_0
    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController$3;->this$0:Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;

    iget-object v2, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController$3;->this$0:Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;

    invoke-static {v2}, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->access$000(Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;)Lcom/miui/video/player/service/localvideoplayer/videoview/LocalMediaPlayerControl;

    move-result-object v2

    invoke-interface {v2}, Lcom/miui/video/player/service/localvideoplayer/videoview/LocalMediaPlayerControl;->getDuration()I

    move-result v2

    invoke-static {v0, v2}, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->access$602(Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;I)I

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController$3;->this$0:Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;

    iget-object v2, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController$3;->this$0:Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;

    invoke-static {v2}, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->access$800(Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;)I

    move-result v2

    int-to-float v2, v2

    mul-float p2, p2, v2

    float-to-int p2, p2

    invoke-static {v0, p2}, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->access$702(Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;I)I

    iget-object p2, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController$3;->this$0:Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController$3;->this$0:Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;

    invoke-static {v0}, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->access$1000(Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;)I

    move-result v0

    int-to-float v0, v0

    mul-float p3, p3, v0

    float-to-int p3, p3

    invoke-static {p2, p3}, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->access$902(Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;I)I

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController$3;->this$0:Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;

    invoke-static {p1, v1}, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->access$1102(Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;Z)Z

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController$3;->this$0:Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;

    iget-object p2, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController$3;->this$0:Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;

    invoke-static {p2}, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->access$700(Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->setProgressToView(I)V

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController$3;->this$0:Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;

    invoke-static {p1}, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->access$000(Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;)Lcom/miui/video/player/service/localvideoplayer/videoview/LocalMediaPlayerControl;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController$3;->this$0:Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;

    invoke-static {p2}, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->access$700(Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;)I

    move-result p2

    invoke-interface {p1, p2}, Lcom/miui/video/player/service/localvideoplayer/videoview/LocalMediaPlayerControl;->moveTo(I)V

    goto :goto_0

    :cond_1
    if-ne p1, v1, :cond_2

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController$3;->this$0:Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->access$1102(Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;Z)Z

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController$3;->this$0:Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;

    iget-object p2, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController$3;->this$0:Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;

    invoke-static {p2}, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->access$900(Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->setProgressToView(I)V

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController$3;->this$0:Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;

    invoke-static {p1}, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->access$000(Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;)Lcom/miui/video/player/service/localvideoplayer/videoview/LocalMediaPlayerControl;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController$3;->this$0:Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;

    invoke-static {p2}, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->access$900(Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;)I

    move-result p2

    invoke-interface {p1, p2}, Lcom/miui/video/player/service/localvideoplayer/videoview/LocalMediaPlayerControl;->moveTo(I)V

    :cond_2
    :goto_0
    return-void
.end method
