.class public Lcom/facebook/ads/internal/b/h;
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

    iget-object v0, p0, Lcom/facebook/ads/internal/b/h;->f:Lcom/facebook/ads/internal/adapters/AdAdapter;

    check-cast v0, Lcom/facebook/ads/internal/adapters/s;

    iget-object v1, p0, Lcom/facebook/ads/internal/b/h;->h:Lcom/facebook/ads/internal/b/a;

    iget v1, v1, Lcom/facebook/ads/internal/b/a;->g:I

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/adapters/s;->a(I)V

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/s;->b()Z

    return-void
.end method

.method public a(Lcom/facebook/ads/RewardData;)V
    .locals 2

    iget-object v0, p0, Lcom/facebook/ads/internal/b/h;->f:Lcom/facebook/ads/internal/adapters/AdAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/internal/b/h;->f:Lcom/facebook/ads/internal/adapters/AdAdapter;

    invoke-interface {v0}, Lcom/facebook/ads/internal/adapters/AdAdapter;->getPlacementType()Lcom/facebook/ads/internal/protocol/AdPlacementType;

    move-result-object v0

    sget-object v1, Lcom/facebook/ads/internal/protocol/AdPlacementType;->REWARDED_VIDEO:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/b/h;->f:Lcom/facebook/ads/internal/adapters/AdAdapter;

    check-cast v0, Lcom/facebook/ads/internal/adapters/s;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/internal/adapters/s;->a(Lcom/facebook/ads/RewardData;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "can only set on rewarded video ads"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "no adapter ready to set reward on"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
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

    check-cast v0, Lcom/facebook/ads/internal/adapters/k;

    iget-object v1, p0, Lcom/facebook/ads/internal/b/h;->b:Landroid/content/Context;

    new-instance v2, Lcom/facebook/ads/internal/b/h$1;

    invoke-direct {v2, p0}, Lcom/facebook/ads/internal/b/h$1;-><init>(Lcom/facebook/ads/internal/b/h;)V

    iget-object p1, p0, Lcom/facebook/ads/internal/b/h;->h:Lcom/facebook/ads/internal/b/a;

    iget-boolean v4, p1, Lcom/facebook/ads/internal/b/a;->f:Z

    iget-object p1, p0, Lcom/facebook/ads/internal/b/h;->h:Lcom/facebook/ads/internal/b/a;

    iget-object v5, p1, Lcom/facebook/ads/internal/b/a;->e:Ljava/lang/String;

    move-object v3, p4

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/ads/internal/adapters/k;->a(Landroid/content/Context;Lcom/facebook/ads/internal/adapters/t;Ljava/util/Map;ZLjava/lang/String;)V

    return-void
.end method

.method c()Lcom/facebook/ads/internal/protocol/a;
    .locals 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/facebook/ads/internal/b/h;->h:Lcom/facebook/ads/internal/b/a;

    iget-boolean v0, v0, Lcom/facebook/ads/internal/b/a;->f:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/facebook/ads/internal/b/h;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/facebook/ads/internal/protocol/a;

    sget-object v0, Lcom/facebook/ads/internal/protocol/AdErrorType;->CLEAR_TEXT_SUPPORT_NOT_ALLOWED:Lcom/facebook/ads/internal/protocol/AdErrorType;

    const-string v2, ""

    invoke-direct {v1, v0, v2}, Lcom/facebook/ads/internal/protocol/a;-><init>(Lcom/facebook/ads/internal/protocol/AdErrorType;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-object v1
.end method
