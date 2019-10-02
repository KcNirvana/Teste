.class Lcom/facebook/ads/internal/adapters/g$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/facebook/ads/internal/adapters/c/a$b;


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

    iput-object p1, p0, Lcom/facebook/ads/internal/adapters/g$3;->b:Lcom/facebook/ads/internal/adapters/g;

    iput-object p2, p0, Lcom/facebook/ads/internal/adapters/g$3;->a:Ljava/util/EnumSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private b()V
    .locals 2

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/g$3;->b:Lcom/facebook/ads/internal/adapters/g;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/facebook/ads/internal/adapters/g;->a(Lcom/facebook/ads/internal/adapters/g;Z)Z

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/g$3;->b:Lcom/facebook/ads/internal/adapters/g;

    invoke-static {v0}, Lcom/facebook/ads/internal/adapters/g;->a(Lcom/facebook/ads/internal/adapters/g;)Lcom/facebook/ads/internal/adapters/InterstitialAdapterListener;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/internal/adapters/g$3;->b:Lcom/facebook/ads/internal/adapters/g;

    invoke-interface {v0, v1}, Lcom/facebook/ads/internal/adapters/InterstitialAdapterListener;->onInterstitialAdLoaded(Lcom/facebook/ads/internal/adapters/g;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/g$3;->b:Lcom/facebook/ads/internal/adapters/g;

    iget-object v1, p0, Lcom/facebook/ads/internal/adapters/g$3;->a:Ljava/util/EnumSet;

    sget-object v2, Lcom/facebook/ads/CacheFlag;->NONE:Lcom/facebook/ads/CacheFlag;

    invoke-virtual {v1, v2}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/facebook/ads/internal/adapters/g;->b(Lcom/facebook/ads/internal/adapters/g;Z)Z

    invoke-direct {p0}, Lcom/facebook/ads/internal/adapters/g$3;->b()V

    return-void
.end method

.method public a(Lcom/facebook/ads/AdError;)V
    .locals 2

    iget-object p1, p0, Lcom/facebook/ads/internal/adapters/g$3;->b:Lcom/facebook/ads/internal/adapters/g;

    invoke-static {p1}, Lcom/facebook/ads/internal/adapters/g;->c(Lcom/facebook/ads/internal/adapters/g;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/facebook/ads/internal/r/a;->T(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/facebook/ads/internal/adapters/g$3;->b()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/facebook/ads/internal/adapters/g$3;->b:Lcom/facebook/ads/internal/adapters/g;

    invoke-static {p1}, Lcom/facebook/ads/internal/adapters/g;->a(Lcom/facebook/ads/internal/adapters/g;)Lcom/facebook/ads/internal/adapters/InterstitialAdapterListener;

    move-result-object p1

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/g$3;->b:Lcom/facebook/ads/internal/adapters/g;

    sget-object v1, Lcom/facebook/ads/AdError;->CACHE_ERROR:Lcom/facebook/ads/AdError;

    invoke-interface {p1, v0, v1}, Lcom/facebook/ads/internal/adapters/InterstitialAdapterListener;->onInterstitialError(Lcom/facebook/ads/internal/adapters/g;Lcom/facebook/ads/AdError;)V

    :goto_0
    return-void
.end method
