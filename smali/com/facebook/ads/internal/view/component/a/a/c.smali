.class public final Lcom/facebook/ads/internal/view/component/a/a/c;
.super Ljava/lang/Object;


# direct methods
.method public static a(Lcom/facebook/ads/internal/view/component/a/e;ILcom/facebook/ads/internal/adapters/b/h;Ljava/lang/String;Lcom/facebook/ads/internal/view/e/a/a;)Lcom/facebook/ads/internal/view/component/a/a/b;
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    new-instance p1, Lcom/facebook/ads/internal/view/component/a/a/d;

    invoke-direct {p1, p0, p2, p3, p4}, Lcom/facebook/ads/internal/view/component/a/a/d;-><init>(Lcom/facebook/ads/internal/view/component/a/e;Lcom/facebook/ads/internal/adapters/b/h;Ljava/lang/String;Lcom/facebook/ads/internal/view/e/a/a;)V

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/facebook/ads/internal/view/component/a/a/a;

    invoke-direct {p1, p0, p2, p3, p4}, Lcom/facebook/ads/internal/view/component/a/a/a;-><init>(Lcom/facebook/ads/internal/view/component/a/e;Lcom/facebook/ads/internal/adapters/b/h;Ljava/lang/String;Lcom/facebook/ads/internal/view/e/a/a;)V

    :goto_0
    return-object p1
.end method
