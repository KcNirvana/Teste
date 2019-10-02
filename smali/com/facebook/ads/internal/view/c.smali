.class public Lcom/facebook/ads/internal/view/c;
.super Lcom/facebook/ads/internal/t/f;


# static fields
.field public static final a:I

.field private static final b:I

.field private static final c:I

.field private static final d:I

.field private static final e:I

.field private static final f:I

.field private static final g:I

.field private static final h:I

.field private static final i:I


# instance fields
.field private final j:Landroid/widget/TextView;

.field private final k:Landroid/widget/TextView;

.field private final l:Landroid/widget/TextView;

.field private final m:Landroid/widget/RelativeLayout;

.field private final n:Landroid/widget/LinearLayout;

.field private final o:Landroid/widget/RelativeLayout;

.field private final p:Lcom/facebook/ads/internal/view/t;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    sget v0, Lcom/facebook/ads/internal/w/b/x;->b:F

    float-to-int v0, v0

    mul-int/lit16 v0, v0, 0x1f4

    sput v0, Lcom/facebook/ads/internal/view/c;->a:I

    sget v0, Lcom/facebook/ads/internal/w/b/x;->b:F

    const/high16 v1, 0x43fa0000    # 500.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/internal/view/c;->b:I

    sget v0, Lcom/facebook/ads/internal/w/b/x;->b:F

    const/high16 v1, 0x40800000    # 4.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/internal/view/c;->c:I

    sget v0, Lcom/facebook/ads/internal/w/b/x;->b:F

    const/high16 v2, 0x41000000    # 8.0f

    mul-float v0, v0, v2

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/internal/view/c;->d:I

    sget v0, Lcom/facebook/ads/internal/w/b/x;->b:F

    mul-float v0, v0, v2

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/internal/view/c;->e:I

    sget v0, Lcom/facebook/ads/internal/w/b/x;->b:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/internal/view/c;->f:I

    sget v0, Lcom/facebook/ads/internal/w/b/x;->b:F

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/internal/view/c;->g:I

    sget v0, Lcom/facebook/ads/internal/w/b/x;->b:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/internal/view/c;->h:I

    sget v0, Lcom/facebook/ads/internal/w/b/x;->b:F

    float-to-double v0, v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    mul-double v0, v0, v2

    double-to-int v0, v0

    sput v0, Lcom/facebook/ads/internal/view/c;->i:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    invoke-direct {p0, p1}, Lcom/facebook/ads/internal/t/f;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/c;->j:Landroid/widget/TextView;

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/c;->k:Landroid/widget/TextView;

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/c;->l:Landroid/widget/TextView;

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/c;->m:Landroid/widget/RelativeLayout;

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/c;->n:Landroid/widget/LinearLayout;

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/c;->o:Landroid/widget/RelativeLayout;

    new-instance v0, Lcom/facebook/ads/internal/view/t;

    invoke-direct {v0, p1}, Lcom/facebook/ads/internal/view/t;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/c;->p:Lcom/facebook/ads/internal/view/t;

    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-direct {p1, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1}, Lcom/facebook/ads/internal/view/c;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {p1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    sget v2, Lcom/facebook/ads/internal/view/c;->h:I

    int-to-float v2, v2

    invoke-virtual {p1, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    const/4 v2, 0x1

    const v3, -0x9f9890

    invoke-virtual {p1, v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    invoke-virtual {p0, p1}, Lcom/facebook/ads/internal/view/c;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    sget p1, Lcom/facebook/ads/internal/view/c;->i:I

    sget v3, Lcom/facebook/ads/internal/view/c;->i:I

    sget v4, Lcom/facebook/ads/internal/view/c;->i:I

    sget v5, Lcom/facebook/ads/internal/view/c;->i:I

    invoke-virtual {p0, p1, v3, v4, v5}, Lcom/facebook/ads/internal/view/c;->setPadding(IIII)V

    iget-object p1, p0, Lcom/facebook/ads/internal/view/c;->n:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object p1, p0, Lcom/facebook/ads/internal/view/c;->n:Landroid/widget/LinearLayout;

    invoke-static {p1}, Lcom/facebook/ads/internal/w/b/x;->a(Landroid/view/View;)V

    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p1, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v3, p0, Lcom/facebook/ads/internal/view/c;->n:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v3, p1}, Lcom/facebook/ads/internal/view/c;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/facebook/ads/internal/view/c;->o:Landroid/widget/RelativeLayout;

    invoke-static {p1}, Lcom/facebook/ads/internal/w/b/x;->a(Landroid/view/View;)V

    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p1, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, p1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iput v2, p1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iget-object v3, p0, Lcom/facebook/ads/internal/view/c;->n:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/facebook/ads/internal/view/c;->o:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v4, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/facebook/ads/internal/view/c;->p:Lcom/facebook/ads/internal/view/t;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v3}, Lcom/facebook/ads/internal/view/t;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object p1, p0, Lcom/facebook/ads/internal/view/c;->p:Lcom/facebook/ads/internal/view/t;

    const/16 v3, 0x8

    new-array v3, v3, [F

    sget v4, Lcom/facebook/ads/internal/view/c;->h:I

    int-to-float v4, v4

    const/4 v5, 0x0

    aput v4, v3, v5

    sget v4, Lcom/facebook/ads/internal/view/c;->h:I

    int-to-float v4, v4

    aput v4, v3, v2

    sget v4, Lcom/facebook/ads/internal/view/c;->h:I

    int-to-float v4, v4

    const/4 v6, 0x2

    aput v4, v3, v6

    sget v4, Lcom/facebook/ads/internal/view/c;->h:I

    int-to-float v4, v4

    const/4 v6, 0x3

    aput v4, v3, v6

    const/4 v4, 0x0

    const/4 v7, 0x4

    aput v4, v3, v7

    const/4 v7, 0x5

    aput v4, v3, v7

    const/4 v7, 0x6

    aput v4, v3, v7

    const/4 v7, 0x7

    aput v4, v3, v7

    invoke-virtual {p1, v3}, Lcom/facebook/ads/internal/view/t;->setRadius([F)V

    iget-object p1, p0, Lcom/facebook/ads/internal/view/c;->p:Lcom/facebook/ads/internal/view/t;

    invoke-virtual {p1, v2}, Lcom/facebook/ads/internal/view/t;->setAdjustViewBounds(Z)V

    iget-object p1, p0, Lcom/facebook/ads/internal/view/c;->p:Lcom/facebook/ads/internal/view/t;

    sget-object v3, Lcom/facebook/ads/internal/w/b/j;->n:Lcom/facebook/ads/internal/w/b/j;

    invoke-static {p1, v3}, Lcom/facebook/ads/internal/w/b/j;->a(Landroid/view/View;Lcom/facebook/ads/internal/w/b/j;)V

    iget-object p1, p0, Lcom/facebook/ads/internal/view/c;->p:Lcom/facebook/ads/internal/view/t;

    invoke-static {p1}, Lcom/facebook/ads/internal/w/b/x;->a(Landroid/view/View;)V

    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p1, v1, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/c;->o:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/facebook/ads/internal/view/c;->p:Lcom/facebook/ads/internal/view/t;

    invoke-virtual {v0, v3, p1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/facebook/ads/internal/view/c;->o:Landroid/widget/RelativeLayout;

    invoke-static {p1}, Lcom/facebook/ads/internal/w/b/x;->a(Landroid/view/View;)V

    iget-object p1, p0, Lcom/facebook/ads/internal/view/c;->l:Landroid/widget/TextView;

    sget v0, Lcom/facebook/ads/internal/view/c;->g:I

    sget v3, Lcom/facebook/ads/internal/view/c;->g:I

    sget v4, Lcom/facebook/ads/internal/view/c;->g:I

    sget v7, Lcom/facebook/ads/internal/view/c;->g:I

    invoke-virtual {p1, v0, v3, v4, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object p1, p0, Lcom/facebook/ads/internal/view/c;->l:Landroid/widget/TextView;

    const/high16 v0, 0x41600000    # 14.0f

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object p1, p0, Lcom/facebook/ads/internal/view/c;->l:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/facebook/ads/internal/w/b/x;->a(Landroid/view/View;)V

    iget-object p1, p0, Lcom/facebook/ads/internal/view/c;->m:Landroid/widget/RelativeLayout;

    invoke-static {p1}, Lcom/facebook/ads/internal/w/b/x;->a(Landroid/view/View;)V

    iget-object p1, p0, Lcom/facebook/ads/internal/view/c;->j:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object p1, p0, Lcom/facebook/ads/internal/view/c;->j:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/facebook/ads/internal/w/b/x;->a(Landroid/view/View;)V

    iget-object p1, p0, Lcom/facebook/ads/internal/view/c;->j:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p1, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    sget v0, Lcom/facebook/ads/internal/view/c;->f:I

    invoke-virtual {p1, v5, v5, v5, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/c;->m:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/facebook/ads/internal/view/c;->j:Landroid/widget/TextView;

    invoke-virtual {v0, v3, p1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/facebook/ads/internal/view/c;->k:Landroid/widget/TextView;

    const/high16 v0, 0x41400000    # 12.0f

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object p1, p0, Lcom/facebook/ads/internal/view/c;->k:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/facebook/ads/internal/w/b/x;->a(Landroid/view/View;)V

    iget-object p1, p0, Lcom/facebook/ads/internal/view/c;->k:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p1, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/c;->j:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getId()I

    move-result v0

    invoke-virtual {p1, v6, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    sget v0, Lcom/facebook/ads/internal/view/c;->f:I

    invoke-virtual {p1, v5, v5, v5, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/c;->m:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/facebook/ads/internal/view/c;->k:Landroid/widget/TextView;

    invoke-virtual {v0, v1, p1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method protected getAdContentsView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/c;->p:Lcom/facebook/ads/internal/view/t;

    return-object v0
.end method

.method public getCTAButton()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/c;->l:Landroid/widget/TextView;

    return-object v0
.end method

.method public getImageCardView()Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/c;->p:Lcom/facebook/ads/internal/view/t;

    return-object v0
.end method

.method protected onMeasure(II)V
    .locals 8

    sget v0, Lcom/facebook/ads/internal/w/b/x;->b:F

    float-to-int v0, v0

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/c;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/ads/internal/r/a;->r(Landroid/content/Context;)I

    move-result v1

    mul-int v0, v0, v1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    const v2, -0xca871b

    const/4 v3, -0x1

    const/4 v4, -0x2

    if-ge v1, v0, :cond_1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    sget v1, Lcom/facebook/ads/internal/view/c;->d:I

    sget v5, Lcom/facebook/ads/internal/view/c;->c:I

    sget v6, Lcom/facebook/ads/internal/view/c;->d:I

    sget v7, Lcom/facebook/ads/internal/view/c;->c:I

    invoke-virtual {v0, v1, v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    iget-object v1, p0, Lcom/facebook/ads/internal/view/c;->l:Landroid/widget/TextView;

    invoke-static {v1}, Lcom/facebook/ads/internal/w/b/x;->b(Landroid/view/View;)V

    iget-object v1, p0, Lcom/facebook/ads/internal/view/c;->n:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/facebook/ads/internal/view/c;->l:Landroid/widget/TextView;

    invoke-virtual {v1, v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x8

    iget-object v4, p0, Lcom/facebook/ads/internal/view/c;->p:Lcom/facebook/ads/internal/view/t;

    invoke-virtual {v4}, Lcom/facebook/ads/internal/view/t;->getId()I

    move-result v4

    invoke-virtual {v0, v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/4 v1, 0x5

    iget-object v4, p0, Lcom/facebook/ads/internal/view/c;->p:Lcom/facebook/ads/internal/view/t;

    invoke-virtual {v4}, Lcom/facebook/ads/internal/view/t;->getId()I

    move-result v4

    invoke-virtual {v0, v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/4 v1, 0x7

    iget-object v4, p0, Lcom/facebook/ads/internal/view/c;->p:Lcom/facebook/ads/internal/view/t;

    invoke-virtual {v4}, Lcom/facebook/ads/internal/view/t;->getId()I

    move-result v4

    invoke-virtual {v0, v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v1, p0, Lcom/facebook/ads/internal/view/c;->m:Landroid/widget/RelativeLayout;

    sget v4, Lcom/facebook/ads/internal/view/c;->e:I

    sget v5, Lcom/facebook/ads/internal/view/c;->e:I

    const/4 v6, 0x0

    invoke-virtual {v1, v4, v6, v5, v6}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    sget-object v4, Landroid/graphics/drawable/GradientDrawable$Orientation;->BOTTOM_TOP:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v5, 0x2

    new-array v5, v5, [I

    fill-array-data v5, :array_0

    invoke-direct {v1, v4, v5}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    iget-object v4, p0, Lcom/facebook/ads/internal/view/c;->m:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v1}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/facebook/ads/internal/view/c;->m:Landroid/widget/RelativeLayout;

    invoke-static {v1}, Lcom/facebook/ads/internal/w/b/x;->b(Landroid/view/View;)V

    iget-object v1, p0, Lcom/facebook/ads/internal/view/c;->o:Landroid/widget/RelativeLayout;

    iget-object v4, p0, Lcom/facebook/ads/internal/view/c;->m:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v4, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/c;->j:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/c;->k:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/c;->l:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    :cond_1
    :goto_0
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v1, 0x3

    iget-object v5, p0, Lcom/facebook/ads/internal/view/c;->k:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getId()I

    move-result v5

    invoke-virtual {v0, v1, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v1, p0, Lcom/facebook/ads/internal/view/c;->l:Landroid/widget/TextView;

    invoke-static {v1}, Lcom/facebook/ads/internal/w/b/x;->b(Landroid/view/View;)V

    iget-object v1, p0, Lcom/facebook/ads/internal/view/c;->m:Landroid/widget/RelativeLayout;

    iget-object v5, p0, Lcom/facebook/ads/internal/view/c;->l:Landroid/widget/TextView;

    invoke-virtual {v1, v5, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/facebook/ads/internal/view/c;->m:Landroid/widget/RelativeLayout;

    sget v3, Lcom/facebook/ads/internal/view/c;->e:I

    sget v4, Lcom/facebook/ads/internal/view/c;->e:I

    sget v5, Lcom/facebook/ads/internal/view/c;->e:I

    sget v6, Lcom/facebook/ads/internal/view/c;->e:I

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    iget-object v1, p0, Lcom/facebook/ads/internal/view/c;->m:Landroid/widget/RelativeLayout;

    invoke-static {v1}, Lcom/facebook/ads/internal/w/b/x;->b(Landroid/view/View;)V

    iget-object v1, p0, Lcom/facebook/ads/internal/view/c;->n:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/facebook/ads/internal/view/c;->m:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/c;->p:Lcom/facebook/ads/internal/view/t;

    sget v1, Lcom/facebook/ads/internal/view/c;->b:I

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/view/t;->setMaxWidth(I)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/c;->j:Landroid/widget/TextView;

    const v1, -0x9f9890

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/c;->k:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/c;->l:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/c;->o:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, 0x1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    :goto_1
    invoke-super {p0, p1, p2}, Lcom/facebook/ads/internal/t/f;->onMeasure(II)V

    return-void

    :array_0
    .array-data 4
        -0x34000000    # -3.3554432E7f
        0x0
    .end array-data
.end method

.method public setButtonText(Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance p1, Landroid/text/style/StyleSpan;

    const/4 v1, 0x1

    invoke-direct {p1, v1}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    iget-object p1, p0, Lcom/facebook/ads/internal/view/c;->l:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/facebook/ads/internal/view/c;->l:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public setSubtitle(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/internal/view/c;->k:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/internal/view/c;->k:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/internal/view/c;->j:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/internal/view/c;->j:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
