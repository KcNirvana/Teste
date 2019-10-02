.class Lcom/facebook/ads/InstreamVideoAdView$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/InstreamVideoAdView$1;->a(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/InstreamVideoAdView$1;


# direct methods
.method constructor <init>(Lcom/facebook/ads/InstreamVideoAdView$1;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/InstreamVideoAdView$1$1;->a:Lcom/facebook/ads/InstreamVideoAdView$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 3

    iget-object p1, p0, Lcom/facebook/ads/InstreamVideoAdView$1$1;->a:Lcom/facebook/ads/InstreamVideoAdView$1;

    iget-object p1, p1, Lcom/facebook/ads/InstreamVideoAdView$1;->a:Lcom/facebook/ads/InstreamVideoAdView;

    invoke-static {p1}, Lcom/facebook/ads/InstreamVideoAdView;->c(Lcom/facebook/ads/InstreamVideoAdView;)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/facebook/ads/InstreamVideoAdView$1$1;->a:Lcom/facebook/ads/InstreamVideoAdView$1;

    iget-object p1, p1, Lcom/facebook/ads/InstreamVideoAdView$1;->a:Lcom/facebook/ads/InstreamVideoAdView;

    invoke-static {p1}, Lcom/facebook/ads/InstreamVideoAdView;->f(Lcom/facebook/ads/InstreamVideoAdView;)Lcom/facebook/ads/internal/view/c/c;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/facebook/ads/InstreamVideoAdView$1$1;->a:Lcom/facebook/ads/InstreamVideoAdView$1;

    iget-object p1, p1, Lcom/facebook/ads/InstreamVideoAdView$1;->a:Lcom/facebook/ads/InstreamVideoAdView;

    invoke-static {p1}, Lcom/facebook/ads/InstreamVideoAdView;->f(Lcom/facebook/ads/InstreamVideoAdView;)Lcom/facebook/ads/internal/view/c/c;

    move-result-object p1

    iget-object v1, p0, Lcom/facebook/ads/InstreamVideoAdView$1$1;->a:Lcom/facebook/ads/InstreamVideoAdView$1;

    iget-object v1, v1, Lcom/facebook/ads/InstreamVideoAdView$1;->a:Lcom/facebook/ads/InstreamVideoAdView;

    invoke-static {v1}, Lcom/facebook/ads/InstreamVideoAdView;->c(Lcom/facebook/ads/InstreamVideoAdView;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/facebook/ads/InstreamVideoAdView$1$1;->a:Lcom/facebook/ads/InstreamVideoAdView$1;

    iget-object v2, v2, Lcom/facebook/ads/InstreamVideoAdView$1;->a:Lcom/facebook/ads/InstreamVideoAdView;

    invoke-static {v2}, Lcom/facebook/ads/InstreamVideoAdView;->c(Lcom/facebook/ads/InstreamVideoAdView;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {p1, v0, v0, v1, v2}, Lcom/facebook/ads/internal/view/c/c;->setBounds(IIII)V

    iget-object p1, p0, Lcom/facebook/ads/InstreamVideoAdView$1$1;->a:Lcom/facebook/ads/InstreamVideoAdView$1;

    iget-object p1, p1, Lcom/facebook/ads/InstreamVideoAdView$1;->a:Lcom/facebook/ads/InstreamVideoAdView;

    invoke-static {p1}, Lcom/facebook/ads/InstreamVideoAdView;->f(Lcom/facebook/ads/InstreamVideoAdView;)Lcom/facebook/ads/internal/view/c/c;

    move-result-object p1

    iget-object v0, p0, Lcom/facebook/ads/InstreamVideoAdView$1$1;->a:Lcom/facebook/ads/InstreamVideoAdView$1;

    iget-object v0, v0, Lcom/facebook/ads/InstreamVideoAdView$1;->a:Lcom/facebook/ads/InstreamVideoAdView;

    invoke-static {v0}, Lcom/facebook/ads/InstreamVideoAdView;->f(Lcom/facebook/ads/InstreamVideoAdView;)Lcom/facebook/ads/internal/view/c/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/c/c;->a()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lcom/facebook/ads/internal/view/c/c;->a(Z)V

    return v1

    :cond_1
    :goto_0
    return v0
.end method
