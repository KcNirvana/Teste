.class Lcom/facebook/ads/internal/c/e$1;
.super Lcom/facebook/ads/internal/adapters/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/internal/c/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/c/e;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/c/e;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/c/e$1;->a:Lcom/facebook/ads/internal/c/e;

    invoke-direct {p0}, Lcom/facebook/ads/internal/adapters/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/facebook/ads/internal/c/e$1;->a:Lcom/facebook/ads/internal/c/e;

    invoke-static {v0}, Lcom/facebook/ads/internal/c/e;->b(Lcom/facebook/ads/internal/c/e;)Lcom/facebook/ads/S2SRewardedVideoAdExtendedListener;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/internal/c/e$1;->a:Lcom/facebook/ads/internal/c/e;

    invoke-static {v1}, Lcom/facebook/ads/internal/c/e;->a(Lcom/facebook/ads/internal/c/e;)Lcom/facebook/ads/internal/c/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/ads/internal/c/j;->a()Lcom/facebook/ads/RewardedVideoAd;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/facebook/ads/S2SRewardedVideoAdExtendedListener;->onAdClicked(Lcom/facebook/ads/Ad;)V

    return-void
.end method

.method public a(Lcom/facebook/ads/internal/adapters/AdAdapter;)V
    .locals 1

    check-cast p1, Lcom/facebook/ads/internal/adapters/s;

    iget-object v0, p0, Lcom/facebook/ads/internal/c/e$1;->a:Lcom/facebook/ads/internal/c/e;

    invoke-static {v0}, Lcom/facebook/ads/internal/c/e;->a(Lcom/facebook/ads/internal/c/e;)Lcom/facebook/ads/internal/c/j;

    move-result-object v0

    iget-object v0, v0, Lcom/facebook/ads/internal/c/j;->e:Lcom/facebook/ads/RewardData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/c/e$1;->a:Lcom/facebook/ads/internal/c/e;

    invoke-static {v0}, Lcom/facebook/ads/internal/c/e;->a(Lcom/facebook/ads/internal/c/e;)Lcom/facebook/ads/internal/c/j;

    move-result-object v0

    iget-object v0, v0, Lcom/facebook/ads/internal/c/j;->e:Lcom/facebook/ads/RewardData;

    invoke-virtual {p1, v0}, Lcom/facebook/ads/internal/adapters/s;->a(Lcom/facebook/ads/RewardData;)V

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/internal/c/e$1;->a:Lcom/facebook/ads/internal/c/e;

    invoke-static {v0}, Lcom/facebook/ads/internal/c/e;->a(Lcom/facebook/ads/internal/c/e;)Lcom/facebook/ads/internal/c/j;

    move-result-object v0

    invoke-virtual {p1}, Lcom/facebook/ads/internal/adapters/s;->a()I

    move-result p1

    iput p1, v0, Lcom/facebook/ads/internal/c/j;->h:I

    iget-object p1, p0, Lcom/facebook/ads/internal/c/e$1;->a:Lcom/facebook/ads/internal/c/e;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/facebook/ads/internal/c/e;->b(Lcom/facebook/ads/internal/c/e;Z)Z

    iget-object p1, p0, Lcom/facebook/ads/internal/c/e$1;->a:Lcom/facebook/ads/internal/c/e;

    invoke-static {p1}, Lcom/facebook/ads/internal/c/e;->b(Lcom/facebook/ads/internal/c/e;)Lcom/facebook/ads/S2SRewardedVideoAdExtendedListener;

    move-result-object p1

    iget-object v0, p0, Lcom/facebook/ads/internal/c/e$1;->a:Lcom/facebook/ads/internal/c/e;

    invoke-static {v0}, Lcom/facebook/ads/internal/c/e;->a(Lcom/facebook/ads/internal/c/e;)Lcom/facebook/ads/internal/c/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/c/j;->a()Lcom/facebook/ads/RewardedVideoAd;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/facebook/ads/S2SRewardedVideoAdExtendedListener;->onAdLoaded(Lcom/facebook/ads/Ad;)V

    return-void
.end method

