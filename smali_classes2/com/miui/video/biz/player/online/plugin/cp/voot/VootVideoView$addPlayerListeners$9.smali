.class final Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView$addPlayerListeners$9;
.super Ljava/lang/Object;
.source "VootVideoView.kt"

# interfaces
.implements Lcom/kaltura/playkit/PKEvent$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->addPlayerListeners()V
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
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lcom/kaltura/playkit/PKEvent;",
        "kotlin.jvm.PlatformType",
        "onEvent"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView$addPlayerListeners$9;->this$0:Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onEvent(Lcom/kaltura/playkit/PKEvent;)V
    .locals 3

    iget-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView$addPlayerListeners$9;->this$0:Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;

    invoke-virtual {p1}, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->getTAG()Ljava/lang/String;

    move-result-object p1

    const-string v0, "voot  AdEvent.Type.ALL_ADS_COMPLETED"

    invoke-static {p1, v0}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView$addPlayerListeners$9;->this$0:Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->access$setMAdsPlaying$p(Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;Z)V

    iget-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView$addPlayerListeners$9;->this$0:Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;

    invoke-virtual {p1}, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->getMOnAdsPlayListener()Lcom/miui/video/player/service/media/AdsPlayListener;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/miui/video/player/service/media/AdsPlayListener;->onAdsPlayEnd()V

    :cond_0
    iget-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView$addPlayerListeners$9;->this$0:Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;

    invoke-static {p1}, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->access$showMark(Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;)V

    iget-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView$addPlayerListeners$9;->this$0:Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;

    invoke-static {p1}, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->access$getMCurrentState$p(Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;)I

    move-result p1

    iget-object v1, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView$addPlayerListeners$9;->this$0:Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;

    invoke-virtual {v1}, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->getSTATE_ERROR()I

    move-result v1

    if-ne p1, v1, :cond_2

    iget-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView$addPlayerListeners$9;->this$0:Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;

    invoke-virtual {p1}, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->getMOnErrorListener()Lcom/miui/video/player/service/media/IMediaPlayer$OnErrorListener;

    move-result-object p1

    if-nez p1, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    const/4 v1, 0x0

    const/16 v2, 0xc8

    invoke-interface {p1, v1, v2, v0}, Lcom/miui/video/player/service/media/IMediaPlayer$OnErrorListener;->onError(Lcom/miui/video/player/service/media/IMediaPlayer;II)Z

    :cond_2
    return-void
.end method
