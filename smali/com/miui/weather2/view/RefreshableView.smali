.class public Lcom/miui/weather2/view/RefreshableView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/weather2/view/RefreshableView$a;
    }
.end annotation


# instance fields
.field private A:Landroid/animation/AnimatorListenerAdapter;

.field private B:Landroid/animation/AnimatorSet;

.field private a:Landroid/widget/LinearLayout;

.field private b:Landroid/widget/ImageView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/LinearLayout;

.field private e:Landroid/widget/LinearLayout;

.field private f:Landroid/widget/ImageView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:I

.field private j:I

.field private k:I

.field private l:Lcom/miui/weather2/view/RefreshableView$a;

.field private m:F

.field private n:F

.field private o:F

.field private p:F

.field private q:F

.field private r:Z

.field private s:Z

.field private t:Z

.field private u:Z

.field private v:Z

.field private w:Z

.field private x:Z

.field private y:Z

.field private z:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/weather2/view/RefreshableView;->o:F

    iput-boolean v1, p0, Lcom/miui/weather2/view/RefreshableView;->r:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/weather2/view/RefreshableView;->s:Z

    iput-boolean v1, p0, Lcom/miui/weather2/view/RefreshableView;->t:Z

    iput-boolean v1, p0, Lcom/miui/weather2/view/RefreshableView;->u:Z

    iput-boolean v1, p0, Lcom/miui/weather2/view/RefreshableView;->v:Z

    iput-boolean v1, p0, Lcom/miui/weather2/view/RefreshableView;->w:Z

    iput-boolean v1, p0, Lcom/miui/weather2/view/RefreshableView;->x:Z

    iput-boolean v1, p0, Lcom/miui/weather2/view/RefreshableView;->y:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/weather2/view/RefreshableView;->o:F

    iput-boolean v1, p0, Lcom/miui/weather2/view/RefreshableView;->r:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/weather2/view/RefreshableView;->s:Z

    iput-boolean v1, p0, Lcom/miui/weather2/view/RefreshableView;->t:Z

    iput-boolean v1, p0, Lcom/miui/weather2/view/RefreshableView;->u:Z

    iput-boolean v1, p0, Lcom/miui/weather2/view/RefreshableView;->v:Z

    iput-boolean v1, p0, Lcom/miui/weather2/view/RefreshableView;->w:Z

    iput-boolean v1, p0, Lcom/miui/weather2/view/RefreshableView;->x:Z

    iput-boolean v1, p0, Lcom/miui/weather2/view/RefreshableView;->y:Z

    return-void
.end method

.method static synthetic a(Lcom/miui/weather2/view/RefreshableView;F)F
    .locals 0

    iput p1, p0, Lcom/miui/weather2/view/RefreshableView;->o:F

    return p1
.end method

.method static synthetic a(Lcom/miui/weather2/view/RefreshableView;I)I
    .locals 0

    iput p1, p0, Lcom/miui/weather2/view/RefreshableView;->i:I

    return p1
.end method