.method public a(Lcom/facebook/ads/internal/protocol/a;)V
    .locals 2

    iget-object v0, p0, Lcom/facebook/ads/internal/c/e$1;->a:Lcom/facebook/ads/internal/c/e;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/facebook/ads/internal/c/e;->a(Lcom/facebook/ads/internal/c/e;Z)V

    iget-object v0, p0, Lcom/facebook/ads/internal/c/e$1;->a:Lcom/facebook/ads/internal/c/e;

    invoke-static {v0}, Lcom/facebook/ads/internal/c/e;->b(Lcom/facebook/ads/internal/c/e;)Lcom/facebook/ads/S2SRewardedVideoAdExtendedListener;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/internal/c/e$1;->a:Lcom/facebook/ads/internal/c/e;

    invoke-static {v1}, Lcom/facebook/ads/internal/c/e;->a(Lcom/facebook/ads/internal/c/e;)Lcom/facebook/ads/internal/c/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/ads/internal/c/j;->a()Lcom/facebook/ads/RewardedVideoAd;

    move-result-object v1

    invoke-static {p1}, Lcom/facebook/ads/AdError;->getAdErrorFromWrapper(Lcom/facebook/ads/internal/protocol/a;)Lcom/facebook/ads/AdError;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/facebook/ads/S2SRewardedVideoAdExtendedListener;->onError(Lcom/facebook/ads/Ad;Lcom/facebook/ads/AdError;)V

    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/facebook/ads/internal/c/e$1;->a:Lcom/facebook/ads/internal/c/e;

    invoke-static {v0}, Lcom/facebook/ads/internal/c/e;->b(Lcom/facebook/ads/internal/c/e;)Lcom/facebook/ads/S2SRewardedVideoAdExtendedListener;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/internal/c/e$1;->a:Lcom/facebook/ads/internal/c/e;

    invoke-static {v1}, Lcom/facebook/ads/internal/c/e;->a(Lcom/facebook/ads/internal/c/e;)Lcom/facebook/ads/internal/c/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/ads/internal/c/j;->a()Lcom/facebook/ads/RewardedVideoAd;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/facebook/ads/S2SRewardedVideoAdExtendedListener;->onLoggingImpression(Lcom/facebook/ads/Ad;)V

    return-void
.end method

.method public g()V
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/c/e$1;->a:Lcom/facebook/ads/internal/c/e;

    invoke-static {v0}, Lcom/facebook/ads/internal/c/e;->b(Lcom/facebook/ads/internal/c/e;)Lcom/facebook/ads/S2SRewardedVideoAdExtendedListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/S2SRewardedVideoAdExtendedListener;->onRewardedVideoCompleted()V

    return-void
.end method

.method public h()V
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/c/e$1;->a:Lcom/facebook/ads/internal/c/e;

    invoke-static {v0}, Lcom/facebook/ads/internal/c/e;->b(Lcom/facebook/ads/internal/c/e;)Lcom/facebook/ads/S2SRewardedVideoAdExtendedListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/S2SRewardedVideoAdExtendedListener;->onRewardedVideoClosed()V

    return-void
.end method

.method public i()V
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/c/e$1;->a:Lcom/facebook/ads/internal/c/e;

    invoke-static {v0}, Lcom/facebook/ads/internal/c/e;->b(Lcom/facebook/ads/internal/c/e;)Lcom/facebook/ads/S2SRewardedVideoAdExtendedListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/S2SRewardedVideoAdExtendedListener;->onRewardServerFailed()V

    return-void
.end method

.method public j()V
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/c/e$1;->a:Lcom/facebook/ads/internal/c/e;

    invoke-static {v0}, Lcom/facebook/ads/internal/c/e;->b(Lcom/facebook/ads/internal/c/e;)Lcom/facebook/ads/S2SRewardedVideoAdExtendedListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/S2SRewardedVideoAdExtendedListener;->onRewardServerSuccess()V

    return-void
.end method

.method public k()V
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/c/e$1;->a:Lcom/facebook/ads/internal/c/e;

    invoke-static {v0}, Lcom/facebook/ads/internal/c/e;->b(Lcom/facebook/ads/internal/c/e;)Lcom/facebook/ads/S2SRewardedVideoAdExtendedListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/S2SRewardedVideoAdExtendedListener;->onRewardedVideoActivityDestroyed()V

    return-void
.end method
