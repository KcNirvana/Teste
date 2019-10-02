.class public Lcom/facebook/ads/internal/adapters/a/b;
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

    new-instance v0, Lcom/facebook/ads/internal/view/c;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/facebook/ads/internal/view/c;-><init>(Landroid/content/Context;)V

    invoke-direct {p2, v0}, Lcom/facebook/ads/internal/view/e;-><init>(Lcom/facebook/ads/internal/t/f;)V

    return-object p2
.end method

.method public a(Lcom/facebook/ads/internal/view/e;I)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/facebook/ads/internal/adapters/a/a;->a(Lcom/facebook/ads/internal/view/e;I)V

    invoke-virtual {p1}, Lcom/facebook/ads/internal/view/e;->a()Lcom/facebook/ads/internal/t/f;

    move-result-object p1

    check-cast p1, Lcom/facebook/ads/internal/view/c;

    invoke-virtual {p1}, Lcom/facebook/ads/internal/view/c;->getImageCardView()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/facebook/ads/internal/adapters/a/b;->a(Landroid/widget/ImageView;I)V

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/a/b;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/internal/t/e;

    const-string v1, "headline"

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/t/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/facebook/ads/internal/view/c;->setTitle(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/a/b;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/internal/t/e;

    const-string v1, "link_description"

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/t/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/facebook/ads/internal/view/c;->setSubtitle(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/a/b;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/internal/t/e;

    const-string v1, "call_to_action"

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/t/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/facebook/ads/internal/view/c;->setButtonText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/a/b;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/facebook/ads/internal/t/e;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p2, p1, p1, v0}, Lcom/facebook/ads/internal/t/e;->a(Landroid/view/View;Lcom/facebook/ads/internal/t/f;Ljava/util/List;)V

    return-void
.end method

.method public synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    check-cast p1, Lcom/facebook/ads/internal/view/e;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/ads/internal/adapters/a/b;->a(Lcom/facebook/ads/internal/view/e;I)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/facebook/ads/internal/adapters/a/b;->a(Landroid/view/ViewGroup;I)Lcom/facebook/ads/internal/view/e;

    move-result-object p1

    return-object p1
.end method
