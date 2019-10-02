.class public final Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar$mUpdateProgressRunner$1$run$1;
.super Ljava/lang/Object;
.source "OnlineMediaControllerBar.kt"

# interfaces
.implements Lcom/miui/video/player/service/media/IAsyncVideoView$GetIsPlayingCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar$mUpdateProgressRunner$1;->run()V
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
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "com/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar$mUpdateProgressRunner$1$run$1",
        "Lcom/miui/video/player/service/media/IAsyncVideoView$GetIsPlayingCallback;",
        "onGetIsPlayingResult",
        "",
        "isPlaying",
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
.field final synthetic this$0:Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar$mUpdateProgressRunner$1;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar$mUpdateProgressRunner$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar$mUpdateProgressRunner$1$run$1;->this$0:Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar$mUpdateProgressRunner$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetIsPlayingResult(Z)V
    .locals 3

    sget-object v0, Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar;->Companion:Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar$Companion;

    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar$Companion;->getTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getIsPlaying Finish: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar$mUpdateProgressRunner$1$run$1;->this$0:Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar$mUpdateProgressRunner$1;

    iget-object v0, v0, Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar$mUpdateProgressRunner$1;->this$0:Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar;

    iget-boolean v0, v0, Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar;->mIsSeeking:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    sget-object p1, Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar;->Companion:Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar$Companion;

    invoke-virtual {p1}, Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar$Companion;->getTAG()Ljava/lang/String;

    move-result-object p1

    const-string v0, "getPosition : "

    invoke-static {p1, v0}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar$mUpdateProgressRunner$1$run$1;->this$0:Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar$mUpdateProgressRunner$1;

    iget-object p1, p1, Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar$mUpdateProgressRunner$1;->this$0:Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar;

    invoke-virtual {p1}, Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar;->getPlayerPresenter()Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;

    move-result-object p1

    new-instance v0, Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar$mUpdateProgressRunner$1$run$1$onGetIsPlayingResult$1;

    invoke-direct {v0, p0}, Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar$mUpdateProgressRunner$1$run$1$onGetIsPlayingResult$1;-><init>(Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar$mUpdateProgressRunner$1$run$1;)V

    check-cast v0, Lcom/miui/video/player/service/media/IAsyncVideoView$GetCurrentPositionCallback;

    invoke-virtual {p1, v0}, Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;->getPlayingPosition(Lcom/miui/video/player/service/media/IAsyncVideoView$GetCurrentPositionCallback;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar$mUpdateProgressRunner$1$run$1;->this$0:Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar$mUpdateProgressRunner$1;

    iget-object p1, p1, Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar$mUpdateProgressRunner$1;->this$0:Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar;

    const-wide/16 v0, 0x3e8

    invoke-virtual {p1, v0, v1}, Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar;->runProgressRunnner(J)V

    :goto_0
    return-void
.end method
