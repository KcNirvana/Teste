.class public abstract Lcom/facebook/ads/internal/adapters/a/a;
.super Landroid/support/v7/widget/RecyclerView$Adapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/internal/adapters/a/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Lcom/facebook/ads/internal/view/e;",
        ">;"
    }
.end annotation


# static fields
.field private static final c:I


# instance fields
.field final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/internal/t/e;",
            ">;"
        }
    .end annotation
.end field

.field private final b:I

.field private d:Lcom/facebook/ads/internal/adapters/a/a$a;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final e:Lcom/facebook/ads/internal/x/a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Lcom/facebook/ads/internal/w/b/x;->b:F

    const/high16 v1, 0x40800000    # 4.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/internal/adapters/a/a;->c:I

    return-void
.end method

.method constructor <init>(Lcom/facebook/ads/internal/view/j;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/internal/view/j;",
            "Ljava/util/List<",
            "Lcom/facebook/ads/internal/t/e;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    new-instance v0, Lcom/facebook/ads/internal/adapters/a/a$1;

    invoke-direct {v0, p0}, Lcom/facebook/ads/internal/adapters/a/a$1;-><init>(Lcom/facebook/ads/internal/adapters/a/a;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/adapters/a/a;->e:Lcom/facebook/ads/internal/x/a$a;

    invoke-virtual {p1}, Lcom/facebook/ads/internal/view/j;->getChildSpacing()I

    move-result p1

    iput p1, p0, Lcom/facebook/ads/internal/adapters/a/a;->b:I

    iput-object p2, p0, Lcom/facebook/ads/internal/adapters/a/a;->a:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lcom/facebook/ads/internal/adapters/a/a;)Lcom/facebook/ads/internal/adapters/a/a$a;
    .locals 0

    iget-object p0, p0, Lcom/facebook/ads/internal/adapters/a/a;->d:Lcom/facebook/ads/internal/adapters/a/a$a;

    return-object p0
.end method

.method static synthetic b(Lcom/facebook/ads/internal/adapters/a/a;)Lcom/facebook/ads/internal/x/a$a;
    .locals 0

    iget-object p0, p0, Lcom/facebook/ads/internal/adapters/a/a;->e:Lcom/facebook/ads/internal/x/a$a;

    return-object p0
.end method


# virtual methods
.method a(Landroid/widget/ImageView;I)V
    .locals 3

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/a/a;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/internal/t/e;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/t/e;->j()Lcom/facebook/ads/internal/t/g;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Lcom/facebook/ads/internal/view/c/d;

    invoke-direct {v2, p1}, Lcom/facebook/ads/internal/view/c/d;-><init>(Landroid/widget/ImageView;)V

    invoke-virtual {v2}, Lcom/facebook/ads/internal/view/c/d;->a()Lcom/facebook/ads/internal/view/c/d;

    move-result-object p1

    new-instance v2, Lcom/facebook/ads/internal/adapters/a/a$2;

    invoke-direct {v2, p0, p2, v0}, Lcom/facebook/ads/internal/adapters/a/a$2;-><init>(Lcom/facebook/ads/internal/adapters/a/a;ILcom/facebook/ads/internal/t/e;)V

    invoke-virtual {p1, v2}, Lcom/facebook/ads/internal/view/c/d;->a(Lcom/facebook/ads/internal/view/c/e;)Lcom/facebook/ads/internal/view/c/d;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/t/g;->a()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/facebook/ads/internal/view/c/d;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/facebook/ads/internal/adapters/a/a$a;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/adapters/a/a;->d:Lcom/facebook/ads/internal/adapters/a/a$a;

    return-void
.end method

.method public a(Lcom/facebook/ads/internal/view/e;I)V
    .locals 3

    invoke-virtual {p1}, Lcom/facebook/ads/internal/view/e;->a()Lcom/facebook/ads/internal/t/f;

    move-result-object p1

    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    if-nez p2, :cond_0

    iget v1, p0, Lcom/facebook/ads/internal/adapters/a/a;->b:I

    mul-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/facebook/ads/internal/adapters/a/a;->b:I

    :goto_0
    iget-object v2, p0, Lcom/facebook/ads/internal/adapters/a/a;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-lt p2, v2, :cond_1

    iget p2, p0, Lcom/facebook/ads/internal/adapters/a/a;->b:I

    mul-int/lit8 p2, p2, 0x2

    goto :goto_1

    :cond_1
    iget p2, p0, Lcom/facebook/ads/internal/adapters/a/a;->b:I

    :goto_1
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p2, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    invoke-virtual {p1, v0}, Lcom/facebook/ads/internal/t/f;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/a/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    check-cast p1, Lcom/facebook/ads/internal/view/e;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/ads/internal/adapters/a/a;->a(Lcom/facebook/ads/internal/view/e;I)V

    return-void
.end method
