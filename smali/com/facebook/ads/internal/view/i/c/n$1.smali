.class Lcom/facebook/ads/internal/view/i/c/n$1;
.super Lcom/facebook/ads/internal/view/i/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/internal/view/i/c/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/view/i/c/n;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/view/i/c/n;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/view/i/c/n$1;->a:Lcom/facebook/ads/internal/view/i/c/n;

    invoke-direct {p0}, Lcom/facebook/ads/internal/view/i/b/p;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/facebook/ads/internal/o/d;)V
    .locals 0

    check-cast p1, Lcom/facebook/ads/internal/view/i/b/o;

    invoke-virtual {p0, p1}, Lcom/facebook/ads/internal/view/i/c/n$1;->a(Lcom/facebook/ads/internal/view/i/b/o;)V

    return-void
.end method

.method public a(Lcom/facebook/ads/internal/view/i/b/o;)V
    .locals 2

    iget-object p1, p0, Lcom/facebook/ads/internal/view/i/c/n$1;->a:Lcom/facebook/ads/internal/view/i/c/n;

    invoke-static {p1}, Lcom/facebook/ads/internal/view/i/c/n;->a(Lcom/facebook/ads/internal/view/i/c/n;)Lcom/facebook/ads/internal/view/i/a;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/facebook/ads/internal/view/i/c/n$1;->a:Lcom/facebook/ads/internal/view/i/c/n;

    invoke-static {p1}, Lcom/facebook/ads/internal/view/i/c/n;->a(Lcom/facebook/ads/internal/view/i/c/n;)Lcom/facebook/ads/internal/view/i/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/facebook/ads/internal/view/i/a;->getDuration()I

    move-result p1

    if-lez p1, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/view/i/c/n$1;->a:Lcom/facebook/ads/internal/view/i/c/n;

    iget-object v1, p0, Lcom/facebook/ads/internal/view/i/c/n$1;->a:Lcom/facebook/ads/internal/view/i/c/n;

    invoke-static {v1}, Lcom/facebook/ads/internal/view/i/c/n;->a(Lcom/facebook/ads/internal/view/i/c/n;)Lcom/facebook/ads/internal/view/i/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/ads/internal/view/i/a;->getCurrentPositionInMillis()I

    move-result v1

    int-to-float v1, v1

    int-to-float p1, p1

    div-float/2addr v1, p1

    invoke-static {v0, v1}, Lcom/facebook/ads/internal/view/i/c/n;->a(Lcom/facebook/ads/internal/view/i/c/n;F)F

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/facebook/ads/internal/view/i/c/n$1;->a:Lcom/facebook/ads/internal/view/i/c/n;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/facebook/ads/internal/view/i/c/n;->a(Lcom/facebook/ads/internal/view/i/c/n;F)F

    :goto_0
    iget-object p1, p0, Lcom/facebook/ads/internal/view/i/c/n$1;->a:Lcom/facebook/ads/internal/view/i/c/n;

    invoke-virtual {p1}, Lcom/facebook/ads/internal/view/i/c/n;->postInvalidate()V

    :cond_1
    return-void
.end method
