.class public Lcom/xiaomi/miglobaladsdk/rewardedvideoad/RewardedVideoAdManager;
.super Ljava/lang/Object;
.source "RewardedVideoAdManager.java"

# interfaces
.implements Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdManager$NativeAdManagerListener;


# instance fields
.field private mRewardedVideoAdCallback:Lcom/xiaomi/miglobaladsdk/rewardedvideoad/RewardedVideoAdCallback;

.field private mRewardedVideoAdManagerInternal:Lcom/xiaomi/miglobaladsdk/rewardedvideoad/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/xiaomi/miglobaladsdk/rewardedvideoad/a;

    invoke-direct {v0, p1, p2}, Lcom/xiaomi/miglobaladsdk/rewardedvideoad/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaomi/miglobaladsdk/rewardedvideoad/RewardedVideoAdManager;->mRewardedVideoAdManagerInternal:Lcom/xiaomi/miglobaladsdk/rewardedvideoad/a;

    iget-object p1, p0, Lcom/xiaomi/miglobaladsdk/rewardedvideoad/RewardedVideoAdManager;->mRewardedVideoAdManagerInternal:Lcom/xiaomi/miglobaladsdk/rewardedvideoad/a;

    invoke-virtual {p1, p0}, Lcom/xiaomi/miglobaladsdk/rewardedvideoad/a;->a(Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdManager$NativeAdManagerListener;)V

    return-void
.end method


