.class public Lcom/miui/weather2/view/LoadingView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/view/View;

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;

.field private e:I

.field private f:Landroid/animation/ValueAnimator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/weather2/view/LoadingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic a(Lcom/miui/weather2/view/LoadingView;)I
    .locals 1

    iget v0, p0, Lcom/miui/weather2/view/LoadingView;->e:I

    return v0
.end method

.method static synthetic b(Lcom/miui/weather2/view/LoadingView;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/view/LoadingView;->a:Landroid/view/View;

    return-object v0
.end method

.method static synthetic c(Lcom/miui/weather2/view/LoadingView;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/view/LoadingView;->c:Landroid/view/View;

    return-object v0
.end method

.method static synthetic d(Lcom/miui/weather2/view/LoadingView;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/view/LoadingView;->b:Landroid/view/View;

    return-object v0
.end method

.method static synthetic e(Lcom/miui/weather2/view/LoadingView;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/view/LoadingView;->d:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 7

    invoke-virtual {p0}, Lcom/miui/weather2/view/LoadingView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const v1, 0x40d33333    # 6.6f

    mul-float v4, v1, v0

    const/high16 v1, 0x42040000    # 33.0f

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/miui/weather2/view/LoadingView;->e:I

    int-to-float v1, v1

    add-float v2, v4, v1

    iget v1, p0, Lcom/miui/weather2/view/LoadingView;->e:I

    int-to-float v1, v1

    sub-float v5, v1, v0

    iget v0, p0, Lcom/miui/weather2/view/LoadingView;->e:I

    int-to-float v0, v0

    add-float v3, v5, v0

    iget-object v0, p0, Lcom/miui/weather2/view/LoadingView;->a:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setTranslationX(F)V

    iget-object v0, p0, Lcom/miui/weather2/view/LoadingView;->b:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationX(F)V

    iget-object v0, p0, Lcom/miui/weather2/view/LoadingView;->c:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setTranslationX(F)V

    iget-object v0, p0, Lcom/miui/weather2/view/LoadingView;->d:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationX(F)V

    iget-object v6, p0, Lcom/miui/weather2/view/LoadingView;->f:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/miui/weather2/view/k;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/miui/weather2/view/k;-><init>(Lcom/miui/weather2/view/LoadingView;FFFF)V

    invoke-virtual {v6, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/miui/weather2/view/LoadingView;->f:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/view/LoadingView;->f:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    iget-object v0, p0, Lcom/miui/weather2/view/LoadingView;->f:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    return-void
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/view/LoadingView;->f:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->pause()V

    return-void
.end method

.method public d()V
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/view/LoadingView;->f:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->resume()V

    return-void
.end method

.method public e()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/view/LoadingView;->f:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isPaused()Z

    move-result v0

    return v0
.end method

.method protected onFinishInflate()V
    .locals 4

    const/4 v2, 0x0

    const v0, 0x7f0f011f

    invoke-virtual {p0, v0}, Lcom/miui/weather2/view/LoadingView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/weather2/view/LoadingView;->a:Landroid/view/View;

    const v0, 0x7f0f0120

    invoke-virtual {p0, v0}, Lcom/miui/weather2/view/LoadingView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/weather2/view/LoadingView;->b:Landroid/view/View;

    const v0, 0x7f0f0122

    invoke-virtual {p0, v0}, Lcom/miui/weather2/view/LoadingView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/weather2/view/LoadingView;->c:Landroid/view/View;

    const v0, 0x7f0f0123

    invoke-virtual {p0, v0}, Lcom/miui/weather2/view/LoadingView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/weather2/view/LoadingView;->d:Landroid/view/View;

    invoke-virtual {p0}, Lcom/miui/weather2/view/LoadingView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02012e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lcom/miui/weather2/view/LoadingView;->e:I

    const/4 v0, 0x2

    new-array v0, v0, [I

    iget v1, p0, Lcom/miui/weather2/view/LoadingView;->e:I

    mul-int/lit8 v1, v1, 0x2

    aput v1, v0, v2

    const/4 v1, 0x1

    aput v2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/weather2/view/LoadingView;->f:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/miui/weather2/view/LoadingView;->f:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/miui/weather2/view/LoadingView;->f:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/miui/weather2/view/LoadingView;->f:Landroid/animation/ValueAnimator;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    return-void
.end method
