.class Lcom/facebook/ads/internal/adapters/g$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/facebook/ads/internal/h/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/internal/adapters/g;->a(Landroid/content/Context;Lcom/facebook/ads/internal/adapters/InterstitialAdapterListener;Ljava/util/Map;Lcom/facebook/ads/internal/s/c;Ljava/util/EnumSet;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/EnumSet;

.field final synthetic b:Lcom/facebook/ads/internal/adapters/g;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/adapters/g;Ljava/util/EnumSet;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/adapters/g$2;->b:Lcom/facebook/ads/internal/adapters/g;

    iput-object p2, p0, Lcom/facebook/ads/internal/adapters/g$2;->a:Ljava/util/EnumSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Z)V
    .locals 3

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/g$2;->a:Ljava/util/EnumSet;

    sget-object v1, Lcom/facebook/ads/CacheFlag;->NONE:Lcom/facebook/ads/CacheFlag;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-nez p1, :cond_1

    iget-object v2, p0, Lcom/facebook/ads/internal/adapters/g$2;->b:Lcom/facebook/ads/internal/adapters/g;

    invoke-static {v2}, Lcom/facebook/ads/internal/adapters/g;->c(Lcom/facebook/ads/internal/adapters/g;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/ads/internal/r/a;->T(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/facebook/ads/internal/adapters/g$2;->b:Lcom/facebook/ads/internal/adapters/g;

    invoke-static {p1}, Lcom/facebook/ads/internal/adapters/g;->a(Lcom/facebook/ads/internal/adapters/g;)Lcom/facebook/ads/internal/adapters/InterstitialAdapterListener;

    move-result-object p1

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/g$2;->b:Lcom/facebook/ads/internal/adapters/g;

    sget-object v1, Lcom/facebook/ads/AdError;->CACHE_ERROR:Lcom/facebook/ads/AdError;

    invoke-interface {p1, v0, v1}, Lcom/facebook/ads/internal/adapters/InterstitialAdapterListener;->onInterstitialError(Lcom/facebook/ads/internal/adapters/g;Lcom/facebook/ads/AdError;)V

    goto :goto_2

    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/facebook/ads/internal/adapters/g$2;->b:Lcom/facebook/ads/internal/adapters/g;

    if-eqz p1, :cond_2

    if-eqz v0, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    invoke-static {v2, p1}, Lcom/facebook/ads/internal/adapters/g;->b(Lcom/facebook/ads/internal/adapters/g;Z)Z

    iget-object p1, p0, Lcom/facebook/ads/internal/adapters/g$2;->b:Lcom/facebook/ads/internal/adapters/g;

    invoke-static {p1, v1}, Lcom/facebook/ads/internal/adapters/g;->a(Lcom/facebook/ads/internal/adapters/g;Z)Z

    iget-object p1, p0, Lcom/facebook/ads/internal/adapters/g$2;->b:Lcom/facebook/ads/internal/adapters/g;

    invoke-static {p1}, Lcom/facebook/ads/internal/adapters/g;->a(Lcom/facebook/ads/internal/adapters/g;)Lcom/facebook/ads/internal/adapters/InterstitialAdapterListener;

    move-result-object p1

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/g$2;->b:Lcom/facebook/ads/internal/adapters/g;

    invoke-interface {p1, v0}, Lcom/facebook/ads/internal/adapters/InterstitialAdapterListener;->onInterstitialAdLoaded(Lcom/facebook/ads/internal/adapters/g;)V

    :goto_2
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/facebook/ads/internal/adapters/g$2;->a(Z)V

    return-void
.end method

.method public b()V
    .locals 5

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/g$2;->b:Lcom/facebook/ads/internal/adapters/g;

    invoke-static {v0}, Lcom/facebook/ads/internal/adapters/g;->c(Lcom/facebook/ads/internal/adapters/g;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/internal/r/a;->R(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/g$2;->b:Lcom/facebook/ads/internal/adapters/g;

    invoke-static {v0}, Lcom/facebook/ads/internal/adapters/g;->c(Lcom/facebook/ads/internal/adapters/g;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "cache"

    sget v2, Lcom/facebook/ads/internal/w/h/b;->T:I

    new-instance v3, Ljava/lang/Exception;

    const-string v4, "Interstitial carousel cache failed"

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v2, v3}, Lcom/facebook/ads/internal/w/h/a;->b(Landroid/content/Context;Ljava/lang/String;ILjava/lang/Exception;)V

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/ads/internal/adapters/g$2;->a(Z)V

    return-void
.end method
