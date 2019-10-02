.class public Lcom/facebook/ads/internal/view/e/a/e;
.super Lcom/facebook/ads/internal/view/o;


# static fields
.field private static final d:I

.field private static final e:I

.field private static final f:I

.field private static final g:I

.field private static final h:I


# instance fields
.field private final i:Lcom/facebook/ads/internal/w/b/w;

.field private j:Lcom/facebook/ads/internal/h/b;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private k:Landroid/widget/LinearLayout;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private l:Ljava/lang/String;

.field private m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/internal/view/e/a/b;",
            ">;"
        }
    .end annotation
.end field

.field private n:Lcom/facebook/ads/internal/view/e/a/a;

.field private o:Lcom/facebook/ads/internal/view/component/e;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private p:Lcom/facebook/ads/internal/view/d;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private q:Lcom/facebook/ads/internal/x/a;

.field private r:Lcom/facebook/ads/internal/x/a$a;

.field private s:I

.field private t:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Lcom/facebook/ads/internal/w/b/x;->b:F

    const/high16 v1, 0x42400000    # 48.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/internal/view/e/a/e;->d:I

    sget v0, Lcom/facebook/ads/internal/w/b/x;->b:F

    const/high16 v1, 0x41000000    # 8.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/internal/view/e/a/e;->e:I

    sget v0, Lcom/facebook/ads/internal/w/b/x;->b:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/internal/view/e/a/e;->f:I

    sget v0, Lcom/facebook/ads/internal/w/b/x;->b:F

    const/high16 v1, 0x42600000    # 56.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/internal/view/e/a/e;->g:I

    sget v0, Lcom/facebook/ads/internal/w/b/x;->b:F

    const/high16 v1, 0x41400000    # 12.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/internal/view/e/a/e;->h:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/facebook/ads/internal/s/c;Lcom/facebook/ads/internal/h/b;Lcom/facebook/ads/internal/view/a$a;)V
    .locals 0
    .param p3    # Lcom/facebook/ads/internal/h/b;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p4}, Lcom/facebook/ads/internal/view/o;-><init>(Landroid/content/Context;Lcom/facebook/ads/internal/s/c;Lcom/facebook/ads/internal/view/a$a;)V

    new-instance p1, Lcom/facebook/ads/internal/w/b/w;

    invoke-direct {p1}, Lcom/facebook/ads/internal/w/b/w;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/internal/view/e/a/e;->i:Lcom/facebook/ads/internal/w/b/w;

    iput-object p3, p0, Lcom/facebook/ads/internal/view/e/a/e;->j:Lcom/facebook/ads/internal/h/b;

    return-void
.end method

.method static synthetic a(Lcom/facebook/ads/internal/view/e/a/e;)Lcom/facebook/ads/internal/w/b/w;
    .locals 0

    iget-object p0, p0, Lcom/facebook/ads/internal/view/e/a/e;->i:Lcom/facebook/ads/internal/w/b/w;

    return-object p0
.end method

