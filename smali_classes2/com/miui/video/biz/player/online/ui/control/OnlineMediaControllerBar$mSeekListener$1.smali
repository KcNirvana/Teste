.class public final Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar$mSeekListener$1;
.super Ljava/lang/Object;
.source "OnlineMediaControllerBar.kt"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J \u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tH\u0016J\u001e\u0010\n\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tJ\u0010\u0010\u000b\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u000c\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\r"
    }
    d2 = {
        "com/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar$mSeekListener$1",
        "Landroid/widget/SeekBar$OnSeekBarChangeListener;",
        "onProgressChanged",
        "",
        "bar",
        "Landroid/widget/SeekBar;",
        "progress",
        "",
        "fromuser",
        "",
        "onProgressChangedAfterGetDuration",
        "onStartTrackingTouch",
        "onStopTrackingTouch",
        "biz_player_online_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar$mSeekListener$1;->this$0:Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2
    .param p1    # Landroid/widget/SeekBar;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "bar"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p3, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar$mSeekListener$1;->this$0:Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar;

    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar;->getPlayerPresenter()Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;->isAsyncMode()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar$mSeekListener$1;->this$0:Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar;

    invoke-static {v0}, Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar;->access$getMDuration$p(Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar;)I

    move-result v0

    if-le v0, v1, :cond_1

    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar$mSeekListener$1;->onProgressChangedAfterGetDuration(Landroid/widget/SeekBar;IZ)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar$mSeekListener$1;->this$0:Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar;

    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar;->getPlayerPresenter()Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;

    move-result-object v0

    new-instance v1, Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar$mSeekListener$1$onProgressChanged$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar$mSeekListener$1$onProgressChanged$1;-><init>(Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar$mSeekListener$1;Landroid/widget/SeekBar;IZ)V

    check-cast v1, Lcom/miui/video/player/service/media/IAsyncVideoView$GetDurationCallback;

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;->getVideoDuration(Lcom/miui/video/player/service/media/IAsyncVideoView$GetDurationCallback;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar$mSeekListener$1;->this$0:Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar;

    invoke-static {v0}, Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar;->access$getMDuration$p(Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar;)I

    move-result v0

    if-gt v0, v1, :cond_3

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar$mSeekListener$1;->this$0:Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar;

    iget-object v1, p0, Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar$mSeekListener$1;->this$0:Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar;

    invoke-virtual {v1}, Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar;->getPlayerPresenter()Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;->getVideoDuration()I

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar;->access$setMDuration$p(Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar;I)V

    :cond_3
    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar$mSeekListener$1;->this$0:Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar;

    invoke-static {v0}, Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar;->access$getMDuration$p(Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar;)I

    move-result v0

    if-gtz v0, :cond_4

    return-void

    :cond_4
    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar$mSeekListener$1;->onProgressChangedAfterGetDuration(Landroid/widget/SeekBar;IZ)V

    :goto_0
    return-void
.end method

.method public final onProgressChangedAfterGetDuration(Landroid/widget/SeekBar;IZ)V
    .locals 4
    .param p1    # Landroid/widget/SeekBar;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p3, "bar"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar$mSeekListener$1;->this$0:Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar;

    invoke-virtual {p1}, Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar;->getPlayerPresenter()Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;->canSeekBackward()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar$mSeekListener$1;->this$0:Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar;

    invoke-virtual {p1}, Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar;->getPlayerPresenter()Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;->canSeekForward()Z

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_1

    :cond_0
    sget-object p1, Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar;->Companion:Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar$Companion;

    invoke-virtual {p1}, Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar$Companion;->getTAG()Ljava/lang/String;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onProgressChanged: progress == "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar$mSeekListener$1;->this$0:Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar;

    invoke-static {p1}, Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar;->access$getMDuration$p(Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar;)I

    move-result p1

    int-to-long v0, p1

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    int-to-long p1, p2

    mul-long v0, v0, p1

    long-to-int p1, v0

    sget-object p2, Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar;->Companion:Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar$Companion;

    invoke-virtual {p2}, Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar$Companion;->getTAG()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onProgressChanged: newPosition == "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar$mSeekListener$1;->this$0:Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar;

    invoke-static {p2}, Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar;->access$getMDuration$p(Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar;)I

    move-result p2

    if-gt p1, p2, :cond_1

    iget-object p2, p0, Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar$mSeekListener$1;->this$0:Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar;

    invoke-virtual {p2, p1}, Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar;->setMCachedSeekPosition(I)V

    :cond_1
    iget-object p2, p0, Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar$mSeekListener$1;->this$0:Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar;

    const/4 p3, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p2, v0, v1, p3}, Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar;->getCurrentPosition$default(Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar;ZILjava/lang/Object;)I

    move-result p2

    if-le p1, p2, :cond_2

    const/4 p2, 0x1

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    :goto_0
    iget-object v2, p0, Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar$mSeekListener$1;->this$0:Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar;

    invoke-static {v2, v0, v1, p3}, Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar;->getCurrentPosition$default(Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar;ZILjava/lang/Object;)I

    move-result v2

    if-ne p1, v2, :cond_3

    iget-object v2, p0, Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar$mSeekListener$1;->this$0:Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar;

    invoke-static {v2, v0, v1, p3}, Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar;->getCurrentPosition$default(Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar;ZILjava/lang/Object;)I

    move-result p3

    if-eqz p3, :cond_3

    const/4 p2, 0x1

    :cond_3
    iget-object p3, p0, Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar$mSeekListener$1;->this$0:Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar;

    invoke-static {p3}, Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar;->access$getVCurrentTime$p(Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar;)Landroid/widget/TextView;

    move-result-object p3

    const-string v0, "vCurrentTime"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/miui/video/common/library/utils/TimeStringUtils;->stringForTime(I)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p3, p0, Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar$mSeekListener$1;->this$0:Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar;

    invoke-static {p3}, Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar;->access$getVGestureSeek$p(Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar;)Lcom/miui/video/player/service/controller/gesture/GestureSeek;

    move-result-object p3

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar$mSeekListener$1;->this$0:Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar;

    invoke-static {v0}, Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar;->access$getMDuration$p(Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar;)I

    move-result v0

    invoke-virtual {p3, p1, p2, v0}, Lcom/miui/video/player/service/controller/gesture/GestureSeek;->adjustSeekStart(IZI)V

    return-void

    :cond_4
    :goto_1
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1
    .param p1    # Landroid/widget/SeekBar;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "bar"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar$mSeekListener$1;->this$0:Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar;->mIsSeeking:Z

    iget-object p1, p0, Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar$mSeekListener$1;->this$0:Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar;

    invoke-virtual {p1}, Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar;->stopVideoPositionUpdate()V

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3
    .param p1    # Landroid/widget/SeekBar;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "bar"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar$mSeekListener$1;->this$0:Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar;->mIsSeeking:Z

    sget-object p1, Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar;->Companion:Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar$Companion;

    invoke-virtual {p1}, Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar$Companion;->getTAG()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStopTrackingTouch: mCachedSeekPosition == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar$mSeekListener$1;->this$0:Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar;

    invoke-virtual {v2}, Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar;->getMCachedSeekPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar$mSeekListener$1;->this$0:Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar;->setHasSeeked(Z)V

    iget-object p1, p0, Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar$mSeekListener$1;->this$0:Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar;

    invoke-virtual {p1, v0}, Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar;->setTouchSeek(Z)V

    iget-object p1, p0, Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar$mSeekListener$1;->this$0:Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar;

    invoke-virtual {p1}, Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar;->getMSeekRunner()Ljava/lang/Runnable;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/video/framework/task/AsyncTaskUtils;->removeIORunnable(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar$mSeekListener$1;->this$0:Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar;

    invoke-virtual {p1}, Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar;->getMSeekRunner()Ljava/lang/Runnable;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/video/framework/task/AsyncTaskUtils;->runOnIOThread(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar$mSeekListener$1;->this$0:Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar;

    const-wide/16 v0, 0x7d0

    invoke-virtual {p1, v0, v1}, Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar;->startVideoPositionUpdate(J)V

    return-void
.end method