.method static synthetic a(Lcom/miui/weather2/view/RefreshableView;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/view/RefreshableView;->a:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private a(F)V
    .locals 4

    invoke-virtual {p0}, Lcom/miui/weather2/view/RefreshableView;->b()V

    iget-object v0, p0, Lcom/miui/weather2/view/RefreshableView;->l:Lcom/miui/weather2/view/RefreshableView$a;

    iget v1, p0, Lcom/miui/weather2/view/RefreshableView;->j:I

    int-to-float v1, v1

    const/4 v2, 0x0

    add-float/2addr v1, v2

    invoke-interface {v0, v1, p1}, Lcom/miui/weather2/view/RefreshableView$a;->a(FF)F

    move-result v1

    iget v0, p0, Lcom/miui/weather2/view/RefreshableView;->k:I

    iget v2, p0, Lcom/miui/weather2/view/RefreshableView;->i:I

    add-int/2addr v0, v2

    int-to-float v0, v0

    iget-object v2, p0, Lcom/miui/weather2/view/RefreshableView;->a:Landroid/widget/LinearLayout;

    iget v3, p0, Lcom/miui/weather2/view/RefreshableView;->i:I

    neg-int v3, v3

    int-to-float v3, v3

    mul-float/2addr v0, v1

    add-float/2addr v0, v3

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    iget-object v0, p0, Lcom/miui/weather2/view/RefreshableView;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    const v0, 0x3f7ae148    # 0.98f

    cmpl-float v0, v1, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/miui/weather2/view/RefreshableView;->r:Z

    const-string v0, "Wth2:RefreshableView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doMovement() ratio="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",moveY="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/weather2/tools/ae;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/miui/weather2/view/RefreshableView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/weather2/view/RefreshableView;->v:Z

    return p1
.end method

.method static synthetic b(Lcom/miui/weather2/view/RefreshableView;)I
    .locals 1

    iget v0, p0, Lcom/miui/weather2/view/RefreshableView;->i:I

    return v0
.end method

.method static synthetic b(Lcom/miui/weather2/view/RefreshableView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/weather2/view/RefreshableView;->w:Z

    return p1
.end method

.method static synthetic c(Lcom/miui/weather2/view/RefreshableView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/weather2/view/RefreshableView;->u:Z

    return v0
.end method

.method static synthetic c(Lcom/miui/weather2/view/RefreshableView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/weather2/view/RefreshableView;->x:Z

    return p1
.end method

.method static synthetic d(Lcom/miui/weather2/view/RefreshableView;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/view/RefreshableView;->b:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic d(Lcom/miui/weather2/view/RefreshableView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/weather2/view/RefreshableView;->y:Z

    return p1
.end method

.method static synthetic e(Lcom/miui/weather2/view/RefreshableView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/weather2/view/RefreshableView;->v:Z

    return v0
.end method

.method static synthetic e(Lcom/miui/weather2/view/RefreshableView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/weather2/view/RefreshableView;->z:Z

    return p1
.end method

.method static synthetic f(Lcom/miui/weather2/view/RefreshableView;)F
    .locals 1

    iget v0, p0, Lcom/miui/weather2/view/RefreshableView;->o:F

    return v0
.end method

.method static synthetic g(Lcom/miui/weather2/view/RefreshableView;)F
    .locals 1

    iget v0, p0, Lcom/miui/weather2/view/RefreshableView;->p:F

    return v0
.end method

.method private getStartShapeAnimTranX()F
    .locals 1

    const/high16 v0, 0x3ff00000    # 1.875f

    return v0
.end method

.method private getWeatherScreenView()Lcom/miui/weather2/view/WeatherScreenView;
    .locals 2

    const v0, 0x7f0f0047

    invoke-virtual {p0, v0}, Lcom/miui/weather2/view/RefreshableView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/view/WeatherScreenView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/weather2/view/WeatherScreenView;->getCurrentScreen()Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :cond_1
    return-object v0
.end method

.method private getWeatherScrollView()Lcom/miui/weather2/view/WeatherScrollView;
    .locals 2

    invoke-direct {p0}, Lcom/miui/weather2/view/RefreshableView;->getWeatherScreenView()Lcom/miui/weather2/view/WeatherScreenView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/weather2/view/WeatherScreenView;->getCurrentScreen()Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {v0}, Lcom/miui/weather2/view/WeatherScreenView;->getCurrentScreen()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0f012d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/view/WeatherScrollView;

    goto :goto_0
.end method

.method private h()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/weather2/view/RefreshableView;->u:Z

    iput-boolean v0, p0, Lcom/miui/weather2/view/RefreshableView;->v:Z

    iput-boolean v0, p0, Lcom/miui/weather2/view/RefreshableView;->w:Z

    iput-boolean v0, p0, Lcom/miui/weather2/view/RefreshableView;->y:Z

    iput-boolean v0, p0, Lcom/miui/weather2/view/RefreshableView;->x:Z

    return-void
.end method

.method static synthetic h(Lcom/miui/weather2/view/RefreshableView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/weather2/view/RefreshableView;->w:Z

    return v0
.end method

.method private i()V
    .locals 3

    invoke-direct {p0}, Lcom/miui/weather2/view/RefreshableView;->h()V

    iget-object v0, p0, Lcom/miui/weather2/view/RefreshableView;->l:Lcom/miui/weather2/view/RefreshableView$a;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "Wth2:RefreshableView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fling() mToStartRefresh="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/miui/weather2/view/RefreshableView;->r:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/weather2/tools/ae;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/miui/weather2/view/RefreshableView;->r:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/miui/weather2/view/RefreshableView;->j()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/miui/weather2/view/RefreshableView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/weather2/tools/bi;->v(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/miui/weather2/view/RefreshableView;->a(ILandroid/animation/AnimatorListenerAdapter;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/miui/weather2/view/RefreshableView;->l:Lcom/miui/weather2/view/RefreshableView$a;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/miui/weather2/view/RefreshableView$a;->b(I)V

    goto :goto_0
.end method

.method static synthetic i(Lcom/miui/weather2/view/RefreshableView;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/weather2/view/RefreshableView;->s()V

    return-void
.end method

.method private j()V
    .locals 4

    iget-object v0, p0, Lcom/miui/weather2/view/RefreshableView;->l:Lcom/miui/weather2/view/RefreshableView$a;

    const/16 v1, 0x12c

    invoke-interface {v0, v1}, Lcom/miui/weather2/view/RefreshableView$a;->d(I)V

    iget-object v0, p0, Lcom/miui/weather2/view/RefreshableView;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lmiui/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v1}, Lmiui/view/animation/CubicEaseOutInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/miui/weather2/view/RefreshableView;->i:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/weather2/view/RefreshableView;->A:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method static synthetic j(Lcom/miui/weather2/view/RefreshableView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/weather2/view/RefreshableView;->x:Z

    return v0
.end method

.method static synthetic k(Lcom/miui/weather2/view/RefreshableView;)F
    .locals 1

    iget v0, p0, Lcom/miui/weather2/view/RefreshableView;->q:F

    return v0
.end method

.method private k()V
    .locals 14

    const v10, 0x3f666666    # 0.9f

    const/high16 v9, 0x3f000000    # 0.5f

    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v1, 0x1

    const-string v0, "Wth2:RefreshableView"

    const-string v3, "startHorizontalFlingRefreshViewInAnim()"

    invoke-static {v0, v3}, Lcom/miui/weather2/tools/ae;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/weather2/view/RefreshableView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0a01a1

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iget-object v3, p0, Lcom/miui/weather2/view/RefreshableView;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    iget-object v0, p0, Lcom/miui/weather2/view/RefreshableView;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setAlpha(F)V

    new-instance v12, Landroid/view/animation/AnimationSet;

    invoke-direct {v12, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    const-wide/16 v4, 0x12c

    invoke-virtual {v12, v4, v5}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    new-instance v0, Lmiui/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v0}, Lmiui/view/animation/CubicEaseOutInterpolator;-><init>()V

    invoke-virtual {v12, v0}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v0, Lcom/miui/weather2/view/z;

    invoke-direct {v0, p0}, Lcom/miui/weather2/view/z;-><init>(Lcom/miui/weather2/view/RefreshableView;)V

    invoke-virtual {v12, v0}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v5, 0x0

    const/high16 v6, -0x3ee00000    # -10.0f

    move v3, v1

    move v4, v2

    move v7, v1

    move v8, v2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    invoke-virtual {v12, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    new-instance v3, Landroid/view/animation/ScaleAnimation;

    move v4, v10

    move v5, v13

    move v6, v10

    move v7, v13

    move v8, v1

    move v10, v1

    move v11, v9

    invoke-direct/range {v3 .. v11}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    invoke-virtual {v12, v3}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v2, v13}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {v12, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/miui/weather2/view/RefreshableView;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v12}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private l()V
    .locals 12

    const v2, 0x3f666666    # 0.9f

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v5, 0x1

    const/high16 v1, 0x3f800000    # 1.0f

    const-string v0, "Wth2:RefreshableView"

    const-string v3, "startHorizontalFlingRefreshViewOutAnim()"

    invoke-static {v0, v3}, Lcom/miui/weather2/tools/ae;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v9, Landroid/view/animation/AnimationSet;

    invoke-direct {v9, v5}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    const-wide/16 v10, 0x12c

    invoke-virtual {v9, v10, v11}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    new-instance v0, Lmiui/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v0}, Lmiui/view/animation/CubicEaseOutInterpolator;-><init>()V

    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v0, Lcom/miui/weather2/view/aa;

    invoke-direct {v0, p0}, Lcom/miui/weather2/view/aa;-><init>(Lcom/miui/weather2/view/RefreshableView;)V

    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v3, v1

    move v4, v2

    move v7, v5

    move v8, v6

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/miui/weather2/view/RefreshableView;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method static synthetic l(Lcom/miui/weather2/view/RefreshableView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/weather2/view/RefreshableView;->y:Z

    return v0
.end method

.method static synthetic m(Lcom/miui/weather2/view/RefreshableView;)Landroid/animation/AnimatorListenerAdapter;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/view/RefreshableView;->A:Landroid/animation/AnimatorListenerAdapter;

    return-object v0
.end method

.method private m()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/weather2/view/RefreshableView;->n()V

    return-void
.end method

.method private n()V
    .locals 4

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    new-instance v1, Lmiui/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v1}, Lmiui/view/animation/CubicEaseOutInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v1, Lcom/miui/weather2/view/ab;

    invoke-direct {v1, p0}, Lcom/miui/weather2/view/ab;-><init>(Lcom/miui/weather2/view/RefreshableView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v1, p0, Lcom/miui/weather2/view/RefreshableView;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method static synthetic n(Lcom/miui/weather2/view/RefreshableView;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/weather2/view/RefreshableView;->o()V

    return-void
.end method

.method static synthetic o(Lcom/miui/weather2/view/RefreshableView;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/view/RefreshableView;->g:Landroid/widget/TextView;

    return-object v0
.end method

.method private o()V
    .locals 4

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    new-instance v1, Lmiui/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v1}, Lmiui/view/animation/CubicEaseOutInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v1, Lcom/miui/weather2/view/ac;

    invoke-direct {v1, p0}, Lcom/miui/weather2/view/ac;-><init>(Lcom/miui/weather2/view/RefreshableView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v1, p0, Lcom/miui/weather2/view/RefreshableView;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method static synthetic p(Lcom/miui/weather2/view/RefreshableView;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/view/RefreshableView;->f:Landroid/widget/ImageView;

    return-object v0
.end method

.method private p()V
    .locals 10

    const-wide/16 v8, 0x3e8

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/miui/weather2/view/RefreshableView;->f:Landroid/widget/ImageView;

    const-string v1, "translationX"

    new-array v2, v6, [F

    const/high16 v3, 0x40a00000    # 5.0f

    aput v3, v2, v5

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v1, Lmiui/view/animation/SineEaseInOutInterpolator;

    invoke-direct {v1}, Lmiui/view/animation/SineEaseInOutInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v1, p0, Lcom/miui/weather2/view/RefreshableView;->f:Landroid/widget/ImageView;

    const-string v2, "translationX"

    new-array v3, v6, [F

    const/high16 v4, -0x3f600000    # -5.0f

    aput v4, v3, v5

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v1, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v2, Lmiui/view/animation/SineEaseInOutInterpolator;

    invoke-direct {v2}, Lmiui/view/animation/SineEaseInOutInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lcom/miui/weather2/view/RefreshableView;->B:Landroid/animation/AnimatorSet;

    iget-object v2, p0, Lcom/miui/weather2/view/RefreshableView;->B:Landroid/animation/AnimatorSet;

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/animation/Animator;

    aput-object v0, v3, v5

    aput-object v1, v3, v6

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/miui/weather2/view/RefreshableView;->B:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/miui/weather2/view/q;

    invoke-direct {v1, p0}, Lcom/miui/weather2/view/q;-><init>(Lcom/miui/weather2/view/RefreshableView;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/miui/weather2/view/RefreshableView;->B:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method static synthetic q(Lcom/miui/weather2/view/RefreshableView;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/view/RefreshableView;->h:Landroid/widget/TextView;

    return-object v0
.end method

.method private q()V
    .locals 4

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    new-instance v1, Lmiui/view/animation/SineEaseOutInterpolator;

    invoke-direct {v1}, Lmiui/view/animation/SineEaseOutInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v1, Lcom/miui/weather2/view/r;

    invoke-direct {v1, p0}, Lcom/miui/weather2/view/r;-><init>(Lcom/miui/weather2/view/RefreshableView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v1, p0, Lcom/miui/weather2/view/RefreshableView;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private r()V
    .locals 7

    const/4 v6, 0x2

    const/high16 v1, 0x42040000    # 33.0f

    iget-object v0, p0, Lcom/miui/weather2/view/RefreshableView;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTranslationY(F)V

    iget-object v0, p0, Lcom/miui/weather2/view/RefreshableView;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTranslationY(F)V

    iget-object v0, p0, Lcom/miui/weather2/view/RefreshableView;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTranslationY(F)V

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v1, v6, [F

    fill-array-data v1, :array_0

    iget-object v2, p0, Lcom/miui/weather2/view/RefreshableView;->f:Landroid/widget/ImageView;

    const-string v3, "translationY"

    invoke-static {v2, v3, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-wide/16 v4, 0x12c

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v3, Lmiui/view/animation/BackEaseOutInterpolator;

    invoke-direct {v3}, Lmiui/view/animation/BackEaseOutInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v3, p0, Lcom/miui/weather2/view/RefreshableView;->g:Landroid/widget/TextView;

    const-string v4, "translationY"

    invoke-static {v3, v4, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    const-wide/16 v4, 0x190

    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v4, Lmiui/view/animation/BackEaseOutInterpolator;

    invoke-direct {v4}, Lmiui/view/animation/BackEaseOutInterpolator;-><init>()V

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v4, p0, Lcom/miui/weather2/view/RefreshableView;->h:Landroid/widget/TextView;

    const-string v5, "translationY"

    invoke-static {v4, v5, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-wide/16 v4, 0x1f4

    invoke-virtual {v1, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v4, Lmiui/view/animation/BackEaseOutInterpolator;

    invoke-direct {v4}, Lmiui/view/animation/BackEaseOutInterpolator;-><init>()V

    invoke-virtual {v1, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/4 v4, 0x3

    new-array v4, v4, [Landroid/animation/Animator;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const/4 v2, 0x1

    aput-object v3, v4, v2

    aput-object v1, v4, v6

    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-instance v1, Lcom/miui/weather2/view/s;

    invoke-direct {v1, p0}, Lcom/miui/weather2/view/s;-><init>(Lcom/miui/weather2/view/RefreshableView;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x42040000    # 33.0f
        0x0
    .end array-data
.end method

.method static synthetic r(Lcom/miui/weather2/view/RefreshableView;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/weather2/view/RefreshableView;->p()V

    return-void
.end method

.method private s()V
    .locals 6

    iget-object v0, p0, Lcom/miui/weather2/view/RefreshableView;->b:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/miui/weather2/view/RefreshableView;->b:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v0, p0, Lcom/miui/weather2/view/RefreshableView;->b:Landroid/widget/ImageView;

    const/high16 v1, 0x7f040000

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/miui/weather2/view/RefreshableView;->b:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/AnimationDrawable;->setOneShot(Z)V

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    iget-object v1, p0, Lcom/miui/weather2/view/RefreshableView;->c:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/weather2/view/RefreshableView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0900ba

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1e

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/miui/weather2/view/u;

    invoke-direct {v2, p0}, Lcom/miui/weather2/view/u;-><init>(Lcom/miui/weather2/view/RefreshableView;)V

    int-to-long v4, v0

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method static synthetic s(Lcom/miui/weather2/view/RefreshableView;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/weather2/view/RefreshableView;->q()V

    return-void
.end method

.method static synthetic t(Lcom/miui/weather2/view/RefreshableView;)Lcom/miui/weather2/view/RefreshableView$a;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/view/RefreshableView;->l:Lcom/miui/weather2/view/RefreshableView$a;

    return-object v0
.end method

.method private t()Z
    .locals 1

    invoke-direct {p0}, Lcom/miui/weather2/view/RefreshableView;->getWeatherScrollView()Lcom/miui/weather2/view/WeatherScrollView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/weather2/view/WeatherScrollView;->getScrollY()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic u(Lcom/miui/weather2/view/RefreshableView;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/weather2/view/RefreshableView;->r()V

    return-void
.end method

.method static synthetic v(Lcom/miui/weather2/view/RefreshableView;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/view/RefreshableView;->c:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic w(Lcom/miui/weather2/view/RefreshableView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/weather2/view/RefreshableView;->z:Z

    return v0
.end method

.method static synthetic x(Lcom/miui/weather2/view/RefreshableView;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/weather2/view/RefreshableView;->l()V

    return-void
.end method

.method static synthetic y(Lcom/miui/weather2/view/RefreshableView;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/weather2/view/RefreshableView;->j()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    invoke-virtual {p0}, Lcom/miui/weather2/view/RefreshableView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method public a(I)V
    .locals 2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/miui/weather2/view/RefreshableView;->l:Lcom/miui/weather2/view/RefreshableView$a;

    const/16 v1, 0x12c

    invoke-interface {v0, v1}, Lcom/miui/weather2/view/RefreshableView$a;->c(I)V

    invoke-virtual {p0}, Lcom/miui/weather2/view/RefreshableView;->c()V

    :cond_0
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/weather2/view/RefreshableView;->setCanPull(Z)V

    return-void

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/weather2/view/RefreshableView;->b()V

    invoke-virtual {p0}, Lcom/miui/weather2/view/RefreshableView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a01a1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/miui/weather2/view/RefreshableView;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    invoke-virtual {p0}, Lcom/miui/weather2/view/RefreshableView;->c()V

    goto :goto_0
.end method

.method public a(ILandroid/animation/AnimatorListenerAdapter;)V
    .locals 4

    const/4 v3, 0x1

    const-string v0, "Wth2:RefreshableView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "returnInitState() reqCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/weather2/tools/ae;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/weather2/view/RefreshableView;->t:Z

    iput-object p2, p0, Lcom/miui/weather2/view/RefreshableView;->A:Landroid/animation/AnimatorListenerAdapter;

    if-ne p1, v3, :cond_1

    iput-boolean v3, p0, Lcom/miui/weather2/view/RefreshableView;->u:Z

    :cond_0
    :goto_0
    invoke-virtual {p0, v3}, Lcom/miui/weather2/view/RefreshableView;->setCanPull(Z)V

    return-void

    :cond_1
    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/miui/weather2/view/RefreshableView;->c:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/weather2/view/RefreshableView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090014

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/weather2/view/RefreshableView;->b:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    invoke-direct {p0}, Lcom/miui/weather2/view/RefreshableView;->j()V

    goto :goto_0

    :cond_3
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    iput-boolean v3, p0, Lcom/miui/weather2/view/RefreshableView;->u:Z

    goto :goto_0
.end method

.method public a(Landroid/widget/LinearLayout;)V
    .locals 2

    iput-object p1, p0, Lcom/miui/weather2/view/RefreshableView;->a:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/miui/weather2/view/RefreshableView;->a:Landroid/widget/LinearLayout;

    const v1, 0x7f0f017a

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/weather2/view/RefreshableView;->b:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/miui/weather2/view/RefreshableView;->a:Landroid/widget/LinearLayout;

    const v1, 0x7f0f017b

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/weather2/view/RefreshableView;->c:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/weather2/view/RefreshableView;->a:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/miui/weather2/view/p;

    invoke-direct {v1, p0}, Lcom/miui/weather2/view/p;-><init>(Lcom/miui/weather2/view/RefreshableView;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {p0}, Lcom/miui/weather2/view/RefreshableView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a023f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/weather2/view/RefreshableView;->k:I

    invoke-virtual {p0}, Lcom/miui/weather2/view/RefreshableView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a023a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/weather2/view/RefreshableView;->j:I

    const v0, 0x7f0f0048

    invoke-virtual {p0, v0}, Lcom/miui/weather2/view/RefreshableView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/miui/weather2/view/RefreshableView;->d:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/miui/weather2/view/RefreshableView;->d:Landroid/widget/LinearLayout;

    const v1, 0x7f0f0056

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/miui/weather2/view/RefreshableView;->e:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/miui/weather2/view/RefreshableView;->d:Landroid/widget/LinearLayout;

    const v1, 0x7f0f0057

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/weather2/view/RefreshableView;->f:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/miui/weather2/view/RefreshableView;->d:Landroid/widget/LinearLayout;

    const v1, 0x7f0f0058

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/weather2/view/RefreshableView;->g:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/weather2/view/RefreshableView;->d:Landroid/widget/LinearLayout;

    const v1, 0x7f0f0059

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/weather2/view/RefreshableView;->h:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/miui/weather2/view/RefreshableView;->getStartShapeAnimTranX()F

    move-result v0

    iput v0, p0, Lcom/miui/weather2/view/RefreshableView;->q:F

    const/high16 v0, -0x40800000    # -1.0f

    iget v1, p0, Lcom/miui/weather2/view/RefreshableView;->q:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/miui/weather2/view/RefreshableView;->p:F

    return-void
.end method

.method public b()V
    .locals 3

    iget-object v0, p0, Lcom/miui/weather2/view/RefreshableView;->a:Landroid/widget/LinearLayout;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    iget-object v0, p0, Lcom/miui/weather2/view/RefreshableView;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v0, p0, Lcom/miui/weather2/view/RefreshableView;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    invoke-virtual {p0}, Lcom/miui/weather2/view/RefreshableView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/weather2/tools/bi;->e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/view/RefreshableView;->c:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/weather2/view/RefreshableView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900f8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v0, p0, Lcom/miui/weather2/view/RefreshableView;->b:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v0, p0, Lcom/miui/weather2/view/RefreshableView;->b:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTranslationX(F)V

    iget-object v0, p0, Lcom/miui/weather2/view/RefreshableView;->b:Landroid/widget/ImageView;

    const v1, 0x7f020164

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/weather2/view/RefreshableView;->c:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/weather2/view/RefreshableView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090014

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public c()V
    .locals 6

    const-wide/16 v4, 0x3e8

    const/4 v1, 0x3

    new-array v0, v1, [F

    fill-array-data v0, :array_0

    new-array v1, v1, [F

    fill-array-data v1, :array_1

    iget-object v2, p0, Lcom/miui/weather2/view/RefreshableView;->b:Landroid/widget/ImageView;

    const-string v3, "translationX"

    invoke-static {v2, v3, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v2, Lmiui/view/animation/SineEaseInOutInterpolator;

    invoke-direct {v2}, Lmiui/view/animation/SineEaseInOutInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v2, p0, Lcom/miui/weather2/view/RefreshableView;->b:Landroid/widget/ImageView;

    const-string v3, "translationX"

    invoke-static {v2, v3, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v2, Lmiui/view/animation/SineEaseInOutInterpolator;

    invoke-direct {v2}, Lmiui/view/animation/SineEaseInOutInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v2, Lcom/miui/weather2/view/v;

    invoke-direct {v2, p0, v1}, Lcom/miui/weather2/view/v;-><init>(Lcom/miui/weather2/view/RefreshableView;Landroid/animation/ObjectAnimator;)V

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v2, Lcom/miui/weather2/view/w;

    invoke-direct {v2, p0}, Lcom/miui/weather2/view/w;-><init>(Lcom/miui/weather2/view/RefreshableView;)V

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v2, Lcom/miui/weather2/view/x;

    invoke-direct {v2, p0, v0}, Lcom/miui/weather2/view/x;-><init>(Lcom/miui/weather2/view/RefreshableView;Landroid/animation/ObjectAnimator;)V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v2, Lcom/miui/weather2/view/y;

    invoke-direct {v2, p0}, Lcom/miui/weather2/view/y;-><init>(Lcom/miui/weather2/view/RefreshableView;)V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v1, p0, Lcom/miui/weather2/view/RefreshableView;->c:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/weather2/view/RefreshableView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0900bb

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        -0x3f600000    # -5.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x40a00000    # 5.0f
        0x0
    .end array-data
.end method

.method public d()V
    .locals 2

    invoke-virtual {p0}, Lcom/miui/weather2/view/RefreshableView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/weather2/tools/bi;->e(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/miui/weather2/view/RefreshableView;->t()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/weather2/view/RefreshableView;->z:Z

    iget-object v0, p0, Lcom/miui/weather2/view/RefreshableView;->b:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v0, p0, Lcom/miui/weather2/view/RefreshableView;->b:Landroid/widget/ImageView;

    const v1, 0x7f020164

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/miui/weather2/view/RefreshableView;->b:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTranslationX(F)V

    iget-object v0, p0, Lcom/miui/weather2/view/RefreshableView;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v0, p0, Lcom/miui/weather2/view/RefreshableView;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    invoke-direct {p0}, Lcom/miui/weather2/view/RefreshableView;->k()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/miui/weather2/view/RefreshableView;->m()V

    goto :goto_0
.end method

.method public e()V
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iget-object v1, p0, Lcom/miui/weather2/view/RefreshableView;->b:Landroid/widget/ImageView;

    const-string v2, "translationX"

    invoke-static {v1, v2, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v1, Lmiui/view/animation/SineEaseInOutInterpolator;

    invoke-direct {v1}, Lmiui/view/animation/SineEaseInOutInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v1, Lcom/miui/weather2/view/t;

    invoke-direct {v1, p0}, Lcom/miui/weather2/view/t;-><init>(Lcom/miui/weather2/view/RefreshableView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        -0x3f600000    # -5.0f
        0x0
    .end array-data
.end method

.method public f()V
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/view/RefreshableView;->a:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/view/RefreshableView;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/miui/weather2/view/RefreshableView;->b:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/weather2/view/RefreshableView;->b:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    :cond_1
    iget-object v0, p0, Lcom/miui/weather2/view/RefreshableView;->c:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/weather2/view/RefreshableView;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    :cond_2
    return-void
.end method

.method public g()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/weather2/view/RefreshableView;->t:Z

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v0, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    const/4 v0, 0x0

    :cond_1
    :goto_1
    return v0

    :pswitch_1
    iput v2, p0, Lcom/miui/weather2/view/RefreshableView;->m:F

    iput v3, p0, Lcom/miui/weather2/view/RefreshableView;->n:F

    goto :goto_0

    :pswitch_2
    iget v1, p0, Lcom/miui/weather2/view/RefreshableView;->m:F

    sub-float v1, v2, v1

    iget v2, p0, Lcom/miui/weather2/view/RefreshableView;->n:F

    sub-float v2, v3, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v3, 0x3fc00000    # 1.5f

    mul-float/2addr v2, v3

    cmpg-float v2, v2, v1

    if-gez v2, :cond_2

    invoke-direct {p0}, Lcom/miui/weather2/view/RefreshableView;->t()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/miui/weather2/view/RefreshableView;->s:Z

    if-nez v2, :cond_1

    :cond_2
    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    invoke-direct {p0}, Lcom/miui/weather2/view/RefreshableView;->t()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/weather2/view/RefreshableView;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getTranslationY()F

    move-result v1

    iget v2, p0, Lcom/miui/weather2/view/RefreshableView;->i:I

    neg-int v2, v2

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :goto_0
    const/4 v0, 0x1

    return v0

    :pswitch_0
    iput v0, p0, Lcom/miui/weather2/view/RefreshableView;->m:F

    goto :goto_0

    :pswitch_1
    iget v1, p0, Lcom/miui/weather2/view/RefreshableView;->m:F

    sub-float v1, v0, v1

    invoke-direct {p0}, Lcom/miui/weather2/view/RefreshableView;->t()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v1}, Lcom/miui/weather2/view/RefreshableView;->a(F)V

    :cond_0
    iget-object v2, p0, Lcom/miui/weather2/view/RefreshableView;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getTranslationY()F

    move-result v2

    iget v3, p0, Lcom/miui/weather2/view/RefreshableView;->i:I

    neg-int v3, v3

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_1

    invoke-direct {p0}, Lcom/miui/weather2/view/RefreshableView;->getWeatherScrollView()Lcom/miui/weather2/view/WeatherScrollView;

    move-result-object v2

    const/4 v3, 0x0

    neg-float v1, v1

    float-to-int v1, v1

    invoke-virtual {v2, v3, v1}, Lcom/miui/weather2/view/WeatherScrollView;->scrollBy(II)V

    :cond_1
    iput v0, p0, Lcom/miui/weather2/view/RefreshableView;->m:F

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/miui/weather2/view/RefreshableView;->i()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setCanPull(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/weather2/view/RefreshableView;->s:Z

    return-void
.end method

.method public setIsRefreshing(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/weather2/view/RefreshableView;->t:Z

    return-void
.end method

.method public setRefreshListener(Lcom/miui/weather2/view/RefreshableView$a;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/view/RefreshableView;->l:Lcom/miui/weather2/view/RefreshableView$a;

    return-void
.end method
