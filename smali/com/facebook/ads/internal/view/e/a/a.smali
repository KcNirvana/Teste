.class public Lcom/facebook/ads/internal/view/e/a/a;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;


# instance fields
.field private final a:Landroid/support/v7/widget/LinearLayoutManager;

.field private final b:I

.field private final c:Landroid/support/v7/widget/RecyclerView$SmoothScroller;

.field private final d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/internal/view/e/a/b;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lcom/facebook/ads/internal/x/a;

.field private g:Z

.field private h:Lcom/facebook/ads/internal/view/e/a/c$a;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:I

.field private m:F

.field private final n:Lcom/facebook/ads/internal/view/component/a/a/b$e;

.field private final o:Lcom/facebook/ads/internal/view/component/a/a/b$c;

.field private final p:Lcom/facebook/ads/internal/view/component/a/a/b$d;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/view/d;ILjava/util/List;Lcom/facebook/ads/internal/x/a;Landroid/os/Bundle;)V
    .locals 3
    .param p5    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/internal/view/d;",
            "I",
            "Ljava/util/List<",
            "Lcom/facebook/ads/internal/view/e/a/b;",
            ">;",
            "Lcom/facebook/ads/internal/x/a;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/e/a/a;->d:Ljava/util/Set;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/internal/view/e/a/a;->g:Z

    iput-boolean v0, p0, Lcom/facebook/ads/internal/view/e/a/a;->i:Z

    iput-boolean v0, p0, Lcom/facebook/ads/internal/view/e/a/a;->j:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/facebook/ads/internal/view/e/a/a;->l:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/facebook/ads/internal/view/e/a/a;->m:F

    new-instance v2, Lcom/facebook/ads/internal/view/e/a/a$1;

    invoke-direct {v2, p0}, Lcom/facebook/ads/internal/view/e/a/a$1;-><init>(Lcom/facebook/ads/internal/view/e/a/a;)V

    iput-object v2, p0, Lcom/facebook/ads/internal/view/e/a/a;->n:Lcom/facebook/ads/internal/view/component/a/a/b$e;

    new-instance v2, Lcom/facebook/ads/internal/view/e/a/a$2;

    invoke-direct {v2, p0}, Lcom/facebook/ads/internal/view/e/a/a$2;-><init>(Lcom/facebook/ads/internal/view/e/a/a;)V

    iput-object v2, p0, Lcom/facebook/ads/internal/view/e/a/a;->o:Lcom/facebook/ads/internal/view/component/a/a/b$c;

    new-instance v2, Lcom/facebook/ads/internal/view/e/a/a$3;

    invoke-direct {v2, p0}, Lcom/facebook/ads/internal/view/e/a/a$3;-><init>(Lcom/facebook/ads/internal/view/e/a/a;)V

    iput-object v2, p0, Lcom/facebook/ads/internal/view/e/a/a;->p:Lcom/facebook/ads/internal/view/component/a/a/b$d;

    invoke-virtual {p1}, Lcom/facebook/ads/internal/view/d;->getLayoutManager()Landroid/support/v7/widget/LinearLayoutManager;

    move-result-object v2

    iput-object v2, p0, Lcom/facebook/ads/internal/view/e/a/a;->a:Landroid/support/v7/widget/LinearLayoutManager;

    iput p2, p0, Lcom/facebook/ads/internal/view/e/a/a;->b:I

    iput-object p3, p0, Lcom/facebook/ads/internal/view/e/a/a;->e:Ljava/util/List;

    iput-object p4, p0, Lcom/facebook/ads/internal/view/e/a/a;->f:Lcom/facebook/ads/internal/x/a;

    new-instance p2, Landroid/support/v7/widget/LinearSmoothScroller;

    invoke-virtual {p1}, Lcom/facebook/ads/internal/view/d;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p2, p3}, Landroid/support/v7/widget/LinearSmoothScroller;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/facebook/ads/internal/view/e/a/a;->c:Landroid/support/v7/widget/RecyclerView$SmoothScroller;

    invoke-virtual {p1, p0}, Lcom/facebook/ads/internal/view/d;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    if-nez p5, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "VOLUME_LEVEL_PARAM"

    invoke-virtual {p5, p1, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result p1

    iput p1, p0, Lcom/facebook/ads/internal/view/e/a/a;->m:F

    const-string p1, "AUTO_PLAY_ENABLED_PARAM"

    invoke-virtual {p5, p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/facebook/ads/internal/view/e/a/a;->j:Z

    const-string p1, "IS_FIRST_VIDEO_PARAM"

    invoke-virtual {p5, p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/facebook/ads/internal/view/e/a/a;->g:Z

    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/facebook/ads/internal/view/e/a/a;)F
    .locals 0

    iget p0, p0, Lcom/facebook/ads/internal/view/e/a/a;->m:F

    return p0
.end method

.method static synthetic a(Lcom/facebook/ads/internal/view/e/a/a;F)F
    .locals 0

    iput p1, p0, Lcom/facebook/ads/internal/view/e/a/a;->m:F

    return p1
.end method

.method private a(IIZ)Lcom/facebook/ads/internal/view/component/a/a/b;
    .locals 8
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    move-object v1, v0

    :goto_0
    if-gt p1, p2, :cond_5

    iget-object v2, p0, Lcom/facebook/ads/internal/view/e/a/a;->a:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v2, p1}, Landroid/support/v7/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/internal/view/component/a/a/b;

    invoke-virtual {v2}, Lcom/facebook/ads/internal/view/component/a/a/b;->g()Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v0

    :cond_0
    invoke-static {v2}, Lcom/facebook/ads/internal/view/e/a/a;->a(Landroid/view/View;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v1, :cond_3

    invoke-virtual {v2}, Lcom/facebook/ads/internal/view/component/a/a/b;->f()Z

    move-result v5

    if-eqz v5, :cond_3

    if-eqz v3, :cond_3

    iget-object v5, p0, Lcom/facebook/ads/internal/view/e/a/a;->d:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    if-eqz p3, :cond_2

    invoke-virtual {v2}, Lcom/facebook/ads/internal/view/component/a/a/b;->getWidth()I

    move-result v5

    int-to-float v5, v5

    const v6, 0x3fa66666    # 1.3f

    mul-float v5, v5, v6

    float-to-int v5, v5

    invoke-virtual {v2}, Lcom/facebook/ads/internal/view/component/a/a/b;->getX()F

    move-result v6

    invoke-virtual {v2}, Lcom/facebook/ads/internal/view/component/a/a/b;->getWidth()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v6, v7

    float-to-int v6, v6

    if-gt v6, v5, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    if-eqz v5, :cond_3

    :cond_2
    move-object v1, v2

    :cond_3
    invoke-virtual {v2}, Lcom/facebook/ads/internal/view/component/a/a/b;->f()Z

    move-result v2

    if-eqz v2, :cond_4

    if-nez v3, :cond_4

    invoke-direct {p0, p1, v4}, Lcom/facebook/ads/internal/view/e/a/a;->a(IZ)V

    :cond_4
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_5
    return-object v1
.end method

.method private a(I)V
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/a/a;->c:Landroid/support/v7/widget/RecyclerView$SmoothScroller;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->setTargetPosition(I)V

    iget-object p1, p0, Lcom/facebook/ads/internal/view/e/a/a;->a:Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/a/a;->c:Landroid/support/v7/widget/RecyclerView$SmoothScroller;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/LinearLayoutManager;->startSmoothScroll(Landroid/support/v7/widget/RecyclerView$SmoothScroller;)V

    return-void
.end method

.method private a(IZ)V
    .locals 0

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/facebook/ads/internal/view/e/a/a;->d:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/facebook/ads/internal/view/e/a/a;->d:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method private a(Lcom/facebook/ads/internal/view/component/a/a/b;Z)V
    .locals 1

    invoke-direct {p0}, Lcom/facebook/ads/internal/view/e/a/a;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f000000    # 0.5f

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    :cond_1
    if-nez p2, :cond_2

    invoke-virtual {p1}, Lcom/facebook/ads/internal/view/component/a/a/b;->g()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Lcom/facebook/ads/internal/view/component/a/a/b;->i()V

    :cond_2
    return-void
.end method

.method static synthetic a(Lcom/facebook/ads/internal/view/e/a/a;I)V
    .locals 2

    add-int/lit8 p1, p1, 0x1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/a/a;->a:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/facebook/ads/internal/view/e/a/a;->a(IIZ)Lcom/facebook/ads/internal/view/component/a/a/b;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/facebook/ads/internal/view/component/a/a/b;->h()V

    const v0, -0x5f000010

    invoke-virtual {p1, v0}, Lcom/facebook/ads/internal/view/component/a/a/b;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/facebook/ads/internal/view/e/a/a;->a(I)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/facebook/ads/internal/view/e/a/a;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/internal/view/e/a/a;->a(IZ)V

    return-void
.end method

.method private static a(Landroid/view/View;)Z
    .locals 1

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr v0, p0

    const p0, 0x3e19999a    # 0.15f

    cmpl-float p0, v0, p0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic a(Lcom/facebook/ads/internal/view/e/a/a;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/facebook/ads/internal/view/e/a/a;->j:Z

    return p1
.end method

.method private b(I)V
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/a/a;->a:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/facebook/ads/internal/view/component/a/a/b;

    invoke-static {p1}, Lcom/facebook/ads/internal/view/e/a/a;->a(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/internal/view/e/a/a;->a(Lcom/facebook/ads/internal/view/component/a/a/b;Z)V

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/facebook/ads/internal/view/e/a/a;)Z
    .locals 0

    invoke-direct {p0}, Lcom/facebook/ads/internal/view/e/a/a;->g()Z

    move-result p0

    return p0
.end method

.method static synthetic c(Lcom/facebook/ads/internal/view/e/a/a;)V
    .locals 2

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/a/a;->a:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/facebook/ads/internal/view/e/a/a;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/facebook/ads/internal/view/e/a/a;->a(I)V

    :cond_0
    return-void
.end method

.method static synthetic d(Lcom/facebook/ads/internal/view/e/a/a;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/facebook/ads/internal/view/e/a/a;->k:Z

    return p0
.end method

.method static synthetic e(Lcom/facebook/ads/internal/view/e/a/a;)Lcom/facebook/ads/internal/x/a;
    .locals 0

    iget-object p0, p0, Lcom/facebook/ads/internal/view/e/a/a;->f:Lcom/facebook/ads/internal/x/a;

    return-object p0
.end method

.method private f()V
    .locals 3

    iget-boolean v0, p0, Lcom/facebook/ads/internal/view/e/a/a;->j:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/a/a;->a:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    iget-object v1, p0, Lcom/facebook/ads/internal/view/e/a/a;->a:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v1}, Landroid/support/v7/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v1

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/facebook/ads/internal/view/e/a/a;->a(IIZ)Lcom/facebook/ads/internal/view/component/a/a/b;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/component/a/a/b;->h()V

    :cond_1
    return-void
.end method

.method private g()Z
    .locals 2

    iget v0, p0, Lcom/facebook/ads/internal/view/e/a/a;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method


# virtual methods
.method public a()V
    .locals 4

    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/internal/view/e/a/a;->l:I

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/a/a;->a:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    iget-object v1, p0, Lcom/facebook/ads/internal/view/e/a/a;->a:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v1}, Landroid/support/v7/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v1

    :goto_0
    if-gt v0, v1, :cond_1

    if-ltz v0, :cond_1

    iget-object v2, p0, Lcom/facebook/ads/internal/view/e/a/a;->a:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/internal/view/component/a/a/b;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/facebook/ads/internal/view/component/a/a/b;->g()Z

    move-result v3

    if-eqz v3, :cond_0

    iput v0, p0, Lcom/facebook/ads/internal/view/e/a/a;->l:I

    invoke-virtual {v2}, Lcom/facebook/ads/internal/view/component/a/a/b;->i()V

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method a(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "VOLUME_LEVEL_PARAM"

    iget v1, p0, Lcom/facebook/ads/internal/view/e/a/a;->m:F

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string v0, "AUTO_PLAY_ENABLED_PARAM"

    iget-boolean v1, p0, Lcom/facebook/ads/internal/view/e/a/a;->j:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "IS_FIRST_VIDEO_PARAM"

    iget-boolean v1, p0, Lcom/facebook/ads/internal/view/e/a/a;->g:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method a(Lcom/facebook/ads/internal/view/e/a/c$a;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/view/e/a/a;->h:Lcom/facebook/ads/internal/view/e/a/c$a;

    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/a/a;->a:Landroid/support/v7/widget/LinearLayoutManager;

    iget v1, p0, Lcom/facebook/ads/internal/view/e/a/a;->l:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/internal/view/component/a/a/b;

    iget v1, p0, Lcom/facebook/ads/internal/view/e/a/a;->l:I

    if-ltz v1, :cond_0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/component/a/a/b;->h()V

    :cond_0
    return-void
.end method

.method public c()Lcom/facebook/ads/internal/view/component/a/a/b$e;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/a/a;->n:Lcom/facebook/ads/internal/view/component/a/a/b$e;

    return-object v0
.end method

.method public d()Lcom/facebook/ads/internal/view/component/a/a/b$c;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/a/a;->o:Lcom/facebook/ads/internal/view/component/a/a/b$c;

    return-object v0
.end method

.method public e()Lcom/facebook/ads/internal/view/component/a/a/b$d;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/a/a;->p:Lcom/facebook/ads/internal/view/component/a/a/b$d;

    return-object v0
.end method

.method public onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V

    if-nez p2, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/facebook/ads/internal/view/e/a/a;->k:Z

    invoke-direct {p0}, Lcom/facebook/ads/internal/view/e/a/a;->f()V

    :cond_0
    return-void
.end method

.method public onScrolled(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 6

    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrolled(Landroid/support/v7/widget/RecyclerView;II)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/facebook/ads/internal/view/e/a/a;->k:Z

    iget-boolean p3, p0, Lcom/facebook/ads/internal/view/e/a/a;->i:Z

    const/4 v0, 0x1

    if-eqz p3, :cond_0

    iput-boolean v0, p0, Lcom/facebook/ads/internal/view/e/a/a;->k:Z

    invoke-direct {p0}, Lcom/facebook/ads/internal/view/e/a/a;->f()V

    iput-boolean p1, p0, Lcom/facebook/ads/internal/view/e/a/a;->i:Z

    :cond_0
    iget-object p3, p0, Lcom/facebook/ads/internal/view/e/a/a;->a:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p3}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result p3

    iget-object v1, p0, Lcom/facebook/ads/internal/view/e/a/a;->a:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v1}, Landroid/support/v7/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v1

    invoke-direct {p0, p3}, Lcom/facebook/ads/internal/view/e/a/a;->b(I)V

    invoke-direct {p0, v1}, Lcom/facebook/ads/internal/view/e/a/a;->b(I)V

    move v2, p3

    :goto_0
    if-gt v2, v1, :cond_5

    iget-object v3, p0, Lcom/facebook/ads/internal/view/e/a/a;->a:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v3, v2}, Landroid/support/v7/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/internal/view/component/a/a/b;

    invoke-static {v3}, Lcom/facebook/ads/internal/view/e/a/a;->a(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-direct {p0, v3, v0}, Lcom/facebook/ads/internal/view/e/a/a;->a(Lcom/facebook/ads/internal/view/component/a/a/b;Z)V

    :cond_1
    iget-boolean v4, p0, Lcom/facebook/ads/internal/view/e/a/a;->g:Z

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Lcom/facebook/ads/internal/view/component/a/a/b;->f()Z

    move-result v4

    if-eqz v4, :cond_2

    iput-boolean p1, p0, Lcom/facebook/ads/internal/view/e/a/a;->g:Z

    const/4 v4, 0x1

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/facebook/ads/internal/view/e/a/a;->e:Ljava/util/List;

    const v5, -0x5f000010

    invoke-virtual {v3, v5}, Lcom/facebook/ads/internal/view/component/a/a/b;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/internal/view/e/a/b;

    iget-object v4, p0, Lcom/facebook/ads/internal/view/e/a/a;->n:Lcom/facebook/ads/internal/view/component/a/a/b$e;

    invoke-virtual {v3}, Lcom/facebook/ads/internal/view/e/a/b;->c()Lcom/facebook/ads/internal/adapters/b/l;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/ads/internal/adapters/b/l;->c()Lcom/facebook/ads/internal/adapters/b/d;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/ads/internal/adapters/b/d;->f()Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x0

    goto :goto_2

    :cond_3
    const/high16 v3, 0x3f800000    # 1.0f

    :goto_2
    invoke-interface {v4, v3}, Lcom/facebook/ads/internal/view/component/a/a/b$e;->a(F)V

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    invoke-direct {p0}, Lcom/facebook/ads/internal/view/e/a/a;->g()Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/facebook/ads/internal/view/e/a/a;->h:Lcom/facebook/ads/internal/view/e/a/c$a;

    if-nez p1, :cond_6

    goto :goto_4

    :cond_6
    iget-object p1, p0, Lcom/facebook/ads/internal/view/e/a/a;->a:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p1}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_7

    goto :goto_3

    :cond_7
    if-gez p2, :cond_8

    move p1, p3

    goto :goto_3

    :cond_8
    move p1, v1

    :goto_3
    iget-object p2, p0, Lcom/facebook/ads/internal/view/e/a/a;->h:Lcom/facebook/ads/internal/view/e/a/c$a;

    invoke-interface {p2, p1}, Lcom/facebook/ads/internal/view/e/a/c$a;->a(I)V

    :cond_9
    :goto_4
    return-void
.end method
