.class public Lcom/facebook/ads/internal/view/component/a/g;
.super Ljava/lang/Object;


# direct methods
.method public static a(Lcom/facebook/ads/internal/view/component/a/e;IIZ)Lcom/facebook/ads/internal/view/component/a/l;
    .locals 11

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/component/a/e;->k()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/component/a/e;->g()Lcom/facebook/ads/internal/adapters/b/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/b/k;->b()Lcom/facebook/ads/internal/adapters/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/b/b;->a()Lcom/facebook/ads/internal/adapters/b/h;

    move-result-object v0

    :goto_0
    move-object v3, v0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/component/a/e;->g()Lcom/facebook/ads/internal/adapters/b/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/b/k;->b()Lcom/facebook/ads/internal/adapters/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/b/b;->b()Lcom/facebook/ads/internal/adapters/b/h;

    move-result-object v0

    goto :goto_0

    :goto_1
    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/component/a/e;->g()Lcom/facebook/ads/internal/adapters/b/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/b/k;->d()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/internal/adapters/b/l;

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/component/a/e;->a()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/component/a/e;->b()Lcom/facebook/ads/internal/s/c;

    move-result-object v5

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/component/a/e;->g()Lcom/facebook/ads/internal/adapters/b/k;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/ads/internal/adapters/b/k;->c()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/component/a/e;->g()Lcom/facebook/ads/internal/adapters/b/k;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/ads/internal/adapters/b/k;->d()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/internal/adapters/b/l;

    invoke-virtual {v2}, Lcom/facebook/ads/internal/adapters/b/l;->b()Lcom/facebook/ads/internal/adapters/b/i;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/ads/internal/adapters/b/i;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-static/range {v4 .. v10}, Lcom/facebook/ads/internal/a/c;->a(Landroid/content/Context;Lcom/facebook/ads/internal/s/c;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Map;ZZ)Lcom/facebook/ads/internal/a/b;

    move-result-object v2

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/component/a/e;->g()Lcom/facebook/ads/internal/adapters/b/k;

    move-result-object v4

    invoke-virtual {v4}, Lcom/facebook/ads/internal/adapters/b/k;->d()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/internal/adapters/b/l;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/adapters/b/l;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    instance-of v1, v2, Lcom/facebook/ads/internal/a/i;

    if-eqz v1, :cond_1

    new-instance v8, Lcom/facebook/ads/internal/view/component/a/h;

    move-object v6, v2

    check-cast v6, Lcom/facebook/ads/internal/a/i;

    move-object v1, v8

    move-object v2, p0

    move v4, p1

    move v5, p2

    move v7, p3

    invoke-direct/range {v1 .. v7}, Lcom/facebook/ads/internal/view/component/a/h;-><init>(Lcom/facebook/ads/internal/view/component/a/e;Lcom/facebook/ads/internal/adapters/b/h;IILcom/facebook/ads/internal/a/i;Z)V

    invoke-virtual {v8, v0}, Lcom/facebook/ads/internal/view/component/a/h;->a(Lcom/facebook/ads/internal/adapters/b/l;)V

    return-object v8

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method
