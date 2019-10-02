.class public Lcom/facebook/ads/internal/view/component/a/n;
.super Landroid/widget/LinearLayout;


# static fields
.field public static final a:I

.field private static final b:I

.field private static final c:I

.field private static final d:I

.field private static final e:I

.field private static final f:I


# instance fields
.field private final g:Lcom/facebook/ads/internal/view/component/j;

.field private final h:Lcom/facebook/ads/internal/view/component/f;

.field private i:Lcom/facebook/ads/internal/view/component/a/m;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Lcom/facebook/ads/internal/w/b/x;->b:F

    const v1, 0x43898000    # 275.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/internal/view/component/a/n;->a:I

    sget v0, Lcom/facebook/ads/internal/w/b/x;->b:F

    const/high16 v1, 0x42600000    # 56.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/internal/view/component/a/n;->b:I

    sget v0, Lcom/facebook/ads/internal/w/b/x;->b:F

    const/high16 v1, 0x40800000    # 4.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/internal/view/component/a/n;->c:I

    sget v0, Lcom/facebook/ads/internal/w/b/x;->b:F

    const/high16 v1, 0x41000000    # 8.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/internal/view/component/a/n;->d:I

    sget v0, Lcom/facebook/ads/internal/w/b/x;->b:F

    const/high16 v1, 0x41800000    # 16.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/internal/view/component/a/n;->e:I

    sget v0, Lcom/facebook/ads/internal/w/b/x;->b:F

    const/high16 v1, 0x41a00000    # 20.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/internal/view/component/a/n;->f:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/internal/view/component/a/e;Lcom/facebook/ads/internal/adapters/b/h;Lcom/facebook/ads/internal/view/component/a$a;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual/range {p1 .. p1}, Lcom/facebook/ads/internal/view/component/a/e;->a()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/facebook/ads/internal/view/component/a/n;->setOrientation(I)V

    const/16 v3, 0x11

    invoke-virtual {v0, v3}, Lcom/facebook/ads/internal/view/component/a/n;->setGravity(I)V

    new-instance v4, Lcom/facebook/ads/internal/view/component/f;

    invoke-virtual/range {p1 .. p1}, Lcom/facebook/ads/internal/view/component/a/e;->a()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/facebook/ads/internal/view/component/f;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lcom/facebook/ads/internal/view/component/a/n;->h:Lcom/facebook/ads/internal/view/component/f;

    iget-object v4, v0, Lcom/facebook/ads/internal/view/component/a/n;->h:Lcom/facebook/ads/internal/view/component/f;

    invoke-virtual {v4, v2}, Lcom/facebook/ads/internal/view/component/f;->setFullCircleCorners(Z)V

    invoke-direct/range {p0 .. p1}, Lcom/facebook/ads/internal/view/component/a/n;->setupIconView(Lcom/facebook/ads/internal/view/component/a/e;)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    sget v5, Lcom/facebook/ads/internal/view/component/a/n;->b:I

    sget v6, Lcom/facebook/ads/internal/view/component/a/n;->b:I

    invoke-direct {v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v5, v0, Lcom/facebook/ads/internal/view/component/a/n;->h:Lcom/facebook/ads/internal/view/component/f;

    invoke-virtual {v0, v5, v4}, Lcom/facebook/ads/internal/view/component/a/n;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    sget v5, Lcom/facebook/ads/internal/view/component/a/n;->c:I

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    new-instance v4, Lcom/facebook/ads/internal/view/component/j;

    invoke-virtual/range {p0 .. p0}, Lcom/facebook/ads/internal/view/component/a/n;->getContext()Landroid/content/Context;

    move-result-object v7

    const/4 v9, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x0

    move-object v6, v4

    move-object/from16 v8, p2

    invoke-direct/range {v6 .. v11}, Lcom/facebook/ads/internal/view/component/j;-><init>(Landroid/content/Context;Lcom/facebook/ads/internal/adapters/b/h;ZZZ)V

    iput-object v4, v0, Lcom/facebook/ads/internal/view/component/a/n;->g:Lcom/facebook/ads/internal/view/component/j;

    iget-object v4, v0, Lcom/facebook/ads/internal/view/component/a/n;->g:Lcom/facebook/ads/internal/view/component/j;

    invoke-static {v4}, Lcom/facebook/ads/internal/w/b/x;->a(Landroid/view/View;)V

    iget-object v4, v0, Lcom/facebook/ads/internal/view/component/a/n;->g:Lcom/facebook/ads/internal/view/component/j;

    invoke-virtual {v4, v3}, Lcom/facebook/ads/internal/view/component/j;->setTitleGravity(I)V

    iget-object v4, v0, Lcom/facebook/ads/internal/view/component/a/n;->g:Lcom/facebook/ads/internal/view/component/j;

    invoke-virtual {v4, v3}, Lcom/facebook/ads/internal/view/component/j;->setDescriptionGravity(I)V

    iget-object v4, v0, Lcom/facebook/ads/internal/view/component/a/n;->g:Lcom/facebook/ads/internal/view/component/j;

    invoke-virtual {v4, v2, v3}, Lcom/facebook/ads/internal/view/component/j;->a(ZI)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    sget v6, Lcom/facebook/ads/internal/view/component/a/n;->e:I

    sget v7, Lcom/facebook/ads/internal/view/component/a/n;->e:I

    sget v8, Lcom/facebook/ads/internal/view/component/a/n;->c:I

    const/4 v9, 0x0

    invoke-virtual {v3, v6, v9, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    iget-object v6, v0, Lcom/facebook/ads/internal/view/component/a/n;->g:Lcom/facebook/ads/internal/view/component/j;

    invoke-virtual {v0, v6, v3}, Lcom/facebook/ads/internal/view/component/a/n;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, v0, Lcom/facebook/ads/internal/view/component/a/n;->g:Lcom/facebook/ads/internal/view/component/j;

    invoke-static {v3}, Lcom/facebook/ads/internal/w/b/x;->a(Landroid/view/View;)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    sget v5, Lcom/facebook/ads/internal/view/component/a/n;->f:I

    iput v5, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    sget v5, Lcom/facebook/ads/internal/view/component/a/n;->c:I

    iput v5, v3, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    invoke-virtual/range {p1 .. p1}, Lcom/facebook/ads/internal/view/component/a/e;->k()I

    move-result v5

    if-ne v5, v2, :cond_0

    new-instance v2, Lcom/facebook/ads/internal/view/component/a/m;

    invoke-virtual/range {p1 .. p1}, Lcom/facebook/ads/internal/view/component/a/e;->g()Lcom/facebook/ads/internal/adapters/b/k;

    move-result-object v4

    invoke-virtual {v4}, Lcom/facebook/ads/internal/adapters/b/k;->d()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/ads/internal/adapters/b/l;

    invoke-virtual {v4}, Lcom/facebook/ads/internal/adapters/b/l;->b()Lcom/facebook/ads/internal/adapters/b/i;

    move-result-object v4

    invoke-virtual {v4}, Lcom/facebook/ads/internal/adapters/b/i;->b()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    invoke-direct {v2, v5, v4, v6, v1}, Lcom/facebook/ads/internal/view/component/a/m;-><init>(Lcom/facebook/ads/internal/view/component/a/e;Ljava/lang/String;Lcom/facebook/ads/internal/adapters/b/h;Lcom/facebook/ads/internal/view/component/a$a;)V

    iput-object v2, v0, Lcom/facebook/ads/internal/view/component/a/n;->i:Lcom/facebook/ads/internal/view/component/a/m;

    iget-object v1, v0, Lcom/facebook/ads/internal/view/component/a/n;->i:Lcom/facebook/ads/internal/view/component/a/m;

    invoke-virtual {v0, v1, v3}, Lcom/facebook/ads/internal/view/component/a/n;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_0
    move-object/from16 v5, p1

    new-instance v15, Lcom/facebook/ads/internal/adapters/b/h;

    invoke-direct {v15}, Lcom/facebook/ads/internal/adapters/b/h;-><init>()V

    const v6, 0x26ffffff

    invoke-virtual {v15, v6}, Lcom/facebook/ads/internal/adapters/b/h;->a(I)V

    new-instance v6, Lcom/facebook/ads/internal/view/component/a;

    invoke-virtual/range {p1 .. p1}, Lcom/facebook/ads/internal/view/component/a/e;->a()Landroid/content/Context;

    move-result-object v11

    const/4 v12, 0x1

    const/4 v13, 0x0

    const-string v14, "com.facebook.ads.interstitial.clicked"

    invoke-virtual/range {p1 .. p1}, Lcom/facebook/ads/internal/view/component/a/e;->b()Lcom/facebook/ads/internal/s/c;

    move-result-object v16

    invoke-virtual/range {p1 .. p1}, Lcom/facebook/ads/internal/view/component/a/e;->c()Lcom/facebook/ads/internal/view/a$a;

    move-result-object v17

    invoke-virtual/range {p1 .. p1}, Lcom/facebook/ads/internal/view/component/a/e;->e()Lcom/facebook/ads/internal/x/a;

    move-result-object v18

    invoke-virtual/range {p1 .. p1}, Lcom/facebook/ads/internal/view/component/a/e;->f()Lcom/facebook/ads/internal/w/b/w;

    move-result-object v19

    move-object v10, v6

    invoke-direct/range {v10 .. v19}, Lcom/facebook/ads/internal/view/component/a;-><init>(Landroid/content/Context;ZZLjava/lang/String;Lcom/facebook/ads/internal/adapters/b/h;Lcom/facebook/ads/internal/s/c;Lcom/facebook/ads/internal/view/a$a;Lcom/facebook/ads/internal/x/a;Lcom/facebook/ads/internal/w/b/w;)V

    invoke-virtual/range {p1 .. p1}, Lcom/facebook/ads/internal/view/component/a/e;->g()Lcom/facebook/ads/internal/adapters/b/k;

    move-result-object v7

    invoke-virtual {v7}, Lcom/facebook/ads/internal/adapters/b/k;->d()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/facebook/ads/internal/adapters/b/l;

    invoke-virtual {v7}, Lcom/facebook/ads/internal/adapters/b/l;->b()Lcom/facebook/ads/internal/adapters/b/i;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Lcom/facebook/ads/internal/view/component/a/e;->g()Lcom/facebook/ads/internal/adapters/b/k;

    move-result-object v5

    invoke-virtual {v5}, Lcom/facebook/ads/internal/adapters/b/k;->c()Ljava/lang/String;

    move-result-object v5

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v6, v7, v5, v8, v1}, Lcom/facebook/ads/internal/view/component/a;->a(Lcom/facebook/ads/internal/adapters/b/i;Ljava/lang/String;Ljava/util/Map;Lcom/facebook/ads/internal/view/component/a$a;)V

    sget v1, Lcom/facebook/ads/internal/view/component/a/n;->d:I

    sget v5, Lcom/facebook/ads/internal/view/component/a/n;->c:I

    sget v7, Lcom/facebook/ads/internal/view/component/a/n;->d:I

    sget v8, Lcom/facebook/ads/internal/view/component/a/n;->c:I

    invoke-virtual {v6, v1, v5, v7, v8}, Lcom/facebook/ads/internal/view/component/a;->setPadding(IIII)V

    invoke-virtual {v6, v9}, Lcom/facebook/ads/internal/view/component/a;->setBackgroundColor(I)V

    invoke-virtual {v6, v4}, Lcom/facebook/ads/internal/view/component/a;->setTextColor(I)V

    invoke-static {v2}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/facebook/ads/internal/view/component/a;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {v0, v6, v3}, Lcom/facebook/ads/internal/view/component/a/n;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    return-void
.end method

.method private setupIconView(Lcom/facebook/ads/internal/view/component/a/e;)V
    .locals 3

    new-instance v0, Lcom/facebook/ads/internal/view/c/d;

    iget-object v1, p0, Lcom/facebook/ads/internal/view/component/a/n;->h:Lcom/facebook/ads/internal/view/component/f;

    invoke-direct {v0, v1}, Lcom/facebook/ads/internal/view/c/d;-><init>(Landroid/widget/ImageView;)V

    sget v1, Lcom/facebook/ads/internal/view/component/a/n;->b:I

    sget v2, Lcom/facebook/ads/internal/view/component/a/n;->b:I

    invoke-virtual {v0, v1, v2}, Lcom/facebook/ads/internal/view/c/d;->a(II)Lcom/facebook/ads/internal/view/c/d;

    invoke-virtual {p1}, Lcom/facebook/ads/internal/view/component/a/e;->g()Lcom/facebook/ads/internal/adapters/b/k;

    move-result-object p1

    invoke-virtual {p1}, Lcom/facebook/ads/internal/adapters/b/k;->a()Lcom/facebook/ads/internal/adapters/b/m;

    move-result-object p1

    invoke-virtual {p1}, Lcom/facebook/ads/internal/adapters/b/m;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/facebook/ads/internal/view/c/d;->a(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 6

    iget-object v0, p0, Lcom/facebook/ads/internal/view/component/a/n;->g:Lcom/facebook/ads/internal/view/component/j;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/ads/internal/view/component/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method

.method public getSwipeUpCtaButton()Lcom/facebook/ads/internal/view/component/a/m;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/facebook/ads/internal/view/component/a/n;->i:Lcom/facebook/ads/internal/view/component/a/m;

    return-object v0
.end method
