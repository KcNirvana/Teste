.class public Lcom/facebook/ads/internal/b/d;
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

    iget-object v0, p0, Lcom/facebook/ads/internal/b/d;->f:Lcom/facebook/ads/internal/adapters/AdAdapter;

    check-cast v0, Lcom/facebook/ads/internal/adapters/n;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/n;->e()Z

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

    check-cast v0, Lcom/facebook/ads/internal/adapters/f;

    iget-object v1, p0, Lcom/facebook/ads/internal/b/d;->b:Landroid/content/Context;

    new-instance v2, Lcom/facebook/ads/internal/b/d$1;

    invoke-direct {v2, p0}, Lcom/facebook/ads/internal/b/d$1;-><init>(Lcom/facebook/ads/internal/b/d;)V

    iget-object v4, p0, Lcom/facebook/ads/internal/b/d;->g:Lcom/facebook/ads/internal/s/c;

    iget-object p1, p0, Lcom/facebook/ads/internal/b/d;->h:Lcom/facebook/ads/internal/b/a;

    iget-object v5, p1, Lcom/facebook/ads/internal/b/a;->d:Ljava/util/EnumSet;

    move-object v3, p4

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/ads/internal/adapters/f;->a(Landroid/content/Context;Lcom/facebook/ads/a/a;Ljava/util/Map;Lcom/facebook/ads/internal/s/c;Ljava/util/EnumSet;)V

    return-void
.end method

.method protected a(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/facebook/ads/internal/b/d;->b:Landroid/content/Context;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Integer;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/facebook/ads/internal/b/e;->a(Landroid/content/Context;[Ljava/lang/Integer;)Lcom/facebook/ads/internal/protocol/a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/internal/b/d;->a(Lcom/facebook/ads/internal/protocol/a;)V

    return-void

    :cond_0
    invoke-super {p0, p1}, Lcom/facebook/ads/internal/b/c;->a(Ljava/lang/String;)V

    return-void
.end method