# virtual methods
.method public adClicked(Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/rewardedvideoad/RewardedVideoAdManager;->mRewardedVideoAdCallback:Lcom/xiaomi/miglobaladsdk/rewardedvideoad/RewardedVideoAdCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/rewardedvideoad/RewardedVideoAdManager;->mRewardedVideoAdCallback:Lcom/xiaomi/miglobaladsdk/rewardedvideoad/RewardedVideoAdCallback;

    invoke-interface {v0, p1}, Lcom/xiaomi/miglobaladsdk/rewardedvideoad/RewardedVideoAdCallback;->adClicked(Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;)V

    :cond_0
    return-void
.end method

.method public adDisliked(Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;I)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/rewardedvideoad/RewardedVideoAdManager;->mRewardedVideoAdCallback:Lcom/xiaomi/miglobaladsdk/rewardedvideoad/RewardedVideoAdCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/rewardedvideoad/RewardedVideoAdManager;->mRewardedVideoAdCallback:Lcom/xiaomi/miglobaladsdk/rewardedvideoad/RewardedVideoAdCallback;

    invoke-interface {v0, p1, p2}, Lcom/xiaomi/miglobaladsdk/rewardedvideoad/RewardedVideoAdCallback;->adDisliked(Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;I)V

    :cond_0
    return-void
.end method

.method public adFailedToLoad(I)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/rewardedvideoad/RewardedVideoAdManager;->mRewardedVideoAdCallback:Lcom/xiaomi/miglobaladsdk/rewardedvideoad/RewardedVideoAdCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/rewardedvideoad/RewardedVideoAdManager;->mRewardedVideoAdCallback:Lcom/xiaomi/miglobaladsdk/rewardedvideoad/RewardedVideoAdCallback;

    invoke-interface {v0, p1}, Lcom/xiaomi/miglobaladsdk/rewardedvideoad/RewardedVideoAdCallback;->adFailedToLoad(I)V

    :cond_0
    return-void
.end method

.method public adImpression(Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/rewardedvideoad/RewardedVideoAdManager;->mRewardedVideoAdCallback:Lcom/xiaomi/miglobaladsdk/rewardedvideoad/RewardedVideoAdCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/rewardedvideoad/RewardedVideoAdManager;->mRewardedVideoAdCallback:Lcom/xiaomi/miglobaladsdk/rewardedvideoad/RewardedVideoAdCallback;

    invoke-interface {v0, p1}, Lcom/xiaomi/miglobaladsdk/rewardedvideoad/RewardedVideoAdCallback;->adImpression(Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;)V

    :cond_0
    return-void
.end method

.method public adLoaded()V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/rewardedvideoad/RewardedVideoAdManager;->mRewardedVideoAdCallback:Lcom/xiaomi/miglobaladsdk/rewardedvideoad/RewardedVideoAdCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/rewardedvideoad/RewardedVideoAdManager;->mRewardedVideoAdCallback:Lcom/xiaomi/miglobaladsdk/rewardedvideoad/RewardedVideoAdCallback;

    invoke-interface {v0}, Lcom/xiaomi/miglobaladsdk/rewardedvideoad/RewardedVideoAdCallback;->adLoaded()V

    :cond_0
    return-void
.end method

.method public destroyAd()V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/rewardedvideoad/RewardedVideoAdManager;->mRewardedVideoAdManagerInternal:Lcom/xiaomi/miglobaladsdk/rewardedvideoad/a;

    invoke-virtual {v0}, Lcom/xiaomi/miglobaladsdk/rewardedvideoad/a;->c()V

    return-void
.end method

.method public getAdType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/rewardedvideoad/RewardedVideoAdManager;->mRewardedVideoAdCallback:Lcom/xiaomi/miglobaladsdk/rewardedvideoad/RewardedVideoAdCallback;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/rewardedvideoad/RewardedVideoAdManager;->mRewardedVideoAdManagerInternal:Lcom/xiaomi/miglobaladsdk/rewardedvideoad/a;

    invoke-virtual {v0}, Lcom/xiaomi/miglobaladsdk/rewardedvideoad/a;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isReady()Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/rewardedvideoad/RewardedVideoAdManager;->mRewardedVideoAdManagerInternal:Lcom/xiaomi/miglobaladsdk/rewardedvideoad/a;

    invoke-virtual {v0}, Lcom/xiaomi/miglobaladsdk/rewardedvideoad/a;->d()Z

    move-result v0

    return v0
.end method

.method public loadAd()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/rewardedvideoad/RewardedVideoAdManager;->mRewardedVideoAdManagerInternal:Lcom/xiaomi/miglobaladsdk/rewardedvideoad/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaomi/miglobaladsdk/rewardedvideoad/a;->a(Z)V

    return-void
.end method

.method public preLoadAd()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/rewardedvideoad/RewardedVideoAdManager;->mRewardedVideoAdManagerInternal:Lcom/xiaomi/miglobaladsdk/rewardedvideoad/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaomi/miglobaladsdk/rewardedvideoad/a;->a(Z)V

    return-void
.end method

.method public setRewardedVideoAdCallback(Lcom/xiaomi/miglobaladsdk/rewardedvideoad/RewardedVideoAdCallback;)V
    .locals 1

    iput-object p1, p0, Lcom/xiaomi/miglobaladsdk/rewardedvideoad/RewardedVideoAdManager;->mRewardedVideoAdCallback:Lcom/xiaomi/miglobaladsdk/rewardedvideoad/RewardedVideoAdCallback;

    new-instance v0, Lcom/xiaomi/miglobaladsdk/AdLoadParams;

    invoke-direct {v0}, Lcom/xiaomi/miglobaladsdk/AdLoadParams;-><init>()V

    invoke-virtual {v0, p1}, Lcom/xiaomi/miglobaladsdk/AdLoadParams;->setExtraObject(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/xiaomi/miglobaladsdk/rewardedvideoad/RewardedVideoAdManager;->mRewardedVideoAdManagerInternal:Lcom/xiaomi/miglobaladsdk/rewardedvideoad/a;

    invoke-virtual {p1, v0}, Lcom/xiaomi/miglobaladsdk/rewardedvideoad/a;->a(Lcom/xiaomi/miglobaladsdk/AdLoadParams;)V

    return-void
.end method

.method public showAd()V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/rewardedvideoad/RewardedVideoAdManager;->mRewardedVideoAdManagerInternal:Lcom/xiaomi/miglobaladsdk/rewardedvideoad/a;

    invoke-virtual {v0}, Lcom/xiaomi/miglobaladsdk/rewardedvideoad/a;->b()V

    return-void
.end method
