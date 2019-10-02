.class final Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar$mSeekRunner$1;
.super Ljava/lang/Object;
.source "OnlineMediaControllerBar.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "run"
    }
    k = 0x3
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

    iput-object p1, p0, Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar$mSeekRunner$1;->this$0:Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    sget-object v0, Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar;->Companion:Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar$Companion;

    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar$Companion;->getTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSeekRunner: isSeeking == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar$mSeekRunner$1;->this$0:Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar;

    iget-boolean v2, v2, Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar;->mIsSeeking:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar$mSeekRunner$1;->this$0:Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar;

    iget-boolean v0, v0, Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar;->mIsSeeking:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar$mSeekRunner$1;->this$0:Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar;

    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar;->getPlayerPresenter()Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;->isAsyncMode()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar$mSeekRunner$1;->this$0:Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar;

    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar;->getPlayerPresenter()Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;

    move-result-object v0

    new-instance v1, Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar$mSeekRunner$1$1;

    invoke-direct {v1, p0}, Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar$mSeekRunner$1$1;-><init>(Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar$mSeekRunner$1;)V

    check-cast v1, Lcom/miui/video/player/service/media/IAsyncVideoView$GetDurationCallback;

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;->getVideoDuration(Lcom/miui/video/player/service/media/IAsyncVideoView$GetDurationCallback;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar$mSeekRunner$1;->this$0:Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar;

    iget-object v1, p0, Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar$mSeekRunner$1;->this$0:Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar;

    invoke-virtual {v1}, Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar;->getPlayerPresenter()Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;->getVideoDuration()I

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar;->access$setMDuration$p(Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar;I)V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar$mSeekRunner$1;->this$0:Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar;

    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar;->seekToCachedPosition()V

    :goto_0
    return-void
.end method
