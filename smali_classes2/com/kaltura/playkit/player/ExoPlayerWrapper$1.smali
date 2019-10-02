.class Lcom/kaltura/playkit/player/ExoPlayerWrapper$1;
.super Ljava/lang/Object;
.source "ExoPlayerWrapper.java"

# interfaces
.implements Lcom/kaltura/playkit/player/TrackSelectionHelper$TracksInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kaltura/playkit/player/ExoPlayerWrapper;->initTracksInfoListener()Lcom/kaltura/playkit/player/TrackSelectionHelper$TracksInfoListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kaltura/playkit/player/ExoPlayerWrapper;


# direct methods
.method constructor <init>(Lcom/kaltura/playkit/player/ExoPlayerWrapper;)V
    .locals 0

    iput-object p1, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper$1;->this$0:Lcom/kaltura/playkit/player/ExoPlayerWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioTrackChanged()V
    .locals 2

    iget-object v0, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper$1;->this$0:Lcom/kaltura/playkit/player/ExoPlayerWrapper;

    sget-object v1, Lcom/kaltura/playkit/PlayerEvent$Type;->AUDIO_TRACK_CHANGED:Lcom/kaltura/playkit/PlayerEvent$Type;

    invoke-static {v0, v1}, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->access$600(Lcom/kaltura/playkit/player/ExoPlayerWrapper;Lcom/kaltura/playkit/PlayerEvent$Type;)V

    iget-object v0, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper$1;->this$0:Lcom/kaltura/playkit/player/ExoPlayerWrapper;

    sget-object v1, Lcom/kaltura/playkit/PlayerEvent$Type;->PLAYBACK_INFO_UPDATED:Lcom/kaltura/playkit/PlayerEvent$Type;

    invoke-static {v0, v1}, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->access$600(Lcom/kaltura/playkit/player/ExoPlayerWrapper;Lcom/kaltura/playkit/PlayerEvent$Type;)V

    return-void
.end method

.method public onRelease([Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper$1;->this$0:Lcom/kaltura/playkit/player/ExoPlayerWrapper;

    invoke-static {v0, p1}, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->access$502(Lcom/kaltura/playkit/player/ExoPlayerWrapper;[Ljava/lang/String;)[Ljava/lang/String;

    return-void
.end method

.method public onTextTrackChanged()V
    .locals 2

    iget-object v0, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper$1;->this$0:Lcom/kaltura/playkit/player/ExoPlayerWrapper;

    sget-object v1, Lcom/kaltura/playkit/PlayerEvent$Type;->TEXT_TRACK_CHANGED:Lcom/kaltura/playkit/PlayerEvent$Type;

    invoke-static {v0, v1}, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->access$600(Lcom/kaltura/playkit/player/ExoPlayerWrapper;Lcom/kaltura/playkit/PlayerEvent$Type;)V

    return-void
.end method

.method public onTracksInfoReady(Lcom/kaltura/playkit/player/PKTracks;)V
    .locals 1

    iget-object v0, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper$1;->this$0:Lcom/kaltura/playkit/player/ExoPlayerWrapper;

    invoke-static {v0, p1}, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->access$002(Lcom/kaltura/playkit/player/ExoPlayerWrapper;Lcom/kaltura/playkit/player/PKTracks;)Lcom/kaltura/playkit/player/PKTracks;

    iget-object p1, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper$1;->this$0:Lcom/kaltura/playkit/player/ExoPlayerWrapper;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->access$102(Lcom/kaltura/playkit/player/ExoPlayerWrapper;Z)Z

    iget-object p1, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper$1;->this$0:Lcom/kaltura/playkit/player/ExoPlayerWrapper;

    sget-object v0, Lcom/kaltura/playkit/PlayerEvent$Type;->TRACKS_AVAILABLE:Lcom/kaltura/playkit/PlayerEvent$Type;

    invoke-static {p1, v0}, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->access$200(Lcom/kaltura/playkit/player/ExoPlayerWrapper;Lcom/kaltura/playkit/PlayerEvent$Type;)V

    iget-object p1, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper$1;->this$0:Lcom/kaltura/playkit/player/ExoPlayerWrapper;

    invoke-static {p1}, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->access$300(Lcom/kaltura/playkit/player/ExoPlayerWrapper;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper$1;->this$0:Lcom/kaltura/playkit/player/ExoPlayerWrapper;

    invoke-static {p1}, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->access$400(Lcom/kaltura/playkit/player/ExoPlayerWrapper;)V

    iget-object p1, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper$1;->this$0:Lcom/kaltura/playkit/player/ExoPlayerWrapper;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->access$302(Lcom/kaltura/playkit/player/ExoPlayerWrapper;Z)Z

    :cond_0
    return-void
.end method

.method public onVideoTrackChanged()V
    .locals 2

    iget-object v0, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper$1;->this$0:Lcom/kaltura/playkit/player/ExoPlayerWrapper;

    sget-object v1, Lcom/kaltura/playkit/PlayerEvent$Type;->VIDEO_TRACK_CHANGED:Lcom/kaltura/playkit/PlayerEvent$Type;

    invoke-static {v0, v1}, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->access$600(Lcom/kaltura/playkit/player/ExoPlayerWrapper;Lcom/kaltura/playkit/PlayerEvent$Type;)V

    iget-object v0, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper$1;->this$0:Lcom/kaltura/playkit/player/ExoPlayerWrapper;

    sget-object v1, Lcom/kaltura/playkit/PlayerEvent$Type;->PLAYBACK_INFO_UPDATED:Lcom/kaltura/playkit/PlayerEvent$Type;

    invoke-static {v0, v1}, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->access$600(Lcom/kaltura/playkit/player/ExoPlayerWrapper;Lcom/kaltura/playkit/PlayerEvent$Type;)V

    return-void
.end method
