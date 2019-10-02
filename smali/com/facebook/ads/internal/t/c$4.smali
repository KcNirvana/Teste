.class Lcom/facebook/ads/internal/t/c$4;
.super Lcom/facebook/ads/internal/x/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/internal/t/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/t/c;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/t/c;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/t/c$4;->a:Lcom/facebook/ads/internal/t/c;

    invoke-direct {p0}, Lcom/facebook/ads/internal/x/a$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/facebook/ads/internal/t/c$4;->a:Lcom/facebook/ads/internal/t/c;

    invoke-static {v0}, Lcom/facebook/ads/internal/t/c;->d(Lcom/facebook/ads/internal/t/c;)Lcom/facebook/ads/internal/view/p;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/internal/t/c$4;->a:Lcom/facebook/ads/internal/t/c;

    invoke-static {v0}, Lcom/facebook/ads/internal/t/c;->e(Lcom/facebook/ads/internal/t/c;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/internal/t/c$4;->a:Lcom/facebook/ads/internal/t/c;

    invoke-static {v0}, Lcom/facebook/ads/internal/t/c;->f(Lcom/facebook/ads/internal/t/c;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/internal/t/c$4;->a:Lcom/facebook/ads/internal/t/c;

    invoke-static {v0}, Lcom/facebook/ads/internal/t/c;->g(Lcom/facebook/ads/internal/t/c;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/internal/t/c$4;->a:Lcom/facebook/ads/internal/t/c;

    sget-object v1, Lcom/facebook/ads/internal/view/i/a/a;->c:Lcom/facebook/ads/internal/view/i/a/a;

    invoke-static {v0, v1}, Lcom/facebook/ads/internal/t/c;->a(Lcom/facebook/ads/internal/t/c;Lcom/facebook/ads/internal/view/i/a/a;)V

    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/internal/t/c$4;->a:Lcom/facebook/ads/internal/t/c;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/facebook/ads/internal/t/c;->a(Lcom/facebook/ads/internal/t/c;Z)Z

    iget-object v0, p0, Lcom/facebook/ads/internal/t/c$4;->a:Lcom/facebook/ads/internal/t/c;

    invoke-static {v0, v1}, Lcom/facebook/ads/internal/t/c;->b(Lcom/facebook/ads/internal/t/c;Z)Z

    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/t/c$4;->a:Lcom/facebook/ads/internal/t/c;

    invoke-static {v0}, Lcom/facebook/ads/internal/t/c;->d(Lcom/facebook/ads/internal/t/c;)Lcom/facebook/ads/internal/view/p;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/internal/t/c$4;->a:Lcom/facebook/ads/internal/t/c;

    invoke-static {v0}, Lcom/facebook/ads/internal/t/c;->d(Lcom/facebook/ads/internal/t/c;)Lcom/facebook/ads/internal/view/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/p;->e()V

    return-void
.end method
