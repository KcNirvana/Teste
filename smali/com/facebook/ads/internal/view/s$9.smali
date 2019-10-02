.class Lcom/facebook/ads/internal/view/s$9;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/facebook/ads/internal/view/i$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/internal/view/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/view/s;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/view/s;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/view/s$9;->a:Lcom/facebook/ads/internal/view/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, Lcom/facebook/ads/internal/view/s$9;->a:Lcom/facebook/ads/internal/view/s;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/s;->j(Lcom/facebook/ads/internal/view/s;)Lcom/facebook/ads/internal/w/b/w;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/internal/view/s$9;->a:Lcom/facebook/ads/internal/view/s;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/view/s;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/w/b/w;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/facebook/ads/internal/view/s$9;->a:Lcom/facebook/ads/internal/view/s;

    invoke-static {v1}, Lcom/facebook/ads/internal/view/s;->f(Lcom/facebook/ads/internal/view/s;)Lcom/facebook/ads/internal/x/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/facebook/ads/internal/x/a;->a(Ljava/util/Map;)V

    const-string v1, "touch"

    iget-object v2, p0, Lcom/facebook/ads/internal/view/s$9;->a:Lcom/facebook/ads/internal/view/s;

    invoke-static {v2}, Lcom/facebook/ads/internal/view/s;->j(Lcom/facebook/ads/internal/view/s;)Lcom/facebook/ads/internal/w/b/w;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/ads/internal/w/b/w;->e()Ljava/util/Map;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/ads/internal/w/b/k;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/facebook/ads/internal/view/s$9;->a:Lcom/facebook/ads/internal/view/s;

    invoke-static {v1}, Lcom/facebook/ads/internal/view/s;->l(Lcom/facebook/ads/internal/view/s;)Lcom/facebook/ads/internal/s/c;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/ads/internal/view/s$9;->a:Lcom/facebook/ads/internal/view/s;

    invoke-static {v2}, Lcom/facebook/ads/internal/view/s;->k(Lcom/facebook/ads/internal/view/s;)Lcom/facebook/ads/internal/adapters/b/q;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/ads/internal/adapters/b/q;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/facebook/ads/internal/s/c;->i(Ljava/lang/String;Ljava/util/Map;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/internal/view/s$9;->a:Lcom/facebook/ads/internal/view/s;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/s;->a(Lcom/facebook/ads/internal/view/s;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/s$9;->a:Lcom/facebook/ads/internal/view/s;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/s;->e(Lcom/facebook/ads/internal/view/s;)Lcom/facebook/ads/internal/view/i/a;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/s$9;->a:Lcom/facebook/ads/internal/view/s;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/facebook/ads/internal/view/s;->a(Lcom/facebook/ads/internal/view/s;Z)Z

    iget-object v0, p0, Lcom/facebook/ads/internal/view/s$9;->a:Lcom/facebook/ads/internal/view/s;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/s;->e(Lcom/facebook/ads/internal/view/s;)Lcom/facebook/ads/internal/view/i/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/i/a;->f()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/internal/view/s$9;->a:Lcom/facebook/ads/internal/view/s;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/s;->a(Lcom/facebook/ads/internal/view/s;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/internal/view/s$9;->a:Lcom/facebook/ads/internal/view/s;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/s;->b(Lcom/facebook/ads/internal/view/s;)Lcom/facebook/ads/internal/view/a$a;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/internal/view/s$9;->a:Lcom/facebook/ads/internal/view/s;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/s;->b(Lcom/facebook/ads/internal/view/s;)Lcom/facebook/ads/internal/view/a$a;

    move-result-object v0

    sget-object v1, Lcom/facebook/ads/internal/view/i/b/aa;->c:Lcom/facebook/ads/internal/view/i/b/aa;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/view/i/b/aa;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/facebook/ads/internal/view/a$a;->a(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method
