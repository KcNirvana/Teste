.class public Lcom/facebook/ads/internal/adapters/a/c;
.super Lcom/facebook/ads/internal/adapters/a/a;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/internal/view/j;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/internal/view/j;",
            "Ljava/util/List<",
            "Lcom/facebook/ads/internal/t/e;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/internal/adapters/a/a;-><init>(Lcom/facebook/ads/internal/view/j;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;I)Lcom/facebook/ads/internal/view/e;
    .locals 1

    new-instance p2, Lcom/facebook/ads/internal/view/e;

    new-instance v0, Lcom/facebook/ads/internal/view/k;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/facebook/ads/internal/view/k;-><init>(Landroid/content/Context;)V

    invoke-direct {p2, v0}, Lcom/facebook/ads/internal/view/e;-><init>(Lcom/facebook/ads/internal/t/f;)V

    return-object p2
.end method

.method public a(Lcom/facebook/ads/internal/view/e;I)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/facebook/ads/internal/adapters/a/a;->a(Lcom/facebook/ads/internal/view/e;I)V

    invoke-virtual {p1}, Lcom/facebook/ads/internal/view/e;->a()Lcom/facebook/ads/internal/t/f;

    move-result-object p1

    check-cast p1, Lcom/facebook/ads/internal/view/k;

    invoke-virtual {p1}, Lcom/facebook/ads/internal/view/k;->getImageCardView()Landroid/widget/ImageView;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/internal/view/x;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/view/x;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v0, p2}, Lcom/facebook/ads/internal/adapters/a/c;->a(Landroid/widget/ImageView;I)V

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/a/c;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/facebook/ads/internal/t/e;

    invoke-virtual {p2, p1, p1}, Lcom/facebook/ads/internal/t/e;->a(Landroid/view/View;Lcom/facebook/ads/internal/t/f;)V

    return-void
.end method

.method public synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    check-cast p1, Lcom/facebook/ads/internal/view/e;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/ads/internal/adapters/a/c;->a(Lcom/facebook/ads/internal/view/e;I)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/facebook/ads/internal/adapters/a/c;->a(Landroid/view/ViewGroup;I)Lcom/facebook/ads/internal/view/e;

    move-result-object p1

    return-object p1
.end method
