.class Lcom/facebook/ads/internal/view/s$5;
.super Lcom/facebook/ads/internal/view/i/b/n;


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

    iput-object p1, p0, Lcom/facebook/ads/internal/view/s$5;->a:Lcom/facebook/ads/internal/view/s;

    invoke-direct {p0}, Lcom/facebook/ads/internal/view/i/b/n;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/facebook/ads/internal/o/d;)V
    .locals 0

    check-cast p1, Lcom/facebook/ads/internal/view/i/b/m;

    invoke-virtual {p0, p1}, Lcom/facebook/ads/internal/view/s$5;->a(Lcom/facebook/ads/internal/view/i/b/m;)V

    return-void
.end method

.method public a(Lcom/facebook/ads/internal/view/i/b/m;)V
    .locals 1

    iget-object p1, p0, Lcom/facebook/ads/internal/view/s$5;->a:Lcom/facebook/ads/internal/view/s;

    invoke-static {p1}, Lcom/facebook/ads/internal/view/s;->e(Lcom/facebook/ads/internal/view/s;)Lcom/facebook/ads/internal/view/i/a;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/facebook/ads/internal/view/s$5;->a:Lcom/facebook/ads/internal/view/s;

    invoke-static {p1}, Lcom/facebook/ads/internal/view/s;->e(Lcom/facebook/ads/internal/view/s;)Lcom/facebook/ads/internal/view/i/a;

    move-result-object p1

    sget-object v0, Lcom/facebook/ads/internal/view/i/a/a;->b:Lcom/facebook/ads/internal/view/i/a/a;

    invoke-virtual {p1, v0}, Lcom/facebook/ads/internal/view/i/a;->a(Lcom/facebook/ads/internal/view/i/a/a;)V

    iget-object p1, p0, Lcom/facebook/ads/internal/view/s$5;->a:Lcom/facebook/ads/internal/view/s;

    invoke-static {p1}, Lcom/facebook/ads/internal/view/s;->f(Lcom/facebook/ads/internal/view/s;)Lcom/facebook/ads/internal/x/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/facebook/ads/internal/x/a;->a()V

    iget-object p1, p0, Lcom/facebook/ads/internal/view/s$5;->a:Lcom/facebook/ads/internal/view/s;

    invoke-static {p1}, Lcom/facebook/ads/internal/view/s;->g(Lcom/facebook/ads/internal/view/s;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/s$5;->a:Lcom/facebook/ads/internal/view/s;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/s;->e(Lcom/facebook/ads/internal/view/s;)Lcom/facebook/ads/internal/view/i/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/i/a;->k()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object p1, p0, Lcom/facebook/ads/internal/view/s$5;->a:Lcom/facebook/ads/internal/view/s;

    invoke-static {p1}, Lcom/facebook/ads/internal/view/s;->h(Lcom/facebook/ads/internal/view/s;)V

    :cond_0
    return-void
.end method
