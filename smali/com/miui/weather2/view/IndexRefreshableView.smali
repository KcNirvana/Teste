.class public Lcom/miui/weather2/view/IndexRefreshableView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/weather2/view/IndexRefreshableView$a;
    }
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:F

.field private g:F

.field private h:Z

.field private i:Z

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/LinearLayout;

.field private l:Lcom/miui/weather2/view/RefreshCloudView;

.field private m:Landroid/animation/ValueAnimator;

.field private n:Lcom/miui/weather2/view/IndexRefreshableView$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/weather2/view/IndexRefreshableView;->i:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/weather2/view/IndexRefreshableView;->i:Z

    return-void
.end method

.method static synthetic a(Lcom/miui/weather2/view/IndexRefreshableView;)I
    .locals 1

    iget v0, p0, Lcom/miui/weather2/view/IndexRefreshableView;->e:I

    return v0
.end method

.method private a(F)V
    .locals 7

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    iget v0, p0, Lcom/miui/weather2/view/IndexRefreshableView;->a:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/miui/weather2/view/IndexRefreshableView;->getTranslationY()F

    move-result v3

    const v4, 0x3f19999a    # 0.6f

    mul-float/2addr v4, p1

    add-float/2addr v3, v4

    invoke-static {v0, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    cmpg-float v0, v3, v1

    if-gez v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/miui/weather2/view/IndexRefreshableView;->setTranslationY(F)V

    :goto_0
    iget v0, p0, Lcom/miui/weather2/view/IndexRefreshableView;->d:I

    int-to-float v0, v0

    cmpg-float v0, v3, v0

    if-gez v0, :cond_2

    move v0, v1

    :goto_1
    iget-object v4, p0, Lcom/miui/weather2/view/IndexRefreshableView;->m:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/miui/weather2/view/IndexRefreshableView;->m:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    iget-object v4, p0, Lcom/miui/weather2/view/IndexRefreshableView;->l:Lcom/miui/weather2/view/RefreshCloudView;

    invoke-virtual {v4, v1}, Lcom/miui/weather2/view/RefreshCloudView;->setTranslationX(F)V

    iget-object v1, p0, Lcom/miui/weather2/view/IndexRefreshableView;->l:Lcom/miui/weather2/view/RefreshCloudView;

    invoke-virtual {v1, v0}, Lcom/miui/weather2/view/RefreshCloudView;->setFractionToUpdateCloudIcon(F)V

    iget-object v1, p0, Lcom/miui/weather2/view/IndexRefreshableView;->k:Landroid/widget/LinearLayout;

    sub-float/2addr v0, v2

    iget v2, p0, Lcom/miui/weather2/view/IndexRefreshableView;->c:I

    int-to-float v2, v2

    mul-float/2addr v0, v2

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    iget v0, p0, Lcom/miui/weather2/view/IndexRefreshableView;->b:I

    int-to-float v0, v0

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_4

    iget v0, p0, Lcom/miui/weather2/view/IndexRefreshableView;->a:I

    int-to-float v0, v0

    cmpg-float v0, v3, v0

    if-gtz v0, :cond_4

    const/4 v0, 0x1

    :goto_2
    iput-boolean v0, p0, Lcom/miui/weather2/view/IndexRefreshableView;->i:Z

    return-void

    :cond_1
    invoke-virtual {p0, v3}, Lcom/miui/weather2/view/IndexRefreshableView;->setTranslationY(F)V

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/miui/weather2/view/IndexRefreshableView;->b:I

    int-to-float v0, v0

    cmpg-float v0, v3, v0

    if-gez v0, :cond_3

    iget v0, p0, Lcom/miui/weather2/view/IndexRefreshableView;->d:I

    int-to-float v0, v0

    sub-float v0, v3, v0

    iget v4, p0, Lcom/miui/weather2/view/IndexRefreshableView;->b:I

    iget v5, p0, Lcom/miui/weather2/view/IndexRefreshableView;->d:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    div-float/2addr v0, v4

    iget-object v4, p0, Lcom/miui/weather2/view/IndexRefreshableView;->j:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/weather2/view/IndexRefreshableView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0900a3

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/miui/weather2/view/IndexRefreshableView;->j:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/weather2/view/IndexRefreshableView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f09009f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move v0, v2

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    goto :goto_2
.end method

.method static synthetic b(Lcom/miui/weather2/view/IndexRefreshableView;)Lcom/miui/weather2/view/RefreshCloudView;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/view/IndexRefreshableView;->l:Lcom/miui/weather2/view/RefreshCloudView;

    return-object v0
.end method

.method private e()V
    .locals 1

    iget-boolean v0, p0, Lcom/miui/weather2/view/IndexRefreshableView;->i:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/miui/weather2/view/IndexRefreshableView;->h:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/view/IndexRefreshableView;->n:Lcom/miui/weather2/view/IndexRefreshableView$a;

    invoke-interface {v0}, Lcom/miui/weather2/view/IndexRefreshableView$a;->a()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/miui/weather2/view/IndexRefreshableView;->a()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/miui/weather2/view/IndexRefreshableView;->b()V

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/weather2/view/IndexRefreshableView;->h:Z

    iget-object v0, p0, Lcom/miui/weather2/view/IndexRefreshableView;->m:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    iget-object v0, p0, Lcom/miui/weather2/view/IndexRefreshableView;->j:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/weather2/view/IndexRefreshableView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900a4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/miui/weather2/view/IndexRefreshableView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    invoke-virtual {p0}, Lcom/miui/weather2/view/IndexRefreshableView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/miui/weather2/view/IndexRefreshableView;->b:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public a(Landroid/widget/LinearLayout;Lcom/miui/weather2/view/IndexRefreshableView$a;)V
    .locals 5

    const/4 v4, 0x2

    iput-object p2, p0, Lcom/miui/weather2/view/IndexRefreshableView;->n:Lcom/miui/weather2/view/IndexRefreshableView$a;

    iput-object p1, p0, Lcom/miui/weather2/view/IndexRefreshableView;->k:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/miui/weather2/view/IndexRefreshableView;->k:Landroid/widget/LinearLayout;

    const v1, 0x7f0f00c6

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/weather2/view/IndexRefreshableView;->j:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/weather2/view/IndexRefreshableView;->k:Landroid/widget/LinearLayout;

    const v1, 0x7f0f00c5

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/view/RefreshCloudView;

    iput-object v0, p0, Lcom/miui/weather2/view/IndexRefreshableView;->l:Lcom/miui/weather2/view/RefreshCloudView;

    invoke-virtual {p0}, Lcom/miui/weather2/view/IndexRefreshableView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0083

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/weather2/view/IndexRefreshableView;->a:I

    invoke-virtual {p0}, Lcom/miui/weather2/view/IndexRefreshableView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0085

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/weather2/view/IndexRefreshableView;->b:I

    invoke-virtual {p0}, Lcom/miui/weather2/view/IndexRefreshableView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0088

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/weather2/view/IndexRefreshableView;->c:I

    invoke-virtual {p0}, Lcom/miui/weather2/view/IndexRefreshableView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0084

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/weather2/view/IndexRefreshableView;->d:I

    invoke-virtual {p0}, Lcom/miui/weather2/view/IndexRefreshableView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0081

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/weather2/view/IndexRefreshableView;->e:I

    new-array v0, v4, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/weather2/view/IndexRefreshableView;->m:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/miui/weather2/view/IndexRefreshableView;->m:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    iget-object v0, p0, Lcom/miui/weather2/view/IndexRefreshableView;->m:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    iget-object v0, p0, Lcom/miui/weather2/view/IndexRefreshableView;->m:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/miui/weather2/view/IndexRefreshableView;->m:Landroid/animation/ValueAnimator;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    iget-object v0, p0, Lcom/miui/weather2/view/IndexRefreshableView;->m:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/miui/weather2/view/i;

    invoke-direct {v1, p0}, Lcom/miui/weather2/view/i;-><init>(Lcom/miui/weather2/view/IndexRefreshableView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public b()V
    .locals 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/weather2/view/IndexRefreshableView;->h:Z

    invoke-virtual {p0}, Lcom/miui/weather2/view/IndexRefreshableView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    invoke-virtual {p0}, Lcom/miui/weather2/view/IndexRefreshableView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/weather2/view/IndexRefreshableView;->h:Z

    return v0
.end method

.method public d()V
    .locals 0

    invoke-virtual {p0}, Lcom/miui/weather2/view/IndexRefreshableView;->b()V

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    const v0, 0x7f0f0006

    invoke-virtual {p0, v0}, Lcom/miui/weather2/view/IndexRefreshableView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    move v0, v2

    :goto_0
    iput v3, p0, Lcom/miui/weather2/view/IndexRefreshableView;->f:F

    iput v3, p0, Lcom/miui/weather2/view/IndexRefreshableView;->g:F

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/weather2/view/IndexRefreshableView;->h:Z

    if-eqz v0, :cond_1

    :cond_0
    move v2, v1

    :cond_1
    return v2

    :pswitch_0
    move v0, v2

    goto :goto_0

    :pswitch_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v0

    if-nez v0, :cond_2

    iget v0, p0, Lcom/miui/weather2/view/IndexRefreshableView;->g:F

    cmpl-float v0, v3, v0

    if-lez v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0

    :pswitch_2
    move v0, v2

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :goto_0
    const/4 v0, 0x1

    return v0

    :pswitch_0
    iput v0, p0, Lcom/miui/weather2/view/IndexRefreshableView;->f:F

    goto :goto_0

    :pswitch_1
    iget v1, p0, Lcom/miui/weather2/view/IndexRefreshableView;->f:F

    sub-float v1, v0, v1

    invoke-direct {p0, v1}, Lcom/miui/weather2/view/IndexRefreshableView;->a(F)V

    iput v0, p0, Lcom/miui/weather2/view/IndexRefreshableView;->f:F

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/miui/weather2/view/IndexRefreshableView;->e()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
