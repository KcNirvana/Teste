.class public Lcom/xiaomi/miglobaladsdk/interstitialad/InterstitialAdManager;
.super Ljava/lang/Object;
.source "InterstitialAdManager.java"

# interfaces
.implements Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdManager$NativeAdManagerListener;


# instance fields
.field private mInterstitialAdCallback:Lcom/xiaomi/miglobaladsdk/interstitialad/InterstitialAdCallback;

.field private mInterstitialAdManagerInternal:Lcom/xiaomi/miglobaladsdk/interstitialad/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/xiaomi/miglobaladsdk/interstitialad/a;

    invoke-direct {v0, p1, p2}, Lcom/xiaomi/miglobaladsdk/interstitialad/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaomi/miglobaladsdk/interstitialad/InterstitialAdManager;->mInterstitialAdManagerInternal:Lcom/xiaomi/miglobaladsdk/interstitialad/a;

    iget-object p1, p0, Lcom/xiaomi/miglobaladsdk/interstitialad/InterstitialAdManager;->mInterstitialAdManagerInternal:Lcom/xiaomi/miglobaladsdk/interstitialad/a;

    invoke-virtual {p1, p0}, Lcom/xiaomi/miglobaladsdk/interstitialad/a;->a(Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdManager$NativeAdManagerListener;)V

    return-void
.end method


# virtual methods
.method public adClicked(Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;)V
    .locals 0

    iget-object p1, p0, Lcom/xiaomi/miglobaladsdk/interstitialad/InterstitialAdManager;->mInterstitialAdCallback:Lcom/xiaomi/miglobaladsdk/interstitialad/InterstitialAdCallback;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/xiaomi/miglobaladsdk/interstitialad/InterstitialAdManager;->mInterstitialAdCallback:Lcom/xiaomi/miglobaladsdk/interstitialad/InterstitialAdCallback;

    invoke-interface {p1}, Lcom/xiaomi/miglobaladsdk/interstitialad/InterstitialAdCallback;->onAdClicked()V

    :cond_0
    return-void
.end method

.method public adDisliked(Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;I)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/interstitialad/InterstitialAdManager;->mInterstitialAdCallback:Lcom/xiaomi/miglobaladsdk/interstitialad/InterstitialAdCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/interstitialad/InterstitialAdManager;->mInterstitialAdCallback:Lcom/xiaomi/miglobaladsdk/interstitialad/InterstitialAdCallback;

    invoke-interface {v0, p1, p2}, Lcom/xiaomi/miglobaladsdk/interstitialad/InterstitialAdCallback;->adDisliked(Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;I)V

    :cond_0
    return-void
.end method

.method public adFailedToLoad(I)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/interstitialad/InterstitialAdManager;->mInterstitialAdCallback:Lcom/xiaomi/miglobaladsdk/interstitialad/InterstitialAdCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/interstitialad/InterstitialAdManager;->mInterstitialAdCallback:Lcom/xiaomi/miglobaladsdk/interstitialad/InterstitialAdCallback;

    invoke-interface {v0, p1}, Lcom/xiaomi/miglobaladsdk/interstitialad/InterstitialAdCallback;->onAdLoadedFailed(I)V

    :cond_0
    return-void
.end method

.method public adImpression(Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;)V
    .locals 0

    return-void
.end method

.method public adLoaded()V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/interstitialad/InterstitialAdManager;->mInterstitialAdCallback:Lcom/xiaomi/miglobaladsdk/interstitialad/InterstitialAdCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/interstitialad/InterstitialAdManager;->mInterstitialAdCallback:Lcom/xiaomi/miglobaladsdk/interstitialad/InterstitialAdCallback;

    invoke-interface {v0}, Lcom/xiaomi/miglobaladsdk/interstitialad/InterstitialAdCallback;->onAdLoaded()V

    :cond_0
    return-void
.end method

