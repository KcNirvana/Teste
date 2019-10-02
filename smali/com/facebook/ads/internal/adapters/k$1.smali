.class Lcom/facebook/ads/internal/adapters/k$1;
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
.field final synthetic a:Lcom/facebook/ads/internal/adapters/b/q;

.field final synthetic b:Z

.field final synthetic c:Lcom/facebook/ads/internal/adapters/k;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/adapters/k;Lcom/facebook/ads/internal/adapters/k;Lcom/facebook/ads/internal/adapters/t;Lcom/facebook/ads/internal/h/b;Ljava/util/concurrent/atomic/AtomicBoolean;ZLcom/facebook/ads/internal/adapters/b/q;Z)V
    .locals 7

    iput-object p1, p0, Lcom/facebook/ads/internal/adapters/k$1;->c:Lcom/facebook/ads/internal/adapters/k;

    iput-object p7, p0, Lcom/facebook/ads/internal/adapters/k$1;->a:Lcom/facebook/ads/internal/adapters/b/q;

    iput-boolean p8, p0, Lcom/facebook/ads/internal/adapters/k$1;->b:Z

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
    .locals 2
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

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/k$1;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/facebook/ads/internal/adapters/k$1;->f:Lcom/facebook/ads/internal/h/b;

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/k$1;->a:Lcom/facebook/ads/internal/adapters/b/q;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/b/q;->j()Lcom/facebook/ads/internal/adapters/b/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/b/d;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/facebook/ads/internal/h/b;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/facebook/ads/internal/adapters/k$1;->a:Lcom/facebook/ads/internal/adapters/b/q;

    invoke-virtual {p1}, Lcom/facebook/ads/internal/adapters/b/q;->j()Lcom/facebook/ads/internal/adapters/b/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/facebook/ads/internal/adapters/b/d;->a()Ljava/lang/String;

    move-result-object p1

    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/k$1;->a:Lcom/facebook/ads/internal/adapters/b/q;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/internal/adapters/b/q;->c(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/facebook/ads/internal/adapters/k$1;->c:Lcom/facebook/ads/internal/adapters/k;

    invoke-static {p1}, Lcom/facebook/ads/internal/adapters/k;->a(Lcom/facebook/ads/internal/adapters/k;)Lcom/facebook/ads/internal/adapters/b/a;

    move-result-object p1

    check-cast p1, Lcom/facebook/ads/internal/adapters/b/q;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/facebook/ads/internal/adapters/k;->a(Lcom/facebook/ads/internal/adapters/b/q;Z)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/facebook/ads/internal/adapters/k$1;->c:Lcom/facebook/ads/internal/adapters/k;

    iget-object p2, p0, Lcom/facebook/ads/internal/adapters/k$1;->c:Lcom/facebook/ads/internal/adapters/k;

    invoke-static {p2}, Lcom/facebook/ads/internal/adapters/k;->b(Lcom/facebook/ads/internal/adapters/k;)Landroid/content/Context;

    move-result-object p2

    iget-boolean p3, p0, Lcom/facebook/ads/internal/adapters/k$1;->b:Z

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/k$1;->a:Lcom/facebook/ads/internal/adapters/b/q;

    invoke-static {p1, p2, p3, v0}, Lcom/facebook/ads/internal/adapters/k;->a(Lcom/facebook/ads/internal/adapters/k;Landroid/content/Context;ZLcom/facebook/ads/internal/adapters/b/q;)V

    goto :goto_1

    :cond_1
    invoke-interface {p3, p2}, Lcom/facebook/ads/internal/adapters/t;->a(Lcom/facebook/ads/internal/adapters/s;)V

    :cond_2
    :goto_1
    return-void
.end method
