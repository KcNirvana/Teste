.class public final Lcom/facebook/ads/internal/adapters/c/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/internal/adapters/c/a$b;,
        Lcom/facebook/ads/internal/adapters/c/a$c;,
        Lcom/facebook/ads/internal/adapters/c/a$a;
    }
.end annotation


# direct methods
.method public static a(Landroid/content/Context;Lcom/facebook/ads/internal/adapters/b/o;ZLcom/facebook/ads/internal/adapters/c/a$b;)V
    .locals 8

    invoke-static {p0}, Lcom/facebook/ads/internal/r/a;->n(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p3}, Lcom/facebook/ads/internal/adapters/c/a$b;->a()V

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/facebook/ads/internal/adapters/b/o;->f()Lcom/facebook/ads/internal/adapters/b/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/b/d;->j()Lcom/facebook/ads/internal/adapters/b/n;

    move-result-object v5

    new-instance v0, Lcom/facebook/ads/internal/h/b;

    invoke-direct {v0, p0}, Lcom/facebook/ads/internal/h/b;-><init>(Landroid/content/Context;)V

    if-nez v5, :cond_1

    sget-object p0, Lcom/facebook/ads/AdError;->CACHE_ERROR:Lcom/facebook/ads/AdError;

    invoke-interface {p3, p0}, Lcom/facebook/ads/internal/adapters/c/a$b;->a(Lcom/facebook/ads/AdError;)V

    return-void

    :cond_1
    sget-object v1, Lcom/facebook/ads/internal/adapters/c/a$1;->a:[I

    invoke-virtual {v5}, Lcom/facebook/ads/internal/adapters/b/n;->k()Lcom/facebook/ads/internal/adapters/b/p;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/ads/internal/adapters/b/p;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {v5}, Lcom/facebook/ads/internal/adapters/b/n;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/h/b;->b(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {v5}, Lcom/facebook/ads/internal/adapters/b/n;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/h/b;->a(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p1}, Lcom/facebook/ads/internal/adapters/b/o;->b()Lcom/facebook/ads/internal/adapters/b/m;

    move-result-object p1

    invoke-virtual {p1}, Lcom/facebook/ads/internal/adapters/b/m;->b()Ljava/lang/String;

    move-result-object p1

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1, v1}, Lcom/facebook/ads/internal/h/b;->a(Ljava/lang/String;II)V

    invoke-virtual {v5}, Lcom/facebook/ads/internal/adapters/b/n;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, v1, v1}, Lcom/facebook/ads/internal/h/b;->a(Ljava/lang/String;II)V

    new-instance p1, Lcom/facebook/ads/internal/adapters/c/a$a;

    const/4 v7, 0x0

    move-object v1, p1

    move-object v2, p0

    move-object v3, p3

    move-object v4, v0

    move v6, p2

    invoke-direct/range {v1 .. v7}, Lcom/facebook/ads/internal/adapters/c/a$a;-><init>(Landroid/content/Context;Lcom/facebook/ads/internal/adapters/c/a$b;Lcom/facebook/ads/internal/h/b;Lcom/facebook/ads/internal/adapters/b/n;ZLcom/facebook/ads/internal/adapters/c/a$1;)V

    invoke-virtual {v0, p1}, Lcom/facebook/ads/internal/h/b;->a(Lcom/facebook/ads/internal/h/a;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
