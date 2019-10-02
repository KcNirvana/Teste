.class public Lcom/kaltura/playkit/ads/AdEnabledPlayerController;
.super Lcom/kaltura/playkit/PlayerDecorator;
.source "AdEnabledPlayerController.java"

# interfaces
.implements Lcom/kaltura/playkit/ads/AdController;
.implements Lcom/kaltura/playkit/ads/PKAdProviderListener;
.implements Lcom/kaltura/playkit/PKController;


# static fields
.field private static final log:Lcom/kaltura/playkit/PKLog;


# instance fields
.field private adsProvider:Lcom/kaltura/playkit/plugins/ads/AdsProvider;

.field private mediaConfig:Lcom/kaltura/playkit/PKMediaConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "AdEnablController"

    invoke-static {v0}, Lcom/kaltura/playkit/PKLog;->get(Ljava/lang/String;)Lcom/kaltura/playkit/PKLog;

    move-result-object v0

    sput-object v0, Lcom/kaltura/playkit/ads/AdEnabledPlayerController;->log:Lcom/kaltura/playkit/PKLog;

    return-void
.end method

.method public constructor <init>(Lcom/kaltura/playkit/plugins/ads/AdsProvider;)V
    .locals 2

    invoke-direct {p0}, Lcom/kaltura/playkit/PlayerDecorator;-><init>()V

    sget-object v0, Lcom/kaltura/playkit/ads/AdEnabledPlayerController;->log:Lcom/kaltura/playkit/PKLog;

    const-string v1, "Init AdEnabledPlayerController"

    invoke-virtual {v0, v1}, Lcom/kaltura/playkit/PKLog;->d(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/kaltura/playkit/ads/AdEnabledPlayerController;->adsProvider:Lcom/kaltura/playkit/plugins/ads/AdsProvider;

    return-void
.end method


# virtual methods
.method public getAdCurrentPosition()J
    .locals 4

    iget-object v0, p0, Lcom/kaltura/playkit/ads/AdEnabledPlayerController;->adsProvider:Lcom/kaltura/playkit/plugins/ads/AdsProvider;

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x3e8

    iget-object v2, p0, Lcom/kaltura/playkit/ads/AdEnabledPlayerController;->adsProvider:Lcom/kaltura/playkit/plugins/ads/AdsProvider;

    invoke-interface {v2}, Lcom/kaltura/playkit/plugins/ads/AdsProvider;->getCurrentPosition()J

    move-result-wide v2

    mul-long v2, v2, v0

    return-wide v2

    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getAdDuration()J
    .locals 4

    iget-object v0, p0, Lcom/kaltura/playkit/ads/AdEnabledPlayerController;->adsProvider:Lcom/kaltura/playkit/plugins/ads/AdsProvider;

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x3e8

    iget-object v2, p0, Lcom/kaltura/playkit/ads/AdEnabledPlayerController;->adsProvider:Lcom/kaltura/playkit/plugins/ads/AdsProvider;

    invoke-interface {v2}, Lcom/kaltura/playkit/plugins/ads/AdsProvider;->getDuration()J

    move-result-wide v2

    mul-long v2, v2, v0

    return-wide v2

    :cond_0
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0
.end method

.method public getController(Ljava/lang/Class;)Lcom/kaltura/playkit/PKController;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/kaltura/playkit/PKController;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    const-class v0, Lcom/kaltura/playkit/ads/AdEnabledPlayerController;

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    invoke-super {p0, p1}, Lcom/kaltura/playkit/PlayerDecorator;->getController(Ljava/lang/Class;)Lcom/kaltura/playkit/PKController;

    move-result-object p1

    return-object p1
.end method

.method public getCurrentPosition()J
    .locals 4

    iget-object v0, p0, Lcom/kaltura/playkit/ads/AdEnabledPlayerController;->adsProvider:Lcom/kaltura/playkit/plugins/ads/AdsProvider;

    invoke-interface {v0}, Lcom/kaltura/playkit/plugins/ads/AdsProvider;->isAdDisplayed()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x3e8

    iget-object v2, p0, Lcom/kaltura/playkit/ads/AdEnabledPlayerController;->adsProvider:Lcom/kaltura/playkit/plugins/ads/AdsProvider;

    invoke-interface {v2}, Lcom/kaltura/playkit/plugins/ads/AdsProvider;->getCurrentPosition()J

    move-result-wide v2

    mul-long v2, v2, v0

    return-wide v2

    :cond_0
    invoke-super {p0}, Lcom/kaltura/playkit/PlayerDecorator;->getCurrentPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDuration()J
    .locals 4

    iget-object v0, p0, Lcom/kaltura/playkit/ads/AdEnabledPlayerController;->adsProvider:Lcom/kaltura/playkit/plugins/ads/AdsProvider;

    invoke-interface {v0}, Lcom/kaltura/playkit/plugins/ads/AdsProvider;->isAdDisplayed()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x3e8

    iget-object v2, p0, Lcom/kaltura/playkit/ads/AdEnabledPlayerController;->adsProvider:Lcom/kaltura/playkit/plugins/ads/AdsProvider;

    invoke-interface {v2}, Lcom/kaltura/playkit/plugins/ads/AdsProvider;->getDuration()J

    move-result-wide v2

    mul-long v2, v2, v0

    return-wide v2

    :cond_0
    invoke-super {p0}, Lcom/kaltura/playkit/PlayerDecorator;->getDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public isPlaying()Z
    .locals 2

    sget-object v0, Lcom/kaltura/playkit/ads/AdEnabledPlayerController;->log:Lcom/kaltura/playkit/PKLog;

    const-string v1, "AdEnabled isPlaying"

    invoke-virtual {v0, v1}, Lcom/kaltura/playkit/PKLog;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kaltura/playkit/ads/AdEnabledPlayerController;->adsProvider:Lcom/kaltura/playkit/plugins/ads/AdsProvider;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kaltura/playkit/ads/AdEnabledPlayerController;->adsProvider:Lcom/kaltura/playkit/plugins/ads/AdsProvider;

    invoke-interface {v0}, Lcom/kaltura/playkit/plugins/ads/AdsProvider;->isAdDisplayed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kaltura/playkit/ads/AdEnabledPlayerController;->adsProvider:Lcom/kaltura/playkit/plugins/ads/AdsProvider;

    invoke-interface {v0}, Lcom/kaltura/playkit/plugins/ads/AdsProvider;->isAdPaused()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0

    :cond_0
    invoke-super {p0}, Lcom/kaltura/playkit/PlayerDecorator;->isPlaying()Z

    move-result v0

    return v0
.end method

.method public onAdLoadingFinished()V
    .locals 2

    sget-object v0, Lcom/kaltura/playkit/ads/AdEnabledPlayerController;->log:Lcom/kaltura/playkit/PKLog;

    const-string v1, "onAdLoadingFinished pkPrepareReason"

    invoke-virtual {v0, v1}, Lcom/kaltura/playkit/PKLog;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kaltura/playkit/ads/AdEnabledPlayerController;->mediaConfig:Lcom/kaltura/playkit/PKMediaConfig;

    if-nez v0, :cond_0

    sget-object v0, Lcom/kaltura/playkit/ads/AdEnabledPlayerController;->log:Lcom/kaltura/playkit/PKLog;

    const-string v1, "IMA onAdLoadingFinished mediaConfig == null"

    invoke-virtual {v0, v1}, Lcom/kaltura/playkit/PKLog;->e(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/kaltura/playkit/ads/AdEnabledPlayerController;->mediaConfig:Lcom/kaltura/playkit/PKMediaConfig;

    invoke-virtual {p0, v0}, Lcom/kaltura/playkit/ads/AdEnabledPlayerController;->prepare(Lcom/kaltura/playkit/PKMediaConfig;)V

    iget-object v0, p0, Lcom/kaltura/playkit/ads/AdEnabledPlayerController;->adsProvider:Lcom/kaltura/playkit/plugins/ads/AdsProvider;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/kaltura/playkit/ads/AdEnabledPlayerController;->adsProvider:Lcom/kaltura/playkit/plugins/ads/AdsProvider;

    invoke-interface {v0}, Lcom/kaltura/playkit/plugins/ads/AdsProvider;->removeAdProviderListener()V

    :cond_1
    return-void
.end method

.method public pause()V
    .locals 4

    iget-object v0, p0, Lcom/kaltura/playkit/ads/AdEnabledPlayerController;->adsProvider:Lcom/kaltura/playkit/plugins/ads/AdsProvider;

    invoke-interface {v0}, Lcom/kaltura/playkit/plugins/ads/AdsProvider;->isAdDisplayed()Z

    move-result v0

    sget-object v1, Lcom/kaltura/playkit/ads/AdEnabledPlayerController;->log:Lcom/kaltura/playkit/PKLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PAUSE IMA decorator isAdDisplayed = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " isAdPaused = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/kaltura/playkit/ads/AdEnabledPlayerController;->adsProvider:Lcom/kaltura/playkit/plugins/ads/AdsProvider;

    invoke-interface {v3}, Lcom/kaltura/playkit/plugins/ads/AdsProvider;->isAdPaused()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " isAllAdsCompleted "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/kaltura/playkit/ads/AdEnabledPlayerController;->adsProvider:Lcom/kaltura/playkit/plugins/ads/AdsProvider;

    invoke-interface {v3}, Lcom/kaltura/playkit/plugins/ads/AdsProvider;->isAllAdsCompleted()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/kaltura/playkit/PKLog;->d(Ljava/lang/String;)V

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kaltura/playkit/ads/AdEnabledPlayerController;->adsProvider:Lcom/kaltura/playkit/plugins/ads/AdsProvider;

    invoke-interface {v0}, Lcom/kaltura/playkit/plugins/ads/AdsProvider;->isAdError()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/kaltura/playkit/ads/AdEnabledPlayerController;->adsProvider:Lcom/kaltura/playkit/plugins/ads/AdsProvider;

    invoke-interface {v0}, Lcom/kaltura/playkit/plugins/ads/AdsProvider;->pause()V

    :cond_0
    invoke-super {p0}, Lcom/kaltura/playkit/PlayerDecorator;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/kaltura/playkit/ads/AdEnabledPlayerController;->log:Lcom/kaltura/playkit/PKLog;

    const-string v1, "IMA decorator Calling content player pause"

    invoke-virtual {v0, v1}, Lcom/kaltura/playkit/PKLog;->d(Ljava/lang/String;)V

    invoke-super {p0}, Lcom/kaltura/playkit/PlayerDecorator;->pause()V

    :cond_1
    return-void
.end method

.method public play()V
    .locals 3

    sget-object v0, Lcom/kaltura/playkit/ads/AdEnabledPlayerController;->log:Lcom/kaltura/playkit/PKLog;

    const-string v1, "PLAY IMA decorator"

    invoke-virtual {v0, v1}, Lcom/kaltura/playkit/PKLog;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kaltura/playkit/ads/AdEnabledPlayerController;->adsProvider:Lcom/kaltura/playkit/plugins/ads/AdsProvider;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/kaltura/playkit/ads/AdEnabledPlayerController;->adsProvider:Lcom/kaltura/playkit/plugins/ads/AdsProvider;

    invoke-interface {v0}, Lcom/kaltura/playkit/plugins/ads/AdsProvider;->isAdError()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/kaltura/playkit/ads/AdEnabledPlayerController;->log:Lcom/kaltura/playkit/PKLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PLAY IMA decorator isAdDisplayed = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/kaltura/playkit/ads/AdEnabledPlayerController;->adsProvider:Lcom/kaltura/playkit/plugins/ads/AdsProvider;

    invoke-interface {v2}, Lcom/kaltura/playkit/plugins/ads/AdsProvider;->isAdDisplayed()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " isAdPaused = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/kaltura/playkit/ads/AdEnabledPlayerController;->adsProvider:Lcom/kaltura/playkit/plugins/ads/AdsProvider;

    invoke-interface {v2}, Lcom/kaltura/playkit/plugins/ads/AdsProvider;->isAdPaused()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " isAllAdsCompleted = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/kaltura/playkit/ads/AdEnabledPlayerController;->adsProvider:Lcom/kaltura/playkit/plugins/ads/AdsProvider;

    invoke-interface {v2}, Lcom/kaltura/playkit/plugins/ads/AdsProvider;->isAllAdsCompleted()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kaltura/playkit/PKLog;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kaltura/playkit/ads/AdEnabledPlayerController;->adsProvider:Lcom/kaltura/playkit/plugins/ads/AdsProvider;

    invoke-interface {v0}, Lcom/kaltura/playkit/plugins/ads/AdsProvider;->isAllAdsCompleted()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/kaltura/playkit/ads/AdEnabledPlayerController;->adsProvider:Lcom/kaltura/playkit/plugins/ads/AdsProvider;

    invoke-interface {v0}, Lcom/kaltura/playkit/plugins/ads/AdsProvider;->isAdRequested()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/kaltura/playkit/ads/AdEnabledPlayerController;->adsProvider:Lcom/kaltura/playkit/plugins/ads/AdsProvider;

    invoke-interface {v0}, Lcom/kaltura/playkit/plugins/ads/AdsProvider;->start()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/kaltura/playkit/ads/AdEnabledPlayerController;->adsProvider:Lcom/kaltura/playkit/plugins/ads/AdsProvider;

    invoke-interface {v0}, Lcom/kaltura/playkit/plugins/ads/AdsProvider;->isAdDisplayed()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/kaltura/playkit/ads/AdEnabledPlayerController;->adsProvider:Lcom/kaltura/playkit/plugins/ads/AdsProvider;

    invoke-interface {v0}, Lcom/kaltura/playkit/plugins/ads/AdsProvider;->resume()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/kaltura/playkit/ads/AdEnabledPlayerController;->adsProvider:Lcom/kaltura/playkit/plugins/ads/AdsProvider;

    invoke-interface {v0}, Lcom/kaltura/playkit/plugins/ads/AdsProvider;->isAdDisplayed()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    sget-object v0, Lcom/kaltura/playkit/ads/AdEnabledPlayerController;->log:Lcom/kaltura/playkit/PKLog;

    const-string v1, "IMA decorator Calling player play"

    invoke-virtual {v0, v1}, Lcom/kaltura/playkit/PKLog;->d(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/kaltura/playkit/ads/AdEnabledPlayerController;->getView()Lcom/kaltura/playkit/player/PlayerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kaltura/playkit/player/PlayerView;->showVideoSurface()V

    invoke-super {p0}, Lcom/kaltura/playkit/PlayerDecorator;->play()V

    return-void
.end method

.method public prepare(Lcom/kaltura/playkit/PKMediaConfig;)V
    .locals 2
    .param p1    # Lcom/kaltura/playkit/PKMediaConfig;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/kaltura/playkit/ads/AdEnabledPlayerController;->mediaConfig:Lcom/kaltura/playkit/PKMediaConfig;

    iget-object v0, p0, Lcom/kaltura/playkit/ads/AdEnabledPlayerController;->adsProvider:Lcom/kaltura/playkit/plugins/ads/AdsProvider;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/kaltura/playkit/ads/AdEnabledPlayerController;->adsProvider:Lcom/kaltura/playkit/plugins/ads/AdsProvider;

    invoke-interface {v0}, Lcom/kaltura/playkit/plugins/ads/AdsProvider;->isAdRequested()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/kaltura/playkit/ads/AdEnabledPlayerController;->log:Lcom/kaltura/playkit/PKLog;

    const-string v1, "IMA calling super.prepare"

    invoke-virtual {v0, v1}, Lcom/kaltura/playkit/PKLog;->d(Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/kaltura/playkit/PlayerDecorator;->prepare(Lcom/kaltura/playkit/PKMediaConfig;)V

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/kaltura/playkit/ads/AdEnabledPlayerController;->log:Lcom/kaltura/playkit/PKLog;

    const-string v0, "IMA setAdProviderListener"

    invoke-virtual {p1, v0}, Lcom/kaltura/playkit/PKLog;->d(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/kaltura/playkit/ads/AdEnabledPlayerController;->adsProvider:Lcom/kaltura/playkit/plugins/ads/AdsProvider;

    invoke-interface {p1, p0}, Lcom/kaltura/playkit/plugins/ads/AdsProvider;->setAdProviderListener(Lcom/kaltura/playkit/ads/AdEnabledPlayerController;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public seekTo(J)V
    .locals 1

    iget-object v0, p0, Lcom/kaltura/playkit/ads/AdEnabledPlayerController;->adsProvider:Lcom/kaltura/playkit/plugins/ads/AdsProvider;

    invoke-interface {v0}, Lcom/kaltura/playkit/plugins/ads/AdsProvider;->isAdDisplayed()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lcom/kaltura/playkit/ads/AdEnabledPlayerController;->log:Lcom/kaltura/playkit/PKLog;

    const-string p2, "seekTo is not enabled during AD playback"

    invoke-virtual {p1, p2}, Lcom/kaltura/playkit/PKLog;->d(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/kaltura/playkit/PlayerDecorator;->seekTo(J)V

    return-void
.end method

.method public skipAd()V
    .locals 1

    iget-object v0, p0, Lcom/kaltura/playkit/ads/AdEnabledPlayerController;->adsProvider:Lcom/kaltura/playkit/plugins/ads/AdsProvider;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kaltura/playkit/ads/AdEnabledPlayerController;->adsProvider:Lcom/kaltura/playkit/plugins/ads/AdsProvider;

    invoke-interface {v0}, Lcom/kaltura/playkit/plugins/ads/AdsProvider;->isAdError()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/kaltura/playkit/ads/AdEnabledPlayerController;->adsProvider:Lcom/kaltura/playkit/plugins/ads/AdsProvider;

    invoke-interface {v0}, Lcom/kaltura/playkit/plugins/ads/AdsProvider;->skipAd()V

    :cond_0
    return-void
.end method

.method public stop()V
    .locals 2

    sget-object v0, Lcom/kaltura/playkit/ads/AdEnabledPlayerController;->log:Lcom/kaltura/playkit/PKLog;

    const-string v1, "AdEnabled IMA stop"

    invoke-virtual {v0, v1}, Lcom/kaltura/playkit/PKLog;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kaltura/playkit/ads/AdEnabledPlayerController;->adsProvider:Lcom/kaltura/playkit/plugins/ads/AdsProvider;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kaltura/playkit/ads/AdEnabledPlayerController;->adsProvider:Lcom/kaltura/playkit/plugins/ads/AdsProvider;

    invoke-interface {v0}, Lcom/kaltura/playkit/plugins/ads/AdsProvider;->destroyAdsManager()V

    :cond_0
    invoke-super {p0}, Lcom/kaltura/playkit/PlayerDecorator;->stop()V

    return-void
.end method
