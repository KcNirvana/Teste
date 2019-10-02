.class final Lcom/miui/video/biz/player/online/plugin/hungama/HungamaVideoView$initPlayer$1;
.super Ljava/lang/Object;
.source "HungamaVideoView.kt"

# interfaces
.implements Lcom/hungama/movies/sdk/Utils/PlaybackControllerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/player/online/plugin/hungama/HungamaVideoView;->initPlayer()Z
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
        "playbackControllerState",
        "Lcom/hungama/movies/sdk/Utils/PlaybackControllerState;",
        "kotlin.jvm.PlatformType",
        "onPlayerStateChanged"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/biz/player/online/plugin/hungama/HungamaVideoView;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/player/online/plugin/hungama/HungamaVideoView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/player/online/plugin/hungama/HungamaVideoView$initPlayer$1;->this$0:Lcom/miui/video/biz/player/online/plugin/hungama/HungamaVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPlayerStateChanged(Lcom/hungama/movies/sdk/Utils/PlaybackControllerState;)V
    .locals 4

    if-nez p1, :cond_0

    goto/16 :goto_0

    :cond_0
    sget-object v0, Lcom/miui/video/biz/player/online/plugin/hungama/HungamaVideoView$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lcom/hungama/movies/sdk/Utils/PlaybackControllerState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    invoke-static {}, Lcom/miui/video/biz/player/online/plugin/hungama/HungamaVideoView;->access$getTAG$cp()Ljava/lang/String;

    move-result-object v0

    const-string v2, "STATE_PREPARING"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/hungama/HungamaVideoView$initPlayer$1;->this$0:Lcom/miui/video/biz/player/online/plugin/hungama/HungamaVideoView;

    invoke-static {v0, v1}, Lcom/miui/video/biz/player/online/plugin/hungama/HungamaVideoView;->access$setMOnPrepared$p(Lcom/miui/video/biz/player/online/plugin/hungama/HungamaVideoView;Z)V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/hungama/HungamaVideoView$initPlayer$1;->this$0:Lcom/miui/video/biz/player/online/plugin/hungama/HungamaVideoView;

    iget-object v1, p0, Lcom/miui/video/biz/player/online/plugin/hungama/HungamaVideoView$initPlayer$1;->this$0:Lcom/miui/video/biz/player/online/plugin/hungama/HungamaVideoView;

    invoke-virtual {v1}, Lcom/miui/video/biz/player/online/plugin/hungama/HungamaVideoView;->getSTATE_PREPARING()I

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/video/biz/player/online/plugin/hungama/HungamaVideoView;->access$setMCurrentState$p(Lcom/miui/video/biz/player/online/plugin/hungama/HungamaVideoView;I)V

    goto/16 :goto_0

    :pswitch_1
    invoke-static {}, Lcom/miui/video/biz/player/online/plugin/hungama/HungamaVideoView;->access$getTAG$cp()Ljava/lang/String;

    move-result-object v0

    const-string v3, "STATE_READY"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/hungama/HungamaVideoView$initPlayer$1;->this$0:Lcom/miui/video/biz/player/online/plugin/hungama/HungamaVideoView;

    invoke-static {v0}, Lcom/miui/video/biz/player/online/plugin/hungama/HungamaVideoView;->access$getMLastPlaybackControllerState$p(Lcom/miui/video/biz/player/online/plugin/hungama/HungamaVideoView;)Lcom/hungama/movies/sdk/Utils/PlaybackControllerState;

    move-result-object v0

    sget-object v3, Lcom/hungama/movies/sdk/Utils/PlaybackControllerState;->STATE_BUFFERING:Lcom/hungama/movies/sdk/Utils/PlaybackControllerState;

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/hungama/HungamaVideoView$initPlayer$1;->this$0:Lcom/miui/video/biz/player/online/plugin/hungama/HungamaVideoView;

    invoke-static {v0}, Lcom/miui/video/biz/player/online/plugin/hungama/HungamaVideoView;->access$getMOnInfoListener$p(Lcom/miui/video/biz/player/online/plugin/hungama/HungamaVideoView;)Lcom/miui/video/player/service/media/IMediaPlayer$OnInfoListener;

    move-result-object v0

    if-eqz v0, :cond_1

    const/16 v3, 0x2be

    invoke-interface {v0, v2, v3, v1}, Lcom/miui/video/player/service/media/IMediaPlayer$OnInfoListener;->onInfo(Lcom/miui/video/player/service/media/IMediaPlayer;II)Z

    :cond_1
    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/hungama/HungamaVideoView$initPlayer$1;->this$0:Lcom/miui/video/biz/player/online/plugin/hungama/HungamaVideoView;

    iget-object v1, p0, Lcom/miui/video/biz/player/online/plugin/hungama/HungamaVideoView$initPlayer$1;->this$0:Lcom/miui/video/biz/player/online/plugin/hungama/HungamaVideoView;

    invoke-virtual {v1}, Lcom/miui/video/biz/player/online/plugin/hungama/HungamaVideoView;->getSTATE_PLAYING()I

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/video/biz/player/online/plugin/hungama/HungamaVideoView;->access$setMCurrentState$p(Lcom/miui/video/biz/player/online/plugin/hungama/HungamaVideoView;I)V

    :cond_2
    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/hungama/HungamaVideoView$initPlayer$1;->this$0:Lcom/miui/video/biz/player/online/plugin/hungama/HungamaVideoView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/video/biz/player/online/plugin/hungama/HungamaVideoView;->access$setMOnPrepared$p(Lcom/miui/video/biz/player/online/plugin/hungama/HungamaVideoView;Z)V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/hungama/HungamaVideoView$initPlayer$1;->this$0:Lcom/miui/video/biz/player/online/plugin/hungama/HungamaVideoView;

    invoke-static {v0}, Lcom/miui/video/biz/player/online/plugin/hungama/HungamaVideoView;->access$getMOnPreparedListener$p(Lcom/miui/video/biz/player/online/plugin/hungama/HungamaVideoView;)Lcom/miui/video/player/service/media/IMediaPlayer$OnPreparedListener;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0, v2}, Lcom/miui/video/player/service/media/IMediaPlayer$OnPreparedListener;->onPrepared(Lcom/miui/video/player/service/media/IMediaPlayer;)V

    :cond_3
    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/hungama/HungamaVideoView$initPlayer$1;->this$0:Lcom/miui/video/biz/player/online/plugin/hungama/HungamaVideoView;

    iget-object v1, p0, Lcom/miui/video/biz/player/online/plugin/hungama/HungamaVideoView$initPlayer$1;->this$0:Lcom/miui/video/biz/player/online/plugin/hungama/HungamaVideoView;

    invoke-virtual {v1}, Lcom/miui/video/biz/player/online/plugin/hungama/HungamaVideoView;->getSTATE_PREPARED()I

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/video/biz/player/online/plugin/hungama/HungamaVideoView;->access$setMCurrentState$p(Lcom/miui/video/biz/player/online/plugin/hungama/HungamaVideoView;I)V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/hungama/HungamaVideoView$initPlayer$1;->this$0:Lcom/miui/video/biz/player/online/plugin/hungama/HungamaVideoView;

    invoke-static {v0}, Lcom/miui/video/biz/player/online/plugin/hungama/HungamaVideoView;->access$getMOnLoadingListener$p(Lcom/miui/video/biz/player/online/plugin/hungama/HungamaVideoView;)Lcom/miui/video/player/service/media/IVideoView$OnVideoLoadingListener;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/miui/video/biz/player/online/plugin/hungama/HungamaVideoView$initPlayer$1;->this$0:Lcom/miui/video/biz/player/online/plugin/hungama/HungamaVideoView;

    check-cast v1, Lcom/miui/video/player/service/media/IVideoView;

    invoke-interface {v0, v1}, Lcom/miui/video/player/service/media/IVideoView$OnVideoLoadingListener;->onVideoHideLoading(Lcom/miui/video/player/service/media/IVideoView;)V

    :cond_4
    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/hungama/HungamaVideoView$initPlayer$1;->this$0:Lcom/miui/video/biz/player/online/plugin/hungama/HungamaVideoView;

    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/plugin/hungama/HungamaVideoView;->isActivityPaused()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {}, Lcom/miui/video/biz/player/online/plugin/hungama/HungamaVideoView;->access$getTAG$cp()Ljava/lang/String;

    move-result-object v0

    const-string v1, "STATE_READY  isActivityPaused"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/hungama/HungamaVideoView$initPlayer$1;->this$0:Lcom/miui/video/biz/player/online/plugin/hungama/HungamaVideoView;

    invoke-static {v0}, Lcom/miui/video/biz/player/online/plugin/hungama/HungamaVideoView;->access$getMPlayer$p(Lcom/miui/video/biz/player/online/plugin/hungama/HungamaVideoView;)Lcom/hungama/movies/sdk/Utils/PlaybackController;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/hungama/movies/sdk/Utils/PlaybackController;->onPause()V

    :cond_5
    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/hungama/HungamaVideoView$initPlayer$1;->this$0:Lcom/miui/video/biz/player/online/plugin/hungama/HungamaVideoView;

    invoke-static {v0}, Lcom/miui/video/biz/player/online/plugin/hungama/HungamaVideoView;->access$getMPlayer$p(Lcom/miui/video/biz/player/online/plugin/hungama/HungamaVideoView;)Lcom/hungama/movies/sdk/Utils/PlaybackController;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/hungama/movies/sdk/Utils/PlaybackController;->pauseMovie()V

    goto :goto_0

    :pswitch_2
    invoke-static {}, Lcom/miui/video/biz/player/online/plugin/hungama/HungamaVideoView;->access$getTAG$cp()Ljava/lang/String;

    move-result-object v0

    const-string v3, "STATE_ENDED"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/hungama/HungamaVideoView$initPlayer$1;->this$0:Lcom/miui/video/biz/player/online/plugin/hungama/HungamaVideoView;

    invoke-static {v0, v1}, Lcom/miui/video/biz/player/online/plugin/hungama/HungamaVideoView;->access$setMPlayingStart$p(Lcom/miui/video/biz/player/online/plugin/hungama/HungamaVideoView;Z)V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/hungama/HungamaVideoView$initPlayer$1;->this$0:Lcom/miui/video/biz/player/online/plugin/hungama/HungamaVideoView;

    invoke-static {v0}, Lcom/miui/video/biz/player/online/plugin/hungama/HungamaVideoView;->access$getMOnCompletionListener$p(Lcom/miui/video/biz/player/online/plugin/hungama/HungamaVideoView;)Lcom/miui/video/player/service/media/IMediaPlayer$OnCompletionListener;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-interface {v0, v2}, Lcom/miui/video/player/service/media/IMediaPlayer$OnCompletionListener;->onCompletion(Lcom/miui/video/player/service/media/IMediaPlayer;)V

    :cond_6
    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/hungama/HungamaVideoView$initPlayer$1;->this$0:Lcom/miui/video/biz/player/online/plugin/hungama/HungamaVideoView;

    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/plugin/hungama/HungamaVideoView;->close()V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/hungama/HungamaVideoView$initPlayer$1;->this$0:Lcom/miui/video/biz/player/online/plugin/hungama/HungamaVideoView;

    iget-object v1, p0, Lcom/miui/video/biz/player/online/plugin/hungama/HungamaVideoView$initPlayer$1;->this$0:Lcom/miui/video/biz/player/online/plugin/hungama/HungamaVideoView;

    invoke-virtual {v1}, Lcom/miui/video/biz/player/online/plugin/hungama/HungamaVideoView;->getSTATE_PLAYBACK_COMPLETED()I

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/video/biz/player/online/plugin/hungama/HungamaVideoView;->access$setMCurrentState$p(Lcom/miui/video/biz/player/online/plugin/hungama/HungamaVideoView;I)V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/hungama/HungamaVideoView$initPlayer$1;->this$0:Lcom/miui/video/biz/player/online/plugin/hungama/HungamaVideoView;

    check-cast v2, Lcom/miui/video/player/service/media/IMediaPlayer$OnCompletionListener;

    invoke-static {v0, v2}, Lcom/miui/video/biz/player/online/plugin/hungama/HungamaVideoView;->access$setMOnCompletionListener$p(Lcom/miui/video/biz/player/online/plugin/hungama/HungamaVideoView;Lcom/miui/video/player/service/media/IMediaPlayer$OnCompletionListener;)V

    goto :goto_0

    :pswitch_3
    invoke-static {}, Lcom/miui/video/biz/player/online/plugin/hungama/HungamaVideoView;->access$getTAG$cp()Ljava/lang/String;

    move-result-object v0

    const-string v1, "STATE_IDLE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_4
    invoke-static {}, Lcom/miui/video/biz/player/online/plugin/hungama/HungamaVideoView;->access$getTAG$cp()Ljava/lang/String;

    move-result-object v0

    const-string v3, "STATE_BUFFERING"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/hungama/HungamaVideoView$initPlayer$1;->this$0:Lcom/miui/video/biz/player/online/plugin/hungama/HungamaVideoView;

    invoke-static {v0}, Lcom/miui/video/biz/player/online/plugin/hungama/HungamaVideoView;->access$getMOnInfoListener$p(Lcom/miui/video/biz/player/online/plugin/hungama/HungamaVideoView;)Lcom/miui/video/player/service/media/IMediaPlayer$OnInfoListener;

    move-result-object v0

    if-eqz v0, :cond_7

    const/16 v3, 0x2bd

    invoke-interface {v0, v2, v3, v1}, Lcom/miui/video/player/service/media/IMediaPlayer$OnInfoListener;->onInfo(Lcom/miui/video/player/service/media/IMediaPlayer;II)Z

    :cond_7
    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/hungama/HungamaVideoView$initPlayer$1;->this$0:Lcom/miui/video/biz/player/online/plugin/hungama/HungamaVideoView;

    invoke-static {v0}, Lcom/miui/video/biz/player/online/plugin/hungama/HungamaVideoView;->access$getMOnLoadingListener$p(Lcom/miui/video/biz/player/online/plugin/hungama/HungamaVideoView;)Lcom/miui/video/player/service/media/IVideoView$OnVideoLoadingListener;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v1, p0, Lcom/miui/video/biz/player/online/plugin/hungama/HungamaVideoView$initPlayer$1;->this$0:Lcom/miui/video/biz/player/online/plugin/hungama/HungamaVideoView;

    check-cast v1, Lcom/miui/video/player/service/media/IVideoView;

    invoke-interface {v0, v1}, Lcom/miui/video/player/service/media/IVideoView$OnVideoLoadingListener;->onVideoLoading(Lcom/miui/video/player/service/media/IVideoView;)V

    :cond_8
    :goto_0
    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/hungama/HungamaVideoView$initPlayer$1;->this$0:Lcom/miui/video/biz/player/online/plugin/hungama/HungamaVideoView;

    invoke-static {v0, p1}, Lcom/miui/video/biz/player/online/plugin/hungama/HungamaVideoView;->access$setMLastPlaybackControllerState$p(Lcom/miui/video/biz/player/online/plugin/hungama/HungamaVideoView;Lcom/hungama/movies/sdk/Utils/PlaybackControllerState;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
