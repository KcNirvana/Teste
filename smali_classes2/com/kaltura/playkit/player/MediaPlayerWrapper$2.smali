.class Lcom/kaltura/playkit/player/MediaPlayerWrapper$2;
.super Ljava/lang/Object;
.source "MediaPlayerWrapper.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnSeekCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kaltura/playkit/player/MediaPlayerWrapper;->onPrepared(Landroid/media/MediaPlayer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kaltura/playkit/player/MediaPlayerWrapper;


# direct methods
.method constructor <init>(Lcom/kaltura/playkit/player/MediaPlayerWrapper;)V
    .locals 0

    iput-object p1, p0, Lcom/kaltura/playkit/player/MediaPlayerWrapper$2;->this$0:Lcom/kaltura/playkit/player/MediaPlayerWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSeekComplete(Landroid/media/MediaPlayer;)V
    .locals 4

    invoke-static {}, Lcom/kaltura/playkit/player/MediaPlayerWrapper;->access$100()Lcom/kaltura/playkit/PKLog;

    move-result-object v0

    const-string v1, "onSeekComplete"

    invoke-virtual {v0, v1}, Lcom/kaltura/playkit/PKLog;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kaltura/playkit/player/MediaPlayerWrapper$2;->this$0:Lcom/kaltura/playkit/player/MediaPlayerWrapper;

    invoke-virtual {v0}, Lcom/kaltura/playkit/player/MediaPlayerWrapper;->getCurrentPosition()J

    move-result-wide v0

    iget-object v2, p0, Lcom/kaltura/playkit/player/MediaPlayerWrapper$2;->this$0:Lcom/kaltura/playkit/player/MediaPlayerWrapper;

    invoke-virtual {v2}, Lcom/kaltura/playkit/player/MediaPlayerWrapper;->getDuration()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/kaltura/playkit/player/MediaPlayerWrapper$2;->this$0:Lcom/kaltura/playkit/player/MediaPlayerWrapper;

    sget-object v1, Lcom/kaltura/playkit/PlayerEvent$Type;->CAN_PLAY:Lcom/kaltura/playkit/PlayerEvent$Type;

    invoke-static {v0, v1}, Lcom/kaltura/playkit/player/MediaPlayerWrapper;->access$000(Lcom/kaltura/playkit/player/MediaPlayerWrapper;Lcom/kaltura/playkit/PlayerEvent$Type;)V

    iget-object v0, p0, Lcom/kaltura/playkit/player/MediaPlayerWrapper$2;->this$0:Lcom/kaltura/playkit/player/MediaPlayerWrapper;

    sget-object v1, Lcom/kaltura/playkit/PlayerState;->READY:Lcom/kaltura/playkit/PlayerState;

    invoke-static {v0, v1}, Lcom/kaltura/playkit/player/MediaPlayerWrapper;->access$200(Lcom/kaltura/playkit/player/MediaPlayerWrapper;Lcom/kaltura/playkit/PlayerState;)V

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/kaltura/playkit/player/MediaPlayerWrapper$2;->this$0:Lcom/kaltura/playkit/player/MediaPlayerWrapper;

    sget-object v0, Lcom/kaltura/playkit/PlayerEvent$Type;->PLAYING:Lcom/kaltura/playkit/PlayerEvent$Type;

    invoke-static {p1, v0}, Lcom/kaltura/playkit/player/MediaPlayerWrapper;->access$000(Lcom/kaltura/playkit/player/MediaPlayerWrapper;Lcom/kaltura/playkit/PlayerEvent$Type;)V

    :cond_0
    return-void
.end method
