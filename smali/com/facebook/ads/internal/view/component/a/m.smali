.class public Lcom/facebook/ads/internal/view/component/a/m;
.super Landroid/widget/FrameLayout;


# static fields
.field private static final a:I

.field private static final b:I

.field private static final c:I


# instance fields
.field private final d:Lcom/facebook/ads/internal/view/component/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Lcom/facebook/ads/internal/w/b/x;->b:F

    const/high16 v1, 0x41a80000    # 21.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/internal/view/component/a/m;->a:I

    sget v0, Lcom/facebook/ads/internal/w/b/x;->b:F

    const/high16 v1, 0x41000000    # 8.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/internal/view/component/a/m;->b:I

    sget v0, Lcom/facebook/ads/internal/w/b/x;->b:F

    const/high16 v1, 0x40400000    # 3.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/internal/view/component/a/m;->c:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/internal/view/component/a/e;Ljava/lang/String;Lcom/facebook/ads/internal/adapters/b/h;Lcom/facebook/ads/internal/view/component/a$a;)V
    .locals 17

    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Lcom/facebook/ads/internal/view/component/a/e;->a()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/LinearLayout;

    invoke-virtual/range {p1 .. p1}, Lcom/facebook/ads/internal/view/component/a/e;->a()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Lcom/facebook/ads/internal/view/component/a/m;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setClickable(Z)V

    new-instance v5, Landroid/widget/ImageView;

    invoke-virtual/range {p1 .. p1}, Lcom/facebook/ads/internal/view/component/a/e;->a()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    sget-object v6, Lcom/facebook/ads/internal/w/c/b;->m:Lcom/facebook/ads/internal/w/c/b;

    invoke-static {v6}, Lcom/facebook/ads/internal/w/c/c;->a(Lcom/facebook/ads/internal/w/c/b;)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const/high16 v6, 0x42b40000    # 90.0f

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setRotation(F)V

    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setClickable(Z)V

    new-instance v6, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v6}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    invoke-virtual {v6, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    invoke-virtual {v6, v2}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    sget v7, Lcom/facebook/ads/internal/view/component/a/m;->a:I

    sget v8, Lcom/facebook/ads/internal/view/component/a/m;->a:I

    invoke-direct {v6, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    sget v7, Lcom/facebook/ads/internal/view/component/a/m;->b:I

    iput v7, v6, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    sget v7, Lcom/facebook/ads/internal/view/component/a/m;->c:I

    sget v8, Lcom/facebook/ads/internal/view/component/a/m;->c:I

    sget v9, Lcom/facebook/ads/internal/view/component/a/m;->c:I

    sget v10, Lcom/facebook/ads/internal/view/component/a/m;->c:I

    invoke-virtual {v5, v7, v8, v9, v10}, Landroid/widget/ImageView;->setPadding(IIII)V

    iput v2, v6, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-virtual {v1, v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v5, Landroid/widget/TextView;

    invoke-virtual/range {p1 .. p1}, Lcom/facebook/ads/internal/view/component/a/e;->a()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/high16 v6, 0x41600000    # 14.0f

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextSize(F)V

    move-object/from16 v6, p2

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v2}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    move-object/from16 v6, p3

    invoke-virtual {v6, v2}, Lcom/facebook/ads/internal/adapters/b/h;->a(Z)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x2

    invoke-direct {v6, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v2, v6, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    sget v2, Lcom/facebook/ads/internal/view/component/a/m;->b:I

    iput v2, v6, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v1, v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setClickable(Z)V

    new-instance v1, Lcom/facebook/ads/internal/view/component/a;

    invoke-virtual/range {p1 .. p1}, Lcom/facebook/ads/internal/view/component/a/e;->a()Landroid/content/Context;

    move-result-object v8

    const-string v11, "com.facebook.ads.interstitial.clicked"

    invoke-virtual/range {p1 .. p1}, Lcom/facebook/ads/internal/view/component/a/e;->b()Lcom/facebook/ads/internal/s/c;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Lcom/facebook/ads/internal/view/component/a/e;->c()Lcom/facebook/ads/internal/view/a$a;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Lcom/facebook/ads/internal/view/component/a/e;->e()Lcom/facebook/ads/internal/x/a;

    move-result-object v15

    invoke-virtual/range {p1 .. p1}, Lcom/facebook/ads/internal/view/component/a/e;->f()Lcom/facebook/ads/internal/w/b/w;

    move-result-object v16

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v12, 0x0

    move-object v7, v1

    invoke-direct/range {v7 .. v16}, Lcom/facebook/ads/internal/view/component/a;-><init>(Landroid/content/Context;ZZLjava/lang/String;Lcom/facebook/ads/internal/adapters/b/h;Lcom/facebook/ads/internal/s/c;Lcom/facebook/ads/internal/view/a$a;Lcom/facebook/ads/internal/x/a;Lcom/facebook/ads/internal/w/b/w;)V

    iput-object v1, v0, Lcom/facebook/ads/internal/view/component/a/m;->d:Lcom/facebook/ads/internal/view/component/a;

    iget-object v1, v0, Lcom/facebook/ads/internal/view/component/a/m;->d:Lcom/facebook/ads/internal/view/component/a;

    invoke-virtual/range {p1 .. p1}, Lcom/facebook/ads/internal/view/component/a/e;->g()Lcom/facebook/ads/internal/adapters/b/k;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/ads/internal/adapters/b/k;->d()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/internal/adapters/b/l;

    invoke-virtual {v2}, Lcom/facebook/ads/internal/adapters/b/l;->b()Lcom/facebook/ads/internal/adapters/b/i;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/facebook/ads/internal/view/component/a/e;->g()Lcom/facebook/ads/internal/adapters/b/k;

    move-result-object v4

    invoke-virtual {v4}, Lcom/facebook/ads/internal/adapters/b/k;->c()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v6, p4

    invoke-virtual {v1, v2, v4, v5, v6}, Lcom/facebook/ads/internal/view/component/a;->a(Lcom/facebook/ads/internal/adapters/b/i;Ljava/lang/String;Ljava/util/Map;Lcom/facebook/ads/internal/view/component/a$a;)V

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v2, v0, Lcom/facebook/ads/internal/view/component/a/m;->d:Lcom/facebook/ads/internal/view/component/a;

    invoke-virtual {v0, v2, v1}, Lcom/facebook/ads/internal/view/component/a/m;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public performClick()Z
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/component/a/m;->d:Lcom/facebook/ads/internal/view/component/a;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/component/a;->performClick()Z

    move-result v0

    return v0
.end method
