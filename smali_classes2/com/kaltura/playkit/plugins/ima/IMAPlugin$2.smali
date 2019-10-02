.class Lcom/kaltura/playkit/plugins/ima/IMAPlugin$2;
.super Ljava/lang/Object;
.source "IMAPlugin.java"

# interfaces
.implements Lcom/kaltura/playkit/PKEvent$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->onLoad(Lcom/kaltura/playkit/Player;Ljava/lang/Object;Lcom/kaltura/playkit/MessageBus;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kaltura/playkit/plugins/ima/IMAPlugin;

.field final synthetic val$player:Lcom/kaltura/playkit/Player;


# direct methods
.method constructor <init>(Lcom/kaltura/playkit/plugins/ima/IMAPlugin;Lcom/kaltura/playkit/Player;)V
    .locals 0

    iput-object p1, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin$2;->this$0:Lcom/kaltura/playkit/plugins/ima/IMAPlugin;

    iput-object p2, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin$2;->val$player:Lcom/kaltura/playkit/Player;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Lcom/kaltura/playkit/PKEvent;)V
    .locals 8

    invoke-static {}, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->access$000()Lcom/kaltura/playkit/PKLog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received:PlayerEvent:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/kaltura/playkit/PKEvent;->eventType()Ljava/lang/Enum;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " lastAdEventReceived = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin$2;->this$0:Lcom/kaltura/playkit/plugins/ima/IMAPlugin;

    invoke-static {v2}, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->access$100(Lcom/kaltura/playkit/plugins/ima/IMAPlugin;)Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kaltura/playkit/PKLog;->d(Ljava/lang/String;)V

    new-instance v0, Lcom/kaltura/playkit/plugins/ads/AdCuePoints;

    iget-object v1, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin$2;->this$0:Lcom/kaltura/playkit/plugins/ima/IMAPlugin;

    invoke-static {v1}, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->access$200(Lcom/kaltura/playkit/plugins/ima/IMAPlugin;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/kaltura/playkit/plugins/ads/AdCuePoints;-><init>(Ljava/util/List;)V

    invoke-interface {p1}, Lcom/kaltura/playkit/PKEvent;->eventType()Ljava/lang/Enum;

    move-result-object v1

    sget-object v2, Lcom/kaltura/playkit/PlayerEvent$Type;->ENDED:Lcom/kaltura/playkit/PlayerEvent$Type;

    if-ne v1, v2, :cond_7

    iget-object p1, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin$2;->this$0:Lcom/kaltura/playkit/plugins/ima/IMAPlugin;

    invoke-static {p1}, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->access$300(Lcom/kaltura/playkit/plugins/ima/IMAPlugin;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->access$000()Lcom/kaltura/playkit/PKLog;

    move-result-object p1

    const-string v0, "Event: ENDED ignored content is not prepared"

    invoke-virtual {p1, v0}, Lcom/kaltura/playkit/PKLog;->d(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin$2;->this$0:Lcom/kaltura/playkit/plugins/ima/IMAPlugin;

    sget-object v1, Lcom/kaltura/playkit/PlayerEvent$Type;->ENDED:Lcom/kaltura/playkit/PlayerEvent$Type;

    invoke-static {p1, v1}, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->access$402(Lcom/kaltura/playkit/plugins/ima/IMAPlugin;Lcom/kaltura/playkit/PlayerEvent$Type;)Lcom/kaltura/playkit/PlayerEvent$Type;

    iget-object p1, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin$2;->this$0:Lcom/kaltura/playkit/plugins/ima/IMAPlugin;

    invoke-static {p1}, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->access$500(Lcom/kaltura/playkit/plugins/ima/IMAPlugin;)Lcom/kaltura/playkit/plugins/ads/AdInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->access$000()Lcom/kaltura/playkit/PKLog;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Event: ENDED adInfo.getAdIndexInPod() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin$2;->this$0:Lcom/kaltura/playkit/plugins/ima/IMAPlugin;

    invoke-static {v2}, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->access$500(Lcom/kaltura/playkit/plugins/ima/IMAPlugin;)Lcom/kaltura/playkit/plugins/ads/AdInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kaltura/playkit/plugins/ads/AdInfo;->getAdIndexInPod()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " -  adInfo.getTotalAdsInPod() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin$2;->this$0:Lcom/kaltura/playkit/plugins/ima/IMAPlugin;

    invoke-static {v2}, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->access$500(Lcom/kaltura/playkit/plugins/ima/IMAPlugin;)Lcom/kaltura/playkit/plugins/ads/AdInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kaltura/playkit/plugins/ads/AdInfo;->getTotalAdsInPod()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/kaltura/playkit/PKLog;->d(Ljava/lang/String;)V

    :cond_1
    iget-object p1, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin$2;->this$0:Lcom/kaltura/playkit/plugins/ima/IMAPlugin;

    invoke-static {p1}, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->access$500(Lcom/kaltura/playkit/plugins/ima/IMAPlugin;)Lcom/kaltura/playkit/plugins/ads/AdInfo;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-eqz p1, :cond_3

    invoke-virtual {v0}, Lcom/kaltura/playkit/plugins/ads/AdCuePoints;->hasMidRoll()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {v0}, Lcom/kaltura/playkit/plugins/ads/AdCuePoints;->getAdCuePoints()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lt p1, v3, :cond_2

    invoke-virtual {v0}, Lcom/kaltura/playkit/plugins/ads/AdCuePoints;->hasPostRoll()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin$2;->this$0:Lcom/kaltura/playkit/plugins/ima/IMAPlugin;

    invoke-static {p1}, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->access$500(Lcom/kaltura/playkit/plugins/ima/IMAPlugin;)Lcom/kaltura/playkit/plugins/ads/AdInfo;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin$2;->this$0:Lcom/kaltura/playkit/plugins/ima/IMAPlugin;

    invoke-static {p1}, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->access$500(Lcom/kaltura/playkit/plugins/ima/IMAPlugin;)Lcom/kaltura/playkit/plugins/ads/AdInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/kaltura/playkit/plugins/ads/AdInfo;->getAdPodTimeOffset()J

    move-result-wide v4

    invoke-virtual {v0}, Lcom/kaltura/playkit/plugins/ads/AdCuePoints;->getAdCuePoints()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0}, Lcom/kaltura/playkit/plugins/ads/AdCuePoints;->getAdCuePoints()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v3

    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long p1, v4, v6

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p1, 0x1

    :goto_1
    invoke-virtual {v0}, Lcom/kaltura/playkit/plugins/ads/AdCuePoints;->getAdCuePoints()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lt v4, v3, :cond_4

    invoke-virtual {v0}, Lcom/kaltura/playkit/plugins/ads/AdCuePoints;->hasPostRoll()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin$2;->this$0:Lcom/kaltura/playkit/plugins/ima/IMAPlugin;

    invoke-static {v4}, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->access$500(Lcom/kaltura/playkit/plugins/ima/IMAPlugin;)Lcom/kaltura/playkit/plugins/ads/AdInfo;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {v0}, Lcom/kaltura/playkit/plugins/ads/AdCuePoints;->getAdCuePoints()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v0}, Lcom/kaltura/playkit/plugins/ads/AdCuePoints;->getAdCuePoints()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v3

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-object v5, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin$2;->val$player:Lcom/kaltura/playkit/Player;

    invoke-interface {v5}, Lcom/kaltura/playkit/Player;->getDuration()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-lez v3, :cond_4

    const/4 v1, 0x1

    :cond_4
    invoke-static {}, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->access$000()Lcom/kaltura/playkit/PKLog;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "contentCompleted isLastMidRollPlayed = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " isLastMidRollInValid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/kaltura/playkit/PKLog;->d(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin$2;->this$0:Lcom/kaltura/playkit/plugins/ima/IMAPlugin;

    invoke-static {v3}, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->access$600(Lcom/kaltura/playkit/plugins/ima/IMAPlugin;)Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {v0}, Lcom/kaltura/playkit/plugins/ads/AdCuePoints;->hasPostRoll()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin$2;->this$0:Lcom/kaltura/playkit/plugins/ima/IMAPlugin;

    invoke-static {v0}, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->access$700(Lcom/kaltura/playkit/plugins/ima/IMAPlugin;)Z

    move-result v0

    if-nez v0, :cond_5

    if-nez p1, :cond_5

    if-eqz v1, :cond_6

    :cond_5
    invoke-static {}, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->access$000()Lcom/kaltura/playkit/PKLog;

    move-result-object p1

    const-string v0, "contentCompleted on ended"

    invoke-virtual {p1, v0}, Lcom/kaltura/playkit/PKLog;->d(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin$2;->this$0:Lcom/kaltura/playkit/plugins/ima/IMAPlugin;

    invoke-virtual {p1}, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->contentCompleted()V

    goto :goto_2

    :cond_6
    invoke-static {}, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->access$000()Lcom/kaltura/playkit/PKLog;

    move-result-object p1

    const-string v0, "contentCompleted delayed"

    invoke-virtual {p1, v0}, Lcom/kaltura/playkit/PKLog;->d(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin$2;->this$0:Lcom/kaltura/playkit/plugins/ima/IMAPlugin;

    invoke-static {p1, v2}, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->access$802(Lcom/kaltura/playkit/plugins/ima/IMAPlugin;Z)Z

    goto :goto_2

    :cond_7
    invoke-interface {p1}, Lcom/kaltura/playkit/PKEvent;->eventType()Ljava/lang/Enum;

    move-result-object p1

    sget-object v0, Lcom/kaltura/playkit/PlayerEvent$Type;->PLAYING:Lcom/kaltura/playkit/PlayerEvent$Type;

    if-ne p1, v0, :cond_8

    iget-object p1, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin$2;->this$0:Lcom/kaltura/playkit/plugins/ima/IMAPlugin;

    invoke-static {p1}, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->access$900(Lcom/kaltura/playkit/plugins/ima/IMAPlugin;)V

    iget-object p1, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin$2;->this$0:Lcom/kaltura/playkit/plugins/ima/IMAPlugin;

    invoke-static {p1}, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->access$1000(Lcom/kaltura/playkit/plugins/ima/IMAPlugin;)Lcom/kaltura/playkit/PKMediaConfig;

    move-result-object p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin$2;->this$0:Lcom/kaltura/playkit/plugins/ima/IMAPlugin;

    invoke-static {p1}, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->access$1000(Lcom/kaltura/playkit/plugins/ima/IMAPlugin;)Lcom/kaltura/playkit/PKMediaConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/kaltura/playkit/PKMediaConfig;->getMediaEntry()Lcom/kaltura/playkit/PKMediaEntry;

    move-result-object p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin$2;->this$0:Lcom/kaltura/playkit/plugins/ima/IMAPlugin;

    invoke-static {p1}, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->access$1000(Lcom/kaltura/playkit/plugins/ima/IMAPlugin;)Lcom/kaltura/playkit/PKMediaConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/kaltura/playkit/PKMediaConfig;->getMediaEntry()Lcom/kaltura/playkit/PKMediaEntry;

    move-result-object p1

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin$2;->val$player:Lcom/kaltura/playkit/Player;

    invoke-interface {v0}, Lcom/kaltura/playkit/Player;->getDuration()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/kaltura/playkit/PKMediaEntry;->setDuration(J)Lcom/kaltura/playkit/PKMediaEntry;

    iget-object p1, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin$2;->this$0:Lcom/kaltura/playkit/plugins/ima/IMAPlugin;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->access$102(Lcom/kaltura/playkit/plugins/ima/IMAPlugin;Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;)Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;

    :cond_8
    :goto_2
    return-void
.end method
