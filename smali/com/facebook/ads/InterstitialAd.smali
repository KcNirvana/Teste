.class public Lcom/facebook/ads/InterstitialAd;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/facebook/ads/Ad;


# annotations
.annotation build Landroid/support/annotation/UiThread;
.end annotation


# instance fields
.field private final a:Lcom/facebook/ads/internal/c/g;

.field private final b:Lcom/facebook/ads/internal/c/f;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/facebook/ads/internal/c/g;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1, p0, p2}, Lcom/facebook/ads/internal/c/g;-><init>(Landroid/content/Context;Lcom/facebook/ads/InterstitialAd;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/ads/InterstitialAd;->a:Lcom/facebook/ads/internal/c/g;

    new-instance p1, Lcom/facebook/ads/internal/c/f;

    iget-object p2, p0, Lcom/facebook/ads/InterstitialAd;->a:Lcom/facebook/ads/internal/c/g;

    invoke-direct {p1, p2}, Lcom/facebook/ads/internal/c/f;-><init>(Lcom/facebook/ads/internal/c/g;)V

    iput-object p1, p0, Lcom/facebook/ads/InterstitialAd;->b:Lcom/facebook/ads/internal/c/f;

    return-void
.end method

.method private a(Ljava/util/EnumSet;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet<",
            "Lcom/facebook/ads/CacheFlag;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/facebook/ads/InterstitialAd;->b:Lcom/facebook/ads/internal/c/f;

    invoke-virtual {v0, p0, p1, p2}, Lcom/facebook/ads/internal/c/f;->a(Lcom/facebook/ads/InterstitialAd;Ljava/util/EnumSet;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/InterstitialAd;->b:Lcom/facebook/ads/internal/c/f;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/c/f;->d()V

    return-void
.end method

.method protected finalize()V
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/InterstitialAd;->b:Lcom/facebook/ads/internal/c/f;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/c/f;->e()V

    return-void
.end method

.method public getPlacementId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/InterstitialAd;->a:Lcom/facebook/ads/internal/c/g;

    iget-object v0, v0, Lcom/facebook/ads/internal/c/g;->b:Ljava/lang/String;

    return-object v0
.end method

.method public isAdInvalidated()Z
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/InterstitialAd;->b:Lcom/facebook/ads/internal/c/f;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/c/f;->g()Z

    move-result v0

    return v0
.end method

.method public isAdLoaded()Z
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/InterstitialAd;->b:Lcom/facebook/ads/internal/c/f;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/c/f;->f()Z

    move-result v0

    return v0
.end method

.method public loadAd()V
    .locals 1

    sget-object v0, Lcom/facebook/ads/CacheFlag;->ALL:Ljava/util/EnumSet;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/InterstitialAd;->loadAd(Ljava/util/EnumSet;)V

    return-void
.end method

.method public loadAd(Ljava/util/EnumSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet<",
            "Lcom/facebook/ads/CacheFlag;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/InterstitialAd;->a(Ljava/util/EnumSet;Ljava/lang/String;)V

    return-void
.end method

.method public loadAdFromBid(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/facebook/ads/CacheFlag;->ALL:Ljava/util/EnumSet;

    invoke-direct {p0, v0, p1}, Lcom/facebook/ads/InterstitialAd;->a(Ljava/util/EnumSet;Ljava/lang/String;)V

    return-void
.end method

.method public loadAdFromBid(Ljava/util/EnumSet;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet<",
            "Lcom/facebook/ads/CacheFlag;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/InterstitialAd;->a(Ljava/util/EnumSet;Ljava/lang/String;)V

    return-void
.end method

.method public setAdListener(Lcom/facebook/ads/InterstitialAdListener;)V
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/InterstitialAd;->a:Lcom/facebook/ads/internal/c/g;

    iput-object p1, v0, Lcom/facebook/ads/internal/c/g;->c:Lcom/facebook/ads/InterstitialAdListener;

    return-void
.end method

.method public setExtraHints(Lcom/facebook/ads/ExtraHints;)V
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/InterstitialAd;->a:Lcom/facebook/ads/internal/c/g;

    invoke-virtual {p1}, Lcom/facebook/ads/ExtraHints;->getHints()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/facebook/ads/internal/c/g;->d:Ljava/lang/String;

    return-void
.end method

.method public show()Z
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/InterstitialAd;->b:Lcom/facebook/ads/internal/c/f;

    invoke-virtual {v0, p0}, Lcom/facebook/ads/internal/c/f;->a(Lcom/facebook/ads/InterstitialAd;)Z

    move-result v0

    return v0
.end method
