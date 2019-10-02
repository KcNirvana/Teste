.class Lcom/facebook/ads/internal/adapters/g$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/facebook/ads/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/internal/adapters/g;->a(Landroid/content/Context;Lcom/facebook/ads/internal/adapters/InterstitialAdapterListener;Ljava/util/Map;Lcom/facebook/ads/internal/s/c;Ljava/util/EnumSet;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/adapters/h;

.field final synthetic b:Lcom/facebook/ads/internal/adapters/g;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/adapters/g;Lcom/facebook/ads/internal/adapters/h;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/adapters/g$1;->b:Lcom/facebook/ads/internal/adapters/g;

    iput-object p2, p0, Lcom/facebook/ads/internal/adapters/g$1;->a:Lcom/facebook/ads/internal/adapters/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/ads/internal/adapters/n;)V
    .locals 1

    iget-object p1, p0, Lcom/facebook/ads/internal/adapters/g$1;->b:Lcom/facebook/ads/internal/adapters/g;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/facebook/ads/internal/adapters/g;->a(Lcom/facebook/ads/internal/adapters/g;Z)Z

    iget-object p1, p0, Lcom/facebook/ads/internal/adapters/g$1;->b:Lcom/facebook/ads/internal/adapters/g;

    invoke-static {p1}, Lcom/facebook/ads/internal/adapters/g;->a(Lcom/facebook/ads/internal/adapters/g;)Lcom/facebook/ads/internal/adapters/InterstitialAdapterListener;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/facebook/ads/internal/adapters/g$1;->b:Lcom/facebook/ads/internal/adapters/g;

    invoke-static {p1}, Lcom/facebook/ads/internal/adapters/g;->a(Lcom/facebook/ads/internal/adapters/g;)Lcom/facebook/ads/internal/adapters/InterstitialAdapterListener;

    move-result-object p1

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/g$1;->b:Lcom/facebook/ads/internal/adapters/g;

    invoke-interface {p1, v0}, Lcom/facebook/ads/internal/adapters/InterstitialAdapterListener;->onInterstitialAdLoaded(Lcom/facebook/ads/internal/adapters/g;)V

    return-void
.end method

.method public a(Lcom/facebook/ads/internal/adapters/n;Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/facebook/ads/internal/adapters/g$1;->b:Lcom/facebook/ads/internal/adapters/g;

    iget-object p2, p0, Lcom/facebook/ads/internal/adapters/g$1;->a:Lcom/facebook/ads/internal/adapters/h;

    invoke-virtual {p2}, Lcom/facebook/ads/internal/adapters/h;->i()Lcom/facebook/ads/internal/view/c/f;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/facebook/ads/internal/adapters/g;->a(Lcom/facebook/ads/internal/adapters/g;Lcom/facebook/ads/internal/view/c/f;)Lcom/facebook/ads/internal/view/c/f;

    iget-object p1, p0, Lcom/facebook/ads/internal/adapters/g$1;->b:Lcom/facebook/ads/internal/adapters/g;

    invoke-static {p1}, Lcom/facebook/ads/internal/adapters/g;->b(Lcom/facebook/ads/internal/adapters/g;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/facebook/ads/internal/adapters/g$1;->a:Lcom/facebook/ads/internal/adapters/h;

    invoke-static {p1, p2}, Lcom/facebook/ads/internal/adapters/g;->a(Ljava/lang/String;Lcom/facebook/ads/internal/view/a;)V

    return-void
.end method

.method public a(Lcom/facebook/ads/internal/adapters/n;Lcom/facebook/ads/AdError;)V
    .locals 1

    iget-object p1, p0, Lcom/facebook/ads/internal/adapters/g$1;->a:Lcom/facebook/ads/internal/adapters/h;

    invoke-virtual {p1}, Lcom/facebook/ads/internal/adapters/h;->j()V

    iget-object p1, p0, Lcom/facebook/ads/internal/adapters/g$1;->b:Lcom/facebook/ads/internal/adapters/g;

    invoke-static {p1}, Lcom/facebook/ads/internal/adapters/g;->a(Lcom/facebook/ads/internal/adapters/g;)Lcom/facebook/ads/internal/adapters/InterstitialAdapterListener;

    move-result-object p1

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/g$1;->b:Lcom/facebook/ads/internal/adapters/g;

    invoke-interface {p1, v0, p2}, Lcom/facebook/ads/internal/adapters/InterstitialAdapterListener;->onInterstitialError(Lcom/facebook/ads/internal/adapters/g;Lcom/facebook/ads/AdError;)V

    return-void
.end method

.method public b(Lcom/facebook/ads/internal/adapters/n;)V
    .locals 3

    iget-object p1, p0, Lcom/facebook/ads/internal/adapters/g$1;->b:Lcom/facebook/ads/internal/adapters/g;

    invoke-static {p1}, Lcom/facebook/ads/internal/adapters/g;->a(Lcom/facebook/ads/internal/adapters/g;)Lcom/facebook/ads/internal/adapters/InterstitialAdapterListener;

    move-result-object p1

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/g$1;->b:Lcom/facebook/ads/internal/adapters/g;

    const-string v1, ""

    const/4 v2, 0x1

    invoke-interface {p1, v0, v1, v2}, Lcom/facebook/ads/internal/adapters/InterstitialAdapterListener;->onInterstitialAdClicked(Lcom/facebook/ads/internal/adapters/g;Ljava/lang/String;Z)V

    return-void
.end method

.method public c(Lcom/facebook/ads/internal/adapters/n;)V
    .locals 1

    iget-object p1, p0, Lcom/facebook/ads/internal/adapters/g$1;->b:Lcom/facebook/ads/internal/adapters/g;

    invoke-static {p1}, Lcom/facebook/ads/internal/adapters/g;->a(Lcom/facebook/ads/internal/adapters/g;)Lcom/facebook/ads/internal/adapters/InterstitialAdapterListener;

    move-result-object p1

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/g$1;->b:Lcom/facebook/ads/internal/adapters/g;

    invoke-interface {p1, v0}, Lcom/facebook/ads/internal/adapters/InterstitialAdapterListener;->onInterstitialLoggingImpression(Lcom/facebook/ads/internal/adapters/g;)V

    return-void
.end method

.method public d(Lcom/facebook/ads/internal/adapters/n;)V
    .locals 0

    return-void
.end method
