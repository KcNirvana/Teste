.class Lcom/facebook/ads/internal/view/component/a/h;
.super Lcom/facebook/ads/internal/view/component/a/l;


# static fields
.field private static final a:I


# instance fields
.field private final b:Lcom/facebook/ads/internal/view/component/a/o;

.field private final c:Lcom/facebook/ads/internal/view/component/a/m;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final d:Landroid/widget/FrameLayout;

.field private final e:Lcom/facebook/ads/internal/s/c;

.field private final f:Ljava/lang/String;

.field private final g:Lcom/facebook/ads/internal/x/a;

.field private final h:Lcom/facebook/ads/internal/w/b/w;

.field private final i:Ljava/lang/String;

.field private final j:Lcom/facebook/ads/internal/view/b/f;

.field private final k:Lcom/facebook/ads/internal/view/i/c/f;

.field private final l:I

.field private m:Z

.field private n:Z

.field private o:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/facebook/ads/internal/view/u;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Lcom/facebook/ads/internal/w/b/x;->b:F

    const/high16 v1, 0x40800000    # 4.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/internal/view/component/a/h;->a:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/internal/view/component/a/e;Lcom/facebook/ads/internal/adapters/b/h;IILcom/facebook/ads/internal/a/i;Z)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-virtual/range {p1 .. p1}, Lcom/facebook/ads/internal/view/component/a/e;->a()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/facebook/ads/internal/view/component/a/l;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/facebook/ads/internal/view/component/a/h;->m:Z

    invoke-virtual/range {p1 .. p1}, Lcom/facebook/ads/internal/view/component/a/e;->b()Lcom/facebook/ads/internal/s/c;

    move-result-object v3

    iput-object v3, v0, Lcom/facebook/ads/internal/view/component/a/h;->e:Lcom/facebook/ads/internal/s/c;

    invoke-virtual/range {p1 .. p1}, Lcom/facebook/ads/internal/view/component/a/e;->i()Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/internal/view/i/c/f;

    iput-object v3, v0, Lcom/facebook/ads/internal/view/component/a/h;->k:Lcom/facebook/ads/internal/view/i/c/f;

    invoke-virtual/range {p1 .. p1}, Lcom/facebook/ads/internal/view/component/a/e;->e()Lcom/facebook/ads/internal/x/a;

    move-result-object v3

    iput-object v3, v0, Lcom/facebook/ads/internal/view/component/a/h;->g:Lcom/facebook/ads/internal/x/a;

    invoke-virtual/range {p1 .. p1}, Lcom/facebook/ads/internal/view/component/a/e;->g()Lcom/facebook/ads/internal/adapters/b/k;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/ads/internal/adapters/b/k;->c()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/facebook/ads/internal/view/component/a/h;->f:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcom/facebook/ads/internal/view/component/a/e;->f()Lcom/facebook/ads/internal/w/b/w;

    move-result-object v3

    iput-object v3, v0, Lcom/facebook/ads/internal/view/component/a/h;->h:Lcom/facebook/ads/internal/w/b/w;

    invoke-virtual/range {p1 .. p1}, Lcom/facebook/ads/internal/view/component/a/e;->g()Lcom/facebook/ads/internal/adapters/b/k;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/ads/internal/adapters/b/k;->a()Lcom/facebook/ads/internal/adapters/b/m;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/ads/internal/adapters/b/m;->d()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/facebook/ads/internal/view/component/a/h;->i:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcom/facebook/ads/internal/view/component/a/e;->k()I

    move-result v3

    iput v3, v0, Lcom/facebook/ads/internal/view/component/a/h;->l:I

    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcom/facebook/ads/internal/w/b/x;->a(Landroid/view/View;I)V

    new-instance v4, Landroid/widget/LinearLayout;

    invoke-virtual/range {p1 .. p1}, Lcom/facebook/ads/internal/view/component/a/e;->a()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v6, -0x1

    invoke-direct {v5, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v0, v4, v5}, Lcom/facebook/ads/internal/view/component/a/h;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v7, Lcom/facebook/ads/internal/view/i;

    invoke-virtual/range {p1 .. p1}, Lcom/facebook/ads/internal/view/component/a/e;->a()Landroid/content/Context;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Lcom/facebook/ads/internal/view/component/a/e;->c()Lcom/facebook/ads/internal/view/a$a;

    move-result-object v9

    sget-object v10, Lcom/facebook/ads/internal/view/i$a;->a:Lcom/facebook/ads/internal/view/i$a;

    invoke-direct {v7, v8, v9, v10}, Lcom/facebook/ads/internal/view/i;-><init>(Landroid/content/Context;Lcom/facebook/ads/internal/view/a$a;Lcom/facebook/ads/internal/view/i$a;)V

    sget-object v8, Lcom/facebook/ads/internal/view/i$a;->c:Lcom/facebook/ads/internal/view/i$a;

    invoke-virtual {v7, v8}, Lcom/facebook/ads/internal/view/i;->setCloseButtonStyle(Lcom/facebook/ads/internal/view/i$a;)V

    invoke-virtual/range {p1 .. p1}, Lcom/facebook/ads/internal/view/component/a/e;->g()Lcom/facebook/ads/internal/adapters/b/k;

    move-result-object v8

    invoke-virtual {v8}, Lcom/facebook/ads/internal/adapters/b/k;->a()Lcom/facebook/ads/internal/adapters/b/m;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Lcom/facebook/ads/internal/view/component/a/e;->g()Lcom/facebook/ads/internal/adapters/b/k;

    move-result-object v9

    invoke-virtual {v9}, Lcom/facebook/ads/internal/adapters/b/k;->c()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9, v3}, Lcom/facebook/ads/internal/view/i;->a(Lcom/facebook/ads/internal/adapters/b/m;Ljava/lang/String;I)V

    move-object/from16 v8, p2

    invoke-virtual {v7, v8, v2}, Lcom/facebook/ads/internal/view/i;->a(Lcom/facebook/ads/internal/adapters/b/h;Z)V

    invoke-virtual {v7, v3}, Lcom/facebook/ads/internal/view/i;->b(Z)V

    new-instance v9, Lcom/facebook/ads/internal/view/component/a/h$1;

    invoke-direct {v9, v0}, Lcom/facebook/ads/internal/view/component/a/h$1;-><init>(Lcom/facebook/ads/internal/view/component/a/h;)V

    invoke-virtual {v7, v9}, Lcom/facebook/ads/internal/view/i;->setToolbarListener(Lcom/facebook/ads/internal/view/i$b;)V

    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v10, -0x2

    invoke-direct {v9, v6, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    new-instance v11, Landroid/widget/FrameLayout;

    invoke-virtual/range {p1 .. p1}, Lcom/facebook/ads/internal/view/component/a/e;->a()Landroid/content/Context;

    move-result-object v12

    invoke-direct {v11, v12}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v11, v0, Lcom/facebook/ads/internal/view/component/a/h;->d:Landroid/widget/FrameLayout;

    iget-object v11, v0, Lcom/facebook/ads/internal/view/component/a/h;->d:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v11, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v11, v0, Lcom/facebook/ads/internal/view/component/a/h;->d:Landroid/widget/FrameLayout;

    const v12, -0x19dcd8d1

    invoke-static {v11, v12}, Lcom/facebook/ads/internal/w/b/x;->a(Landroid/view/View;I)V

    new-instance v11, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v11, v6, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual/range {p1 .. p1}, Lcom/facebook/ads/internal/view/component/a/e;->k()I

    move-result v10

    if-ne v10, v2, :cond_0

    iget-object v10, v0, Lcom/facebook/ads/internal/view/component/a/h;->d:Landroid/widget/FrameLayout;

    invoke-virtual {v10, v7, v11}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v7, v0, Lcom/facebook/ads/internal/view/component/a/h;->d:Landroid/widget/FrameLayout;

    const/4 v10, 0x4

    invoke-virtual {v7, v10}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_0
    new-instance v7, Landroid/widget/FrameLayout;

    invoke-virtual/range {p1 .. p1}, Lcom/facebook/ads/internal/view/component/a/e;->a()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v7, v10}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v10, Landroid/widget/FrameLayout$LayoutParams;

    sget v11, Lcom/facebook/ads/internal/view/component/a/h;->a:I

    invoke-direct {v10, v6, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    new-instance v11, Lcom/facebook/ads/internal/view/b/b;

    invoke-virtual/range {p1 .. p1}, Lcom/facebook/ads/internal/view/component/a/e;->a()Landroid/content/Context;

    move-result-object v12

    const/4 v13, 0x0

    const v14, 0x1010078

    invoke-direct {v11, v12, v13, v14}, Lcom/facebook/ads/internal/view/b/b;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {v7, v11, v9}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v9, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    new-instance v12, Lcom/facebook/ads/internal/view/b/f;

    invoke-virtual/range {p1 .. p1}, Lcom/facebook/ads/internal/view/component/a/e;->a()Landroid/content/Context;

    move-result-object v13

    new-instance v14, Lcom/facebook/ads/internal/view/component/a/h$2;

    invoke-direct {v14, v0, v7, v11}, Lcom/facebook/ads/internal/view/component/a/h$2;-><init>(Lcom/facebook/ads/internal/view/component/a/h;Landroid/widget/FrameLayout;Lcom/facebook/ads/internal/view/b/b;)V

    invoke-direct {v12, v13, v14}, Lcom/facebook/ads/internal/view/b/f;-><init>(Landroid/content/Context;Lcom/facebook/ads/internal/view/b/f$a;)V

    iput-object v12, v0, Lcom/facebook/ads/internal/view/component/a/h;->j:Lcom/facebook/ads/internal/view/b/f;

    iget-object v11, v0, Lcom/facebook/ads/internal/view/component/a/h;->j:Lcom/facebook/ads/internal/view/b/f;

    invoke-virtual {v11, v7, v10}, Lcom/facebook/ads/internal/view/b/f;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v7, v0, Lcom/facebook/ads/internal/view/component/a/h;->j:Lcom/facebook/ads/internal/view/b/f;

    invoke-virtual {v4, v7, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v4, 0x11

    iput v4, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    new-instance v4, Lcom/facebook/ads/internal/view/component/a/o;

    new-instance v15, Lcom/facebook/ads/internal/view/component/a/h$3;

    invoke-direct {v15, v0, v1}, Lcom/facebook/ads/internal/view/component/a/h$3;-><init>(Lcom/facebook/ads/internal/view/component/a/h;Lcom/facebook/ads/internal/a/i;)V

    move-object v10, v4

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    move/from16 v13, p3

    move/from16 v14, p4

    invoke-direct/range {v10 .. v15}, Lcom/facebook/ads/internal/view/component/a/o;-><init>(Lcom/facebook/ads/internal/view/component/a/e;Lcom/facebook/ads/internal/adapters/b/h;IILcom/facebook/ads/internal/view/component/a$a;)V

    iput-object v4, v0, Lcom/facebook/ads/internal/view/component/a/h;->b:Lcom/facebook/ads/internal/view/component/a/o;

    iget-object v4, v0, Lcom/facebook/ads/internal/view/component/a/h;->b:Lcom/facebook/ads/internal/view/component/a/o;

    iget-object v4, v4, Lcom/facebook/ads/internal/view/component/a/o;->a:Lcom/facebook/ads/internal/view/component/a/n;

    invoke-virtual {v4}, Lcom/facebook/ads/internal/view/component/a/n;->getSwipeUpCtaButton()Lcom/facebook/ads/internal/view/component/a/m;

    move-result-object v4

    iput-object v4, v0, Lcom/facebook/ads/internal/view/component/a/h;->c:Lcom/facebook/ads/internal/view/component/a/m;

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual/range {p1 .. p1}, Lcom/facebook/ads/internal/view/component/a/e;->k()I

    move-result v5

    if-eq v5, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_2

    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    sget v2, Lcom/facebook/ads/internal/view/i;->a:I

    :goto_1
    invoke-virtual {v4, v3, v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    iget-object v2, v0, Lcom/facebook/ads/internal/view/component/a/h;->b:Lcom/facebook/ads/internal/view/component/a/o;

    invoke-virtual {v0, v2, v4}, Lcom/facebook/ads/internal/view/component/a/h;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz p6, :cond_3

    invoke-direct {v0, v1}, Lcom/facebook/ads/internal/view/component/a/h;->a(Lcom/facebook/ads/internal/a/i;)V

    :cond_3
    return-void
.end method

.method static synthetic a(Lcom/facebook/ads/internal/view/component/a/h;)Ljava/lang/ref/WeakReference;
    .locals 0

    iget-object p0, p0, Lcom/facebook/ads/internal/view/component/a/h;->o:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method private a(Lcom/facebook/ads/internal/a/i;)V
    .locals 3

    iget-object v0, p0, Lcom/facebook/ads/internal/view/component/a/h;->b:Lcom/facebook/ads/internal/view/component/a/o;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/component/a/o;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/facebook/ads/internal/view/component/a/h;->g:Lcom/facebook/ads/internal/x/a;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/internal/x/a;->a(Ljava/util/Map;)V

    const-string v1, "touch"

    iget-object v2, p0, Lcom/facebook/ads/internal/view/component/a/h;->h:Lcom/facebook/ads/internal/w/b/w;

    invoke-virtual {v2}, Lcom/facebook/ads/internal/w/b/w;->e()Ljava/util/Map;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/ads/internal/w/b/k;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lcom/facebook/ads/internal/a/i;->a(Ljava/util/Map;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/component/a/h;->b:Lcom/facebook/ads/internal/view/component/a/o;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/view/component/a/o;->setVisibility(I)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/component/a/h;->j:Lcom/facebook/ads/internal/view/b/f;

    invoke-virtual {p1}, Lcom/facebook/ads/internal/a/i;->c()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/view/b/f;->loadUrl(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/facebook/ads/internal/a/i;->a()V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/facebook/ads/internal/view/component/a/h;Lcom/facebook/ads/internal/a/i;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/facebook/ads/internal/view/component/a/h;->a(Lcom/facebook/ads/internal/a/i;)V

    return-void
.end method

.method private a(Landroid/view/MotionEvent;Landroid/view/View;)Z
    .locals 6
    .param p2    # Landroid/view/View;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x2

    new-array v1, v1, [I

    invoke-virtual {p2, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    aget v3, v1, v0

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    const/4 v3, 0x1

    if-ltz v2, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    aget v4, v1, v0

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    cmpg-float v2, v2, v4

    if-gtz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    aget v5, v1, v3

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    aget v1, v1, v3

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p2

    add-int/2addr v1, p2

    int-to-float p2, v1

    cmpg-float p1, p1, p2

    if-gtz p1, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    iget-object p2, p0, Lcom/facebook/ads/internal/view/component/a/h;->b:Lcom/facebook/ads/internal/view/component/a/o;

    invoke-virtual {p2}, Lcom/facebook/ads/internal/view/component/a/o;->getVisibility()I

    move-result p2

    if-nez p2, :cond_3

    const/4 p2, 0x1

    goto :goto_2

    :cond_3
    const/4 p2, 0x0

    :goto_2
    if-eqz v2, :cond_4

    if-eqz p1, :cond_4

    if-eqz p2, :cond_4

    const/4 v0, 0x1

    :cond_4
    return v0
.end method

.method static synthetic a(Lcom/facebook/ads/internal/view/component/a/h;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/facebook/ads/internal/view/component/a/h;->m:Z

    return p1
.end method

.method static synthetic b(Lcom/facebook/ads/internal/view/component/a/h;)Lcom/facebook/ads/internal/view/component/a/o;
    .locals 0

    iget-object p0, p0, Lcom/facebook/ads/internal/view/component/a/h;->b:Lcom/facebook/ads/internal/view/component/a/o;

    return-object p0
.end method

.method static synthetic c(Lcom/facebook/ads/internal/view/component/a/h;)Lcom/facebook/ads/internal/x/a;
    .locals 0

    iget-object p0, p0, Lcom/facebook/ads/internal/view/component/a/h;->g:Lcom/facebook/ads/internal/x/a;

    return-object p0
.end method

.method static synthetic d(Lcom/facebook/ads/internal/view/component/a/h;)Lcom/facebook/ads/internal/w/b/w;
    .locals 0

    iget-object p0, p0, Lcom/facebook/ads/internal/view/component/a/h;->h:Lcom/facebook/ads/internal/w/b/w;

    return-object p0
.end method

.method static synthetic e(Lcom/facebook/ads/internal/view/component/a/h;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/facebook/ads/internal/view/component/a/h;->f:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic f(Lcom/facebook/ads/internal/view/component/a/h;)Lcom/facebook/ads/internal/s/c;
    .locals 0

    iget-object p0, p0, Lcom/facebook/ads/internal/view/component/a/h;->e:Lcom/facebook/ads/internal/s/c;

    return-object p0
.end method

.method static synthetic g(Lcom/facebook/ads/internal/view/component/a/h;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/facebook/ads/internal/view/component/a/h;->m:Z

    return p0
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, Lcom/facebook/ads/internal/view/component/a/h;->b:Lcom/facebook/ads/internal/view/component/a/o;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/component/a/o;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/component/a/h;->c:Lcom/facebook/ads/internal/view/component/a/m;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/view/component/a/h;->c:Lcom/facebook/ads/internal/view/component/a/m;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/component/a/m;->performClick()Z

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/facebook/ads/internal/view/component/a/h;->g:Lcom/facebook/ads/internal/x/a;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/internal/x/a;->a(Ljava/util/Map;)V

    const-string v1, "touch"

    iget-object v2, p0, Lcom/facebook/ads/internal/view/component/a/h;->h:Lcom/facebook/ads/internal/w/b/w;

    invoke-virtual {v2}, Lcom/facebook/ads/internal/w/b/w;->e()Ljava/util/Map;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/ads/internal/w/b/k;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/facebook/ads/internal/view/component/a/h;->e:Lcom/facebook/ads/internal/s/c;

    iget-object v2, p0, Lcom/facebook/ads/internal/view/component/a/h;->f:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/facebook/ads/internal/s/c;->q(Ljava/lang/String;Ljava/util/Map;)V

    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/internal/view/component/a/h;->d:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/component/a/h;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/internal/view/u;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/u;->b()V

    return-void
.end method

.method public a(Landroid/view/MotionEvent;)V
    .locals 3

    iget-object v0, p0, Lcom/facebook/ads/internal/view/component/a/h;->k:Lcom/facebook/ads/internal/view/i/c/f;

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/internal/view/component/a/h;->a(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/facebook/ads/internal/view/component/a/h;->h:Lcom/facebook/ads/internal/w/b/w;

    invoke-virtual {v1, p1, p0, p0}, Lcom/facebook/ads/internal/w/b/w;->a(Landroid/view/MotionEvent;Landroid/view/View;Landroid/view/View;)V

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/component/a/h;->c:Lcom/facebook/ads/internal/view/component/a/m;

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/internal/view/component/a/h;->a(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/facebook/ads/internal/view/component/a/h;->n:Z

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    if-eqz v0, :cond_2

    iget-object p1, p0, Lcom/facebook/ads/internal/view/component/a/h;->k:Lcom/facebook/ads/internal/view/i/c/f;

    invoke-virtual {p1}, Lcom/facebook/ads/internal/view/i/c/f;->performClick()Z

    return-void

    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/internal/view/component/a/h;->c:Lcom/facebook/ads/internal/view/component/a/m;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/facebook/ads/internal/view/component/a/h;->c:Lcom/facebook/ads/internal/view/component/a/m;

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/internal/view/component/a/h;->a(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Lcom/facebook/ads/internal/view/component/a/h;->n:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/facebook/ads/internal/view/component/a/h;->c:Lcom/facebook/ads/internal/view/component/a/m;

    invoke-virtual {p1}, Lcom/facebook/ads/internal/view/component/a/m;->performClick()Z

    goto :goto_0

    :cond_3
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/component/a/h;->g:Lcom/facebook/ads/internal/x/a;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/internal/x/a;->a(Ljava/util/Map;)V

    const-string v0, "touch"

    iget-object v1, p0, Lcom/facebook/ads/internal/view/component/a/h;->h:Lcom/facebook/ads/internal/w/b/w;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/w/b/w;->e()Ljava/util/Map;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/ads/internal/w/b/k;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/facebook/ads/internal/view/component/a/h;->e:Lcom/facebook/ads/internal/s/c;

    iget-object v1, p0, Lcom/facebook/ads/internal/view/component/a/h;->f:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/facebook/ads/internal/s/c;->d(Ljava/lang/String;Ljava/util/Map;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public a(Lcom/facebook/ads/internal/adapters/b/l;)V
    .locals 6

    iget-object v0, p0, Lcom/facebook/ads/internal/view/component/a/h;->b:Lcom/facebook/ads/internal/view/component/a/o;

    invoke-virtual {p1}, Lcom/facebook/ads/internal/adapters/b/l;->a()Lcom/facebook/ads/internal/adapters/b/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/ads/internal/adapters/b/e;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/facebook/ads/internal/adapters/b/l;->a()Lcom/facebook/ads/internal/adapters/b/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/facebook/ads/internal/adapters/b/e;->c()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/ads/internal/view/component/a/h;->i:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/ads/internal/view/component/a/o;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/facebook/ads/internal/view/component/a/h;->d:Landroid/widget/FrameLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method public c()Z
    .locals 4

    iget v0, p0, Lcom/facebook/ads/internal/view/component/a/h;->l:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lcom/facebook/ads/internal/view/component/a/h;->o:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/facebook/ads/internal/view/component/a/h;->o:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/internal/view/u;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/u;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/internal/view/component/a/h;->j:Lcom/facebook/ads/internal/view/b/f;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/b/f;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/component/a/h;->j:Lcom/facebook/ads/internal/view/b/f;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/b/f;->goBack()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/internal/view/component/a/h;->o:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/internal/view/component/a/h;->o:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/internal/view/u;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/u;->a()V

    :cond_2
    :goto_0
    return v2

    :cond_3
    iget v0, p0, Lcom/facebook/ads/internal/view/component/a/h;->l:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_4

    iget-object v0, p0, Lcom/facebook/ads/internal/view/component/a/h;->j:Lcom/facebook/ads/internal/view/b/f;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/b/f;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/facebook/ads/internal/view/component/a/h;->j:Lcom/facebook/ads/internal/view/b/f;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/b/f;->goBack()V

    return v2

    :cond_4
    return v1
.end method

.method public d()Z
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/component/a/h;->b:Lcom/facebook/ads/internal/view/component/a/o;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/component/a/o;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public e()V
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/component/a/h;->j:Lcom/facebook/ads/internal/view/b/f;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/b/f;->onPause()V

    return-void
.end method

.method public f()V
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/component/a/h;->j:Lcom/facebook/ads/internal/view/b/f;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/b/f;->onResume()V

    return-void
.end method

.method public g()V
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/component/a/h;->j:Lcom/facebook/ads/internal/view/b/f;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/b/f;->destroy()V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Lcom/facebook/ads/internal/view/component/a/l;->onAttachedToWindow()V

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/component/a/h;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lcom/facebook/ads/internal/view/u;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/component/a/h;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/internal/view/u;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/component/a/h;->o:Ljava/lang/ref/WeakReference;

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/facebook/ads/internal/view/component/a/h;->a(Landroid/view/MotionEvent;)V

    invoke-super {p0, p1}, Lcom/facebook/ads/internal/view/component/a/l;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
