.class public Lcom/facebook/ads/internal/b/g;
.super Lcom/facebook/ads/internal/b/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/facebook/ads/internal/b/a;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/internal/b/c;-><init>(Landroid/content/Context;Lcom/facebook/ads/internal/b/a;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/ads/internal/b/g;J)Ljava/util/Map;
    .locals 3

    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-string v0, "delay"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, p1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic a(Lcom/facebook/ads/internal/b/g;Ljava/util/List;Ljava/util/Map;)V
    .locals 4

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v1, Lcom/facebook/ads/internal/w/e/e;

    iget-object v2, p0, Lcom/facebook/ads/internal/b/g;->b:Landroid/content/Context;

    invoke-direct {v1, v2, p2}, Lcom/facebook/ads/internal/w/e/e;-><init>(Landroid/content/Context;Ljava/util/Map;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/facebook/ads/internal/w/e/e;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 2

    iget-object v0, p0, Lcom/facebook/ads/internal/b/g;->f:Lcom/facebook/ads/internal/adapters/AdAdapter;

    check-cast v0, Lcom/facebook/ads/internal/adapters/i;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/i;->A()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/facebook/ads/internal/b/g;->c:Lcom/facebook/ads/internal/adapters/a;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/internal/adapters/a;->a(Lcom/facebook/ads/internal/adapters/i;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ad is not ready or already displayed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected a(Lcom/facebook/ads/internal/adapters/AdAdapter;Lcom/facebook/ads/internal/m/c;Lcom/facebook/ads/internal/m/a;Ljava/util/Map;)V
    .locals 10
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

    check-cast p1, Lcom/facebook/ads/internal/adapters/i;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    new-instance v8, Lcom/facebook/ads/internal/b/g$1;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-wide v3, v6

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/internal/b/g$1;-><init>(Lcom/facebook/ads/internal/b/g;Lcom/facebook/ads/internal/adapters/i;JLcom/facebook/ads/internal/m/a;)V

    invoke-virtual {p0}, Lcom/facebook/ads/internal/b/g;->j()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {p2}, Lcom/facebook/ads/internal/m/c;->a()Lcom/facebook/ads/internal/m/d;

    move-result-object p2

    invoke-virtual {p2}, Lcom/facebook/ads/internal/m/d;->j()I

    move-result p2

    int-to-long v1, p2

    invoke-virtual {v0, v8, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object p2, p0, Lcom/facebook/ads/internal/b/g;->b:Landroid/content/Context;

    new-instance v9, Lcom/facebook/ads/internal/b/g$2;

    move-object v0, v9

    move-object v1, p0

    move-object v2, v8

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/internal/b/g$2;-><init>(Lcom/facebook/ads/internal/b/g;Ljava/lang/Runnable;JLcom/facebook/ads/internal/m/a;)V

    iget-object v3, p0, Lcom/facebook/ads/internal/b/g;->g:Lcom/facebook/ads/internal/s/c;

    invoke-static {}, Lcom/facebook/ads/NativeAdBase;->getViewTraversalPredicate()Lcom/facebook/ads/internal/t/e$c;

    move-result-object v5

    move-object v0, p1

    move-object v1, p2

    move-object v2, v9

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/ads/internal/adapters/i;->a(Landroid/content/Context;Lcom/facebook/ads/internal/adapters/q;Lcom/facebook/ads/internal/s/c;Ljava/util/Map;Lcom/facebook/ads/internal/t/e$c;)V

    return-void
.end method

.method protected a(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/facebook/ads/internal/b/g;->b:Landroid/content/Context;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Integer;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/facebook/ads/internal/b/e;->a(Landroid/content/Context;[Ljava/lang/Integer;)Lcom/facebook/ads/internal/protocol/a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/internal/b/g;->a(Lcom/facebook/ads/internal/protocol/a;)V

    return-void

    :cond_0
    invoke-super {p0, p1}, Lcom/facebook/ads/internal/b/c;->a(Ljava/lang/String;)V

    return-void
.end method

.method c()Lcom/facebook/ads/internal/protocol/a;
    .locals 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/facebook/ads/internal/b/g;->h:Lcom/facebook/ads/internal/b/a;

    iget-object v0, v0, Lcom/facebook/ads/internal/b/a;->h:Lcom/facebook/ads/internal/t/d;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/internal/b/g;->h:Lcom/facebook/ads/internal/b/a;

    iget-object v0, v0, Lcom/facebook/ads/internal/b/a;->h:Lcom/facebook/ads/internal/t/d;

    sget-object v2, Lcom/facebook/ads/internal/t/d;->a:Lcom/facebook/ads/internal/t/d;

    if-eq v0, v2, :cond_1

    invoke-virtual {p0}, Lcom/facebook/ads/internal/b/g;->d()Z

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
