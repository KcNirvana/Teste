.class public abstract Lcom/facebook/ads/internal/a/h;
.super Lcom/facebook/ads/internal/a/b;


# instance fields
.field protected final d:Lcom/facebook/ads/internal/a/m;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/facebook/ads/internal/s/c;Ljava/lang/String;Lcom/facebook/ads/internal/a/m;)V
    .locals 0
    .param p4    # Lcom/facebook/ads/internal/a/m;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/internal/a/b;-><init>(Landroid/content/Context;Lcom/facebook/ads/internal/s/c;Ljava/lang/String;)V

    iput-object p4, p0, Lcom/facebook/ads/internal/a/h;->d:Lcom/facebook/ads/internal/a/m;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/facebook/ads/internal/a/h;->d:Lcom/facebook/ads/internal/a/m;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/a/h;->d:Lcom/facebook/ads/internal/a/m;

    iget-object v1, p0, Lcom/facebook/ads/internal/a/h;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/a/m;->a(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/internal/a/h;->e()V

    return-void
.end method

.method protected final a(Ljava/util/Map;Lcom/facebook/ads/internal/a/a;)V
    .locals 3
    .param p2    # Lcom/facebook/ads/internal/a/a;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/facebook/ads/internal/a/a;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/facebook/ads/internal/a/h;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    instance-of v0, p0, Lcom/facebook/ads/internal/a/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/a/h;->b:Lcom/facebook/ads/internal/s/c;

    iget-object v1, p0, Lcom/facebook/ads/internal/a/h;->c:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/facebook/ads/internal/s/c;->h(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/internal/a/h;->b:Lcom/facebook/ads/internal/s/c;

    iget-object v1, p0, Lcom/facebook/ads/internal/a/h;->c:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/facebook/ads/internal/s/c;->c(Ljava/lang/String;Ljava/util/Map;)V

    :goto_0
    invoke-static {p2}, Lcom/facebook/ads/internal/a/a;->a(Lcom/facebook/ads/internal/a/a;)Z

    move-result p1

    iget-object v0, p0, Lcom/facebook/ads/internal/a/h;->d:Lcom/facebook/ads/internal/a/m;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/internal/a/h;->d:Lcom/facebook/ads/internal/a/m;

    invoke-virtual {v0, p2}, Lcom/facebook/ads/internal/a/m;->a(Lcom/facebook/ads/internal/a/a;)V

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/facebook/ads/internal/a/h;->d:Lcom/facebook/ads/internal/a/m;

    invoke-virtual {p1}, Lcom/facebook/ads/internal/a/m;->a()V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string p2, "leave_time"

    const-wide/16 v0, -0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, p2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "back_time"

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "outcome"

    sget-object v0, Lcom/facebook/ads/internal/a/a;->b:Lcom/facebook/ads/internal/a/a;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/a/a;->name()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/facebook/ads/internal/a/h;->b:Lcom/facebook/ads/internal/s/c;

    iget-object v0, p0, Lcom/facebook/ads/internal/a/h;->c:Ljava/lang/String;

    invoke-interface {p2, v0, p1}, Lcom/facebook/ads/internal/s/c;->m(Ljava/lang/String;Ljava/util/Map;)V

    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/facebook/ads/internal/a/h;->a:Landroid/content/Context;

    const-string p2, "Click logged"

    invoke-static {p1, p2}, Lcom/facebook/ads/internal/w/b/c;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method abstract e()V
.end method
