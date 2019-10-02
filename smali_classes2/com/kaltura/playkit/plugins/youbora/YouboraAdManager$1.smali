.class Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager$1;
.super Ljava/lang/Object;
.source "YouboraAdManager.java"

# interfaces
.implements Lcom/kaltura/playkit/PKEvent$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager;


# direct methods
.method constructor <init>(Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager;)V
    .locals 0

    iput-object p1, p0, Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager$1;->this$0:Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Lcom/kaltura/playkit/PKEvent;)V
    .locals 6

    invoke-interface {p1}, Lcom/kaltura/playkit/PKEvent;->eventType()Ljava/lang/Enum;

    move-result-object v0

    sget-object v1, Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;->PLAY_HEAD_CHANGED:Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;

    if-eq v0, v1, :cond_0

    invoke-interface {p1}, Lcom/kaltura/playkit/PKEvent;->eventType()Ljava/lang/Enum;

    move-result-object v0

    sget-object v1, Lcom/kaltura/playkit/PlayerEvent$Type;->PLAYHEAD_UPDATED:Lcom/kaltura/playkit/PlayerEvent$Type;

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager;->access$000()Lcom/kaltura/playkit/PKLog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "YouboraAdManager on event "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/kaltura/playkit/PKEvent;->eventType()Ljava/lang/Enum;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kaltura/playkit/PKLog;->d(Ljava/lang/String;)V

    :cond_0
    instance-of v0, p1, Lcom/kaltura/playkit/plugins/ads/AdEvent;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager$2;->$SwitchMap$com$kaltura$playkit$plugins$ads$AdEvent$Type:[I

    move-object v1, p1

    check-cast v1, Lcom/kaltura/playkit/plugins/ads/AdEvent;

    iget-object v1, v1, Lcom/kaltura/playkit/plugins/ads/AdEvent;->type:Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;

    invoke-virtual {v1}, Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    const-wide/16 v2, 0x3e8

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager$1;->this$0:Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager;

    check-cast p1, Lcom/kaltura/playkit/plugins/ads/AdEvent$AdPlayHeadEvent;

    iget-wide v1, p1, Lcom/kaltura/playkit/plugins/ads/AdEvent$AdPlayHeadEvent;->adPlayHead:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->doubleValue()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager;->access$602(Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager;Ljava/lang/Double;)Ljava/lang/Double;

    return-void

    :pswitch_2
    invoke-static {}, Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager;->access$000()Lcom/kaltura/playkit/PKLog;

    move-result-object p1

    const-string v0, "learn more clicked"

    invoke-virtual {p1, v0}, Lcom/kaltura/playkit/PKLog;->d(Ljava/lang/String;)V

    return-void

    :pswitch_3
    move-object v0, p1

    check-cast v0, Lcom/kaltura/playkit/plugins/ads/AdEvent$Error;

    iget-object v1, p0, Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager$1;->this$0:Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager;

    iget-object v0, v0, Lcom/kaltura/playkit/plugins/ads/AdEvent$Error;->error:Lcom/kaltura/playkit/PKError;

    invoke-static {v1, v0}, Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager;->access$800(Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager;Lcom/kaltura/playkit/PKError;)V

    goto/16 :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager$1;->this$0:Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager;

    move-object v1, p1

    check-cast v1, Lcom/kaltura/playkit/plugins/ads/AdEvent$AdSkippedEvent;

    iget-object v1, v1, Lcom/kaltura/playkit/plugins/ads/AdEvent$AdSkippedEvent;->adInfo:Lcom/kaltura/playkit/plugins/ads/AdInfo;

    invoke-static {v0, v1}, Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager;->access$402(Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager;Lcom/kaltura/playkit/plugins/ads/AdInfo;)Lcom/kaltura/playkit/plugins/ads/AdInfo;

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager$1;->this$0:Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager;

    iget-object v1, p0, Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager$1;->this$0:Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager;

    invoke-static {v1}, Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager;->access$400(Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager;)Lcom/kaltura/playkit/plugins/ads/AdInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kaltura/playkit/plugins/ads/AdInfo;->getAdPlayHead()J

    move-result-wide v4

    div-long/2addr v4, v2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->doubleValue()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager;->access$602(Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager;Ljava/lang/Double;)Ljava/lang/Double;

    invoke-static {}, Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager;->access$000()Lcom/kaltura/playkit/PKLog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lastReportedAdPlayhead: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager$1;->this$0:Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager;

    invoke-static {v2}, Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager;->access$600(Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager;)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kaltura/playkit/PKLog;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager$1;->this$0:Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager;

    invoke-virtual {v0}, Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager;->skipAdHandler()V

    goto/16 :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager$1;->this$0:Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager;

    invoke-virtual {v0}, Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager;->endedAdHandler()V

    goto/16 :goto_0

    :pswitch_6
    iget-object v0, p0, Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager$1;->this$0:Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager;

    invoke-virtual {v0}, Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager;->endedAdHandler()V

    goto/16 :goto_0

    :pswitch_7
    iget-object v0, p0, Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager$1;->this$0:Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager;

    iget-object v1, p0, Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager$1;->this$0:Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager;

    invoke-static {v1}, Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager;->access$700(Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager;)Ljava/lang/Double;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager;->access$602(Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager;Ljava/lang/Double;)Ljava/lang/Double;

    invoke-static {}, Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager;->access$000()Lcom/kaltura/playkit/PKLog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lastReportedAdPlayhead: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager$1;->this$0:Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager;

    invoke-static {v2}, Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager;->access$600(Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager;)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kaltura/playkit/PKLog;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager$1;->this$0:Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager;

    invoke-virtual {v0}, Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager;->endedAdHandler()V

    goto/16 :goto_0

    :pswitch_8
    iget-object v0, p0, Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager$1;->this$0:Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager;

    move-object v4, p1

    check-cast v4, Lcom/kaltura/playkit/plugins/ads/AdEvent$AdResumedEvent;

    iget-object v4, v4, Lcom/kaltura/playkit/plugins/ads/AdEvent$AdResumedEvent;->adInfo:Lcom/kaltura/playkit/plugins/ads/AdInfo;

    invoke-static {v0, v4}, Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager;->access$402(Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager;Lcom/kaltura/playkit/plugins/ads/AdInfo;)Lcom/kaltura/playkit/plugins/ads/AdInfo;

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager$1;->this$0:Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager;

    invoke-static {v0}, Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager;->access$200(Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager$1;->this$0:Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager;

    invoke-static {v0, v1}, Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager;->access$202(Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager;Z)Z

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager$1;->this$0:Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager;

    invoke-virtual {v0}, Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager;->playAdHandler()V

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager$1;->this$0:Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager;

    invoke-virtual {v0}, Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager;->joinAdHandler()V

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager$1;->this$0:Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager;

    invoke-static {v0}, Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager;->access$500(Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager;)V

    :cond_1
    iget-object v0, p0, Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager$1;->this$0:Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager;

    iget-object v1, p0, Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager$1;->this$0:Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager;

    invoke-static {v1}, Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager;->access$400(Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager;)Lcom/kaltura/playkit/plugins/ads/AdInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kaltura/playkit/plugins/ads/AdInfo;->getAdPlayHead()J

    move-result-wide v4

    div-long/2addr v4, v2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->doubleValue()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager;->access$602(Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager;Ljava/lang/Double;)Ljava/lang/Double;

    invoke-static {}, Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager;->access$000()Lcom/kaltura/playkit/PKLog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lastReportedAdPlayhead: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager$1;->this$0:Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager;

    invoke-static {v2}, Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager;->access$600(Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager;)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kaltura/playkit/PKLog;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager$1;->this$0:Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager;

    invoke-virtual {v0}, Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager;->resumeAdHandler()V

    goto/16 :goto_0

    :pswitch_9
    iget-object v0, p0, Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager$1;->this$0:Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager;

    move-object v1, p1

    check-cast v1, Lcom/kaltura/playkit/plugins/ads/AdEvent$AdPausedEvent;

    iget-object v1, v1, Lcom/kaltura/playkit/plugins/ads/AdEvent$AdPausedEvent;->adInfo:Lcom/kaltura/playkit/plugins/ads/AdInfo;

    invoke-static {v0, v1}, Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager;->access$402(Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager;Lcom/kaltura/playkit/plugins/ads/AdInfo;)Lcom/kaltura/playkit/plugins/ads/AdInfo;

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager$1;->this$0:Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager;

    iget-object v1, p0, Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager$1;->this$0:Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager;

    invoke-static {v1}, Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager;->access$400(Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager;)Lcom/kaltura/playkit/plugins/ads/AdInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kaltura/playkit/plugins/ads/AdInfo;->getAdPlayHead()J

    move-result-wide v4

    div-long/2addr v4, v2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->doubleValue()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager;->access$602(Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager;Ljava/lang/Double;)Ljava/lang/Double;

    invoke-static {}, Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager;->access$000()Lcom/kaltura/playkit/PKLog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lastReportedAdPlayhead: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager$1;->this$0:Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager;

    invoke-static {v2}, Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager;->access$600(Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager;)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kaltura/playkit/PKLog;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager$1;->this$0:Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager;

    invoke-virtual {v0}, Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager;->pauseAdHandler()V

    goto/16 :goto_0

    :pswitch_a
    iget-object v0, p0, Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager$1;->this$0:Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager;

    move-object v1, p1

    check-cast v1, Lcom/kaltura/playkit/plugins/ads/AdEvent$AdStartedEvent;

    iget-object v1, v1, Lcom/kaltura/playkit/plugins/ads/AdEvent$AdStartedEvent;->adInfo:Lcom/kaltura/playkit/plugins/ads/AdInfo;

    invoke-static {v0, v1}, Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager;->access$402(Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager;Lcom/kaltura/playkit/plugins/ads/AdInfo;)Lcom/kaltura/playkit/plugins/ads/AdInfo;

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager$1;->this$0:Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager;

    iget-object v1, p0, Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager$1;->this$0:Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager;

    invoke-static {v1}, Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager;->access$400(Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager;)Lcom/kaltura/playkit/plugins/ads/AdInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kaltura/playkit/plugins/ads/AdInfo;->getAdPlayHead()J

    move-result-wide v4

    div-long/2addr v4, v2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->doubleValue()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager;->access$602(Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager;Ljava/lang/Double;)Ljava/lang/Double;

    invoke-static {}, Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager;->access$000()Lcom/kaltura/playkit/PKLog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lastReportedAdPlayhead: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager$1;->this$0:Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager;

    invoke-static {v2}, Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager;->access$600(Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager;)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kaltura/playkit/PKLog;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager$1;->this$0:Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager;

    invoke-virtual {v0}, Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager;->joinAdHandler()V

    goto :goto_0

    :pswitch_b
    iget-object v0, p0, Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager$1;->this$0:Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager;

    invoke-static {v0}, Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager;->access$200(Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager$1;->this$0:Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager;

    invoke-static {v0, v1}, Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager;->access$202(Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager;Z)Z

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager$1;->this$0:Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager;

    invoke-static {v0}, Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager;->access$300(Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager;)Lcom/npaw/youbora/plugins/PluginGeneric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/npaw/youbora/plugins/PluginGeneric;->playHandler()V

    :cond_2
    iget-object v0, p0, Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager$1;->this$0:Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager;

    move-object v1, p1

    check-cast v1, Lcom/kaltura/playkit/plugins/ads/AdEvent$AdLoadedEvent;

    iget-object v1, v1, Lcom/kaltura/playkit/plugins/ads/AdEvent$AdLoadedEvent;->adInfo:Lcom/kaltura/playkit/plugins/ads/AdInfo;

    invoke-static {v0, v1}, Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager;->access$402(Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager;Lcom/kaltura/playkit/plugins/ads/AdInfo;)Lcom/kaltura/playkit/plugins/ads/AdInfo;

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager$1;->this$0:Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager;

    invoke-static {v0}, Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager;->access$500(Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager;)V

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager$1;->this$0:Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager;

    invoke-virtual {v0}, Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager;->playAdHandler()V

    goto :goto_0

    :pswitch_c
    iget-object v0, p0, Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager$1;->this$0:Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager;

    move-object v1, p1

    check-cast v1, Lcom/kaltura/playkit/plugins/ads/AdEvent$AdRequestedEvent;

    iget-object v1, v1, Lcom/kaltura/playkit/plugins/ads/AdEvent$AdRequestedEvent;->adTagUrl:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager;->access$102(Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager;Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager;->access$000()Lcom/kaltura/playkit/PKLog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lastReportedAdResource: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager$1;->this$0:Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager;

    invoke-static {v2}, Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager;->access$100(Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kaltura/playkit/PKLog;->d(Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager$1;->this$0:Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager;

    invoke-static {v0}, Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager;->access$900(Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager;)Lcom/kaltura/playkit/MessageBus;

    move-result-object v0

    new-instance v1, Lcom/kaltura/playkit/plugins/youbora/YouboraEvent$YouboraReport;

    invoke-interface {p1}, Lcom/kaltura/playkit/PKEvent;->eventType()Ljava/lang/Enum;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/kaltura/playkit/plugins/youbora/YouboraEvent$YouboraReport;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/kaltura/playkit/MessageBus;->post(Lcom/kaltura/playkit/PKEvent;)V

    :cond_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
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
