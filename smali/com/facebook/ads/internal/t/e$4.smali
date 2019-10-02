.class Lcom/facebook/ads/internal/t/e$4;
.super Lcom/facebook/ads/internal/x/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/internal/t/e;->b(Landroid/view/View;Lcom/facebook/ads/internal/t/f;Ljava/util/List;)V
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

    iput-object p1, p0, Lcom/facebook/ads/internal/t/e$4;->a:Lcom/facebook/ads/internal/t/e;

    invoke-direct {p0}, Lcom/facebook/ads/internal/x/a$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/facebook/ads/internal/t/e$4;->a:Lcom/facebook/ads/internal/t/e;

    invoke-static {v0}, Lcom/facebook/ads/internal/t/e;->e(Lcom/facebook/ads/internal/t/e;)Lcom/facebook/ads/internal/w/b/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/w/b/w;->b()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/internal/t/e$4;->a:Lcom/facebook/ads/internal/t/e;

    invoke-static {v0}, Lcom/facebook/ads/internal/t/e;->e(Lcom/facebook/ads/internal/t/e;)Lcom/facebook/ads/internal/w/b/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/w/b/w;->a()V

    iget-object v0, p0, Lcom/facebook/ads/internal/t/e$4;->a:Lcom/facebook/ads/internal/t/e;

    invoke-static {v0}, Lcom/facebook/ads/internal/t/e;->f(Lcom/facebook/ads/internal/t/e;)Lcom/facebook/ads/internal/x/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/x/a;->c()V

    iget-object v0, p0, Lcom/facebook/ads/internal/t/e$4;->a:Lcom/facebook/ads/internal/t/e;

    invoke-static {v0}, Lcom/facebook/ads/internal/t/e;->g(Lcom/facebook/ads/internal/t/e;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/t/e$4;->a:Lcom/facebook/ads/internal/t/e;

    invoke-static {v0}, Lcom/facebook/ads/internal/t/e;->g(Lcom/facebook/ads/internal/t/e;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/t/e$4;->a:Lcom/facebook/ads/internal/t/e;

    invoke-static {v0}, Lcom/facebook/ads/internal/t/e;->g(Lcom/facebook/ads/internal/t/e;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/internal/x/a$a;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/x/a$a;->a()V

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/internal/t/e$4;->a:Lcom/facebook/ads/internal/t/e;

    invoke-static {v0}, Lcom/facebook/ads/internal/t/e;->h(Lcom/facebook/ads/internal/t/e;)Lcom/facebook/ads/internal/adapters/p;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/internal/t/e$4;->a:Lcom/facebook/ads/internal/t/e;

    invoke-static {v0}, Lcom/facebook/ads/internal/t/e;->i(Lcom/facebook/ads/internal/t/e;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/internal/t/e$4;->a:Lcom/facebook/ads/internal/t/e;

    invoke-static {v0}, Lcom/facebook/ads/internal/t/e;->j(Lcom/facebook/ads/internal/t/e;)Lcom/facebook/ads/internal/t/f;

    move-result-object v0

    if-nez v0, :cond_1

    goto/16 :goto_0

    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/internal/t/e$4;->a:Lcom/facebook/ads/internal/t/e;

    invoke-static {v0}, Lcom/facebook/ads/internal/t/e;->h(Lcom/facebook/ads/internal/t/e;)Lcom/facebook/ads/internal/adapters/p;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/internal/t/e$4;->a:Lcom/facebook/ads/internal/t/e;

    invoke-static {v1}, Lcom/facebook/ads/internal/t/e;->i(Lcom/facebook/ads/internal/t/e;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/adapters/p;->a(Landroid/view/View;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/t/e$4;->a:Lcom/facebook/ads/internal/t/e;

    invoke-static {v0}, Lcom/facebook/ads/internal/t/e;->h(Lcom/facebook/ads/internal/t/e;)Lcom/facebook/ads/internal/adapters/p;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/internal/t/e$4;->a:Lcom/facebook/ads/internal/t/e;

    invoke-static {v1}, Lcom/facebook/ads/internal/t/e;->j(Lcom/facebook/ads/internal/t/e;)Lcom/facebook/ads/internal/t/f;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/adapters/p;->a(Lcom/facebook/ads/internal/t/f;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/t/e$4;->a:Lcom/facebook/ads/internal/t/e;

    invoke-static {v0}, Lcom/facebook/ads/internal/t/e;->h(Lcom/facebook/ads/internal/t/e;)Lcom/facebook/ads/internal/adapters/p;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/internal/t/e$4;->a:Lcom/facebook/ads/internal/t/e;

    invoke-static {v1}, Lcom/facebook/ads/internal/t/e;->k(Lcom/facebook/ads/internal/t/e;)Lcom/facebook/ads/internal/t/k;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/adapters/p;->a(Lcom/facebook/ads/internal/t/k;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/t/e$4;->a:Lcom/facebook/ads/internal/t/e;

    invoke-static {v0}, Lcom/facebook/ads/internal/t/e;->h(Lcom/facebook/ads/internal/t/e;)Lcom/facebook/ads/internal/adapters/p;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/internal/t/e$4;->a:Lcom/facebook/ads/internal/t/e;

    invoke-static {v1}, Lcom/facebook/ads/internal/t/e;->l(Lcom/facebook/ads/internal/t/e;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/adapters/p;->a(Z)V

    iget-object v0, p0, Lcom/facebook/ads/internal/t/e$4;->a:Lcom/facebook/ads/internal/t/e;

    invoke-static {v0}, Lcom/facebook/ads/internal/t/e;->h(Lcom/facebook/ads/internal/t/e;)Lcom/facebook/ads/internal/adapters/p;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/internal/t/e$4;->a:Lcom/facebook/ads/internal/t/e;

    invoke-static {v1}, Lcom/facebook/ads/internal/t/e;->m(Lcom/facebook/ads/internal/t/e;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/adapters/p;->b(Z)V

    iget-object v0, p0, Lcom/facebook/ads/internal/t/e$4;->a:Lcom/facebook/ads/internal/t/e;

    invoke-static {v0}, Lcom/facebook/ads/internal/t/e;->h(Lcom/facebook/ads/internal/t/e;)Lcom/facebook/ads/internal/adapters/p;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/internal/t/e$4;->a:Lcom/facebook/ads/internal/t/e;

    invoke-static {v1}, Lcom/facebook/ads/internal/t/e;->n(Lcom/facebook/ads/internal/t/e;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/adapters/p;->d(Z)V

    iget-object v0, p0, Lcom/facebook/ads/internal/t/e$4;->a:Lcom/facebook/ads/internal/t/e;

    invoke-static {v0}, Lcom/facebook/ads/internal/t/e;->h(Lcom/facebook/ads/internal/t/e;)Lcom/facebook/ads/internal/adapters/p;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/internal/t/e$4;->a:Lcom/facebook/ads/internal/t/e;

    invoke-static {v1}, Lcom/facebook/ads/internal/t/e;->o(Lcom/facebook/ads/internal/t/e;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/adapters/p;->c(Z)V

    iget-object v0, p0, Lcom/facebook/ads/internal/t/e$4;->a:Lcom/facebook/ads/internal/t/e;

    invoke-static {v0}, Lcom/facebook/ads/internal/t/e;->h(Lcom/facebook/ads/internal/t/e;)Lcom/facebook/ads/internal/adapters/p;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/internal/t/e$4;->a:Lcom/facebook/ads/internal/t/e;

    invoke-static {v1}, Lcom/facebook/ads/internal/t/e;->p(Lcom/facebook/ads/internal/t/e;)Lcom/facebook/ads/internal/adapters/p$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/adapters/p;->a(Lcom/facebook/ads/internal/adapters/p$a;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/t/e$4;->a:Lcom/facebook/ads/internal/t/e;

    invoke-static {v0}, Lcom/facebook/ads/internal/t/e;->h(Lcom/facebook/ads/internal/t/e;)Lcom/facebook/ads/internal/adapters/p;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/internal/t/e$4;->a:Lcom/facebook/ads/internal/t/e;

    invoke-static {v1}, Lcom/facebook/ads/internal/t/e;->q(Lcom/facebook/ads/internal/t/e;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/adapters/p;->e(Z)V

    iget-object v0, p0, Lcom/facebook/ads/internal/t/e$4;->a:Lcom/facebook/ads/internal/t/e;

    invoke-static {v0}, Lcom/facebook/ads/internal/t/e;->h(Lcom/facebook/ads/internal/t/e;)Lcom/facebook/ads/internal/adapters/p;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/internal/t/e$4;->a:Lcom/facebook/ads/internal/t/e;

    invoke-static {v1}, Lcom/facebook/ads/internal/t/e;->r(Lcom/facebook/ads/internal/t/e;)Lcom/facebook/ads/NativeAdLayout;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/ads/internal/view/a/d;->a(Lcom/facebook/ads/NativeAdLayout;)Lcom/facebook/ads/internal/adapters/p$b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/adapters/p;->a(Lcom/facebook/ads/internal/adapters/p$b;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/t/e$4;->a:Lcom/facebook/ads/internal/t/e;

    invoke-static {v0}, Lcom/facebook/ads/internal/t/e;->h(Lcom/facebook/ads/internal/t/e;)Lcom/facebook/ads/internal/adapters/p;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/internal/t/e$4;->a:Lcom/facebook/ads/internal/t/e;

    invoke-static {v1}, Lcom/facebook/ads/internal/t/e;->s(Lcom/facebook/ads/internal/t/e;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/adapters/p;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/t/e$4;->a:Lcom/facebook/ads/internal/t/e;

    invoke-static {v0}, Lcom/facebook/ads/internal/t/e;->h(Lcom/facebook/ads/internal/t/e;)Lcom/facebook/ads/internal/adapters/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/p;->a()V

    nop

    :cond_2
    :goto_0
    return-void
.end method
