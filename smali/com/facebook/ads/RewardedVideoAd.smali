.class public Lcom/facebook/ads/RewardedVideoAd;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/facebook/ads/Ad;


# annotations
.annotation build Landroid/support/annotation/UiThread;
.end annotation


# static fields
.field public static final UNSET_VIDEO_DURATION:I = -0x1


# instance fields
.field private final a:Lcom/facebook/ads/internal/c/j;

.field private final b:Lcom/facebook/ads/internal/c/i;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/facebook/ads/internal/c/j;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1, p2, p0}, Lcom/facebook/ads/internal/c/j;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/ads/RewardedVideoAd;)V

    iput-object v0, p0, Lcom/facebook/ads/RewardedVideoAd;->a:Lcom/facebook/ads/internal/c/j;

    new-instance p1, Lcom/facebook/ads/internal/c/i;

    iget-object p2, p0, Lcom/facebook/ads/RewardedVideoAd;->a:Lcom/facebook/ads/internal/c/j;

    invoke-direct {p1, p2}, Lcom/facebook/ads/internal/c/i;-><init>(Lcom/facebook/ads/internal/c/j;)V

    iput-object p1, p0, Lcom/facebook/ads/RewardedVideoAd;->b:Lcom/facebook/ads/internal/c/i;

    return-void
.end method

.method private a(Ljava/lang/String;Z)V
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/RewardedVideoAd;->b:Lcom/facebook/ads/internal/c/i;

    invoke-virtual {v0, p0, p1, p2}, Lcom/facebook/ads/internal/c/i;->a(Lcom/facebook/ads/RewardedVideoAd;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/RewardedVideoAd;->b:Lcom/facebook/ads/internal/c/i;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/c/i;->d()V

    return-void
.end method

.method protected finalize()V
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/RewardedVideoAd;->b:Lcom/facebook/ads/internal/c/i;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/c/i;->e()V

    return-void
.end method

.method public getPlacementId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/RewardedVideoAd;->a:Lcom/facebook/ads/internal/c/j;

    iget-object v0, v0, Lcom/facebook/ads/internal/c/j;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoDuration()I
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/RewardedVideoAd;->a:Lcom/facebook/ads/internal/c/j;

    iget v0, v0, Lcom/facebook/ads/internal/c/j;->h:I

    return v0
.end method

.method public isAdInvalidated()Z
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/RewardedVideoAd;->b:Lcom/facebook/ads/internal/c/i;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/c/i;->g()Z

    move-result v0

    return v0
.end method

.method public isAdLoaded()Z
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/RewardedVideoAd;->b:Lcom/facebook/ads/internal/c/i;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/c/i;->f()Z

    move-result v0

    return v0
.end method

.method public loadAd()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/facebook/ads/RewardedVideoAd;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method public loadAd(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/facebook/ads/RewardedVideoAd;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method public loadAdFromBid(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/RewardedVideoAd;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method public loadAdFromBid(Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/RewardedVideoAd;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method public setAdListener(Lcom/facebook/ads/RewardedVideoAdListener;)V
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/RewardedVideoAd;->a:Lcom/facebook/ads/internal/c/j;

    iput-object p1, v0, Lcom/facebook/ads/internal/c/j;->c:Lcom/facebook/ads/RewardedVideoAdListener;

    return-void
.end method

.method public setExtraHints(Lcom/facebook/ads/ExtraHints;)V
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/RewardedVideoAd;->a:Lcom/facebook/ads/internal/c/j;

    invoke-virtual {p1}, Lcom/facebook/ads/ExtraHints;->getHints()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/facebook/ads/internal/c/j;->d:Ljava/lang/String;

    return-void
.end method

.method public setRewardData(Lcom/facebook/ads/RewardData;)V
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/RewardedVideoAd;->b:Lcom/facebook/ads/internal/c/i;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/internal/c/i;->a(Lcom/facebook/ads/RewardData;)V

    return-void
.end method

.method public show()Z
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/facebook/ads/RewardedVideoAd;->show(I)Z

    move-result v0

    return v0
.end method

.method public show(I)Z
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/RewardedVideoAd;->b:Lcom/facebook/ads/internal/c/i;

    invoke-virtual {v0, p0, p1}, Lcom/facebook/ads/internal/c/i;->a(Lcom/facebook/ads/RewardedVideoAd;I)Z

    move-result p1

    return p1
.end method
