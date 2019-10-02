.class Lcom/facebook/ads/internal/c/d$2;
.super Lcom/facebook/ads/internal/adapters/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/internal/c/d;->a(Ljava/util/EnumSet;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/c/d;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/c/d;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/c/d$2;->a:Lcom/facebook/ads/internal/c/d;

    invoke-direct {p0}, Lcom/facebook/ads/internal/adapters/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/facebook/ads/internal/c/d$2;->a:Lcom/facebook/ads/internal/c/d;

    invoke-static {v0}, Lcom/facebook/ads/internal/c/d;->b(Lcom/facebook/ads/internal/c/d;)Lcom/facebook/ads/InterstitialAdExtendedListener;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/internal/c/d$2;->a:Lcom/facebook/ads/internal/c/d;

    invoke-static {v1}, Lcom/facebook/ads/internal/c/d;->a(Lcom/facebook/ads/internal/c/d;)Lcom/facebook/ads/internal/c/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/ads/internal/c/g;->a()Lcom/facebook/ads/InterstitialAd;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/facebook/ads/InterstitialAdExtendedListener;->onAdClicked(Lcom/facebook/ads/Ad;)V

    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public a(Lcom/facebook/ads/internal/adapters/AdAdapter;)V
    .locals 1

    iget-object p1, p0, Lcom/facebook/ads/internal/c/d$2;->a:Lcom/facebook/ads/internal/c/d;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/facebook/ads/internal/c/d;->a(Lcom/facebook/ads/internal/c/d;Z)Z

    iget-object p1, p0, Lcom/facebook/ads/internal/c/d$2;->a:Lcom/facebook/ads/internal/c/d;

    invoke-static {p1}, Lcom/facebook/ads/internal/c/d;->b(Lcom/facebook/ads/internal/c/d;)Lcom/facebook/ads/InterstitialAdExtendedListener;

    move-result-object p1

    iget-object v0, p0, Lcom/facebook/ads/internal/c/d$2;->a:Lcom/facebook/ads/internal/c/d;

    invoke-static {v0}, Lcom/facebook/ads/internal/c/d;->a(Lcom/facebook/ads/internal/c/d;)Lcom/facebook/ads/internal/c/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/c/g;->a()Lcom/facebook/ads/InterstitialAd;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/facebook/ads/InterstitialAdExtendedListener;->onAdLoaded(Lcom/facebook/ads/Ad;)V

    return-void
.end method

.method public a(Lcom/facebook/ads/internal/protocol/a;)V
    .locals 2

    iget-object v0, p0, Lcom/facebook/ads/internal/c/d$2;->a:Lcom/facebook/ads/internal/c/d;

    invoke-static {v0}, Lcom/facebook/ads/internal/c/d;->b(Lcom/facebook/ads/internal/c/d;)Lcom/facebook/ads/InterstitialAdExtendedListener;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/internal/c/d$2;->a:Lcom/facebook/ads/internal/c/d;

    invoke-static {v1}, Lcom/facebook/ads/internal/c/d;->a(Lcom/facebook/ads/internal/c/d;)Lcom/facebook/ads/internal/c/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/ads/internal/c/g;->a()Lcom/facebook/ads/InterstitialAd;

    move-result-object v1

    invoke-static {p1}, Lcom/facebook/ads/AdError;->getAdErrorFromWrapper(Lcom/facebook/ads/internal/protocol/a;)Lcom/facebook/ads/AdError;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/facebook/ads/InterstitialAdExtendedListener;->onError(Lcom/facebook/ads/Ad;Lcom/facebook/ads/AdError;)V

    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/facebook/ads/internal/c/d$2;->a:Lcom/facebook/ads/internal/c/d;

    invoke-static {v0}, Lcom/facebook/ads/internal/c/d;->b(Lcom/facebook/ads/internal/c/d;)Lcom/facebook/ads/InterstitialAdExtendedListener;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/internal/c/d$2;->a:Lcom/facebook/ads/internal/c/d;

    invoke-static {v1}, Lcom/facebook/ads/internal/c/d;->a(Lcom/facebook/ads/internal/c/d;)Lcom/facebook/ads/internal/c/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/ads/internal/c/g;->a()Lcom/facebook/ads/InterstitialAd;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/facebook/ads/InterstitialAdExtendedListener;->onLoggingImpression(Lcom/facebook/ads/Ad;)V

    return-void
.end method

.method public d()V
    .locals 2

    iget-object v0, p0, Lcom/facebook/ads/internal/c/d$2;->a:Lcom/facebook/ads/internal/c/d;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/facebook/ads/internal/c/d;->b(Lcom/facebook/ads/internal/c/d;Z)Z

    iget-object v0, p0, Lcom/facebook/ads/internal/c/d$2;->a:Lcom/facebook/ads/internal/c/d;

    invoke-static {v0}, Lcom/facebook/ads/internal/c/d;->c(Lcom/facebook/ads/internal/c/d;)Lcom/facebook/ads/internal/b/f;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/c/d$2;->a:Lcom/facebook/ads/internal/c/d;

    invoke-static {v0}, Lcom/facebook/ads/internal/c/d;->c(Lcom/facebook/ads/internal/c/d;)Lcom/facebook/ads/internal/b/f;

    move-result-object v0

    new-instance v1, Lcom/facebook/ads/internal/c/d$2$1;

    invoke-direct {v1, p0}, Lcom/facebook/ads/internal/c/d$2$1;-><init>(Lcom/facebook/ads/internal/c/d$2;)V

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/b/f;->a(Lcom/facebook/ads/internal/adapters/a;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/c/d$2;->a:Lcom/facebook/ads/internal/c/d;

    invoke-static {v0}, Lcom/facebook/ads/internal/c/d;->c(Lcom/facebook/ads/internal/c/d;)Lcom/facebook/ads/internal/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/b/f;->f()V

    iget-object v0, p0, Lcom/facebook/ads/internal/c/d$2;->a:Lcom/facebook/ads/internal/c/d;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/facebook/ads/internal/c/d;->a(Lcom/facebook/ads/internal/c/d;Lcom/facebook/ads/internal/b/f;)Lcom/facebook/ads/internal/b/f;

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/internal/c/d$2;->a:Lcom/facebook/ads/internal/c/d;

    invoke-static {v0}, Lcom/facebook/ads/internal/c/d;->b(Lcom/facebook/ads/internal/c/d;)Lcom/facebook/ads/InterstitialAdExtendedListener;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/internal/c/d$2;->a:Lcom/facebook/ads/internal/c/d;

    invoke-static {v1}, Lcom/facebook/ads/internal/c/d;->a(Lcom/facebook/ads/internal/c/d;)Lcom/facebook/ads/internal/c/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/ads/internal/c/g;->a()Lcom/facebook/ads/InterstitialAd;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/facebook/ads/InterstitialAdExtendedListener;->onInterstitialDismissed(Lcom/facebook/ads/Ad;)V

    return-void
.end method

.method public e()V
    .locals 2

    iget-object v0, p0, Lcom/facebook/ads/internal/c/d$2;->a:Lcom/facebook/ads/internal/c/d;

    invoke-static {v0}, Lcom/facebook/ads/internal/c/d;->b(Lcom/facebook/ads/internal/c/d;)Lcom/facebook/ads/InterstitialAdExtendedListener;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/internal/c/d$2;->a:Lcom/facebook/ads/internal/c/d;

    invoke-static {v1}, Lcom/facebook/ads/internal/c/d;->a(Lcom/facebook/ads/internal/c/d;)Lcom/facebook/ads/internal/c/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/ads/internal/c/g;->a()Lcom/facebook/ads/InterstitialAd;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/facebook/ads/InterstitialAdExtendedListener;->onInterstitialDisplayed(Lcom/facebook/ads/Ad;)V

    return-void
.end method

.method public f()V
    .locals 2

    iget-object v0, p0, Lcom/facebook/ads/internal/c/d$2;->a:Lcom/facebook/ads/internal/c/d;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/facebook/ads/internal/c/d;->b(Lcom/facebook/ads/internal/c/d;Z)Z

    iget-object v0, p0, Lcom/facebook/ads/internal/c/d$2;->a:Lcom/facebook/ads/internal/c/d;

    invoke-static {v0}, Lcom/facebook/ads/internal/c/d;->b(Lcom/facebook/ads/internal/c/d;)Lcom/facebook/ads/InterstitialAdExtendedListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/InterstitialAdExtendedListener;->onInterstitialActivityDestroyed()V

    return-void
.end method
