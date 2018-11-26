.class public Lcom/miui/common/customview/OverScrollLayout;
.super Landroid/widget/LinearLayout;
.source ""


# instance fields
.field private ayA:Z

.field private ayB:F

.field private ayC:F

.field private ayD:I

.field private ayE:Landroid/widget/TextView;

.field private ayF:Landroid/view/View;

.field private ayG:Landroid/view/View;

.field private ayH:Landroid/widget/LinearLayout;

.field private ayI:Lcom/miui/common/customview/c;

.field private ayw:Z

.field private ayx:Z

.field private ayy:F

.field private ayz:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/common/customview/OverScrollLayout;->ayw:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/common/customview/OverScrollLayout;->ayw:Z

    return-void
.end method

.method private aFN()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/common/customview/OverScrollLayout;->ayx:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/common/customview/OverScrollLayout;->ayw:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private aFO(F)V
    .locals 6

    const v5, 0x3ecccccd    # 0.4f

    const/4 v0, 0x0

    const/high16 v4, 0x40000000    # 2.0f

    iget-boolean v1, p0, Lcom/miui/common/customview/OverScrollLayout;->ayz:Z

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget v1, p0, Lcom/miui/common/customview/OverScrollLayout;->ayD:I

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/miui/common/customview/OverScrollLayout;->getTranslationY()F

    move-result v2

    iget v3, p0, Lcom/miui/common/customview/OverScrollLayout;->ayy:F

    sub-float v3, v5, v3

    mul-float/2addr v3, p1

    add-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    cmpl-float v2, v1, v0

    if-lez v2, :cond_1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/miui/common/customview/OverScrollLayout;->setTranslationY(F)V

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Lcom/miui/common/customview/OverScrollLayout;->ayD:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    mul-float/2addr v1, v5

    iput v1, p0, Lcom/miui/common/customview/OverScrollLayout;->ayy:F

    iget-object v1, p0, Lcom/miui/common/customview/OverScrollLayout;->ayH:Landroid/widget/LinearLayout;

    iget v2, p0, Lcom/miui/common/customview/OverScrollLayout;->ayD:I

    int-to-float v2, v2

    add-float/2addr v0, v2

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    iget-object v0, p0, Lcom/miui/common/customview/OverScrollLayout;->ayE:Landroid/widget/TextView;

    iget v1, p0, Lcom/miui/common/customview/OverScrollLayout;->ayD:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/miui/common/customview/OverScrollLayout;->ayH:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getTranslationY()F

    move-result v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/miui/common/customview/OverScrollLayout;->ayE:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    div-float/2addr v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTranslationY(F)V

    iget-object v0, p0, Lcom/miui/common/customview/OverScrollLayout;->ayF:Landroid/view/View;

    iget v1, p0, Lcom/miui/common/customview/OverScrollLayout;->ayD:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/miui/common/customview/OverScrollLayout;->ayH:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getTranslationY()F

    move-result v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/miui/common/customview/OverScrollLayout;->ayF:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    div-float/2addr v1, v4

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    iget-object v0, p0, Lcom/miui/common/customview/OverScrollLayout;->ayG:Landroid/view/View;

    iget v1, p0, Lcom/miui/common/customview/OverScrollLayout;->ayD:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/miui/common/customview/OverScrollLayout;->ayH:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getTranslationY()F

    move-result v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/miui/common/customview/OverScrollLayout;->ayG:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    div-float/2addr v1, v4

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    return-void

    :cond_1
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public aFK(Landroid/widget/LinearLayout;)V
    .locals 2

    iput-object p1, p0, Lcom/miui/common/customview/OverScrollLayout;->ayH:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/miui/common/customview/OverScrollLayout;->ayH:Landroid/widget/LinearLayout;

    const v1, 0x7f0a02a8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/common/customview/OverScrollLayout;->ayE:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/common/customview/OverScrollLayout;->ayH:Landroid/widget/LinearLayout;

    const v1, 0x7f0a02a7

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/common/customview/OverScrollLayout;->ayF:Landroid/view/View;

    iget-object v0, p0, Lcom/miui/common/customview/OverScrollLayout;->ayH:Landroid/widget/LinearLayout;

    const v1, 0x7f0a02a9

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/common/customview/OverScrollLayout;->ayG:Landroid/view/View;

    invoke-virtual {p0}, Lcom/miui/common/customview/OverScrollLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09002c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/common/customview/OverScrollLayout;->ayD:I

    iget-object v0, p0, Lcom/miui/common/customview/OverScrollLayout;->ayH:Landroid/widget/LinearLayout;

    iget v1, p0, Lcom/miui/common/customview/OverScrollLayout;->ayD:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/common/customview/OverScrollLayout;->ayz:Z

    return-void
