.class Lcom/facebook/ads/internal/adapters/k$2;
.super Lcom/facebook/ads/internal/adapters/k$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/internal/adapters/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/adapters/b/f;

.field final synthetic b:Lcom/facebook/ads/internal/adapters/k;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/adapters/k;Lcom/facebook/ads/internal/adapters/k;Lcom/facebook/ads/internal/adapters/t;Lcom/facebook/ads/internal/h/b;Ljava/util/concurrent/atomic/AtomicBoolean;ZLcom/facebook/ads/internal/adapters/b/f;)V
    .locals 7

    iput-object p1, p0, Lcom/facebook/ads/internal/adapters/k$2;->b:Lcom/facebook/ads/internal/adapters/k;

    iput-object p7, p0, Lcom/facebook/ads/internal/adapters/k$2;->a:Lcom/facebook/ads/internal/adapters/b/f;

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v6}, Lcom/facebook/ads/internal/adapters/k$b;-><init>(Lcom/facebook/ads/internal/adapters/k;Lcom/facebook/ads/internal/adapters/t;Lcom/facebook/ads/internal/h/b;Ljava/util/concurrent/atomic/AtomicBoolean;ZLcom/facebook/ads/internal/adapters/k$1;)V

    return-void
.end method


# virtual methods
.method a(ZLcom/facebook/ads/internal/adapters/k;Lcom/facebook/ads/internal/adapters/t;)V
    .locals 4
    .param p2    # Lcom/facebook/ads/internal/adapters/k;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/facebook/ads/internal/adapters/t;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p2, :cond_2

    if-eqz p3, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/k$2;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/k$2;->a:Lcom/facebook/ads/internal/adapters/b/f;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/b/f;->j()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/internal/adapters/b/q;

    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/facebook/ads/internal/adapters/k$2;->f:Lcom/facebook/ads/internal/h/b;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/adapters/b/q;->j()Lcom/facebook/ads/internal/adapters/b/d;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/ads/internal/adapters/b/d;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/facebook/ads/internal/h/b;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Lcom/facebook/ads/internal/adapters/b/q;->j()Lcom/facebook/ads/internal/adapters/b/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/ads/internal/adapters/b/d;->a()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v1, v2}, Lcom/facebook/ads/internal/adapters/b/q;->c(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/facebook/ads/internal/adapters/k;->a(Lcom/facebook/ads/internal/adapters/b/q;Z)Z

    goto :goto_0

    :cond_1
    invoke-interface {p3, p2}, Lcom/facebook/ads/internal/adapters/t;->a(Lcom/facebook/ads/internal/adapters/s;)V

    :cond_2
    return-void
.end method
