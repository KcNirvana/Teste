.class Lcom/facebook/ads/internal/view/i/c/d$3;
.super Lcom/facebook/ads/internal/view/i/b/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/internal/view/i/c/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/view/i/c/d;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/view/i/c/d;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/view/i/c/d$3;->a:Lcom/facebook/ads/internal/view/i/c/d;

    invoke-direct {p0}, Lcom/facebook/ads/internal/view/i/b/d;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/facebook/ads/internal/o/d;)V
    .locals 0

    check-cast p1, Lcom/facebook/ads/internal/view/i/b/c;

    invoke-virtual {p0, p1}, Lcom/facebook/ads/internal/view/i/c/d$3;->a(Lcom/facebook/ads/internal/view/i/b/c;)V

    return-void
.end method

.method public a(Lcom/facebook/ads/internal/view/i/b/c;)V
    .locals 1

    iget-object p1, p0, Lcom/facebook/ads/internal/view/i/c/d$3;->a:Lcom/facebook/ads/internal/view/i/c/d;

    invoke-static {p1}, Lcom/facebook/ads/internal/view/i/c/d;->b(Lcom/facebook/ads/internal/view/i/c/d;)Lcom/facebook/ads/internal/view/i/c/d$a;

    move-result-object p1

    sget-object v0, Lcom/facebook/ads/internal/view/i/c/d$a;->b:Lcom/facebook/ads/internal/view/i/c/d$a;

    if-eq p1, v0, :cond_0

    iget-object p1, p0, Lcom/facebook/ads/internal/view/i/c/d$3;->a:Lcom/facebook/ads/internal/view/i/c/d;

    invoke-static {p1}, Lcom/facebook/ads/internal/view/i/c/d;->e(Lcom/facebook/ads/internal/view/i/c/d;)Landroid/view/View;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Lcom/facebook/ads/internal/view/i/c/d$3;->a:Lcom/facebook/ads/internal/view/i/c/d;

    invoke-static {p1}, Lcom/facebook/ads/internal/view/i/c/d;->e(Lcom/facebook/ads/internal/view/i/c/d;)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method
