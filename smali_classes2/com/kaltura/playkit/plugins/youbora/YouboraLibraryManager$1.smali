.class Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager$1;
.super Ljava/lang/Object;
.source "YouboraLibraryManager.java"

# interfaces
.implements Lcom/kaltura/playkit/PKEvent$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager;


# direct methods
.method constructor <init>(Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager;)V
    .locals 0

    iput-object p1, p0, Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager$1;->this$0:Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Lcom/kaltura/playkit/PKEvent;)V
    .locals 7

    invoke-interface {p1}, Lcom/kaltura/playkit/PKEvent;->eventType()Ljava/lang/Enum;

    move-result-object v0

    sget-object v1, Lcom/kaltura/playkit/PlayerEvent$Type;->PLAYBACK_INFO_UPDATED:Lcom/kaltura/playkit/PlayerEvent$Type;

    if-ne v0, v1, :cond_0

    check-cast p1, Lcom/kaltura/playkit/PlayerEvent$PlaybackInfoUpdated;

    iget-object p1, p1, Lcom/kaltura/playkit/PlayerEvent$PlaybackInfoUpdated;->playbackInfo:Lcom/kaltura/playkit/PlaybackInfo;

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager$1;->this$0:Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager;

    invoke-virtual {p1}, Lcom/kaltura/playkit/PlaybackInfo;->getVideoBitrate()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->doubleValue()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager;->access$002(Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager;Ljava/lang/Double;)Ljava/lang/Double;

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager$1;->this$0:Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager;

    invoke-virtual {p1}, Lcom/kaltura/playkit/PlaybackInfo;->getVideoThroughput()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->doubleValue()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager;->access$102(Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager;Ljava/lang/Double;)Ljava/lang/Double;

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager$1;->this$0:Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager;

    iget-object v1, p0, Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager$1;->this$0:Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager;

    iget-object v2, p0, Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager$1;->this$0:Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager;

    invoke-static {v2}, Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager;->access$000(Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager;)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p1}, Lcom/kaltura/playkit/PlaybackInfo;->getVideoWidth()J

    move-result-wide v4

    long-to-int v4, v4

    invoke-virtual {p1}, Lcom/kaltura/playkit/PlaybackInfo;->getVideoHeight()J

    move-result-wide v5

    long-to-int p1, v5

    invoke-virtual {v1, v2, v3, v4, p1}, Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager;->generateRendition(DII)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager;->access$202(Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager;Ljava/lang/String;)Ljava/lang/String;

    return-void

    :cond_0
    instance-of v0, p1, Lcom/kaltura/playkit/PlayerEvent;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager$1;->this$0:Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager;

    invoke-static {v0}, Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager;->access$300(Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager;)Lcom/npaw/youbora/youboralib/managers/ViewManager;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Lcom/kaltura/playkit/PKEvent;->eventType()Ljava/lang/Enum;

    move-result-object v0

    sget-object v1, Lcom/kaltura/playkit/PlayerEvent$Type;->PLAYHEAD_UPDATED:Lcom/kaltura/playkit/PlayerEvent$Type;

    if-eq v0, v1, :cond_1

    invoke-static {}, Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager;->access$400()Lcom/kaltura/playkit/PKLog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "New PKEvent = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/kaltura/playkit/PKEvent;->eventType()Ljava/lang/Enum;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kaltura/playkit/PKLog;->d(Ljava/lang/String;)V

    :cond_1
    sget-object v0, Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager$2;->$SwitchMap$com$kaltura$playkit$PlayerEvent$Type:[I

    move-object v1, p1

    check-cast v1, Lcom/kaltura/playkit/PlayerEvent;

    iget-object v2, v1, Lcom/kaltura/playkit/PlayerEvent;->type:Lcom/kaltura/playkit/PlayerEvent$Type;

    invoke-virtual {v2}, Lcom/kaltura/playkit/PlayerEvent$Type;->ordinal()I

    move-result v2

    aget v0, v0, v2

    const/4 v2, 0x0

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    move-object v0, p1

    check-cast v0, Lcom/kaltura/playkit/PlayerEvent$SourceSelected;

    iget-object v2, p0, Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager$1;->this$0:Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager;

    iget-object v0, v0, Lcom/kaltura/playkit/PlayerEvent$SourceSelected;->source:Lcom/kaltura/playkit/PKMediaSource;

    invoke-virtual {v0}, Lcom/kaltura/playkit/PKMediaSource;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager;->access$902(Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager$1;->this$0:Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager;

    invoke-virtual {v0}, Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager;->seekingHandler()V

    goto/16 :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager$1;->this$0:Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager;

    invoke-virtual {v0}, Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager;->seekedHandler()V

    goto/16 :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager$1;->this$0:Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager;

    invoke-static {v0}, Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager;->access$600(Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager$1;->this$0:Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager;

    invoke-static {v0, v2}, Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager;->access$602(Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager;Z)Z

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager$1;->this$0:Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager;

    invoke-virtual {v0}, Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager;->playHandler()V

    :cond_2
    iget-object v0, p0, Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager$1;->this$0:Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager;

    invoke-virtual {v0}, Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager;->playingHandler()V

    goto/16 :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager$1;->this$0:Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager;

    invoke-static {v0}, Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager;->access$600(Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager$1;->this$0:Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager;

    invoke-virtual {v0}, Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager;->resumeHandler()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager$1;->this$0:Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager;

    invoke-static {v0, v2}, Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager;->access$602(Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager;Z)Z

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager$1;->this$0:Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager;

    invoke-virtual {v0}, Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager;->playHandler()V

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager$1;->this$0:Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager;

    invoke-virtual {v0}, Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager;->pauseHandler()V

    goto :goto_0

    :pswitch_6
    iget-object v0, p0, Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager$1;->this$0:Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager;

    invoke-static {v0, p1}, Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager;->access$800(Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager;Lcom/kaltura/playkit/PKEvent;)V

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager$1;->this$0:Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager;

    invoke-static {v0, v3}, Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager;->access$702(Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager;Lcom/kaltura/playkit/plugins/ads/AdCuePoints;)Lcom/kaltura/playkit/plugins/ads/AdCuePoints;

    goto :goto_0

    :pswitch_7
    iget-object v0, p0, Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager$1;->this$0:Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager;

    invoke-static {v0}, Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager;->access$600(Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager$1;->this$0:Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager;

    invoke-static {v0}, Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager;->access$700(Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager;)Lcom/kaltura/playkit/plugins/ads/AdCuePoints;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager$1;->this$0:Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager;

    invoke-static {v0}, Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager;->access$700(Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager;)Lcom/kaltura/playkit/plugins/ads/AdCuePoints;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kaltura/playkit/plugins/ads/AdCuePoints;->hasPostRoll()Z

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    iget-object v0, p0, Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager$1;->this$0:Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager;

    invoke-virtual {v0}, Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager;->endedHandler()V

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager$1;->this$0:Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager;->access$602(Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager;Z)Z

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager$1;->this$0:Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager;

    invoke-static {v0, v3}, Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager;->access$702(Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager;Lcom/kaltura/playkit/plugins/ads/AdCuePoints;)Lcom/kaltura/playkit/plugins/ads/AdCuePoints;

    goto :goto_0

    :pswitch_8
    iget-object v0, p0, Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager$1;->this$0:Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager;

    move-object v2, p1

    check-cast v2, Lcom/kaltura/playkit/PlayerEvent$StateChanged;

    invoke-static {v0, v2}, Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager;->access$500(Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager;Lcom/kaltura/playkit/PlayerEvent$StateChanged;)V

    goto :goto_0

    :pswitch_9
    invoke-static {}, Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager;->access$400()Lcom/kaltura/playkit/PKLog;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "new duration = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v3, p1

    check-cast v3, Lcom/kaltura/playkit/PlayerEvent$DurationChanged;

    iget-wide v3, v3, Lcom/kaltura/playkit/PlayerEvent$DurationChanged;->duration:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/kaltura/playkit/PKLog;->d(Ljava/lang/String;)V

    :cond_5
    :goto_0
    iget-object v0, v1, Lcom/kaltura/playkit/PlayerEvent;->type:Lcom/kaltura/playkit/PlayerEvent$Type;

    sget-object v1, Lcom/kaltura/playkit/PlayerEvent$Type;->STATE_CHANGED:Lcom/kaltura/playkit/PlayerEvent$Type;

    if-eq v0, v1, :cond_7

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager$1;->this$0:Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager;

    invoke-static {v0, p1}, Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager;->access$1000(Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager;Lcom/kaltura/playkit/PKEvent;)V

    goto :goto_1

    :cond_6
    instance-of v0, p1, Lcom/kaltura/playkit/plugins/ads/AdEvent;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager$1;->this$0:Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager;

    check-cast p1, Lcom/kaltura/playkit/plugins/ads/AdEvent;

    invoke-static {v0, p1}, Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager;->access$1100(Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager;Lcom/kaltura/playkit/plugins/ads/AdEvent;)V

    :cond_7
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
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
