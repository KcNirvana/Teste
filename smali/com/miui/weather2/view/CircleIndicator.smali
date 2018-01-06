.class public Lcom/miui/weather2/view/CircleIndicator;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:Z

.field private k:Landroid/widget/LinearLayout;

.field private l:Landroid/widget/ImageView;

.field private final m:I

.field private final n:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/weather2/view/CircleIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/weather2/view/CircleIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    const/4 v1, -0x1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput v1, p0, Lcom/miui/weather2/view/CircleIndicator;->a:I

    iput v1, p0, Lcom/miui/weather2/view/CircleIndicator;->b:I

    iput v1, p0, Lcom/miui/weather2/view/CircleIndicator;->c:I

    const v0, 0x7f020135

    iput v0, p0, Lcom/miui/weather2/view/CircleIndicator;->e:I

    const v0, 0x7f020133

    iput v0, p0, Lcom/miui/weather2/view/CircleIndicator;->f:I

    const v0, 0x7f020136

    iput v0, p0, Lcom/miui/weather2/view/CircleIndicator;->g:I

    const v0, 0x7f020134

    iput v0, p0, Lcom/miui/weather2/view/CircleIndicator;->h:I

    iput v1, p0, Lcom/miui/weather2/view/CircleIndicator;->i:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/weather2/view/CircleIndicator;->j:Z

    const/4 v0, 0x2

    iput v0, p0, Lcom/miui/weather2/view/CircleIndicator;->m:I

    const/16 v0, 0x64

    iput v0, p0, Lcom/miui/weather2/view/CircleIndicator;->n:I

    return-void
.end method

