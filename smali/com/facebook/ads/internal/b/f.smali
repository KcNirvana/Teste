.class public Lcom/facebook/ads/internal/b/f;
.super Lcom/facebook/ads/internal/b/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/facebook/ads/internal/b/a;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/internal/b/c;-><init>(Landroid/content/Context;Lcom/facebook/ads/internal/b/a;)V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/b/f;->f:Lcom/facebook/ads/internal/adapters/AdAdapter;

    check-cast v0, Lcom/facebook/ads/internal/adapters/g;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/g;->a()Z

    return-void
.end method

.method protected a(Lcom/facebook/ads/internal/adapters/AdAdapter;Lcom/facebook/ads/internal/m/c;Lcom/facebook/ads/internal/m/a;Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/internal/adapters/AdAdapter;",
            "Lcom/facebook/ads/internal/m/c;",
            "Lcom/facebook/ads/internal/m/a;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    move-object v0, p1

    check-cast v0, Lcom/facebook/ads/internal/adapters/g;

    new-instance p1, Lcom/facebook/ads/internal/b/f$1;

    invoke-direct {p1, p0, v0}, Lcom/facebook/ads/internal/b/f$1;-><init>(Lcom/facebook/ads/internal/b/f;Lcom/facebook/ads/internal/adapters/g;)V

    invoke-virtual {p0}, Lcom/facebook/ads/internal/b/f;->j()Landroid/os/Handler;

    move-result-object p3

    invoke-virtual {p2}, Lcom/facebook/ads/internal/m/c;->a()Lcom/facebook/ads/internal/m/d;

    move-result-object p2

    invoke-virtual {p2}, Lcom/facebook/ads/internal/m/d;->j()I

    move-result p2

    int-to-long v1, p2

    invoke-virtual {p3, p1, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v1, p0, Lcom/facebook/ads/internal/b/f;->b:Landroid/content/Context;

    new-instance v2, Lcom/facebook/ads/internal/b/f$2;

    invoke-direct {v2, p0, p1}, Lcom/facebook/ads/internal/b/f$2;-><init>(Lcom/facebook/ads/internal/b/f;Ljava/lang/Runnable;)V

    iget-object v4, p0, Lcom/facebook/ads/internal/b/f;->g:Lcom/facebook/ads/internal/s/c;

    iget-object p1, p0, Lcom/facebook/ads/internal/b/f;->h:Lcom/facebook/ads/internal/b/a;

    iget-object v5, p1, Lcom/facebook/ads/internal/b/a;->d:Ljava/util/EnumSet;

    iget-object p1, p0, Lcom/facebook/ads/internal/b/f;->h:Lcom/facebook/ads/internal/b/a;

    iget-object v6, p1, Lcom/facebook/ads/internal/b/a;->e:Ljava/lang/String;

    move-object v3, p4

    invoke-virtual/range {v0 .. v6}, Lcom/facebook/ads/internal/adapters/g;->a(Landroid/content/Context;Lcom/facebook/ads/internal/adapters/InterstitialAdapterListener;Ljava/util/Map;Lcom/facebook/ads/internal/s/c;Ljava/util/EnumSet;Ljava/lang/String;)V

    return-void
.end method
