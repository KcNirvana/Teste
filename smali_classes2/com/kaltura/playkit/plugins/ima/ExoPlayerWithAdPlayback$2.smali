.class Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback$2;
.super Ljava/lang/Object;
.source "ExoPlayerWithAdPlayback.java"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;


# direct methods
.method constructor <init>(Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;)V
    .locals 0

    iput-object p1, p0, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback$2;->this$0:Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addCallback(Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer$VideoAdPlayerCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback$2;->this$0:Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;

    invoke-static {v0}, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->access$400(Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getAdProgress()Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;
    .locals 7

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback$2;->this$0:Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;

    invoke-static {v0}, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->access$1000(Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;)Lcom/google/android/exoplayer2/ui/PlayerView;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback$2;->this$0:Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;

    invoke-static {v0}, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->access$1000(Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;)Lcom/google/android/exoplayer2/ui/PlayerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/PlayerView;->getPlayer()Lcom/google/android/exoplayer2/Player;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback$2;->this$0:Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;

    invoke-static {v0}, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->access$1000(Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;)Lcom/google/android/exoplayer2/ui/PlayerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/PlayerView;->getPlayer()Lcom/google/android/exoplayer2/Player;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getDuration()J

    move-result-wide v0

    iget-object v2, p0, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback$2;->this$0:Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;

    invoke-static {v2}, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->access$1000(Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;)Lcom/google/android/exoplayer2/ui/PlayerView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/ui/PlayerView;->getPlayer()Lcom/google/android/exoplayer2/Player;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/exoplayer2/Player;->getCurrentPosition()J

    move-result-wide v2

    iget-object v4, p0, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback$2;->this$0:Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;

    invoke-static {v4}, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->access$300(Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback$2;->this$0:Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;

    invoke-static {v4}, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->access$100(Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-ltz v6, :cond_3

    cmp-long v4, v2, v4

    if-gez v4, :cond_1

    goto :goto_0

    :cond_1
    cmp-long v4, v2, v0

    if-lez v4, :cond_2

    move-wide v2, v0

    :cond_2
    new-instance v4, Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;

    invoke-direct {v4, v2, v3, v0, v1}, Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;-><init>(JJ)V

    return-object v4

    :cond_3
    :goto_0
    sget-object v0, Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;->VIDEO_TIME_NOT_READY:Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;

    return-object v0

    :cond_4
    :goto_1
    sget-object v0, Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;->VIDEO_TIME_NOT_READY:Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;

    return-object v0
.end method

.method public getVolume()I
    .locals 2

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback$2;->this$0:Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;

    invoke-static {v0}, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->access$000(Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;)Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback$2;->this$0:Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;

    invoke-static {v0}, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->access$000(Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;)Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getVolume()F

    move-result v0

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public loadAd(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->access$200()Lcom/kaltura/playkit/PKLog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadAd = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kaltura/playkit/PKLog;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback$2;->this$0:Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->access$702(Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;J)J

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback$2;->this$0:Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;

    invoke-static {v0, p1}, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->access$802(Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;Ljava/lang/String;)Ljava/lang/String;

    iget-object p1, p0, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback$2;->this$0:Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->access$302(Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;Z)Z

    iget-object p1, p0, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback$2;->this$0:Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;

    invoke-static {p1, v0}, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->access$602(Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;Z)Z

    iget-object p1, p0, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback$2;->this$0:Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback$2;->this$0:Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;

    invoke-static {v0}, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->access$800(Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->access$900(Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;Ljava/lang/String;Z)V

    return-void
.end method

.method public pauseAd()V
    .locals 2

    invoke-static {}, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->access$200()Lcom/kaltura/playkit/PKLog;

    move-result-object v0

    const-string v1, "pauseAd"

    invoke-virtual {v0, v1}, Lcom/kaltura/playkit/PKLog;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback$2;->this$0:Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;

    invoke-static {v0}, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->access$500(Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback$2;->this$0:Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;

    invoke-static {v0}, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->access$400(Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer$VideoAdPlayerCallback;

    invoke-interface {v1}, Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer$VideoAdPlayerCallback;->onPause()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback$2;->this$0:Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;

    invoke-static {v0}, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->access$1000(Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;)Lcom/google/android/exoplayer2/ui/PlayerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/PlayerView;->getPlayer()Lcom/google/android/exoplayer2/Player;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback$2;->this$0:Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;

    invoke-static {v0}, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->access$1000(Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;)Lcom/google/android/exoplayer2/ui/PlayerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/PlayerView;->getPlayer()Lcom/google/android/exoplayer2/Player;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/Player;->setPlayWhenReady(Z)V

    :cond_2
    return-void
.end method

.method public playAd()V
    .locals 4

    invoke-static {}, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->access$200()Lcom/kaltura/playkit/PKLog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playAd mIsAdDisplayed = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback$2;->this$0:Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;

    invoke-static {v2}, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->access$100(Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kaltura/playkit/PKLog;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback$2;->this$0:Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;

    invoke-static {v0}, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->access$100(Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback$2;->this$0:Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;

    invoke-static {v0}, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->access$300(Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback$2;->this$0:Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;

    invoke-static {v0}, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->access$400(Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer$VideoAdPlayerCallback;

    invoke-static {}, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->access$200()Lcom/kaltura/playkit/PKLog;

    move-result-object v1

    const-string v2, "playAd->onResume"

    invoke-virtual {v1, v2}, Lcom/kaltura/playkit/PKLog;->d(Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer$VideoAdPlayerCallback;->onResume()V

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback$2;->this$0:Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;

    invoke-static {v0}, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->access$500(Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback$2;->this$0:Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;

    invoke-virtual {v0}, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->play()V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback$2;->this$0:Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->access$102(Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;Z)Z

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback$2;->this$0:Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;

    invoke-static {v0}, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->access$400(Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer$VideoAdPlayerCallback;

    invoke-static {}, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->access$200()Lcom/kaltura/playkit/PKLog;

    move-result-object v2

    const-string v3, "playAd->onPlay"

    invoke-virtual {v2, v3}, Lcom/kaltura/playkit/PKLog;->d(Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer$VideoAdPlayerCallback;->onPlay()V

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback$2;->this$0:Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;

    invoke-static {v0, v1}, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->access$602(Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;Z)Z

    return-void

    :cond_2
    iget-object v0, p0, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback$2;->this$0:Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;

    invoke-static {v0}, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->access$400(Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer$VideoAdPlayerCallback;

    invoke-interface {v1}, Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer$VideoAdPlayerCallback;->onPlay()V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public removeCallback(Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer$VideoAdPlayerCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback$2;->this$0:Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;

    invoke-static {v0}, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->access$400(Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public resumeAd()V
    .locals 2

    invoke-static {}, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->access$200()Lcom/kaltura/playkit/PKLog;

    move-result-object v0

    const-string v1, "resumeAd"

    invoke-virtual {v0, v1}, Lcom/kaltura/playkit/PKLog;->d(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback$2;->playAd()V

    return-void
.end method

.method public stopAd()V
    .locals 2

    invoke-static {}, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->access$200()Lcom/kaltura/playkit/PKLog;

    move-result-object v0

    const-string v1, "stopAd"

    invoke-virtual {v0, v1}, Lcom/kaltura/playkit/PKLog;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback$2;->this$0:Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->access$302(Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;Z)Z

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback$2;->this$0:Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;

    invoke-static {v0, v1}, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->access$102(Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;Z)Z

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback$2;->this$0:Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;

    invoke-static {v0}, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->access$1000(Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;)Lcom/google/android/exoplayer2/ui/PlayerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/PlayerView;->getPlayer()Lcom/google/android/exoplayer2/Player;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback$2;->this$0:Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;

    invoke-static {v0}, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->access$1000(Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;)Lcom/google/android/exoplayer2/ui/PlayerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/PlayerView;->getPlayer()Lcom/google/android/exoplayer2/Player;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->stop()V

    :cond_0
    return-void
.end method
