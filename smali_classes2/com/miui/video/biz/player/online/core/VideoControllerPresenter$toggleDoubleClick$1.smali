.class final Lcom/miui/video/biz/player/online/core/VideoControllerPresenter$toggleDoubleClick$1;
.super Ljava/lang/Object;
.source "VideoControllerPresenter.kt"

# interfaces
.implements Lcom/miui/video/player/service/media/IAsyncVideoView$GetIsPlayingCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;->toggleDoubleClick(I)V
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
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "isPlaying",
        "",
        "onGetIsPlayingResult"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field final synthetic $mode:I

.field final synthetic this$0:Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;I)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/player/online/core/VideoControllerPresenter$toggleDoubleClick$1;->this$0:Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;

    iput p2, p0, Lcom/miui/video/biz/player/online/core/VideoControllerPresenter$toggleDoubleClick$1;->$mode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGetIsPlayingResult(Z)V
    .locals 1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->INSTANCE:Lcom/miui/video/player/service/statistics/VideoStatisticsManager;

    iget v0, p0, Lcom/miui/video/biz/player/online/core/VideoControllerPresenter$toggleDoubleClick$1;->$mode:I

    invoke-virtual {p1, v0}, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->onPlayPause(I)V

    iget-object p1, p0, Lcom/miui/video/biz/player/online/core/VideoControllerPresenter$toggleDoubleClick$1;->this$0:Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;

    invoke-virtual {p1}, Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;->pauseVideo()V

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->INSTANCE:Lcom/miui/video/player/service/statistics/VideoStatisticsManager;

    iget v0, p0, Lcom/miui/video/biz/player/online/core/VideoControllerPresenter$toggleDoubleClick$1;->$mode:I

    invoke-virtual {p1, v0}, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->onPlayResume(I)V

    iget-object p1, p0, Lcom/miui/video/biz/player/online/core/VideoControllerPresenter$toggleDoubleClick$1;->this$0:Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;

    invoke-virtual {p1}, Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;->resumeVideo()V

    :goto_0
    return-void
.end method
