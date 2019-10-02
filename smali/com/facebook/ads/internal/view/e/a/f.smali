.class Lcom/facebook/ads/internal/view/e/a/f;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;


# instance fields
.field private final a:Lcom/facebook/ads/internal/view/component/a/a/b;

.field private final b:Landroid/util/SparseBooleanArray;

.field private final c:I

.field private final d:I

.field private final e:I

.field private final f:I

.field private g:Lcom/facebook/ads/internal/x/a;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private h:Lcom/facebook/ads/internal/x/a$a;

.field private i:Lcom/facebook/ads/internal/x/a;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/view/component/a/a/b;Landroid/util/SparseBooleanArray;Lcom/facebook/ads/internal/x/a;IIII)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/facebook/ads/internal/view/e/a/f;->a:Lcom/facebook/ads/internal/view/component/a/a/b;

    iput-object p2, p0, Lcom/facebook/ads/internal/view/e/a/f;->b:Landroid/util/SparseBooleanArray;

    iput-object p3, p0, Lcom/facebook/ads/internal/view/e/a/f;->i:Lcom/facebook/ads/internal/x/a;

    iput p4, p0, Lcom/facebook/ads/internal/view/e/a/f;->c:I

    iput p5, p0, Lcom/facebook/ads/internal/view/e/a/f;->d:I

    iput p6, p0, Lcom/facebook/ads/internal/view/e/a/f;->e:I

    iput p7, p0, Lcom/facebook/ads/internal/view/e/a/f;->f:I

    return-void
.end method

.method static synthetic a(Lcom/facebook/ads/internal/view/e/a/f;)Lcom/facebook/ads/internal/x/a;
    .locals 0

    iget-object p0, p0, Lcom/facebook/ads/internal/view/e/a/f;->i:Lcom/facebook/ads/internal/x/a;

    return-object p0
.end method

.method static synthetic b(Lcom/facebook/ads/internal/view/e/a/f;)Landroid/util/SparseBooleanArray;
    .locals 0

    iget-object p0, p0, Lcom/facebook/ads/internal/view/e/a/f;->b:Landroid/util/SparseBooleanArray;

    return-object p0
.end method

.method static synthetic c(Lcom/facebook/ads/internal/view/e/a/f;)Lcom/facebook/ads/internal/x/a;
    .locals 0

    iget-object p0, p0, Lcom/facebook/ads/internal/view/e/a/f;->g:Lcom/facebook/ads/internal/x/a;

    return-object p0
.end method


