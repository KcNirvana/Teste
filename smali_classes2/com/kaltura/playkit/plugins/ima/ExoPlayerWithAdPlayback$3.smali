.class Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback$3;
.super Ljava/lang/Object;
.source "ExoPlayerWithAdPlayback.java"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/api/player/ContentProgressProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->setContentProgressProvider(Lcom/kaltura/playkit/Player;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;

.field final synthetic val$contentPlayer:Lcom/kaltura/playkit/Player;


# direct methods
.method constructor <init>(Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;Lcom/kaltura/playkit/Player;)V
    .locals 0

    iput-object p1, p0, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback$3;->this$0:Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;

    iput-object p2, p0, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback$3;->val$contentPlayer:Lcom/kaltura/playkit/Player;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContentProgress()Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;
    .locals 7

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback$3;->val$contentPlayer:Lcom/kaltura/playkit/Player;

    invoke-interface {v0}, Lcom/kaltura/playkit/Player;->getDuration()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    sget-object v0, Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;->VIDEO_TIME_NOT_READY:Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback$3;->val$contentPlayer:Lcom/kaltura/playkit/Player;

    invoke-interface {v0}, Lcom/kaltura/playkit/Player;->getDuration()J

    move-result-wide v0

    iget-object v4, p0, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback$3;->val$contentPlayer:Lcom/kaltura/playkit/Player;

    invoke-interface {v4}, Lcom/kaltura/playkit/Player;->getCurrentPosition()J

    move-result-wide v4

    cmp-long v6, v4, v2

    if-lez v6, :cond_1

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    cmp-long v2, v4, v0

    if-ltz v2, :cond_1

    iget-object v2, p0, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback$3;->this$0:Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;

    invoke-static {v2}, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->access$1100(Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;)Lcom/kaltura/playkit/plugins/ads/AdCuePoints;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback$3;->this$0:Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;

    invoke-static {v2}, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->access$1100(Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;)Lcom/kaltura/playkit/plugins/ads/AdCuePoints;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kaltura/playkit/plugins/ads/AdCuePoints;->hasPostRoll()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback$3;->this$0:Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->access$1202(Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;Lcom/google/ads/interactivemedia/v3/api/player/ContentProgressProvider;)Lcom/google/ads/interactivemedia/v3/api/player/ContentProgressProvider;

    sget-object v0, Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;->VIDEO_TIME_NOT_READY:Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;

    return-object v0

    :cond_1
    new-instance v2, Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;

    iget-object v3, p0, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback$3;->val$contentPlayer:Lcom/kaltura/playkit/Player;

    invoke-interface {v3}, Lcom/kaltura/playkit/Player;->getCurrentPosition()J

    move-result-wide v3

    invoke-direct {v2, v3, v4, v0, v1}, Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;-><init>(JJ)V

    return-object v2
.end method