.method private b(II)V
    .locals 3

    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/miui/weather2/view/CircleIndicator;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/miui/weather2/view/CircleIndicator;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v2, p0, Lcom/miui/weather2/view/CircleIndicator;->a:I

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iget v2, p0, Lcom/miui/weather2/view/CircleIndicator;->a:I

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v0, 0xa

    if-lt p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/weather2/view/CircleIndicator;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/weather2/tools/bi;->X(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/view/CircleIndicator;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 11

    const/4 v6, 0x7

    const/4 v9, 0x4

    const/16 v8, 0x8

    const/4 v4, 0x1

    const/4 v2, 0x0

    if-lez p1, :cond_0

    iget v0, p0, Lcom/miui/weather2/view/CircleIndicator;->i:I

    if-ne v0, p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/miui/weather2/view/CircleIndicator;->k:Landroid/widget/LinearLayout;

    iget v1, p0, Lcom/miui/weather2/view/CircleIndicator;->i:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/miui/weather2/view/CircleIndicator;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const/4 v3, 0x0

    const/16 v5, 0xa

    if-le p1, v5, :cond_14

    invoke-virtual {p0}, Lcom/miui/weather2/view/CircleIndicator;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/miui/weather2/tools/bi;->X(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_14

    iget v5, p0, Lcom/miui/weather2/view/CircleIndicator;->i:I

    if-ge v5, p2, :cond_e

    if-ne p2, v6, :cond_4

    iget-object v3, p0, Lcom/miui/weather2/view/CircleIndicator;->l:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
    if-nez v2, :cond_2

    if-eqz v0, :cond_2

    iget-boolean v2, p0, Lcom/miui/weather2/view/CircleIndicator;->j:Z

    if-eqz v2, :cond_12

    iget v2, p0, Lcom/miui/weather2/view/CircleIndicator;->i:I

    if-nez v2, :cond_12

    iget v2, p0, Lcom/miui/weather2/view/CircleIndicator;->e:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_2
    :goto_2
    if-nez v4, :cond_3

    if-eqz v1, :cond_3

    iget-boolean v0, p0, Lcom/miui/weather2/view/CircleIndicator;->j:Z

    if-eqz v0, :cond_13

    if-nez p2, :cond_13

    iget v0, p0, Lcom/miui/weather2/view/CircleIndicator;->g:I

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_3
    :goto_3
    iput p2, p0, Lcom/miui/weather2/view/CircleIndicator;->i:I

    goto :goto_0

    :cond_4
    if-lt p2, v8, :cond_14

    iget-object v5, p0, Lcom/miui/weather2/view/CircleIndicator;->l:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getVisibility()I

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/miui/weather2/view/CircleIndicator;->l:Landroid/widget/ImageView;

    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_5
    const/16 v5, 0xa

    :goto_4
    add-int/lit8 v6, p2, 0x2

    if-gt v5, v6, :cond_7

    iget-object v6, p0, Lcom/miui/weather2/view/CircleIndicator;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_6

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-eqz v7, :cond_6

    invoke-virtual {v6, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_7
    :goto_5
    add-int/lit8 v5, p2, 0x2

    add-int/lit8 v5, v5, -0xa

    if-gt v2, v5, :cond_9

    iget-object v5, p0, Lcom/miui/weather2/view/CircleIndicator;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_8

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-eq v6, v9, :cond_8

    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_9
    iget v2, p0, Lcom/miui/weather2/view/CircleIndicator;->i:I

    add-int/lit8 v2, v2, 0x1

    invoke-static {v8, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    move v5, v2

    :goto_6
    if-gt v5, p2, :cond_c

    iget-object v2, p0, Lcom/miui/weather2/view/CircleIndicator;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_15

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v6

    if-eqz v6, :cond_a

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    :goto_7
    iget v6, p0, Lcom/miui/weather2/view/CircleIndicator;->a:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v2, v6

    int-to-float v2, v2

    add-float/2addr v2, v3

    :goto_8
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    move v3, v2

    goto :goto_6

    :cond_a
    if-nez v5, :cond_b

    iget v2, p0, Lcom/miui/weather2/view/CircleIndicator;->b:I

    goto :goto_7

    :cond_b
    iget v2, p0, Lcom/miui/weather2/view/CircleIndicator;->c:I

    goto :goto_7

    :cond_c
    iget v2, p0, Lcom/miui/weather2/view/CircleIndicator;->i:I

    const/4 v5, -0x1

    if-ne v2, v5, :cond_d

    iget-object v2, p0, Lcom/miui/weather2/view/CircleIndicator;->k:Landroid/widget/LinearLayout;

    neg-float v3, v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setTranslationX(F)V

    :goto_9
    move v2, v4

    goto/16 :goto_1

    :cond_d
    iget-object v2, p0, Lcom/miui/weather2/view/CircleIndicator;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    neg-float v3, v3

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const-wide/16 v6, 0x64

    invoke-virtual {v2, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_9

    :cond_e
    iget v3, p0, Lcom/miui/weather2/view/CircleIndicator;->i:I

    if-ge p2, v3, :cond_14

    invoke-virtual {v1}, Landroid/widget/ImageView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget v5, p0, Lcom/miui/weather2/view/CircleIndicator;->a:I

    mul-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    add-float/2addr v3, v5

    iget v5, p0, Lcom/miui/weather2/view/CircleIndicator;->i:I

    if-ne v5, v6, :cond_f

    iget-object v3, p0, Lcom/miui/weather2/view/CircleIndicator;->l:Landroid/widget/ImageView;

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    move v10, v4

    move v4, v2

    move v2, v10

    goto/16 :goto_1

    :cond_f
    iget v5, p0, Lcom/miui/weather2/view/CircleIndicator;->i:I

    if-lt v5, v8, :cond_14

    iget-object v5, p0, Lcom/miui/weather2/view/CircleIndicator;->k:Landroid/widget/LinearLayout;

    iget v6, p0, Lcom/miui/weather2/view/CircleIndicator;->i:I

    add-int/lit8 v6, v6, 0x2

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_10

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    :cond_10
    iget-object v5, p0, Lcom/miui/weather2/view/CircleIndicator;->k:Landroid/widget/LinearLayout;

    iget v6, p0, Lcom/miui/weather2/view/CircleIndicator;->i:I

    add-int/lit8 v6, v6, 0x2

    add-int/lit8 v6, v6, -0xa

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_11

    invoke-virtual {v5, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_11
    iget-object v2, p0, Lcom/miui/weather2/view/CircleIndicator;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const-wide/16 v6, 0x64

    invoke-virtual {v2, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    move v2, v4

    goto/16 :goto_1

    :cond_12
    iget v2, p0, Lcom/miui/weather2/view/CircleIndicator;->f:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2

    :cond_13
    iget v0, p0, Lcom/miui/weather2/view/CircleIndicator;->h:I

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_3

    :cond_14
    move v4, v2

    goto/16 :goto_1

    :cond_15
    move v2, v3

    goto/16 :goto_8
.end method

.method public a(IZ)V
    .locals 4

    const/4 v1, 0x0

    iput-boolean p2, p0, Lcom/miui/weather2/view/CircleIndicator;->j:Z

    iget-object v0, p0, Lcom/miui/weather2/view/CircleIndicator;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/weather2/view/CircleIndicator;->i:I

    const/4 v0, 0x1

    if-gt p1, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    move v0, v1

    :goto_1
    if-ge v0, p1, :cond_2

    if-nez v0, :cond_1

    if-eqz p2, :cond_1

    iget v2, p0, Lcom/miui/weather2/view/CircleIndicator;->e:I

    invoke-direct {p0, v0, v2}, Lcom/miui/weather2/view/CircleIndicator;->b(II)V

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iget v2, p0, Lcom/miui/weather2/view/CircleIndicator;->f:I

    invoke-direct {p0, v0, v2}, Lcom/miui/weather2/view/CircleIndicator;->b(II)V

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/miui/weather2/view/CircleIndicator;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0xa

    if-le p1, v2, :cond_4

    invoke-virtual {p0}, Lcom/miui/weather2/view/CircleIndicator;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/weather2/tools/bi;->X(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_4

    const v1, 0x800003

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    if-eqz p2, :cond_3

    iget v1, p0, Lcom/miui/weather2/view/CircleIndicator;->d:I

    :goto_3
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    :goto_4
    iget-object v1, p0, Lcom/miui/weather2/view/CircleIndicator;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/miui/weather2/view/CircleIndicator;->k:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTranslationX(F)V

    iget-object v0, p0, Lcom/miui/weather2/view/CircleIndicator;->l:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/weather2/view/CircleIndicator;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    goto :goto_0

    :cond_3
    iget v1, p0, Lcom/miui/weather2/view/CircleIndicator;->d:I

    iget v2, p0, Lcom/miui/weather2/view/CircleIndicator;->b:I

    iget v3, p0, Lcom/miui/weather2/view/CircleIndicator;->c:I

    sub-int/2addr v2, v3

    add-int/2addr v1, v2

    goto :goto_3

    :cond_4
    const/16 v2, 0x11

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto :goto_4
.end method

.method protected onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    invoke-virtual {p0}, Lcom/miui/weather2/view/CircleIndicator;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0231

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/weather2/view/CircleIndicator;->a:I

    invoke-virtual {p0}, Lcom/miui/weather2/view/CircleIndicator;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/miui/weather2/view/CircleIndicator;->e:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lcom/miui/weather2/view/CircleIndicator;->b:I

    invoke-virtual {p0}, Lcom/miui/weather2/view/CircleIndicator;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/miui/weather2/view/CircleIndicator;->f:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lcom/miui/weather2/view/CircleIndicator;->c:I

    invoke-virtual {p0}, Lcom/miui/weather2/view/CircleIndicator;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a008c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/weather2/view/CircleIndicator;->d:I

    const v0, 0x7f0f0053

    invoke-virtual {p0, v0}, Lcom/miui/weather2/view/CircleIndicator;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/miui/weather2/view/CircleIndicator;->k:Landroid/widget/LinearLayout;

    const v0, 0x7f0f0054

    invoke-virtual {p0, v0}, Lcom/miui/weather2/view/CircleIndicator;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/weather2/view/CircleIndicator;->l:Landroid/widget/ImageView;

    return-void
.end method
