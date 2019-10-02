.class public Lcom/facebook/ads/AdChoicesView;
.super Landroid/widget/RelativeLayout;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final a:Lcom/facebook/ads/NativeAdBase;

.field private final b:F

.field private c:Z

.field private d:Landroid/widget/TextView;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/facebook/ads/NativeAdBase;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/ads/AdChoicesView;-><init>(Landroid/content/Context;Lcom/facebook/ads/NativeAdBase;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/facebook/ads/NativeAdBase;Lcom/facebook/ads/NativeAdLayout;)V
    .locals 1
    .param p3    # Lcom/facebook/ads/NativeAdLayout;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/facebook/ads/AdChoicesView;-><init>(Landroid/content/Context;Lcom/facebook/ads/NativeAdBase;ZLcom/facebook/ads/NativeAdLayout;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/facebook/ads/NativeAdBase;Z)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/facebook/ads/AdChoicesView;-><init>(Landroid/content/Context;Lcom/facebook/ads/NativeAdBase;ZLcom/facebook/ads/NativeAdLayout;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/facebook/ads/NativeAdBase;ZLcom/facebook/ads/NativeAdLayout;)V
    .locals 9
    .param p4    # Lcom/facebook/ads/NativeAdLayout;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/facebook/ads/AdChoicesView;->c:Z

    iput-object p2, p0, Lcom/facebook/ads/AdChoicesView;->a:Lcom/facebook/ads/NativeAdBase;

    sget p2, Lcom/facebook/ads/internal/w/b/x;->b:F

    iput p2, p0, Lcom/facebook/ads/AdChoicesView;->b:F

    iget-object p2, p0, Lcom/facebook/ads/AdChoicesView;->a:Lcom/facebook/ads/NativeAdBase;

    invoke-virtual {p2}, Lcom/facebook/ads/NativeAdBase;->f()Lcom/facebook/ads/internal/t/e;

    move-result-object p2

    invoke-virtual {p2, p4}, Lcom/facebook/ads/internal/t/e;->a(Lcom/facebook/ads/NativeAdLayout;)V

    iget-object p2, p0, Lcom/facebook/ads/AdChoicesView;->a:Lcom/facebook/ads/NativeAdBase;

    invoke-virtual {p2}, Lcom/facebook/ads/NativeAdBase;->isAdLoaded()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/facebook/ads/AdChoicesView;->a:Lcom/facebook/ads/NativeAdBase;

    invoke-virtual {p2}, Lcom/facebook/ads/NativeAdBase;->g()Lcom/facebook/ads/internal/adapters/i;

    move-result-object p2

    invoke-virtual {p2}, Lcom/facebook/ads/internal/adapters/i;->g()Z

    move-result p2

    if-nez p2, :cond_0

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lcom/facebook/ads/AdChoicesView;->setVisibility(I)V

    return-void

    :cond_0
    iget-object p2, p0, Lcom/facebook/ads/AdChoicesView;->a:Lcom/facebook/ads/NativeAdBase;

    invoke-virtual {p2}, Lcom/facebook/ads/NativeAdBase;->getAdChoicesText()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/facebook/ads/AdChoicesView;->e:Ljava/lang/String;

    iget-object p2, p0, Lcom/facebook/ads/AdChoicesView;->e:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p2, "AdChoices"

    iput-object p2, p0, Lcom/facebook/ads/AdChoicesView;->e:Ljava/lang/String;

    :cond_1
    iget-object p2, p0, Lcom/facebook/ads/AdChoicesView;->a:Lcom/facebook/ads/NativeAdBase;

    invoke-virtual {p2}, Lcom/facebook/ads/NativeAdBase;->f()Lcom/facebook/ads/internal/t/e;

    move-result-object p2

    invoke-virtual {p2}, Lcom/facebook/ads/internal/t/e;->o()Lcom/facebook/ads/internal/t/g;

    move-result-object p2

    new-instance p4, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {p4, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    new-instance v1, Lcom/facebook/ads/AdChoicesView$1;

    invoke-direct {v1, p0}, Lcom/facebook/ads/AdChoicesView$1;-><init>(Lcom/facebook/ads/AdChoicesView;)V

    invoke-virtual {p0, v1}, Lcom/facebook/ads/AdChoicesView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/facebook/ads/AdChoicesView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/facebook/ads/AdChoicesView;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/facebook/ads/AdChoicesView;->d:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Lcom/facebook/ads/AdChoicesView;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v0, -0x1

    const/16 v2, 0xf

    if-eqz p3, :cond_2

    if-eqz p2, :cond_2

    new-instance p3, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/facebook/ads/AdChoicesView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {p3, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, p3}, Lcom/facebook/ads/AdChoicesView;->addView(Landroid/view/View;)V

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p2}, Lcom/facebook/ads/internal/t/g;->b()I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lcom/facebook/ads/AdChoicesView;->b:F

    mul-float v4, v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-virtual {p2}, Lcom/facebook/ads/internal/t/g;->c()I

    move-result v5

    int-to-float v5, v5

    iget v6, p0, Lcom/facebook/ads/AdChoicesView;->b:F

    mul-float v5, v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0x9

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v3, v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/high16 v4, 0x40800000    # 4.0f

    iget v5, p0, Lcom/facebook/ads/AdChoicesView;->b:F

    mul-float v5, v5, v4

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v4

    iget v5, p0, Lcom/facebook/ads/AdChoicesView;->b:F

    const/high16 v6, 0x40000000    # 2.0f

    mul-float v5, v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    iget v7, p0, Lcom/facebook/ads/AdChoicesView;->b:F

    mul-float v7, v7, v6

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    iget v8, p0, Lcom/facebook/ads/AdChoicesView;->b:F

    mul-float v8, v8, v6

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v6

    invoke-virtual {v3, v4, v5, v7, v6}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {p3, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {p2, p3}, Lcom/facebook/ads/internal/t/e;->a(Lcom/facebook/ads/internal/t/g;Landroid/widget/ImageView;)V

    const/16 v3, 0xb

    invoke-virtual {p3}, Landroid/widget/ImageView;->getId()I

    move-result p3

    invoke-virtual {v1, v3, p3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iput p1, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    invoke-virtual {p2}, Lcom/facebook/ads/internal/t/g;->b()I

    move-result p3

    add-int/lit8 p3, p3, 0x4

    int-to-float p3, p3

    iget v3, p0, Lcom/facebook/ads/AdChoicesView;->b:F

    mul-float p3, p3, v3

    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result p3

    iput p3, p4, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    invoke-virtual {p2}, Lcom/facebook/ads/internal/t/g;->c()I

    move-result p2

    add-int/lit8 p2, p2, 0x2

    int-to-float p2, p2

    iget p3, p0, Lcom/facebook/ads/AdChoicesView;->b:F

    mul-float p2, p2, p3

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    iput p2, p4, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    :goto_0
    iput-boolean p1, p0, Lcom/facebook/ads/AdChoicesView;->c:Z

    invoke-virtual {p0, p4}, Lcom/facebook/ads/AdChoicesView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object p1, p0, Lcom/facebook/ads/AdChoicesView;->d:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/facebook/ads/AdChoicesView;->d:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->setSingleLine()V

    iget-object p1, p0, Lcom/facebook/ads/AdChoicesView;->d:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/facebook/ads/AdChoicesView;->e:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/facebook/ads/AdChoicesView;->d:Landroid/widget/TextView;

    const/high16 p2, 0x41200000    # 10.0f

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object p1, p0, Lcom/facebook/ads/AdChoicesView;->d:Landroid/widget/TextView;

    const p2, -0x423e37

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    sget-object p1, Lcom/facebook/ads/internal/w/b/j;->m:Lcom/facebook/ads/internal/w/b/j;

    invoke-static {p0, p1}, Lcom/facebook/ads/internal/w/b/j;->a(Landroid/view/View;Lcom/facebook/ads/internal/w/b/j;)V

    iget-object p1, p0, Lcom/facebook/ads/AdChoicesView;->d:Landroid/widget/TextView;

    sget-object p2, Lcom/facebook/ads/internal/w/b/j;->m:Lcom/facebook/ads/internal/w/b/j;

    invoke-static {p1, p2}, Lcom/facebook/ads/internal/w/b/j;->a(Landroid/view/View;Lcom/facebook/ads/internal/w/b/j;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/ads/AdChoicesView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/facebook/ads/AdChoicesView;->c:Z

    return p0
.end method

.method static synthetic a(Lcom/facebook/ads/AdChoicesView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/facebook/ads/AdChoicesView;->c:Z

    return p1
.end method

.method static synthetic b(Lcom/facebook/ads/AdChoicesView;)Lcom/facebook/ads/NativeAdBase;
    .locals 0

    iget-object p0, p0, Lcom/facebook/ads/AdChoicesView;->a:Lcom/facebook/ads/NativeAdBase;

    return-object p0
.end method

.method static synthetic c(Lcom/facebook/ads/AdChoicesView;)V
    .locals 4

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iget-object v1, p0, Lcom/facebook/ads/AdChoicesView;->d:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextSize()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v1, p0, Lcom/facebook/ads/AdChoicesView;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    iget v1, p0, Lcom/facebook/ads/AdChoicesView;->b:F

    const/high16 v2, 0x40800000    # 4.0f

    mul-float v1, v1, v2

    add-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {p0}, Lcom/facebook/ads/AdChoicesView;->getWidth()I

    move-result v1

    add-int/2addr v0, v1

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/facebook/ads/AdChoicesView;->c:Z

    new-instance v3, Lcom/facebook/ads/AdChoicesView$2;

    invoke-direct {v3, p0, v1, v0}, Lcom/facebook/ads/AdChoicesView$2;-><init>(Lcom/facebook/ads/AdChoicesView;II)V

    new-instance v0, Lcom/facebook/ads/AdChoicesView$3;

    invoke-direct {v0, p0}, Lcom/facebook/ads/AdChoicesView$3;-><init>(Lcom/facebook/ads/AdChoicesView;)V

    invoke-virtual {v3, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    const-wide/16 v0, 0x12c

    invoke-virtual {v3, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {v3, v2}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    invoke-virtual {p0, v3}, Lcom/facebook/ads/AdChoicesView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method static synthetic d(Lcom/facebook/ads/AdChoicesView;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/facebook/ads/AdChoicesView;->d:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic e(Lcom/facebook/ads/AdChoicesView;)V
    .locals 3

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iget-object v1, p0, Lcom/facebook/ads/AdChoicesView;->d:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextSize()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v1, p0, Lcom/facebook/ads/AdChoicesView;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    iget v1, p0, Lcom/facebook/ads/AdChoicesView;->b:F

    const/high16 v2, 0x40800000    # 4.0f

    mul-float v1, v1, v2

    add-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {p0}, Lcom/facebook/ads/AdChoicesView;->getWidth()I

    move-result v1

    sub-int v0, v1, v0

    new-instance v2, Lcom/facebook/ads/AdChoicesView$4;

    invoke-direct {v2, p0, v1, v0}, Lcom/facebook/ads/AdChoicesView$4;-><init>(Lcom/facebook/ads/AdChoicesView;II)V

    new-instance v0, Lcom/facebook/ads/AdChoicesView$5;

    invoke-direct {v0, p0}, Lcom/facebook/ads/AdChoicesView$5;-><init>(Lcom/facebook/ads/AdChoicesView;)V

    invoke-virtual {v2, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    const-wide/16 v0, 0x12c

    invoke-virtual {v2, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    invoke-virtual {p0, v2}, Lcom/facebook/ads/AdChoicesView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method
