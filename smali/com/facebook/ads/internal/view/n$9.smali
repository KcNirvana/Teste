.class Lcom/facebook/ads/internal/view/n$9;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/facebook/ads/internal/view/u$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/internal/view/n;->setUpContent(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/view/n;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/view/n;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/view/n$9;->a:Lcom/facebook/ads/internal/view/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/facebook/ads/internal/view/n$9;->a:Lcom/facebook/ads/internal/view/n;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/n;->c(Lcom/facebook/ads/internal/view/n;)Lcom/facebook/ads/internal/view/i/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/i/a;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/view/n$9;->a:Lcom/facebook/ads/internal/view/n;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/n;->c(Lcom/facebook/ads/internal/view/n;)Lcom/facebook/ads/internal/view/i/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/i/a;->n()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/view/n$9;->a:Lcom/facebook/ads/internal/view/n;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/n;->c(Lcom/facebook/ads/internal/view/n;)Lcom/facebook/ads/internal/view/i/a;

    move-result-object v0

    sget-object v1, Lcom/facebook/ads/internal/view/i/a/a;->c:Lcom/facebook/ads/internal/view/i/a/a;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/view/i/a;->a(Lcom/facebook/ads/internal/view/i/a/a;)V

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/internal/view/n$9;->a:Lcom/facebook/ads/internal/view/n;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/n;->a(Lcom/facebook/ads/internal/view/n;)Lcom/facebook/ads/internal/view/component/a/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/component/a/l;->b()V

    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/facebook/ads/internal/view/n$9;->a:Lcom/facebook/ads/internal/view/n;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/n;->a(Lcom/facebook/ads/internal/view/n;)Lcom/facebook/ads/internal/view/component/a/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/component/a/l;->a()V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/n$9;->a:Lcom/facebook/ads/internal/view/n;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/n;->c(Lcom/facebook/ads/internal/view/n;)Lcom/facebook/ads/internal/view/i/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/view/i/a;->a(Z)V

    return-void
.end method
