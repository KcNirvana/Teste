.class public Lcom/facebook/ads/internal/view/component/d;
.super Landroid/widget/LinearLayout;


# instance fields
.field private a:Lcom/facebook/ads/MediaView;

.field private b:Lcom/facebook/ads/internal/view/component/b;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/facebook/ads/internal/t/e;Lcom/facebook/ads/internal/t/j;Lcom/facebook/ads/MediaView;Lcom/facebook/ads/AdOptionsView;ZI)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct/range {p0 .. p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    const/16 v5, 0x10

    invoke-virtual {v0, v5}, Lcom/facebook/ads/internal/view/component/d;->setVerticalGravity(I)V

    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Lcom/facebook/ads/internal/view/component/d;->setOrientation(I)V

    new-instance v7, Landroid/widget/LinearLayout;

    invoke-virtual/range {p0 .. p0}, Lcom/facebook/ads/internal/view/component/d;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v7, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, -0x1

    invoke-direct {v8, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget v10, v4, Landroid/util/DisplayMetrics;->density:F

    const/high16 v11, 0x41700000    # 15.0f

    mul-float v10, v10, v11

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v10

    iget v12, v4, Landroid/util/DisplayMetrics;->density:F

    mul-float v12, v12, v11

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v12

    iget v13, v4, Landroid/util/DisplayMetrics;->density:F

    mul-float v13, v13, v11

    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v13

    iget v14, v4, Landroid/util/DisplayMetrics;->density:F

    mul-float v14, v14, v11

    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    move-result v14

    invoke-virtual {v8, v10, v12, v13, v14}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v7}, Lcom/facebook/ads/internal/view/component/d;->addView(Landroid/view/View;)V

    new-instance v8, Landroid/widget/LinearLayout;

    invoke-virtual/range {p0 .. p0}, Lcom/facebook/ads/internal/view/component/d;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v8, v10}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v8, v0, Lcom/facebook/ads/internal/view/component/d;->d:Landroid/widget/LinearLayout;

    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v10, 0x0

    invoke-direct {v8, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v12, v0, Lcom/facebook/ads/internal/view/component/d;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v12, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v12, v0, Lcom/facebook/ads/internal/view/component/d;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v12, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/high16 v12, 0x40400000    # 3.0f

    iput v12, v8, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iget-object v12, v0, Lcom/facebook/ads/internal/view/component/d;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v12, v8}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v8, v0, Lcom/facebook/ads/internal/view/component/d;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v8, p4

    iput-object v8, v0, Lcom/facebook/ads/internal/view/component/d;->a:Lcom/facebook/ads/MediaView;

    add-int/lit8 v8, p7, -0x1e

    add-int/lit8 v12, p6, 0x3

    int-to-double v12, v12

    const-wide/high16 v14, 0x4008000000000000L    # 3.0

    div-double/2addr v14, v12

    int-to-double v12, v8

    mul-double v12, v12, v14

    double-to-int v8, v12

    new-instance v12, Landroid/widget/LinearLayout$LayoutParams;

    int-to-float v8, v8

    iget v13, v4, Landroid/util/DisplayMetrics;->density:F

    mul-float v13, v13, v8

    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v13

    iget v14, v4, Landroid/util/DisplayMetrics;->density:F

    mul-float v8, v8, v14

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    invoke-direct {v12, v13, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget v8, v4, Landroid/util/DisplayMetrics;->density:F

    mul-float v8, v8, v11

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    invoke-virtual {v12, v10, v10, v8, v10}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    iget-object v8, v0, Lcom/facebook/ads/internal/view/component/d;->a:Lcom/facebook/ads/MediaView;

    invoke-virtual {v8, v12}, Lcom/facebook/ads/MediaView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v8, v0, Lcom/facebook/ads/internal/view/component/d;->d:Landroid/widget/LinearLayout;

    iget-object v12, v0, Lcom/facebook/ads/internal/view/component/d;->a:Lcom/facebook/ads/MediaView;

    invoke-virtual {v8, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v8, Landroid/widget/LinearLayout;

    invoke-virtual/range {p0 .. p0}, Lcom/facebook/ads/internal/view/component/d;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-direct {v8, v12}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v12, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v12, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v12}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v8, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v8, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    iget-object v5, v0, Lcom/facebook/ads/internal/view/component/d;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v5, Lcom/facebook/ads/internal/view/component/b;

    invoke-virtual/range {p0 .. p0}, Lcom/facebook/ads/internal/view/component/d;->getContext()Landroid/content/Context;

    move-result-object v12

    move-object/from16 v13, p5

    invoke-direct {v5, v12, v1, v2, v13}, Lcom/facebook/ads/internal/view/component/b;-><init>(Landroid/content/Context;Lcom/facebook/ads/internal/t/e;Lcom/facebook/ads/internal/t/j;Lcom/facebook/ads/AdOptionsView;)V

    iput-object v5, v0, Lcom/facebook/ads/internal/view/component/d;->b:Lcom/facebook/ads/internal/view/component/b;

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v12, -0x2

    invoke-direct {v5, v12, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget v13, v4, Landroid/util/DisplayMetrics;->density:F

    mul-float v13, v13, v11

    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v11

    invoke-virtual {v5, v10, v10, v11, v10}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    const/high16 v11, 0x3f000000    # 0.5f

    iput v11, v5, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iget-object v11, v0, Lcom/facebook/ads/internal/view/component/d;->b:Lcom/facebook/ads/internal/view/component/b;

    invoke-virtual {v11, v5}, Lcom/facebook/ads/internal/view/component/b;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v5, v0, Lcom/facebook/ads/internal/view/component/d;->b:Lcom/facebook/ads/internal/view/component/b;

    invoke-virtual {v8, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v5, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/facebook/ads/internal/view/component/d;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-direct {v5, v11}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v5, v0, Lcom/facebook/ads/internal/view/component/d;->c:Landroid/widget/TextView;

    iget-object v5, v0, Lcom/facebook/ads/internal/view/component/d;->c:Landroid/widget/TextView;

    iget v11, v4, Landroid/util/DisplayMetrics;->density:F

    const/high16 v13, 0x40c00000    # 6.0f

    mul-float v11, v11, v13

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    iget v14, v4, Landroid/util/DisplayMetrics;->density:F

    mul-float v14, v14, v13

    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    move-result v14

    iget v15, v4, Landroid/util/DisplayMetrics;->density:F

    mul-float v15, v15, v13

    invoke-static {v15}, Ljava/lang/Math;->round(F)I

    move-result v15

    iget v9, v4, Landroid/util/DisplayMetrics;->density:F

    mul-float v9, v9, v13

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    invoke-virtual {v5, v11, v14, v15, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v5, v0, Lcom/facebook/ads/internal/view/component/d;->c:Landroid/widget/TextView;

    const-string v9, "call_to_action"

    invoke-virtual {v1, v9}, Lcom/facebook/ads/internal/t/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, v0, Lcom/facebook/ads/internal/view/component/d;->c:Landroid/widget/TextView;

    invoke-virtual/range {p3 .. p3}, Lcom/facebook/ads/internal/t/j;->f()I

    move-result v9

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v5, v0, Lcom/facebook/ads/internal/view/component/d;->c:Landroid/widget/TextView;

    const/high16 v9, 0x41600000    # 14.0f

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v5, v0, Lcom/facebook/ads/internal/view/component/d;->c:Landroid/widget/TextView;

    invoke-virtual/range {p3 .. p3}, Lcom/facebook/ads/internal/t/j;->a()Landroid/graphics/Typeface;

    move-result-object v9

    invoke-virtual {v5, v9, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    iget-object v5, v0, Lcom/facebook/ads/internal/view/component/d;->c:Landroid/widget/TextView;

    const/4 v9, 0x2

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setMaxLines(I)V

    iget-object v5, v0, Lcom/facebook/ads/internal/view/component/d;->c:Landroid/widget/TextView;

    sget-object v9, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v5, v0, Lcom/facebook/ads/internal/view/component/d;->c:Landroid/widget/TextView;

    const/16 v9, 0x11

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setGravity(I)V

    new-instance v5, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v5}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    invoke-virtual/range {p3 .. p3}, Lcom/facebook/ads/internal/t/j;->e()I

    move-result v9

    invoke-virtual {v5, v9}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/high16 v9, 0x40a00000    # 5.0f

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    mul-float v4, v4, v9

    invoke-virtual {v5, v4}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    invoke-virtual/range {p3 .. p3}, Lcom/facebook/ads/internal/t/j;->g()I

    move-result v4

    invoke-virtual {v5, v6, v4}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    iget-object v4, v0, Lcom/facebook/ads/internal/view/component/d;->c:Landroid/widget/TextView;

    invoke-static {v4, v5}, Lcom/facebook/ads/internal/w/b/x;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v12, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v5, 0x3e800000    # 0.25f

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iget-object v5, v0, Lcom/facebook/ads/internal/view/component/d;->c:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual/range {p2 .. p2}, Lcom/facebook/ads/internal/t/e;->h()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, v0, Lcom/facebook/ads/internal/view/component/d;->c:Landroid/widget/TextView;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    iget-object v4, v0, Lcom/facebook/ads/internal/view/component/d;->c:Landroid/widget/TextView;

    invoke-virtual {v8, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    if-eqz p6, :cond_1

    new-instance v3, Lcom/facebook/ads/internal/view/w;

    invoke-virtual/range {p0 .. p0}, Lcom/facebook/ads/internal/view/component/d;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/facebook/ads/internal/view/w;-><init>(Landroid/content/Context;)V

    invoke-virtual/range {p2 .. p2}, Lcom/facebook/ads/internal/t/e;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/facebook/ads/internal/view/w;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v3}, Lcom/facebook/ads/internal/t/j;->b(Landroid/widget/TextView;)V

    invoke-virtual/range {p3 .. p3}, Lcom/facebook/ads/internal/t/j;->i()I

    move-result v1

    sub-int/2addr v1, v6

    int-to-float v1, v1

    invoke-virtual {v3, v1}, Lcom/facebook/ads/internal/view/w;->setMinTextSize(F)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-virtual {v3, v1}, Lcom/facebook/ads/internal/view/w;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v1, 0x50

    invoke-virtual {v3, v1}, Lcom/facebook/ads/internal/view/w;->setGravity(I)V

    invoke-virtual {v7, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public getCallToActionView()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/component/d;->c:Landroid/widget/TextView;

    return-object v0
.end method

.method public getIconView()Lcom/facebook/ads/MediaView;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/component/d;->a:Lcom/facebook/ads/MediaView;

    return-object v0
.end method

.method protected onMeasure(II)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/component/d;->b:Lcom/facebook/ads/internal/view/component/b;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/component/b;->getTitleTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    invoke-virtual {v0}, Landroid/widget/TextView;->getLineCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v0

    iget-object v1, p0, Lcom/facebook/ads/internal/view/component/d;->b:Lcom/facebook/ads/internal/view/component/b;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/view/component/b;->getMinVisibleTitleCharacters()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/view/component/d;->d:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/facebook/ads/internal/view/component/d;->a:Lcom/facebook/ads/MediaView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    :cond_0
    return-void
.end method
