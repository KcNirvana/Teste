.class public Lcom/facebook/ads/internal/b/b;
.super Lcom/facebook/ads/internal/b/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/facebook/ads/internal/b/a;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/internal/b/c;-><init>(Landroid/content/Context;Lcom/facebook/ads/internal/b/a;)V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 2

    iget-object v0, p0, Lcom/facebook/ads/internal/b/b;->d:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/b/b;->c:Lcom/facebook/ads/internal/adapters/a;

    iget-object v1, p0, Lcom/facebook/ads/internal/b/b;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/adapters/a;->a(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method protected a(Lcom/facebook/ads/internal/adapters/AdAdapter;Lcom/facebook/ads/internal/m/c;Lcom/facebook/ads/internal/m/a;Ljava/util/Map;)V
    .locals 6
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

    check-cast v0, Lcom/facebook/ads/internal/adapters/e;

    new-instance p1, Lcom/facebook/ads/internal/b/b$1;

    invoke-direct {p1, p0, v0}, Lcom/facebook/ads/internal/b/b$1;-><init>(Lcom/facebook/ads/internal/b/b;Lcom/facebook/ads/internal/adapters/e;)V

    invoke-virtual {p0}, Lcom/facebook/ads/internal/b/b;->j()Landroid/os/Handler;

    move-result-object p3

    invoke-virtual {p2}, Lcom/facebook/ads/internal/m/c;->a()Lcom/facebook/ads/internal/m/d;

    move-result-object p2

    invoke-virtual {p2}, Lcom/facebook/ads/internal/m/d;->j()I

    move-result p2

    int-to-long v1, p2

    invoke-virtual {p3, p1, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v1, p0, Lcom/facebook/ads/internal/b/b;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/facebook/ads/internal/b/b;->g:Lcom/facebook/ads/internal/s/c;

    iget-object p2, p0, Lcom/facebook/ads/internal/b/b;->h:Lcom/facebook/ads/internal/b/a;

    iget-object v3, p2, Lcom/facebook/ads/internal/b/a;->c:Lcom/facebook/ads/internal/protocol/d;

    new-instance v4, Lcom/facebook/ads/internal/b/b$2;

    invoke-direct {v4, p0, p1}, Lcom/facebook/ads/internal/b/b$2;-><init>(Lcom/facebook/ads/internal/b/b;Ljava/lang/Runnable;)V

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/ads/internal/adapters/e;->a(Landroid/content/Context;Lcom/facebook/ads/internal/s/c;Lcom/facebook/ads/internal/protocol/d;Lcom/facebook/ads/internal/adapters/BannerAdapterListener;Ljava/util/Map;)V

    return-void
.end method

.method protected a(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/facebook/ads/internal/b/b;->b:Landroid/content/Context;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Integer;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/facebook/ads/internal/b/e;->a(Landroid/content/Context;[Ljava/lang/Integer;)Lcom/facebook/ads/internal/protocol/a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/internal/b/b;->a(Lcom/facebook/ads/internal/protocol/a;)V

    return-void

    :cond_0
    invoke-super {p0, p1}, Lcom/facebook/ads/internal/b/c;->a(Ljava/lang/String;)V

    return-void
.end method
