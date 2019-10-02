.class public Lcom/facebook/ads/internal/view/g/d;
.super Landroid/support/v7/widget/RecyclerView$Adapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Lcom/facebook/ads/internal/view/g/f;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final b:I


# direct methods
.method constructor <init>(Ljava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/internal/view/g/d;->a:Ljava/util/List;

    iput p2, p0, Lcom/facebook/ads/internal/view/g/d;->b:I

    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;I)Lcom/facebook/ads/internal/view/g/f;
    .locals 0

    new-instance p2, Lcom/facebook/ads/internal/view/g/e;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/facebook/ads/internal/view/g/e;-><init>(Landroid/content/Context;)V

    new-instance p1, Lcom/facebook/ads/internal/view/g/f;

    invoke-direct {p1, p2}, Lcom/facebook/ads/internal/view/g/f;-><init>(Lcom/facebook/ads/internal/view/g/e;)V

    return-object p1
.end method

.method public a(Lcom/facebook/ads/internal/view/g/f;I)V
    .locals 4

    iget-object v0, p0, Lcom/facebook/ads/internal/view/g/d;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v1, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    if-nez p2, :cond_0

    iget v2, p0, Lcom/facebook/ads/internal/view/g/d;->b:I

    mul-int/lit8 v2, v2, 0x4

    goto :goto_0

    :cond_0
    iget v2, p0, Lcom/facebook/ads/internal/view/g/d;->b:I

    :goto_0
    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/g/d;->getItemCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-lt p2, v3, :cond_1

    iget p2, p0, Lcom/facebook/ads/internal/view/g/d;->b:I

    mul-int/lit8 p2, p2, 0x4

    goto :goto_1

    :cond_1
    iget p2, p0, Lcom/facebook/ads/internal/view/g/d;->b:I

    :goto_1
    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, p2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    invoke-virtual {p1}, Lcom/facebook/ads/internal/view/g/f;->a()Lcom/facebook/ads/internal/view/g/e;

    move-result-object p2

    invoke-virtual {p2, v1}, Lcom/facebook/ads/internal/view/g/e;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p1}, Lcom/facebook/ads/internal/view/g/f;->a()Lcom/facebook/ads/internal/view/g/e;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/facebook/ads/internal/view/g/e;->a(Ljava/lang/String;)V

    return-void
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/g/d;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    check-cast p1, Lcom/facebook/ads/internal/view/g/f;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/ads/internal/view/g/d;->a(Lcom/facebook/ads/internal/view/g/f;I)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/facebook/ads/internal/view/g/d;->a(Landroid/view/ViewGroup;I)Lcom/facebook/ads/internal/view/g/f;

    move-result-object p1

    return-object p1
.end method
