.class Lcom/kaltura/playkit/player/PlayerController$3;
.super Ljava/lang/Object;
.source "PlayerController.java"

# interfaces
.implements Lcom/kaltura/playkit/player/PlayerEngine$EventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kaltura/playkit/player/PlayerController;->initEventListener()Lcom/kaltura/playkit/player/PlayerEngine$EventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kaltura/playkit/player/PlayerController;


# direct methods
.method constructor <init>(Lcom/kaltura/playkit/player/PlayerController;)V
    .locals 0

    iput-object p1, p0, Lcom/kaltura/playkit/player/PlayerController$3;->this$0:Lcom/kaltura/playkit/player/PlayerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Lcom/kaltura/playkit/PlayerEvent$Type;)V
    .locals 6

    iget-object v0, p0, Lcom/kaltura/playkit/player/PlayerController$3;->this$0:Lcom/kaltura/playkit/player/PlayerController;

    invoke-static {v0}, Lcom/kaltura/playkit/player/PlayerController;->access$300(Lcom/kaltura/playkit/player/PlayerController;)Lcom/kaltura/playkit/PKEvent$Listener;

    move-result-object v0

    if-eqz v0, :cond_7

    sget-object v0, Lcom/kaltura/playkit/player/PlayerController$5;->$SwitchMap$com$kaltura$playkit$PlayerEvent$Type:[I

    invoke-virtual {p1}, Lcom/kaltura/playkit/PlayerEvent$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lcom/kaltura/playkit/PlayerEvent$Generic;

    invoke-direct {v0, p1}, Lcom/kaltura/playkit/PlayerEvent$Generic;-><init>(Lcom/kaltura/playkit/PlayerEvent$Type;)V

    :goto_0
    move-object p1, v0

    goto/16 :goto_2

    :pswitch_0
    new-instance p1, Lcom/kaltura/playkit/PlayerEvent$PlaybackRateChanged;

    iget-object v0, p0, Lcom/kaltura/playkit/player/PlayerController$3;->this$0:Lcom/kaltura/playkit/player/PlayerController;

    invoke-static {v0}, Lcom/kaltura/playkit/player/PlayerController;->access$1000(Lcom/kaltura/playkit/player/PlayerController;)Lcom/kaltura/playkit/player/PlayerEngine;

    move-result-object v0

    invoke-interface {v0}, Lcom/kaltura/playkit/player/PlayerEngine;->getPlaybackRate()F

    move-result v0

    invoke-direct {p1, v0}, Lcom/kaltura/playkit/PlayerEvent$PlaybackRateChanged;-><init>(F)V

    goto/16 :goto_2

    :pswitch_1
    new-instance p1, Lcom/kaltura/playkit/PlayerEvent$TextTrackChanged;

    iget-object v0, p0, Lcom/kaltura/playkit/player/PlayerController$3;->this$0:Lcom/kaltura/playkit/player/PlayerController;

    invoke-static {v0}, Lcom/kaltura/playkit/player/PlayerController;->access$1000(Lcom/kaltura/playkit/player/PlayerController;)Lcom/kaltura/playkit/player/PlayerEngine;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/kaltura/playkit/player/PlayerEngine;->getLastSelectedTrack(I)Lcom/kaltura/playkit/player/BaseTrack;

    move-result-object v0

    check-cast v0, Lcom/kaltura/playkit/player/TextTrack;

    invoke-direct {p1, v0}, Lcom/kaltura/playkit/PlayerEvent$TextTrackChanged;-><init>(Lcom/kaltura/playkit/player/TextTrack;)V

    goto/16 :goto_2

    :pswitch_2
    new-instance p1, Lcom/kaltura/playkit/PlayerEvent$AudioTrackChanged;

    iget-object v0, p0, Lcom/kaltura/playkit/player/PlayerController$3;->this$0:Lcom/kaltura/playkit/player/PlayerController;

    invoke-static {v0}, Lcom/kaltura/playkit/player/PlayerController;->access$1000(Lcom/kaltura/playkit/player/PlayerController;)Lcom/kaltura/playkit/player/PlayerEngine;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/kaltura/playkit/player/PlayerEngine;->getLastSelectedTrack(I)Lcom/kaltura/playkit/player/BaseTrack;

    move-result-object v0

    check-cast v0, Lcom/kaltura/playkit/player/AudioTrack;

    invoke-direct {p1, v0}, Lcom/kaltura/playkit/PlayerEvent$AudioTrackChanged;-><init>(Lcom/kaltura/playkit/player/AudioTrack;)V

    goto/16 :goto_2

    :pswitch_3
    new-instance p1, Lcom/kaltura/playkit/PlayerEvent$VideoTrackChanged;

    iget-object v0, p0, Lcom/kaltura/playkit/player/PlayerController$3;->this$0:Lcom/kaltura/playkit/player/PlayerController;

    invoke-static {v0}, Lcom/kaltura/playkit/player/PlayerController;->access$1000(Lcom/kaltura/playkit/player/PlayerController;)Lcom/kaltura/playkit/player/PlayerEngine;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/kaltura/playkit/player/PlayerEngine;->getLastSelectedTrack(I)Lcom/kaltura/playkit/player/BaseTrack;

    move-result-object v0

    check-cast v0, Lcom/kaltura/playkit/player/VideoTrack;

    invoke-direct {p1, v0}, Lcom/kaltura/playkit/PlayerEvent$VideoTrackChanged;-><init>(Lcom/kaltura/playkit/player/VideoTrack;)V

    goto/16 :goto_2

    :pswitch_4
    new-instance p1, Lcom/kaltura/playkit/PlayerEvent$Seeking;

    iget-object v0, p0, Lcom/kaltura/playkit/player/PlayerController$3;->this$0:Lcom/kaltura/playkit/player/PlayerController;

    invoke-static {v0}, Lcom/kaltura/playkit/player/PlayerController;->access$1300(Lcom/kaltura/playkit/player/PlayerController;)J

    move-result-wide v0

    invoke-direct {p1, v0, v1}, Lcom/kaltura/playkit/PlayerEvent$Seeking;-><init>(J)V

    goto/16 :goto_2

    :pswitch_5
    new-instance p1, Lcom/kaltura/playkit/PlayerEvent$SourceSelected;

    iget-object v0, p0, Lcom/kaltura/playkit/player/PlayerController$3;->this$0:Lcom/kaltura/playkit/player/PlayerController;

    invoke-static {v0}, Lcom/kaltura/playkit/player/PlayerController;->access$1200(Lcom/kaltura/playkit/player/PlayerController;)Lcom/kaltura/playkit/player/PKMediaSourceConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/kaltura/playkit/player/PKMediaSourceConfig;->mediaSource:Lcom/kaltura/playkit/PKMediaSource;

    invoke-direct {p1, v0}, Lcom/kaltura/playkit/PlayerEvent$SourceSelected;-><init>(Lcom/kaltura/playkit/PKMediaSource;)V

    goto/16 :goto_2

    :pswitch_6
    iget-object p1, p0, Lcom/kaltura/playkit/player/PlayerController$3;->this$0:Lcom/kaltura/playkit/player/PlayerController;

    invoke-static {p1}, Lcom/kaltura/playkit/player/PlayerController;->access$1000(Lcom/kaltura/playkit/player/PlayerController;)Lcom/kaltura/playkit/player/PlayerEngine;

    move-result-object p1

    invoke-interface {p1}, Lcom/kaltura/playkit/player/PlayerEngine;->getMetadata()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/kaltura/playkit/player/PlayerController$3;->this$0:Lcom/kaltura/playkit/player/PlayerController;

    invoke-static {p1}, Lcom/kaltura/playkit/player/PlayerController;->access$1000(Lcom/kaltura/playkit/player/PlayerController;)Lcom/kaltura/playkit/player/PlayerEngine;

    move-result-object p1

    invoke-interface {p1}, Lcom/kaltura/playkit/player/PlayerEngine;->getMetadata()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_1

    :cond_0
    new-instance p1, Lcom/kaltura/playkit/PlayerEvent$MetadataAvailable;

    iget-object v0, p0, Lcom/kaltura/playkit/player/PlayerController$3;->this$0:Lcom/kaltura/playkit/player/PlayerController;

    invoke-static {v0}, Lcom/kaltura/playkit/player/PlayerController;->access$1000(Lcom/kaltura/playkit/player/PlayerController;)Lcom/kaltura/playkit/player/PlayerEngine;

    move-result-object v0

    invoke-interface {v0}, Lcom/kaltura/playkit/player/PlayerEngine;->getMetadata()Ljava/util/List;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/kaltura/playkit/PlayerEvent$MetadataAvailable;-><init>(Ljava/util/List;)V

    goto/16 :goto_2

    :cond_1
    :goto_1
    invoke-static {}, Lcom/kaltura/playkit/player/PlayerController;->access$1100()Lcom/kaltura/playkit/PKLog;

    move-result-object p1

    const-string v0, "METADATA_AVAILABLE event received, but player engine have no metadata."

    invoke-virtual {p1, v0}, Lcom/kaltura/playkit/PKLog;->w(Ljava/lang/String;)V

    return-void

    :pswitch_7
    iget-object p1, p0, Lcom/kaltura/playkit/player/PlayerController$3;->this$0:Lcom/kaltura/playkit/player/PlayerController;

    invoke-static {p1}, Lcom/kaltura/playkit/player/PlayerController;->access$1000(Lcom/kaltura/playkit/player/PlayerController;)Lcom/kaltura/playkit/player/PlayerEngine;

    move-result-object p1

    invoke-interface {p1}, Lcom/kaltura/playkit/player/PlayerEngine;->getCurrentError()Lcom/kaltura/playkit/PKError;

    move-result-object p1

    if-nez p1, :cond_2

    invoke-static {}, Lcom/kaltura/playkit/player/PlayerController;->access$1100()Lcom/kaltura/playkit/PKLog;

    move-result-object p1

    const-string v0, "can not send error event"

    invoke-virtual {p1, v0}, Lcom/kaltura/playkit/PKLog;->e(Ljava/lang/String;)V

    return-void

    :cond_2
    new-instance p1, Lcom/kaltura/playkit/PlayerEvent$Error;

    iget-object v0, p0, Lcom/kaltura/playkit/player/PlayerController$3;->this$0:Lcom/kaltura/playkit/player/PlayerController;

    invoke-static {v0}, Lcom/kaltura/playkit/player/PlayerController;->access$1000(Lcom/kaltura/playkit/player/PlayerController;)Lcom/kaltura/playkit/player/PlayerEngine;

    move-result-object v0

    invoke-interface {v0}, Lcom/kaltura/playkit/player/PlayerEngine;->getCurrentError()Lcom/kaltura/playkit/PKError;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/kaltura/playkit/PlayerEvent$Error;-><init>(Lcom/kaltura/playkit/PKError;)V

    iget-object v0, p0, Lcom/kaltura/playkit/player/PlayerController$3;->this$0:Lcom/kaltura/playkit/player/PlayerController;

    invoke-static {v0}, Lcom/kaltura/playkit/player/PlayerController;->access$400(Lcom/kaltura/playkit/player/PlayerController;)V

    goto/16 :goto_2

    :pswitch_8
    new-instance p1, Lcom/kaltura/playkit/PlayerEvent$PlaybackInfoUpdated;

    iget-object v0, p0, Lcom/kaltura/playkit/player/PlayerController$3;->this$0:Lcom/kaltura/playkit/player/PlayerController;

    invoke-static {v0}, Lcom/kaltura/playkit/player/PlayerController;->access$1000(Lcom/kaltura/playkit/player/PlayerController;)Lcom/kaltura/playkit/player/PlayerEngine;

    move-result-object v0

    invoke-interface {v0}, Lcom/kaltura/playkit/player/PlayerEngine;->getPlaybackInfo()Lcom/kaltura/playkit/PlaybackInfo;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/kaltura/playkit/PlayerEvent$PlaybackInfoUpdated;-><init>(Lcom/kaltura/playkit/PlaybackInfo;)V

    goto/16 :goto_2

    :pswitch_9
    new-instance p1, Lcom/kaltura/playkit/PlayerEvent$VolumeChanged;

    iget-object v0, p0, Lcom/kaltura/playkit/player/PlayerController$3;->this$0:Lcom/kaltura/playkit/player/PlayerController;

    invoke-static {v0}, Lcom/kaltura/playkit/player/PlayerController;->access$1000(Lcom/kaltura/playkit/player/PlayerController;)Lcom/kaltura/playkit/player/PlayerEngine;

    move-result-object v0

    invoke-interface {v0}, Lcom/kaltura/playkit/player/PlayerEngine;->getVolume()F

    move-result v0

    invoke-direct {p1, v0}, Lcom/kaltura/playkit/PlayerEvent$VolumeChanged;-><init>(F)V

    goto/16 :goto_2

    :pswitch_a
    new-instance p1, Lcom/kaltura/playkit/PlayerEvent$TracksAvailable;

    iget-object v0, p0, Lcom/kaltura/playkit/player/PlayerController$3;->this$0:Lcom/kaltura/playkit/player/PlayerController;

    invoke-static {v0}, Lcom/kaltura/playkit/player/PlayerController;->access$1000(Lcom/kaltura/playkit/player/PlayerController;)Lcom/kaltura/playkit/player/PlayerEngine;

    move-result-object v0

    invoke-interface {v0}, Lcom/kaltura/playkit/player/PlayerEngine;->getPKTracks()Lcom/kaltura/playkit/player/PKTracks;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/kaltura/playkit/PlayerEvent$TracksAvailable;-><init>(Lcom/kaltura/playkit/player/PKTracks;)V

    goto/16 :goto_2

    :pswitch_b
    new-instance p1, Lcom/kaltura/playkit/PlayerEvent$DurationChanged;

    iget-object v0, p0, Lcom/kaltura/playkit/player/PlayerController$3;->this$0:Lcom/kaltura/playkit/player/PlayerController;

    invoke-virtual {v0}, Lcom/kaltura/playkit/player/PlayerController;->getDuration()J

    move-result-wide v2

    invoke-direct {p1, v2, v3}, Lcom/kaltura/playkit/PlayerEvent$DurationChanged;-><init>(J)V

    iget-object v0, p0, Lcom/kaltura/playkit/player/PlayerController$3;->this$0:Lcom/kaltura/playkit/player/PlayerController;

    invoke-virtual {v0}, Lcom/kaltura/playkit/player/PlayerController;->getDuration()J

    move-result-wide v2

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v2, v4

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/kaltura/playkit/player/PlayerController$3;->this$0:Lcom/kaltura/playkit/player/PlayerController;

    invoke-static {v0}, Lcom/kaltura/playkit/player/PlayerController;->access$500(Lcom/kaltura/playkit/player/PlayerController;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/kaltura/playkit/player/PlayerController$3;->this$0:Lcom/kaltura/playkit/player/PlayerController;

    invoke-static {v0}, Lcom/kaltura/playkit/player/PlayerController;->access$600(Lcom/kaltura/playkit/player/PlayerController;)Lcom/kaltura/playkit/PKMediaConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kaltura/playkit/PKMediaConfig;->getStartPosition()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/kaltura/playkit/player/PlayerController$3;->this$0:Lcom/kaltura/playkit/player/PlayerController;

    invoke-static {v0}, Lcom/kaltura/playkit/player/PlayerController;->access$700(Lcom/kaltura/playkit/player/PlayerController;)Z

    move-result v0

    const-wide/16 v2, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/kaltura/playkit/player/PlayerController$3;->this$0:Lcom/kaltura/playkit/player/PlayerController;

    invoke-static {v0}, Lcom/kaltura/playkit/player/PlayerController;->access$600(Lcom/kaltura/playkit/player/PlayerController;)Lcom/kaltura/playkit/PKMediaConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kaltura/playkit/PKMediaConfig;->getStartPosition()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v0, v4, v2

    if-eqz v0, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/kaltura/playkit/player/PlayerController$3;->this$0:Lcom/kaltura/playkit/player/PlayerController;

    invoke-static {v0}, Lcom/kaltura/playkit/player/PlayerController;->access$600(Lcom/kaltura/playkit/player/PlayerController;)Lcom/kaltura/playkit/PKMediaConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kaltura/playkit/PKMediaConfig;->getStartPosition()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v0, v4, v2

    if-lez v0, :cond_5

    :cond_4
    iget-object v0, p0, Lcom/kaltura/playkit/player/PlayerController$3;->this$0:Lcom/kaltura/playkit/player/PlayerController;

    iget-object v2, p0, Lcom/kaltura/playkit/player/PlayerController$3;->this$0:Lcom/kaltura/playkit/player/PlayerController;

    invoke-static {v2}, Lcom/kaltura/playkit/player/PlayerController;->access$600(Lcom/kaltura/playkit/player/PlayerController;)Lcom/kaltura/playkit/PKMediaConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kaltura/playkit/PKMediaConfig;->getStartPosition()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long v2, v2, v4

    invoke-static {v0, v2, v3}, Lcom/kaltura/playkit/player/PlayerController;->access$800(Lcom/kaltura/playkit/player/PlayerController;J)V

    :cond_5
    iget-object v0, p0, Lcom/kaltura/playkit/player/PlayerController$3;->this$0:Lcom/kaltura/playkit/player/PlayerController;

    invoke-static {v0, v1}, Lcom/kaltura/playkit/player/PlayerController;->access$502(Lcom/kaltura/playkit/player/PlayerController;Z)Z

    iget-object v0, p0, Lcom/kaltura/playkit/player/PlayerController$3;->this$0:Lcom/kaltura/playkit/player/PlayerController;

    invoke-static {v0, v1}, Lcom/kaltura/playkit/player/PlayerController;->access$902(Lcom/kaltura/playkit/player/PlayerController;Z)Z

    goto :goto_2

    :pswitch_c
    new-instance v0, Lcom/kaltura/playkit/PlayerEvent$Generic;

    invoke-direct {v0, p1}, Lcom/kaltura/playkit/PlayerEvent$Generic;-><init>(Lcom/kaltura/playkit/PlayerEvent$Type;)V

    iget-object p1, p0, Lcom/kaltura/playkit/player/PlayerController$3;->this$0:Lcom/kaltura/playkit/player/PlayerController;

    invoke-static {p1}, Lcom/kaltura/playkit/player/PlayerController;->access$400(Lcom/kaltura/playkit/player/PlayerController;)V

    goto/16 :goto_0

    :pswitch_d
    iget-object v0, p0, Lcom/kaltura/playkit/player/PlayerController$3;->this$0:Lcom/kaltura/playkit/player/PlayerController;

    invoke-static {v0}, Lcom/kaltura/playkit/player/PlayerController;->access$200(Lcom/kaltura/playkit/player/PlayerController;)V

    new-instance v0, Lcom/kaltura/playkit/PlayerEvent$Generic;

    invoke-direct {v0, p1}, Lcom/kaltura/playkit/PlayerEvent$Generic;-><init>(Lcom/kaltura/playkit/PlayerEvent$Type;)V

    goto/16 :goto_0

    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/kaltura/playkit/player/PlayerController$3;->this$0:Lcom/kaltura/playkit/player/PlayerController;

    invoke-static {v0}, Lcom/kaltura/playkit/player/PlayerController;->access$300(Lcom/kaltura/playkit/player/PlayerController;)Lcom/kaltura/playkit/PKEvent$Listener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/kaltura/playkit/PKEvent$Listener;->onEvent(Lcom/kaltura/playkit/PKEvent;)V

    :cond_7
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