# virtual methods
.method a(Lcom/facebook/ads/internal/view/e/a/b;Lcom/facebook/ads/internal/s/c;Lcom/facebook/ads/internal/h/b;Lcom/facebook/ads/internal/w/b/w;Ljava/lang/String;)V
    .locals 7

    invoke-virtual {p1}, Lcom/facebook/ads/internal/view/e/a/b;->b()I

    move-result v0

    iget-object v1, p0, Lcom/facebook/ads/internal/view/e/a/f;->a:Lcom/facebook/ads/internal/view/component/a/a/b;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, -0x5f000010

    invoke-virtual {v1, v3, v2}, Lcom/facebook/ads/internal/view/component/a/a/b;->setTag(ILjava/lang/Object;)V

    new-instance v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v2, p0, Lcom/facebook/ads/internal/view/e/a/f;->c:I

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    if-nez v0, :cond_0

    iget v2, p0, Lcom/facebook/ads/internal/view/e/a/f;->d:I

    goto :goto_0

    :cond_0
    iget v2, p0, Lcom/facebook/ads/internal/view/e/a/f;->e:I

    :goto_0
    iget v3, p0, Lcom/facebook/ads/internal/view/e/a/f;->f:I

    add-int/lit8 v3, v3, -0x1

    if-lt v0, v3, :cond_1

    iget v0, p0, Lcom/facebook/ads/internal/view/e/a/f;->d:I

    goto :goto_1

    :cond_1
    iget v0, p0, Lcom/facebook/ads/internal/view/e/a/f;->e:I

    :goto_1
    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    invoke-virtual {p1}, Lcom/facebook/ads/internal/view/e/a/b;->c()Lcom/facebook/ads/internal/adapters/b/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/b/l;->c()Lcom/facebook/ads/internal/adapters/b/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/b/d;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/facebook/ads/internal/view/e/a/b;->c()Lcom/facebook/ads/internal/adapters/b/l;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/ads/internal/adapters/b/l;->c()Lcom/facebook/ads/internal/adapters/b/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/ads/internal/adapters/b/d;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/ads/internal/view/e/a/f;->a:Lcom/facebook/ads/internal/view/component/a/a/b;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Lcom/facebook/ads/internal/view/component/a/a/b;->setIsVideo(Z)V

    iget-object v3, p0, Lcom/facebook/ads/internal/view/e/a/f;->a:Lcom/facebook/ads/internal/view/component/a/a/b;

    invoke-virtual {v3}, Lcom/facebook/ads/internal/view/component/a/a/b;->f()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/facebook/ads/internal/view/e/a/f;->a:Lcom/facebook/ads/internal/view/component/a/a/b;

    invoke-virtual {v3, v0}, Lcom/facebook/ads/internal/view/component/a/a/b;->setVideoPlaceholderUrl(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/a/f;->a:Lcom/facebook/ads/internal/view/component/a/a/b;

    const-string v3, ""

    if-eqz p3, :cond_2

    if-eqz v2, :cond_2

    invoke-virtual {p3, v2}, Lcom/facebook/ads/internal/h/b;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    goto :goto_2

    :cond_2
    move-object p3, v3

    :goto_2
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_3

    :cond_3
    move-object p3, v2

    :goto_3
    invoke-virtual {v0, p3}, Lcom/facebook/ads/internal/view/component/a/a/b;->setVideoUrl(Ljava/lang/String;)V

    goto :goto_4

    :cond_4
    iget-object p3, p0, Lcom/facebook/ads/internal/view/e/a/f;->a:Lcom/facebook/ads/internal/view/component/a/a/b;

    invoke-virtual {p3, v0}, Lcom/facebook/ads/internal/view/component/a/a/b;->setImageUrl(Ljava/lang/String;)V

    :goto_4
    iget-object p3, p0, Lcom/facebook/ads/internal/view/e/a/f;->a:Lcom/facebook/ads/internal/view/component/a/a/b;

    invoke-virtual {p3, v1}, Lcom/facebook/ads/internal/view/component/a/a/b;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p3, p0, Lcom/facebook/ads/internal/view/e/a/f;->a:Lcom/facebook/ads/internal/view/component/a/a/b;

    invoke-virtual {p1}, Lcom/facebook/ads/internal/view/e/a/b;->c()Lcom/facebook/ads/internal/adapters/b/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/b/l;->a()Lcom/facebook/ads/internal/adapters/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/b/e;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/facebook/ads/internal/view/e/a/b;->c()Lcom/facebook/ads/internal/adapters/b/l;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/ads/internal/adapters/b/l;->a()Lcom/facebook/ads/internal/adapters/b/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/ads/internal/adapters/b/e;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Lcom/facebook/ads/internal/view/component/a/a/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p3, p0, Lcom/facebook/ads/internal/view/e/a/f;->a:Lcom/facebook/ads/internal/view/component/a/a/b;

    invoke-virtual {p1}, Lcom/facebook/ads/internal/view/e/a/b;->c()Lcom/facebook/ads/internal/adapters/b/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/b/l;->b()Lcom/facebook/ads/internal/adapters/b/i;

    move-result-object v0

    invoke-virtual {p1}, Lcom/facebook/ads/internal/view/e/a/b;->a()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Lcom/facebook/ads/internal/view/component/a/a/b;->a(Lcom/facebook/ads/internal/adapters/b/i;Ljava/util/Map;)V

    iget-object p3, p0, Lcom/facebook/ads/internal/view/e/a/f;->a:Lcom/facebook/ads/internal/view/component/a/a/b;

    invoke-virtual {p1}, Lcom/facebook/ads/internal/view/e/a/b;->a()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/facebook/ads/internal/view/component/a/a/b;->a(Ljava/util/Map;)V

    iget-object p3, p0, Lcom/facebook/ads/internal/view/e/a/f;->b:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1}, Lcom/facebook/ads/internal/view/e/a/b;->b()I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p3

    if-eqz p3, :cond_5

    goto :goto_5

    :cond_5
    iget-object p3, p0, Lcom/facebook/ads/internal/view/e/a/f;->g:Lcom/facebook/ads/internal/x/a;

    if-eqz p3, :cond_6

    iget-object p3, p0, Lcom/facebook/ads/internal/view/e/a/f;->g:Lcom/facebook/ads/internal/x/a;

    invoke-virtual {p3}, Lcom/facebook/ads/internal/x/a;->c()V

    const/4 p3, 0x0

    iput-object p3, p0, Lcom/facebook/ads/internal/view/e/a/f;->g:Lcom/facebook/ads/internal/x/a;

    :cond_6
    invoke-virtual {p1}, Lcom/facebook/ads/internal/view/e/a/b;->a()Ljava/util/Map;

    move-result-object v4

    new-instance p3, Lcom/facebook/ads/internal/view/e/a/f$1;

    move-object v0, p3

    move-object v1, p0

    move-object v2, p5

    move-object v3, p1

    move-object v5, p4

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/facebook/ads/internal/view/e/a/f$1;-><init>(Lcom/facebook/ads/internal/view/e/a/f;Ljava/lang/String;Lcom/facebook/ads/internal/view/e/a/b;Ljava/util/Map;Lcom/facebook/ads/internal/w/b/w;Lcom/facebook/ads/internal/s/c;)V

    iput-object p3, p0, Lcom/facebook/ads/internal/view/e/a/f;->h:Lcom/facebook/ads/internal/x/a$a;

    new-instance p2, Lcom/facebook/ads/internal/x/a;

    iget-object p3, p0, Lcom/facebook/ads/internal/view/e/a/f;->a:Lcom/facebook/ads/internal/view/component/a/a/b;

    const/16 p4, 0xa

    iget-object p5, p0, Lcom/facebook/ads/internal/view/e/a/f;->h:Lcom/facebook/ads/internal/x/a$a;

    invoke-direct {p2, p3, p4, p5}, Lcom/facebook/ads/internal/x/a;-><init>(Landroid/view/View;ILcom/facebook/ads/internal/x/a$a;)V

    iput-object p2, p0, Lcom/facebook/ads/internal/view/e/a/f;->g:Lcom/facebook/ads/internal/x/a;

    iget-object p2, p0, Lcom/facebook/ads/internal/view/e/a/f;->g:Lcom/facebook/ads/internal/x/a;

    const/16 p3, 0x64

    invoke-virtual {p2, p3}, Lcom/facebook/ads/internal/x/a;->a(I)V

    iget-object p2, p0, Lcom/facebook/ads/internal/view/e/a/f;->g:Lcom/facebook/ads/internal/x/a;

    invoke-virtual {p2, p3}, Lcom/facebook/ads/internal/x/a;->b(I)V

    iget-object p2, p0, Lcom/facebook/ads/internal/view/e/a/f;->a:Lcom/facebook/ads/internal/view/component/a/a/b;

    new-instance p3, Lcom/facebook/ads/internal/view/e/a/f$2;

    invoke-direct {p3, p0, p1}, Lcom/facebook/ads/internal/view/e/a/f$2;-><init>(Lcom/facebook/ads/internal/view/e/a/f;Lcom/facebook/ads/internal/view/e/a/b;)V

    invoke-virtual {p2, p3}, Lcom/facebook/ads/internal/view/component/a/a/b;->setOnAssetsLoadedListener(Lcom/facebook/ads/internal/view/component/a/a/b$a;)V

    :goto_5
    return-void
.end method
