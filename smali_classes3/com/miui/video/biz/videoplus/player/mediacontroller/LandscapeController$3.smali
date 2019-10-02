.class Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController$3;
.super Ljava/lang/Object;
.source "LandscapeController.java"

# interfaces
.implements Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController$ScrollChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mLastPlaystate:I

.field mScrollstate:I

.field final synthetic this$0:Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController$3;->this$0:Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController$3;->mScrollstate:I

    return-void
.end method


# virtual methods
.method public getScrollState()I
    .locals 1

    iget v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController$3;->mScrollstate:I

    return v0
.end method

.method public onScrollEnd(J)V
    .locals 6

    const/4 p1, 0x2

    iput p1, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController$3;->mScrollstate:I

    iget p2, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController$3;->mLastPlaystate:I

    const-wide/16 v0, 0xdac

    if-nez p2, :cond_1

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController$3;->this$0:Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->getHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController$3$1;

    invoke-direct {p2, p0}, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController$3$1;-><init>(Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController$3;)V

    const-string v2, "SeekPositionTextHideLandscape"

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    add-long/2addr v3, v0

    invoke-virtual {p1, p2, v2, v3, v4}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController$3;->this$0:Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;

    invoke-static {p1}, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->access$100(Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;)Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IPresenter;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController$3;->this$0:Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;

    invoke-static {p1}, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->access$100(Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;)Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IPresenter;

    move-result-object p1

    invoke-interface {p1}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IPresenter;->stopSeekingFromPreview()V

    :cond_0
    return-void

    :cond_1
    iget-object p2, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController$3;->this$0:Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;

    invoke-static {p2}, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->access$100(Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;)Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IPresenter;

    move-result-object p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController$3;->this$0:Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;

    invoke-static {p2}, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->access$100(Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;)Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IPresenter;

    move-result-object p2

    invoke-interface {p2}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IPresenter;->stopSeeking()V

    :cond_2
    iget-object p2, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController$3;->this$0:Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;

    invoke-virtual {p2}, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->getHandler()Landroid/os/Handler;

    move-result-object p2

    new-instance v2, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController$3$2;

    invoke-direct {v2, p0}, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController$3$2;-><init>(Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController$3;)V

    const-string v3, "SeekPositionTextHideLandscape"

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    add-long/2addr v4, v0

    invoke-virtual {p2, v2, v3, v4, v5}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    iget p2, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController$3;->mLastPlaystate:I

    if-ne p2, p1, :cond_3

    return-void

    :cond_3
    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController$3;->this$0:Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;

    invoke-static {p1}, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->access$400(Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;)V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController$3;->this$0:Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;

    invoke-static {p1}, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->access$100(Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;)Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IPresenter;

    move-result-object p1

    invoke-interface {p1}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IPresenter;->startPlaying()V

    return-void
.end method

.method public onScrollStart()V
    .locals 3

    iget v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController$3;->mScrollstate:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController$3;->mScrollstate:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController$3;->this$0:Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;

    invoke-static {v0}, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->access$100(Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;)Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IPresenter;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IPresenter;->getCurrentPlayState()I

    move-result v0

    iput v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController$3;->mLastPlaystate:I

    :cond_1
    const/4 v0, 0x1

    iput v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController$3;->mScrollstate:I

    const-string v0, "LandscapeController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " yqf_test mLastPlaystate:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController$3;->mLastPlaystate:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/market/sdk/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController$3;->mLastPlaystate:I

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController$3;->this$0:Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const-string v2, "SeekPositionTextHideLandscape"

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController$3;->this$0:Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;

    invoke-static {v0}, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->access$200(Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController$3;->this$0:Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;

    invoke-static {v0}, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->access$100(Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;)Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IPresenter;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController$3;->this$0:Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;

    invoke-static {v0}, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->access$100(Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;)Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IPresenter;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IPresenter;->clickPause()V

    :cond_3
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController$3;->this$0:Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;

    invoke-static {v0}, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->access$100(Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;)Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IPresenter;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IPresenter;->startSeeking()V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController$3;->this$0:Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const-string v2, "SeekPositionTextHideLandscape"

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController$3;->this$0:Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;

    invoke-static {v0}, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->access$200(Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public scrollPosition(JI)V
    .locals 1

    iget v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController$3;->mLastPlaystate:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController$3;->this$0:Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;

    invoke-static {v0}, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->access$100(Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;)Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IPresenter;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IPresenter;->updateSeekingValueStatePreview(JI)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController$3;->this$0:Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;

    invoke-static {v0}, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->access$100(Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;)Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IPresenter;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IPresenter;->updateSeekingValue(JI)V

    :goto_0
    return-void
.end method
