.class Lcom/facebook/ads/internal/view/i/c/o$1;
.super Lcom/facebook/ads/internal/view/i/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/internal/view/i/c/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/view/i/c/o;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/view/i/c/o;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/view/i/c/o$1;->a:Lcom/facebook/ads/internal/view/i/c/o;

    invoke-direct {p0}, Lcom/facebook/ads/internal/view/i/b/p;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/facebook/ads/internal/o/d;)V
    .locals 0

    check-cast p1, Lcom/facebook/ads/internal/view/i/b/o;

    invoke-virtual {p0, p1}, Lcom/facebook/ads/internal/view/i/c/o$1;->a(Lcom/facebook/ads/internal/view/i/b/o;)V

    return-void
.end method

.method public a(Lcom/facebook/ads/internal/view/i/b/o;)V
    .locals 2

    iget-object p1, p0, Lcom/facebook/ads/internal/view/i/c/o$1;->a:Lcom/facebook/ads/internal/view/i/c/o;

    invoke-static {p1}, Lcom/facebook/ads/internal/view/i/c/o;->a(Lcom/facebook/ads/internal/view/i/c/o;)Lcom/facebook/ads/internal/view/i/a;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/facebook/ads/internal/view/i/c/o$1;->a:Lcom/facebook/ads/internal/view/i/c/o;

    iget-object v0, p0, Lcom/facebook/ads/internal/view/i/c/o$1;->a:Lcom/facebook/ads/internal/view/i/c/o;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/i/c/o;->a(Lcom/facebook/ads/internal/view/i/c/o;)Lcom/facebook/ads/internal/view/i/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/i/a;->getDuration()I

    move-result v0

    iget-object v1, p0, Lcom/facebook/ads/internal/view/i/c/o$1;->a:Lcom/facebook/ads/internal/view/i/c/o;

    invoke-static {v1}, Lcom/facebook/ads/internal/view/i/c/o;->a(Lcom/facebook/ads/internal/view/i/c/o;)Lcom/facebook/ads/internal/view/i/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/ads/internal/view/i/a;->getCurrentPositionInMillis()I

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/facebook/ads/internal/view/i/c/o;->a(Lcom/facebook/ads/internal/view/i/c/o;II)V

    :cond_0
    return-void
.end method
