.class public final Lcom/facebook/ads/internal/c/a/b;
.super Lcom/facebook/ads/internal/c/a/a;

# interfaces
.implements Lcom/facebook/ads/InterstitialAdExtendedListener;


# instance fields
.field private final c:Lcom/facebook/ads/internal/c/d;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/facebook/ads/internal/c/a/c;Lcom/facebook/ads/internal/c/d;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/internal/c/a/a;-><init>(Ljava/lang/String;Lcom/facebook/ads/internal/c/a/c;)V

    iput-object p3, p0, Lcom/facebook/ads/internal/c/a/b;->c:Lcom/facebook/ads/internal/c/d;

    return-void
.end method


# virtual methods
.method public onAdClicked(Lcom/facebook/ads/Ad;)V
    .locals 3

    iget-object p1, p0, Lcom/facebook/ads/internal/c/a/b;->b:Lcom/facebook/ads/internal/c/a/c;

    iget-object v0, p0, Lcom/facebook/ads/internal/c/a/b;->a:Ljava/lang/String;

    const/16 v1, 0x400

    const/4 v2, 0x0

    invoke-interface {p1, v1, v0, v2}, Lcom/facebook/ads/internal/c/a/c;->a(ILjava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public onAdLoaded(Lcom/facebook/ads/Ad;)V
    .locals 3

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v0, "LONG_INVALIDATION_TIME_KEY"

    iget-object v1, p0, Lcom/facebook/ads/internal/c/a/b;->c:Lcom/facebook/ads/internal/c/d;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/c/d;->b()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/facebook/ads/internal/c/a/b;->b:Lcom/facebook/ads/internal/c/a/c;

    iget-object v1, p0, Lcom/facebook/ads/internal/c/a/b;->a:Ljava/lang/String;

    const/16 v2, 0x3fc

    invoke-interface {v0, v2, v1, p1}, Lcom/facebook/ads/internal/c/a/c;->a(ILjava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public onError(Lcom/facebook/ads/Ad;Lcom/facebook/ads/AdError;)V
    .locals 2

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v0, "STR_ERROR_MESSAGE_KEY"

    invoke-virtual {p2}, Lcom/facebook/ads/AdError;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "INT_ERROR_CODE_KEY"

    invoke-virtual {p2}, Lcom/facebook/ads/AdError;->getErrorCode()I

    move-result p2

    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object p2, p0, Lcom/facebook/ads/internal/c/a/b;->b:Lcom/facebook/ads/internal/c/a/c;

    iget-object v0, p0, Lcom/facebook/ads/internal/c/a/b;->a:Ljava/lang/String;

    const/16 v1, 0x3ff

    invoke-interface {p2, v1, v0, p1}, Lcom/facebook/ads/internal/c/a/c;->a(ILjava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public onInterstitialActivityDestroyed()V
    .locals 4

    iget-object v0, p0, Lcom/facebook/ads/internal/c/a/b;->b:Lcom/facebook/ads/internal/c/a/c;

    iget-object v1, p0, Lcom/facebook/ads/internal/c/a/b;->a:Ljava/lang/String;

    const/16 v2, 0x402

    const/4 v3, 0x0

    invoke-interface {v0, v2, v1, v3}, Lcom/facebook/ads/internal/c/a/c;->a(ILjava/lang/String;Landroid/os/Bundle;)V

    invoke-static {}, Lcom/facebook/ads/internal/e/a;->a()Lcom/facebook/ads/internal/e/a;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/internal/c/a/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/e/a;->c(Ljava/lang/String;)V

    return-void
.end method

.method public onInterstitialDismissed(Lcom/facebook/ads/Ad;)V
    .locals 3

    iget-object p1, p0, Lcom/facebook/ads/internal/c/a/b;->b:Lcom/facebook/ads/internal/c/a/c;

    iget-object v0, p0, Lcom/facebook/ads/internal/c/a/b;->a:Ljava/lang/String;

    const/16 v1, 0x3fe

    const/4 v2, 0x0

    invoke-interface {p1, v1, v0, v2}, Lcom/facebook/ads/internal/c/a/c;->a(ILjava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public onInterstitialDisplayed(Lcom/facebook/ads/Ad;)V
    .locals 3

    iget-object p1, p0, Lcom/facebook/ads/internal/c/a/b;->b:Lcom/facebook/ads/internal/c/a/c;

    iget-object v0, p0, Lcom/facebook/ads/internal/c/a/b;->a:Ljava/lang/String;

    const/16 v1, 0x3fd

    const/4 v2, 0x0

    invoke-interface {p1, v1, v0, v2}, Lcom/facebook/ads/internal/c/a/c;->a(ILjava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public onLoggingImpression(Lcom/facebook/ads/Ad;)V
    .locals 3

    iget-object p1, p0, Lcom/facebook/ads/internal/c/a/b;->b:Lcom/facebook/ads/internal/c/a/c;

    iget-object v0, p0, Lcom/facebook/ads/internal/c/a/b;->a:Ljava/lang/String;

    const/16 v1, 0x401

    const/4 v2, 0x0

    invoke-interface {p1, v1, v0, v2}, Lcom/facebook/ads/internal/c/a/c;->a(ILjava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method
