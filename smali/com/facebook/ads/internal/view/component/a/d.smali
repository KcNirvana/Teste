.class public final Lcom/facebook/ads/internal/view/component/a/d;
.super Ljava/lang/Object;


# direct methods
.method public static a(Lcom/facebook/ads/internal/view/component/a/e;)Lcom/facebook/ads/internal/view/component/a/c;
    .locals 13

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

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/component/a/e;->g()Lcom/facebook/ads/internal/adapters/b/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/b/k;->b()Lcom/facebook/ads/internal/adapters/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/b/b;->b()Lcom/facebook/ads/internal/adapters/b/h;

    move-result-object v0

    :goto_0
    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/component/a/e;->g()Lcom/facebook/ads/internal/adapters/b/k;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/ads/internal/adapters/b/k;->d()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/internal/adapters/b/l;

    invoke-static {v2}, Lcom/facebook/ads/internal/view/component/a/a;->a(Lcom/facebook/ads/internal/adapters/b/l;)F

    move-result v4

    float-to-double v4, v4

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/component/a/e;->g()Lcom/facebook/ads/internal/adapters/b/k;

    move-result-object v6

    invoke-virtual {v6}, Lcom/facebook/ads/internal/adapters/b/k;->d()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/facebook/ads/internal/adapters/b/l;

    invoke-virtual {v6}, Lcom/facebook/ads/internal/adapters/b/l;->d()Z

    move-result v6

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/component/a/e;->k()I

    move-result v7

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/component/a/e;->j()I

    move-result v8

    invoke-static {v7, v8, v4, v5}, Lcom/facebook/ads/internal/view/component/a/a;->a(IID)Z

    move-result v7

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/component/a/e;->a()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/component/a/e;->b()Lcom/facebook/ads/internal/s/c;

    move-result-object v9

    const-string v10, ""

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/component/a/e;->g()Lcom/facebook/ads/internal/adapters/b/k;

    move-result-object v11

    invoke-virtual {v11}, Lcom/facebook/ads/internal/adapters/b/k;->d()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/facebook/ads/internal/adapters/b/l;

    invoke-virtual {v11}, Lcom/facebook/ads/internal/adapters/b/l;->b()Lcom/facebook/ads/internal/adapters/b/i;

    move-result-object v11

    invoke-virtual {v11}, Lcom/facebook/ads/internal/adapters/b/i;->a()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    invoke-static {v8, v9, v10, v11, v12}, Lcom/facebook/ads/internal/a/c;->a(Landroid/content/Context;Lcom/facebook/ads/internal/s/c;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Map;)Lcom/facebook/ads/internal/a/b;

    move-result-object v8

    if-eqz v6, :cond_2

    if-eqz v8, :cond_2

    instance-of v6, v8, Lcom/facebook/ads/internal/a/j;

    if-eqz v6, :cond_2

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/component/a/e;->k()I

    move-result v3

    if-ne v3, v1, :cond_1

    new-instance v1, Lcom/facebook/ads/internal/view/component/a/j;

    invoke-direct {v1, p0, v0}, Lcom/facebook/ads/internal/view/component/a/j;-><init>(Lcom/facebook/ads/internal/view/component/a/e;Lcom/facebook/ads/internal/adapters/b/h;)V

    goto :goto_2

    :cond_1
    new-instance v1, Lcom/facebook/ads/internal/view/component/a/i;

    invoke-direct {v1, p0, v0}, Lcom/facebook/ads/internal/view/component/a/i;-><init>(Lcom/facebook/ads/internal/view/component/a/e;Lcom/facebook/ads/internal/adapters/b/h;)V

    goto :goto_2

    :cond_2
    if-eqz v7, :cond_4

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/component/a/e;->k()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    new-instance v3, Lcom/facebook/ads/internal/view/component/a/b;

    invoke-direct {v3, p0, v0, v1}, Lcom/facebook/ads/internal/view/component/a/b;-><init>(Lcom/facebook/ads/internal/view/component/a/e;Lcom/facebook/ads/internal/adapters/b/h;Z)V

    move-object v1, v3

    goto :goto_2

    :cond_4
    new-instance v1, Lcom/facebook/ads/internal/view/component/a/f;

    invoke-static {v4, v5}, Lcom/facebook/ads/internal/view/component/a/a;->a(D)Z

    move-result v3

    invoke-direct {v1, p0, v3, v0}, Lcom/facebook/ads/internal/view/component/a/f;-><init>(Lcom/facebook/ads/internal/view/component/a/e;ZLcom/facebook/ads/internal/adapters/b/h;)V

    :goto_2
    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/component/a/e;->g()Lcom/facebook/ads/internal/adapters/b/k;

    move-result-object p0

    invoke-virtual {p0}, Lcom/facebook/ads/internal/adapters/b/k;->c()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v2, p0, v4, v5}, Lcom/facebook/ads/internal/view/component/a/c;->a(Lcom/facebook/ads/internal/adapters/b/l;Ljava/lang/String;D)V

    return-object v1
.end method
