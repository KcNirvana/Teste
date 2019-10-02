.class Lcom/facebook/ads/internal/view/i$2;
.super Lcom/facebook/ads/internal/view/i/b/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/internal/view/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/view/i;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/view/i;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/view/i$2;->a:Lcom/facebook/ads/internal/view/i;

    invoke-direct {p0}, Lcom/facebook/ads/internal/view/i/b/d;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/facebook/ads/internal/o/d;)V
    .locals 0

    check-cast p1, Lcom/facebook/ads/internal/view/i/b/c;

    invoke-virtual {p0, p1}, Lcom/facebook/ads/internal/view/i$2;->a(Lcom/facebook/ads/internal/view/i/b/c;)V

    return-void
.end method

.method public a(Lcom/facebook/ads/internal/view/i/b/c;)V
    .locals 4

    iget-object p1, p0, Lcom/facebook/ads/internal/view/i$2;->a:Lcom/facebook/ads/internal/view/i;

    invoke-static {p1}, Lcom/facebook/ads/internal/view/i;->a(Lcom/facebook/ads/internal/view/i;)Lcom/facebook/ads/internal/view/i/a;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/facebook/ads/internal/view/i$2;->a:Lcom/facebook/ads/internal/view/i;

    invoke-static {p1}, Lcom/facebook/ads/internal/view/i;->b(Lcom/facebook/ads/internal/view/i;)I

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/facebook/ads/internal/view/i$2;->a:Lcom/facebook/ads/internal/view/i;

    invoke-static {p1}, Lcom/facebook/ads/internal/view/i;->c(Lcom/facebook/ads/internal/view/i;)Lcom/facebook/ads/internal/view/component/CircularProgressView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/facebook/ads/internal/view/component/CircularProgressView;->isShown()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/facebook/ads/internal/view/i$2;->a:Lcom/facebook/ads/internal/view/i;

    invoke-static {p1}, Lcom/facebook/ads/internal/view/i;->f(Lcom/facebook/ads/internal/view/i;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/facebook/ads/internal/view/i$2;->a:Lcom/facebook/ads/internal/view/i;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/facebook/ads/internal/view/i;->a(Z)V

    iget-object p1, p0, Lcom/facebook/ads/internal/view/i$2;->a:Lcom/facebook/ads/internal/view/i;

    invoke-static {p1}, Lcom/facebook/ads/internal/view/i;->a(Lcom/facebook/ads/internal/view/i;)Lcom/facebook/ads/internal/view/i/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/facebook/ads/internal/view/i/a;->getEventBus()Lcom/facebook/ads/internal/o/e;

    move-result-object p1

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/facebook/ads/internal/o/f;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/facebook/ads/internal/view/i$2;->a:Lcom/facebook/ads/internal/view/i;

    invoke-static {v3}, Lcom/facebook/ads/internal/view/i;->d(Lcom/facebook/ads/internal/view/i;)Lcom/facebook/ads/internal/view/i/b/p;

    move-result-object v3

    aput-object v3, v1, v2

    iget-object v2, p0, Lcom/facebook/ads/internal/view/i$2;->a:Lcom/facebook/ads/internal/view/i;

    invoke-static {v2}, Lcom/facebook/ads/internal/view/i;->e(Lcom/facebook/ads/internal/view/i;)Lcom/facebook/ads/internal/view/i/b/d;

    move-result-object v2

    aput-object v2, v1, v0

    invoke-virtual {p1, v1}, Lcom/facebook/ads/internal/o/e;->b([Lcom/facebook/ads/internal/o/f;)V

    :cond_1
    :goto_0
    return-void
.end method
