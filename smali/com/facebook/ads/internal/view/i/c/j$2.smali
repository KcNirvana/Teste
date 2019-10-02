.class Lcom/facebook/ads/internal/view/i/c/j$2;
.super Lcom/facebook/ads/internal/view/i/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/internal/view/i/c/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/view/i/c/j;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/view/i/c/j;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/view/i/c/j$2;->a:Lcom/facebook/ads/internal/view/i/c/j;

    invoke-direct {p0}, Lcom/facebook/ads/internal/view/i/b/p;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/facebook/ads/internal/o/d;)V
    .locals 0

    check-cast p1, Lcom/facebook/ads/internal/view/i/b/o;

    invoke-virtual {p0, p1}, Lcom/facebook/ads/internal/view/i/c/j$2;->a(Lcom/facebook/ads/internal/view/i/b/o;)V

    return-void
.end method

.method public a(Lcom/facebook/ads/internal/view/i/b/o;)V
    .locals 2

    iget-object p1, p0, Lcom/facebook/ads/internal/view/i/c/j$2;->a:Lcom/facebook/ads/internal/view/i/c/j;

    invoke-static {p1}, Lcom/facebook/ads/internal/view/i/c/j;->b(Lcom/facebook/ads/internal/view/i/c/j;)Lcom/facebook/ads/internal/view/i/a;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/facebook/ads/internal/view/i/c/j$2;->a:Lcom/facebook/ads/internal/view/i/c/j;

    invoke-static {p1}, Lcom/facebook/ads/internal/view/i/c/j;->c(Lcom/facebook/ads/internal/view/i/c/j;)I

    move-result p1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/i/c/j$2;->a:Lcom/facebook/ads/internal/view/i/c/j;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/i/c/j;->b(Lcom/facebook/ads/internal/view/i/c/j;)Lcom/facebook/ads/internal/view/i/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/i/a;->getDuration()I

    move-result v0

    if-gtz p1, :cond_1

    iget-object p1, p0, Lcom/facebook/ads/internal/view/i/c/j$2;->a:Lcom/facebook/ads/internal/view/i/c/j;

    invoke-static {p1}, Lcom/facebook/ads/internal/view/i/c/j;->d(Lcom/facebook/ads/internal/view/i/c/j;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    goto :goto_0

    :cond_1
    mul-int/lit16 p1, p1, 0x3e8

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    if-nez p1, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/internal/view/i/c/j$2;->a:Lcom/facebook/ads/internal/view/i/c/j;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/i/c/j;->d(Lcom/facebook/ads/internal/view/i/c/j;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/internal/view/i/c/j$2;->a:Lcom/facebook/ads/internal/view/i/c/j;

    invoke-static {v1}, Lcom/facebook/ads/internal/view/i/c/j;->b(Lcom/facebook/ads/internal/view/i/c/j;)Lcom/facebook/ads/internal/view/i/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/ads/internal/view/i/a;->getCurrentPositionInMillis()I

    move-result v1

    sub-int v1, p1, v1

    mul-int/lit8 v1, v1, 0x64

    div-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    :goto_0
    iget-object p1, p0, Lcom/facebook/ads/internal/view/i/c/j$2;->a:Lcom/facebook/ads/internal/view/i/c/j;

    invoke-virtual {p1}, Lcom/facebook/ads/internal/view/i/c/j;->postInvalidate()V

    return-void
.end method