.method public destroyAd()V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/interstitialad/InterstitialAdManager;->mInterstitialAdManagerInternal:Lcom/xiaomi/miglobaladsdk/interstitialad/a;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/interstitialad/InterstitialAdManager;->mInterstitialAdManagerInternal:Lcom/xiaomi/miglobaladsdk/interstitialad/a;

    invoke-virtual {v0}, Lcom/xiaomi/miglobaladsdk/interstitialad/a;->c()V

    return-void
.end method

.method public getAdType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/interstitialad/InterstitialAdManager;->mInterstitialAdCallback:Lcom/xiaomi/miglobaladsdk/interstitialad/InterstitialAdCallback;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/interstitialad/InterstitialAdManager;->mInterstitialAdManagerInternal:Lcom/xiaomi/miglobaladsdk/interstitialad/a;

    invoke-virtual {v0}, Lcom/xiaomi/miglobaladsdk/interstitialad/a;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isReady()Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/interstitialad/InterstitialAdManager;->mInterstitialAdManagerInternal:Lcom/xiaomi/miglobaladsdk/interstitialad/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/interstitialad/InterstitialAdManager;->mInterstitialAdManagerInternal:Lcom/xiaomi/miglobaladsdk/interstitialad/a;

    invoke-virtual {v0}, Lcom/xiaomi/miglobaladsdk/interstitialad/a;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public loadAd()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/interstitialad/InterstitialAdManager;->mInterstitialAdManagerInternal:Lcom/xiaomi/miglobaladsdk/interstitialad/a;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/interstitialad/InterstitialAdManager;->mInterstitialAdManagerInternal:Lcom/xiaomi/miglobaladsdk/interstitialad/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaomi/miglobaladsdk/interstitialad/a;->a(Z)V

    return-void
.end method

.method public preload()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/interstitialad/InterstitialAdManager;->mInterstitialAdManagerInternal:Lcom/xiaomi/miglobaladsdk/interstitialad/a;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/interstitialad/InterstitialAdManager;->mInterstitialAdManagerInternal:Lcom/xiaomi/miglobaladsdk/interstitialad/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaomi/miglobaladsdk/interstitialad/a;->a(Z)V

    return-void
.end method

.method public setInterstitialAdCallback(Lcom/xiaomi/miglobaladsdk/interstitialad/InterstitialAdCallback;)V
    .locals 1

    iput-object p1, p0, Lcom/xiaomi/miglobaladsdk/interstitialad/InterstitialAdManager;->mInterstitialAdCallback:Lcom/xiaomi/miglobaladsdk/interstitialad/InterstitialAdCallback;

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/interstitialad/InterstitialAdManager;->mInterstitialAdManagerInternal:Lcom/xiaomi/miglobaladsdk/interstitialad/a;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/xiaomi/miglobaladsdk/AdLoadParams;

    invoke-direct {v0}, Lcom/xiaomi/miglobaladsdk/AdLoadParams;-><init>()V

    invoke-virtual {v0, p1}, Lcom/xiaomi/miglobaladsdk/AdLoadParams;->setExtraObject(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/xiaomi/miglobaladsdk/interstitialad/InterstitialAdManager;->mInterstitialAdManagerInternal:Lcom/xiaomi/miglobaladsdk/interstitialad/a;

    invoke-virtual {p1, v0}, Lcom/xiaomi/miglobaladsdk/interstitialad/a;->a(Lcom/xiaomi/miglobaladsdk/AdLoadParams;)V

    :cond_0
    return-void
.end method

.method public showAd()V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/interstitialad/InterstitialAdManager;->mInterstitialAdManagerInternal:Lcom/xiaomi/miglobaladsdk/interstitialad/a;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/interstitialad/InterstitialAdManager;->mInterstitialAdManagerInternal:Lcom/xiaomi/miglobaladsdk/interstitialad/a;

    invoke-virtual {v0}, Lcom/xiaomi/miglobaladsdk/interstitialad/a;->b()V

    return-void
.end method