.end method

.method public aFL(Lcom/miui/common/customview/c;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/common/customview/OverScrollLayout;->ayI:Lcom/miui/common/customview/c;

    return-void
.end method

.method public aFM(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/common/customview/OverScrollLayout;->ayw:Z

    return-void
.end method

.method public aFP()V
    .locals 5

    const/high16 v4, 0x40000000    # 2.0f

    const-wide/16 v2, 0xfa

    iget-boolean v0, p0, Lcom/miui/common/customview/OverScrollLayout;->ayz:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/miui/common/customview/OverScrollLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v0, p0, Lcom/miui/common/customview/OverScrollLayout;->ayH:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v0, p0, Lcom/miui/common/customview/OverScrollLayout;->ayE:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v0, p0, Lcom/miui/common/customview/OverScrollLayout;->ayF:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v0, p0, Lcom/miui/common/customview/OverScrollLayout;->ayG:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    invoke-virtual {p0}, Lcom/miui/common/customview/OverScrollLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object v0, p0, Lcom/miui/common/customview/OverScrollLayout;->ayH:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/miui/common/customview/OverScrollLayout;->ayD:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object v0, p0, Lcom/miui/common/customview/OverScrollLayout;->ayE:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/common/customview/OverScrollLayout;->ayE:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getHeight()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    div-float/2addr v1, v4

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object v0, p0, Lcom/miui/common/customview/OverScrollLayout;->ayF:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/common/customview/OverScrollLayout;->ayF:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    div-float/2addr v1, v4

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object v0, p0, Lcom/miui/common/customview/OverScrollLayout;->ayG:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/common/customview/OverScrollLayout;->ayG:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    div-float/2addr v1, v4

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public aFQ(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/common/customview/OverScrollLayout;->ayA:Z

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget-boolean v0, p0, Lcom/miui/common/customview/OverScrollLayout;->ayA:Z

    if-eqz v0, :cond_0

    return v3

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    packed-switch v0, :pswitch_data_0

    :cond_1
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :pswitch_1
    iput-boolean v4, p0, Lcom/miui/common/customview/OverScrollLayout;->ayx:Z

    iput v1, p0, Lcom/miui/common/customview/OverScrollLayout;->ayC:F

    iput v2, p0, Lcom/miui/common/customview/OverScrollLayout;->ayB:F

    goto :goto_0

    :pswitch_2
    iget v0, p0, Lcom/miui/common/customview/OverScrollLayout;->ayC:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/miui/common/customview/OverScrollLayout;->ayB:F

    sub-float v1, v2, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const v2, 0x3f99999a    # 1.2f

    mul-float/2addr v1, v2

    cmpg-float v0, v1, v0

    if-gez v0, :cond_2

    iput-boolean v3, p0, Lcom/miui/common/customview/OverScrollLayout;->ayx:Z

    :goto_1
    invoke-direct {p0}, Lcom/miui/common/customview/OverScrollLayout;->aFN()Z

    move-result v0

    if-eqz v0, :cond_1

    return v3

    :cond_2
    iput-boolean v4, p0, Lcom/miui/common/customview/OverScrollLayout;->ayx:Z

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-direct {p0}, Lcom/miui/common/customview/OverScrollLayout;->aFN()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    :pswitch_0
    iput v0, p0, Lcom/miui/common/customview/OverScrollLayout;->ayC:F

    goto :goto_0

    :pswitch_1
    iget v1, p0, Lcom/miui/common/customview/OverScrollLayout;->ayC:F

    sub-float v1, v0, v1

    invoke-direct {p0, v1}, Lcom/miui/common/customview/OverScrollLayout;->aFO(F)V

    iput v0, p0, Lcom/miui/common/customview/OverScrollLayout;->ayC:F

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/miui/common/customview/OverScrollLayout;->aFP()V

    iget-object v0, p0, Lcom/miui/common/customview/OverScrollLayout;->ayI:Lcom/miui/common/customview/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/common/customview/OverScrollLayout;->ayI:Lcom/miui/common/customview/c;

    invoke-interface {v0}, Lcom/miui/common/customview/c;->OR()V

    goto :goto_0

    :cond_1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
