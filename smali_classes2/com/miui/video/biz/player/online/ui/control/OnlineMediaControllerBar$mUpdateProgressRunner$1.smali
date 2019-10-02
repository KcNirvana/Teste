.class public final Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar$mUpdateProgressRunner$1;
.super Ljava/lang/Object;
.source "OnlineMediaControllerBar.kt"

# interfaces
.implements Ljava/lang/Runnable;


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
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016\u00a8\u0006\u0004"
    }
    d2 = {
        "com/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar$mUpdateProgressRunner$1",
        "Ljava/lang/Runnable;",
        "run",
        "",
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

    iput-object p1, p0, Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar$mUpdateProgressRunner$1;->this$0:Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    sget-object v0, Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar;->Companion:Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar$Companion;

    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar$Companion;->getTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "update progress : updateProgress = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar;->Companion:Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar$Companion;

    invoke-virtual {v2}, Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar$Companion;->getUpdateProgress()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    move-object v0, p0

    check-cast v0, Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/miui/video/framework/task/AsyncTaskUtils;->removeCallbacks(Ljava/lang/Runnable;)V

    sget-object v0, Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar;->Companion:Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar$Companion;

    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar$Companion;->getUpdateProgress()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar$mUpdateProgressRunner$1;->this$0:Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar;

    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar;->getPlayerPresenter()Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;->isAsyncMode()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar;->Companion:Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar$Companion;

    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar$Companion;->getTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "update progress : isAsync = true"

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar$mUpdateProgressRunner$1;->this$0:Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar;

    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar;->getPlayerPresenter()Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;

    move-result-object v0

    new-instance v1, Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar$mUpdateProgressRunner$1$run$1;

    invoke-direct {v1, p0}, Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar$mUpdateProgressRunner$1$run$1;-><init>(Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar$mUpdateProgressRunner$1;)V

    check-cast v1, Lcom/miui/video/player/service/media/IAsyncVideoView$GetIsPlayingCallback;

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;->getIsPlaying(Lcom/miui/video/player/service/media/IAsyncVideoView$GetIsPlayingCallback;)V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar;->Companion:Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar$Companion;

    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar$Companion;->getTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "update progress : isAsync = false"

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar$mUpdateProgressRunner$1;->this$0:Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar;

    iget-boolean v0, v0, Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar;->mIsSeeking:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar$mUpdateProgressRunner$1;->this$0:Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar;

    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar;->getPlayerPresenter()Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar$mUpdateProgressRunner$1;->this$0:Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar;

    invoke-static {v0}, Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar;->access$syncPlayProgress(Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar;)I

    move-result v0

    iget-object v1, p0, Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar$mUpdateProgressRunner$1;->this$0:Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar;

    invoke-virtual {v1}, Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar;->getPlayerPresenter()Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;->syncVideoObjPosition(I)V

    iget-object v1, p0, Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar$mUpdateProgressRunner$1;->this$0:Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar;

    const/16 v2, 0x3e8

    int-to-long v2, v2

    int-to-long v4, v0

    rem-long/2addr v4, v2

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar;->runProgressRunnner(J)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar$mUpdateProgressRunner$1;->this$0:Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar;->runProgressRunnner(J)V

    :goto_0
    return-void
.end method
