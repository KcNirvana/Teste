.class Lcom/miui/weather2/view/onOnePage/bj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field final synthetic a:Lcom/miui/weather2/view/onOnePage/VerticalCarousel;


# direct methods
.method constructor <init>(Lcom/miui/weather2/view/onOnePage/VerticalCarousel;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/view/onOnePage/bj;->a:Lcom/miui/weather2/view/onOnePage/VerticalCarousel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    cmpg-float v1, v0, v3

    if-gtz v1, :cond_1

    iget-object v1, p0, Lcom/miui/weather2/view/onOnePage/bj;->a:Lcom/miui/weather2/view/onOnePage/VerticalCarousel;

    invoke-static {v1}, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;->o(Lcom/miui/weather2/view/onOnePage/VerticalCarousel;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/weather2/view/onOnePage/bj;->a:Lcom/miui/weather2/view/onOnePage/VerticalCarousel;

    invoke-static {v2}, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;->l(Lcom/miui/weather2/view/onOnePage/VerticalCarousel;)I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    sub-float v0, v3, v0

    mul-float/2addr v0, v2

    iget-object v2, p0, Lcom/miui/weather2/view/onOnePage/bj;->a:Lcom/miui/weather2/view/onOnePage/VerticalCarousel;

    invoke-static {v2}, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;->p(Lcom/miui/weather2/view/onOnePage/VerticalCarousel;)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/bj;->a:Lcom/miui/weather2/view/onOnePage/VerticalCarousel;

    invoke-virtual {v0}, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;->requestLayout()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    cmpl-float v0, v3, v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/bj;->a:Lcom/miui/weather2/view/onOnePage/VerticalCarousel;

    invoke-static {v0}, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;->q(Lcom/miui/weather2/view/onOnePage/VerticalCarousel;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/bj;->a:Lcom/miui/weather2/view/onOnePage/VerticalCarousel;

    invoke-static {v0}, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;->q(Lcom/miui/weather2/view/onOnePage/VerticalCarousel;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/bj;->a:Lcom/miui/weather2/view/onOnePage/VerticalCarousel;

    invoke-static {v0}, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;->r(Lcom/miui/weather2/view/onOnePage/VerticalCarousel;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    const/16 v0, 0x8

    iget-object v1, p0, Lcom/miui/weather2/view/onOnePage/bj;->a:Lcom/miui/weather2/view/onOnePage/VerticalCarousel;

    invoke-static {v1}, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;->r(Lcom/miui/weather2/view/onOnePage/VerticalCarousel;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-ne v0, v1, :cond_0

    :cond_2
    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/bj;->a:Lcom/miui/weather2/view/onOnePage/VerticalCarousel;

    invoke-static {v0}, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;->q(Lcom/miui/weather2/view/onOnePage/VerticalCarousel;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v1, p0, Lcom/miui/weather2/view/onOnePage/bj;->a:Lcom/miui/weather2/view/onOnePage/VerticalCarousel;

    invoke-static {v1}, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;->s(Lcom/miui/weather2/view/onOnePage/VerticalCarousel;)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/bj;->a:Lcom/miui/weather2/view/onOnePage/VerticalCarousel;

    invoke-static {v0}, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;->q(Lcom/miui/weather2/view/onOnePage/VerticalCarousel;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    goto :goto_0
.end method