.method static synthetic a(Lcom/facebook/ads/internal/view/e/a/e;Ljava/util/Map;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/facebook/ads/internal/view/e/a/e;->a(Ljava/util/Map;)V

    return-void
.end method

.method static synthetic b(Lcom/facebook/ads/internal/view/e/a/e;)Lcom/facebook/ads/internal/view/a$a;
    .locals 0

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/e/a/e;->getAudienceNetworkListener()Lcom/facebook/ads/internal/view/a$a;

    move-result-object p0

    return-object p0
.end method

.method static synthetic c(Lcom/facebook/ads/internal/view/e/a/e;)Lcom/facebook/ads/internal/view/a$a;
    .locals 0

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/e/a/e;->getAudienceNetworkListener()Lcom/facebook/ads/internal/view/a$a;

    move-result-object p0

    return-object p0
.end method

.method static synthetic d(Lcom/facebook/ads/internal/view/e/a/e;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/facebook/ads/internal/view/e/a/e;->l:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic e(Lcom/facebook/ads/internal/view/e/a/e;)Lcom/facebook/ads/internal/x/a;
    .locals 0

    iget-object p0, p0, Lcom/facebook/ads/internal/view/e/a/e;->q:Lcom/facebook/ads/internal/x/a;

    return-object p0
.end method

.method static synthetic f(Lcom/facebook/ads/internal/view/e/a/e;)Lcom/facebook/ads/internal/s/c;
    .locals 0

    iget-object p0, p0, Lcom/facebook/ads/internal/view/e/a/e;->a:Lcom/facebook/ads/internal/s/c;

    return-object p0
.end method

.method static synthetic g(Lcom/facebook/ads/internal/view/e/a/e;)Lcom/facebook/ads/internal/view/component/e;
    .locals 0

    iget-object p0, p0, Lcom/facebook/ads/internal/view/e/a/e;->o:Lcom/facebook/ads/internal/view/component/e;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/a/e;->k:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/a/e;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    iput-object v1, p0, Lcom/facebook/ads/internal/view/e/a/e;->k:Landroid/widget/LinearLayout;

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/a/e;->p:Lcom/facebook/ads/internal/view/d;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/a/e;->p:Lcom/facebook/ads/internal/view/d;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/d;->removeAllViews()V

    iput-object v1, p0, Lcom/facebook/ads/internal/view/e/a/e;->p:Lcom/facebook/ads/internal/view/d;

    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/a/e;->o:Lcom/facebook/ads/internal/view/component/e;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/a/e;->o:Lcom/facebook/ads/internal/view/component/e;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/component/e;->removeAllViews()V

    iput-object v1, p0, Lcom/facebook/ads/internal/view/e/a/e;->o:Lcom/facebook/ads/internal/view/component/e;

    :cond_2
    return-void
.end method

.method public a(ILandroid/os/Bundle;)V
    .locals 18
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    move-object/from16 v0, p0

    move/from16 v15, p1

    new-instance v1, Landroid/widget/LinearLayout;

    invoke-virtual/range {p0 .. p0}, Lcom/facebook/ads/internal/view/e/a/e;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/facebook/ads/internal/view/e/a/e;->k:Landroid/widget/LinearLayout;

    const/4 v14, 0x1

    if-ne v15, v14, :cond_0

    iget-object v1, v0, Lcom/facebook/ads/internal/view/e/a/e;->k:Landroid/widget/LinearLayout;

    const/16 v2, 0x11

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    goto :goto_1

    :cond_0
    iget-object v1, v0, Lcom/facebook/ads/internal/view/e/a/e;->k:Landroid/widget/LinearLayout;

    const/16 v2, 0x30

    goto :goto_0

    :goto_1
    iget-object v1, v0, Lcom/facebook/ads/internal/view/e/a/e;->k:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v13, -0x1

    invoke-direct {v2, v13, v13}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, v0, Lcom/facebook/ads/internal/view/e/a/e;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v14}, Landroid/widget/LinearLayout;->setOrientation(I)V

    sget-object v1, Lcom/facebook/ads/internal/w/b/x;->a:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    sget-object v2, Lcom/facebook/ads/internal/w/b/x;->a:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ne v15, v14, :cond_1

    sget v3, Lcom/facebook/ads/internal/view/e/a/e;->e:I

    mul-int/lit8 v3, v3, 0x4

    sub-int v3, v1, v3

    div-int/lit8 v2, v2, 0x2

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x8

    mul-int/lit8 v3, v1, 0x4

    :goto_2
    move v11, v1

    move v10, v2

    move v12, v3

    goto :goto_3

    :cond_1
    sget v1, Lcom/facebook/ads/internal/view/e/a/e;->g:I

    sget v3, Lcom/facebook/ads/internal/view/e/a/e;->d:I

    add-int/2addr v1, v3

    sget v3, Lcom/facebook/ads/internal/view/e/a/e;->e:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v1, v3

    sub-int/2addr v2, v1

    sget v1, Lcom/facebook/ads/internal/view/e/a/e;->e:I

    mul-int/lit8 v3, v1, 0x2

    goto :goto_2

    :goto_3
    new-instance v1, Lcom/facebook/ads/internal/view/e/a/e$1;

    invoke-direct {v1, v0}, Lcom/facebook/ads/internal/view/e/a/e$1;-><init>(Lcom/facebook/ads/internal/view/e/a/e;)V

    iput-object v1, v0, Lcom/facebook/ads/internal/view/e/a/e;->r:Lcom/facebook/ads/internal/x/a$a;

    new-instance v1, Lcom/facebook/ads/internal/x/a;

    iget-object v2, v0, Lcom/facebook/ads/internal/view/e/a/e;->r:Lcom/facebook/ads/internal/x/a$a;

    invoke-direct {v1, v0, v14, v2}, Lcom/facebook/ads/internal/x/a;-><init>(Landroid/view/View;ILcom/facebook/ads/internal/x/a$a;)V

    iput-object v1, v0, Lcom/facebook/ads/internal/view/e/a/e;->q:Lcom/facebook/ads/internal/x/a;

    iget-object v1, v0, Lcom/facebook/ads/internal/view/e/a/e;->q:Lcom/facebook/ads/internal/x/a;

    iget v2, v0, Lcom/facebook/ads/internal/view/e/a/e;->s:I

    invoke-virtual {v1, v2}, Lcom/facebook/ads/internal/x/a;->a(I)V

    iget-object v1, v0, Lcom/facebook/ads/internal/view/e/a/e;->q:Lcom/facebook/ads/internal/x/a;

    iget v2, v0, Lcom/facebook/ads/internal/view/e/a/e;->t:I

    invoke-virtual {v1, v2}, Lcom/facebook/ads/internal/x/a;->b(I)V

    new-instance v1, Lcom/facebook/ads/internal/view/d;

    invoke-virtual/range {p0 .. p0}, Lcom/facebook/ads/internal/view/e/a/e;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/facebook/ads/internal/view/d;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/facebook/ads/internal/view/e/a/e;->p:Lcom/facebook/ads/internal/view/d;

    iget-object v1, v0, Lcom/facebook/ads/internal/view/e/a/e;->p:Lcom/facebook/ads/internal/view/d;

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v13, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Lcom/facebook/ads/internal/view/d;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v7, Lcom/facebook/ads/internal/view/e/a/a;

    iget-object v2, v0, Lcom/facebook/ads/internal/view/e/a/e;->p:Lcom/facebook/ads/internal/view/d;

    iget-object v4, v0, Lcom/facebook/ads/internal/view/e/a/e;->m:Ljava/util/List;

    iget-object v5, v0, Lcom/facebook/ads/internal/view/e/a/e;->q:Lcom/facebook/ads/internal/x/a;

    move-object v1, v7

    move/from16 v3, p1

    move-object/from16 v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/facebook/ads/internal/view/e/a/a;-><init>(Lcom/facebook/ads/internal/view/d;ILjava/util/List;Lcom/facebook/ads/internal/x/a;Landroid/os/Bundle;)V

    iput-object v7, v0, Lcom/facebook/ads/internal/view/e/a/e;->n:Lcom/facebook/ads/internal/view/e/a/a;

    iget-object v9, v0, Lcom/facebook/ads/internal/view/e/a/e;->p:Lcom/facebook/ads/internal/view/d;

    new-instance v8, Lcom/facebook/ads/internal/view/e/a/c;

    iget-object v2, v0, Lcom/facebook/ads/internal/view/e/a/e;->m:Ljava/util/List;

    iget-object v3, v0, Lcom/facebook/ads/internal/view/e/a/e;->a:Lcom/facebook/ads/internal/s/c;

    iget-object v4, v0, Lcom/facebook/ads/internal/view/e/a/e;->j:Lcom/facebook/ads/internal/h/b;

    iget-object v5, v0, Lcom/facebook/ads/internal/view/e/a/e;->q:Lcom/facebook/ads/internal/x/a;

    iget-object v6, v0, Lcom/facebook/ads/internal/view/e/a/e;->i:Lcom/facebook/ads/internal/w/b/w;

    invoke-virtual/range {p0 .. p0}, Lcom/facebook/ads/internal/view/e/a/e;->getAudienceNetworkListener()Lcom/facebook/ads/internal/view/a$a;

    move-result-object v7

    if-ne v15, v14, :cond_2

    iget-object v1, v0, Lcom/facebook/ads/internal/view/e/a/e;->c:Lcom/facebook/ads/internal/adapters/b/b;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/adapters/b/b;->a()Lcom/facebook/ads/internal/adapters/b/h;

    move-result-object v1

    :goto_4
    move-object/from16 v16, v1

    goto :goto_5

    :cond_2
    iget-object v1, v0, Lcom/facebook/ads/internal/view/e/a/e;->c:Lcom/facebook/ads/internal/adapters/b/b;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/adapters/b/b;->b()Lcom/facebook/ads/internal/adapters/b/h;

    move-result-object v1

    goto :goto_4

    :goto_5
    iget-object v1, v0, Lcom/facebook/ads/internal/view/e/a/e;->l:Ljava/lang/String;

    iget-object v14, v0, Lcom/facebook/ads/internal/view/e/a/e;->n:Lcom/facebook/ads/internal/view/e/a/a;

    move-object/from16 v17, v1

    move-object v1, v8

    move-object v0, v8

    move-object/from16 v8, v16

    move-object v15, v9

    move-object/from16 v9, v17

    move/from16 v13, p1

    invoke-direct/range {v1 .. v14}, Lcom/facebook/ads/internal/view/e/a/c;-><init>(Ljava/util/List;Lcom/facebook/ads/internal/s/c;Lcom/facebook/ads/internal/h/b;Lcom/facebook/ads/internal/x/a;Lcom/facebook/ads/internal/w/b/w;Lcom/facebook/ads/internal/view/a$a;Lcom/facebook/ads/internal/adapters/b/h;Ljava/lang/String;IIIILcom/facebook/ads/internal/view/e/a/a;)V

    invoke-virtual {v15, v0}, Lcom/facebook/ads/internal/view/d;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    const/4 v0, 0x0

    move/from16 v1, p1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    move-object/from16 v2, p0

    iget-object v3, v2, Lcom/facebook/ads/internal/view/e/a/e;->n:Lcom/facebook/ads/internal/view/e/a/a;

    new-instance v4, Landroid/support/v7/widget/PagerSnapHelper;

    invoke-direct {v4}, Landroid/support/v7/widget/PagerSnapHelper;-><init>()V

    iget-object v5, v2, Lcom/facebook/ads/internal/view/e/a/e;->p:Lcom/facebook/ads/internal/view/d;

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/SnapHelper;->attachToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    new-instance v4, Lcom/facebook/ads/internal/view/e/a/e$2;

    invoke-direct {v4, v2}, Lcom/facebook/ads/internal/view/e/a/e$2;-><init>(Lcom/facebook/ads/internal/view/e/a/e;)V

    invoke-virtual {v3, v4}, Lcom/facebook/ads/internal/view/e/a/a;->a(Lcom/facebook/ads/internal/view/e/a/c$a;)V

    new-instance v3, Lcom/facebook/ads/internal/view/component/e;

    invoke-virtual/range {p0 .. p0}, Lcom/facebook/ads/internal/view/e/a/e;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, v2, Lcom/facebook/ads/internal/view/e/a/e;->c:Lcom/facebook/ads/internal/adapters/b/b;

    invoke-virtual {v5}, Lcom/facebook/ads/internal/adapters/b/b;->a()Lcom/facebook/ads/internal/adapters/b/h;

    move-result-object v5

    iget-object v6, v2, Lcom/facebook/ads/internal/view/e/a/e;->m:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-direct {v3, v4, v5, v6}, Lcom/facebook/ads/internal/view/component/e;-><init>(Landroid/content/Context;Lcom/facebook/ads/internal/adapters/b/h;I)V

    iput-object v3, v2, Lcom/facebook/ads/internal/view/e/a/e;->o:Lcom/facebook/ads/internal/view/component/e;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    sget v4, Lcom/facebook/ads/internal/view/e/a/e;->f:I

    const/4 v5, -0x1

    invoke-direct {v3, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    sget v4, Lcom/facebook/ads/internal/view/e/a/e;->h:I

    invoke-virtual {v3, v0, v4, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    iget-object v4, v2, Lcom/facebook/ads/internal/view/e/a/e;->o:Lcom/facebook/ads/internal/view/component/e;

    invoke-virtual {v4, v3}, Lcom/facebook/ads/internal/view/component/e;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_6

    :cond_3
    move-object/from16 v2, p0

    :goto_6
    iget-object v3, v2, Lcom/facebook/ads/internal/view/e/a/e;->k:Landroid/widget/LinearLayout;

    iget-object v4, v2, Lcom/facebook/ads/internal/view/e/a/e;->p:Lcom/facebook/ads/internal/view/d;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v3, v2, Lcom/facebook/ads/internal/view/e/a/e;->o:Lcom/facebook/ads/internal/view/component/e;

    if-eqz v3, :cond_4

    iget-object v3, v2, Lcom/facebook/ads/internal/view/e/a/e;->k:Landroid/widget/LinearLayout;

    iget-object v4, v2, Lcom/facebook/ads/internal/view/e/a/e;->o:Lcom/facebook/ads/internal/view/component/e;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_4
    iget-object v3, v2, Lcom/facebook/ads/internal/view/e/a/e;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3, v0, v1}, Lcom/facebook/ads/internal/view/e/a/e;->a(Landroid/view/View;ZI)V

    return-void
.end method

.method public a(Landroid/content/Intent;Landroid/os/Bundle;Lcom/facebook/ads/AudienceNetworkActivity;)V
    .locals 5

    const-string v0, "ad_data_bundle"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/facebook/ads/internal/adapters/b/k;

    invoke-super {p0, p3, p1}, Lcom/facebook/ads/internal/view/o;->a(Lcom/facebook/ads/AudienceNetworkActivity;Lcom/facebook/ads/internal/adapters/b/k;)V

    invoke-virtual {p1}, Lcom/facebook/ads/internal/adapters/b/k;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/internal/view/e/a/e;->l:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/facebook/ads/internal/adapters/b/k;->f()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/internal/view/e/a/e;->s:I

    invoke-virtual {p1}, Lcom/facebook/ads/internal/adapters/b/k;->g()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/internal/view/e/a/e;->t:I

    invoke-virtual {p1}, Lcom/facebook/ads/internal/adapters/b/k;->d()Ljava/util/List;

    move-result-object p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/e/a/e;->m:Ljava/util/List;

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/internal/adapters/b/l;

    iget-object v2, p0, Lcom/facebook/ads/internal/view/e/a/e;->m:Ljava/util/List;

    new-instance v3, Lcom/facebook/ads/internal/view/e/a/b;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, v0, v4, v1}, Lcom/facebook/ads/internal/view/e/a/b;-><init>(IILcom/facebook/ads/internal/adapters/b/l;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Lcom/facebook/ads/AudienceNetworkActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {p0, p1, p2}, Lcom/facebook/ads/internal/view/e/a/e;->a(ILandroid/os/Bundle;)V

    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/a/e;->n:Lcom/facebook/ads/internal/view/e/a/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/a/e;->n:Lcom/facebook/ads/internal/view/e/a/a;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/internal/view/e/a/a;->a(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public a_(Z)V
    .locals 0

    iget-object p1, p0, Lcom/facebook/ads/internal/view/e/a/e;->n:Lcom/facebook/ads/internal/view/e/a/a;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/facebook/ads/internal/view/e/a/e;->n:Lcom/facebook/ads/internal/view/e/a/a;

    invoke-virtual {p1}, Lcom/facebook/ads/internal/view/e/a/a;->a()V

    :cond_0
    return-void
.end method

.method public b(Z)V
    .locals 0

    iget-object p1, p0, Lcom/facebook/ads/internal/view/e/a/e;->n:Lcom/facebook/ads/internal/view/e/a/a;

    invoke-virtual {p1}, Lcom/facebook/ads/internal/view/e/a/a;->b()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, v0}, Lcom/facebook/ads/internal/view/e/a/e;->a(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/e/a/e;->a()V

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/internal/view/e/a/e;->a(ILandroid/os/Bundle;)V

    invoke-super {p0, p1}, Lcom/facebook/ads/internal/view/o;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onDestroy()V
    .locals 3

    invoke-super {p0}, Lcom/facebook/ads/internal/view/o;->onDestroy()V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/a/e;->l:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/facebook/ads/internal/view/e/a/e;->q:Lcom/facebook/ads/internal/x/a;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/internal/x/a;->a(Ljava/util/Map;)V

    const-string v1, "touch"

    iget-object v2, p0, Lcom/facebook/ads/internal/view/e/a/e;->i:Lcom/facebook/ads/internal/w/b/w;

    invoke-virtual {v2}, Lcom/facebook/ads/internal/w/b/w;->e()Ljava/util/Map;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/ads/internal/w/b/k;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/facebook/ads/internal/view/e/a/e;->a:Lcom/facebook/ads/internal/s/c;

    iget-object v2, p0, Lcom/facebook/ads/internal/view/e/a/e;->l:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/facebook/ads/internal/s/c;->l(Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/e/a/e;->a()V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/a/e;->q:Lcom/facebook/ads/internal/x/a;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/x/a;->c()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/internal/view/e/a/e;->q:Lcom/facebook/ads/internal/x/a;

    iput-object v0, p0, Lcom/facebook/ads/internal/view/e/a/e;->r:Lcom/facebook/ads/internal/x/a$a;

    iput-object v0, p0, Lcom/facebook/ads/internal/view/e/a/e;->m:Ljava/util/List;

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/a/e;->i:Lcom/facebook/ads/internal/w/b/w;

    invoke-virtual {v0, p1, p0, p0}, Lcom/facebook/ads/internal/w/b/w;->a(Landroid/view/MotionEvent;Landroid/view/View;Landroid/view/View;)V

    invoke-super {p0, p1}, Lcom/facebook/ads/internal/view/o;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
