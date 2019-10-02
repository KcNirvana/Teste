.class Lcom/facebook/ads/internal/t/e$1;
.super Lcom/facebook/ads/internal/adapters/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/internal/t/e;->a(Lcom/facebook/ads/internal/t/d;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/t/e;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/t/e;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/t/e$1;->a:Lcom/facebook/ads/internal/t/e;

    invoke-direct {p0}, Lcom/facebook/ads/internal/adapters/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/t/e$1;->a:Lcom/facebook/ads/internal/t/e;

    invoke-static {v0}, Lcom/facebook/ads/internal/t/e;->a(Lcom/facebook/ads/internal/t/e;)Lcom/facebook/ads/internal/t/h;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/t/e$1;->a:Lcom/facebook/ads/internal/t/e;

    invoke-static {v0}, Lcom/facebook/ads/internal/t/e;->a(Lcom/facebook/ads/internal/t/e;)Lcom/facebook/ads/internal/t/h;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/internal/t/h;->c()V

    :cond_0
    return-void
.end method

.method public a(Lcom/facebook/ads/internal/adapters/AdAdapter;)V
    .locals 0

    iget-object p1, p0, Lcom/facebook/ads/internal/t/e$1;->a:Lcom/facebook/ads/internal/t/e;

    invoke-static {p1}, Lcom/facebook/ads/internal/t/e;->b(Lcom/facebook/ads/internal/t/e;)Lcom/facebook/ads/internal/b/g;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/facebook/ads/internal/t/e$1;->a:Lcom/facebook/ads/internal/t/e;

    invoke-static {p1}, Lcom/facebook/ads/internal/t/e;->b(Lcom/facebook/ads/internal/t/e;)Lcom/facebook/ads/internal/b/g;

    move-result-object p1

    invoke-virtual {p1}, Lcom/facebook/ads/internal/b/g;->e()V

    :cond_0
    return-void
.end method

.method public a(Lcom/facebook/ads/internal/adapters/i;)V
    .locals 2

    iget-object v0, p0, Lcom/facebook/ads/internal/t/e$1;->a:Lcom/facebook/ads/internal/t/e;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/facebook/ads/internal/t/e;->a(Lcom/facebook/ads/internal/t/e;Lcom/facebook/ads/internal/adapters/i;Z)V

    iget-object v0, p0, Lcom/facebook/ads/internal/t/e$1;->a:Lcom/facebook/ads/internal/t/e;

    invoke-static {v0}, Lcom/facebook/ads/internal/t/e;->a(Lcom/facebook/ads/internal/t/e;)Lcom/facebook/ads/internal/t/h;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/facebook/ads/internal/adapters/i;->x()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/facebook/ads/internal/t/e$1$1;

    invoke-direct {v0, p0}, Lcom/facebook/ads/internal/t/e$1$1;-><init>(Lcom/facebook/ads/internal/t/e$1;)V

    invoke-virtual {p1}, Lcom/facebook/ads/internal/adapters/i;->x()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/internal/t/e;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/internal/t/e;->a(Lcom/facebook/ads/internal/adapters/q;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Lcom/facebook/ads/internal/protocol/a;)V
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/t/e$1;->a:Lcom/facebook/ads/internal/t/e;

    invoke-static {v0}, Lcom/facebook/ads/internal/t/e;->a(Lcom/facebook/ads/internal/t/e;)Lcom/facebook/ads/internal/t/h;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/t/e$1;->a:Lcom/facebook/ads/internal/t/e;

    invoke-static {v0}, Lcom/facebook/ads/internal/t/e;->a(Lcom/facebook/ads/internal/t/e;)Lcom/facebook/ads/internal/t/h;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/facebook/ads/internal/t/h;->a(Lcom/facebook/ads/internal/protocol/a;)V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Native ads manager their own impressions."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
