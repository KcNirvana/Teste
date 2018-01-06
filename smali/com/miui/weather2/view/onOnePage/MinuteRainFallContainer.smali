.class public Lcom/miui/weather2/view/onOnePage/MinuteRainFallContainer;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field protected a:I

.field protected b:Z

.field protected c:I

.field private d:Lcom/miui/weather2/structures/CityData;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/animation/ValueAnimator;

.field private g:Landroid/animation/AnimatorListenerAdapter;

.field private h:Landroid/animation/AnimatorListenerAdapter;

.field private i:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private j:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private k:Lcom/miui/weather2/view/onOnePage/MinuteRainIllustration;

.field private l:Lcom/miui/weather2/view/onOnePage/IllustrationBackground;

.field private m:Landroid/view/View;

.field private n:I

.field private o:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/weather2/view/onOnePage/MinuteRainFallContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/weather2/view/onOnePage/MinuteRainFallContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0}, Lcom/miui/weather2/view/onOnePage/MinuteRainFallContainer;->b()V

    invoke-direct {p0}, Lcom/miui/weather2/view/onOnePage/MinuteRainFallContainer;->c()V

    invoke-virtual {p0, p0}, Lcom/miui/weather2/view/onOnePage/MinuteRainFallContainer;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/high16 v0, -0x40800000    # -1.0f

    invoke-static {p0, v0}, Lcom/miui/weather2/h/a;->a(Landroid/view/View;F)V

    return-void
.end method

.method static synthetic a(Lcom/miui/weather2/view/onOnePage/MinuteRainFallContainer;)I
    .locals 1

    iget v0, p0, Lcom/miui/weather2/view/onOnePage/MinuteRainFallContainer;->n:I

    return v0
.end method

.method static synthetic b(Lcom/miui/weather2/view/onOnePage/MinuteRainFallContainer;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/MinuteRainFallContainer;->m:Landroid/view/View;

    return-object v0
.end method

.method private b()V
    .locals 2

    invoke-virtual {p0}, Lcom/miui/weather2/view/onOnePage/MinuteRainFallContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0093

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/weather2/view/onOnePage/MinuteRainFallContainer;->n:I

    invoke-virtual {p0}, Lcom/miui/weather2/view/onOnePage/MinuteRainFallContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0210

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/weather2/view/onOnePage/MinuteRainFallContainer;->o:I

    return-void
.end method

.method private c()V
    .locals 4

    new-instance v0, Lcom/miui/weather2/view/onOnePage/s;

    invoke-direct {v0, p0}, Lcom/miui/weather2/view/onOnePage/s;-><init>(Lcom/miui/weather2/view/onOnePage/MinuteRainFallContainer;)V

    iput-object v0, p0, Lcom/miui/weather2/view/onOnePage/MinuteRainFallContainer;->i:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    new-instance v0, Lcom/miui/weather2/view/onOnePage/t;

    invoke-direct {v0, p0}, Lcom/miui/weather2/view/onOnePage/t;-><init>(Lcom/miui/weather2/view/onOnePage/MinuteRainFallContainer;)V

    iput-object v0, p0, Lcom/miui/weather2/view/onOnePage/MinuteRainFallContainer;->j:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    new-instance v0, Lcom/miui/weather2/view/onOnePage/u;

    invoke-direct {v0, p0}, Lcom/miui/weather2/view/onOnePage/u;-><init>(Lcom/miui/weather2/view/onOnePage/MinuteRainFallContainer;)V

    iput-object v0, p0, Lcom/miui/weather2/view/onOnePage/MinuteRainFallContainer;->g:Landroid/animation/AnimatorListenerAdapter;

    new-instance v0, Lcom/miui/weather2/view/onOnePage/v;

    invoke-direct {v0, p0}, Lcom/miui/weather2/view/onOnePage/v;-><init>(Lcom/miui/weather2/view/onOnePage/MinuteRainFallContainer;)V

    iput-object v0, p0, Lcom/miui/weather2/view/onOnePage/MinuteRainFallContainer;->h:Landroid/animation/AnimatorListenerAdapter;

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/weather2/view/onOnePage/MinuteRainFallContainer;->f:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/MinuteRainFallContainer;->f:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/MinuteRainFallContainer;->f:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic c(Lcom/miui/weather2/view/onOnePage/MinuteRainFallContainer;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/weather2/view/onOnePage/MinuteRainFallContainer;->g()V

    return-void
.end method

.method private d()V
    .locals 4

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/MinuteRainFallContainer;->f:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/miui/weather2/view/onOnePage/MinuteRainFallContainer;->f()V

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/MinuteRainFallContainer;->f:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/miui/weather2/view/onOnePage/MinuteRainFallContainer;->g:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/MinuteRainFallContainer;->f:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/miui/weather2/view/onOnePage/MinuteRainFallContainer;->i:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/MinuteRainFallContainer;->f:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/MinuteRainFallContainer;->f:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_0
    return-void
.end method

.method static synthetic d(Lcom/miui/weather2/view/onOnePage/MinuteRainFallContainer;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/weather2/view/onOnePage/MinuteRainFallContainer;->h()V

    return-void
.end method

.method private e()V
    .locals 4

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/MinuteRainFallContainer;->f:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/miui/weather2/view/onOnePage/MinuteRainFallContainer;->f()V

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/MinuteRainFallContainer;->f:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/miui/weather2/view/onOnePage/MinuteRainFallContainer;->h:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/MinuteRainFallContainer;->f:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/miui/weather2/view/onOnePage/MinuteRainFallContainer;->j:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/MinuteRainFallContainer;->f:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/MinuteRainFallContainer;->f:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_0
    return-void
.end method

.method private f()V
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/MinuteRainFallContainer;->f:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/MinuteRainFallContainer;->f:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    return-void
.end method

.method private g()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/MinuteRainFallContainer;->m:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    iget-object v1, p0, Lcom/miui/weather2/view/onOnePage/MinuteRainFallContainer;->m:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/miui/weather2/view/onOnePage/MinuteRainFallContainer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v1, p0, Lcom/miui/weather2/view/onOnePage/MinuteRainFallContainer;->o:I

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {p0, v0}, Lcom/miui/weather2/view/onOnePage/MinuteRainFallContainer;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private h()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/MinuteRainFallContainer;->k:Lcom/miui/weather2/view/onOnePage/MinuteRainIllustration;

    invoke-virtual {v0}, Lcom/miui/weather2/view/onOnePage/MinuteRainIllustration;->a()V

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/MinuteRainFallContainer;->m:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v1, p0, Lcom/miui/weather2/view/onOnePage/MinuteRainFallContainer;->o:I

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    iget-object v1, p0, Lcom/miui/weather2/view/onOnePage/MinuteRainFallContainer;->m:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/miui/weather2/view/onOnePage/MinuteRainFallContainer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {p0, v0}, Lcom/miui/weather2/view/onOnePage/MinuteRainFallContainer;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private setSubViewData(Lcom/miui/weather2/structures/MinuteRainData;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/MinuteRainFallContainer;->e:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/miui/weather2/structures/MinuteRainData;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/MinuteRainFallContainer;->k:Lcom/miui/weather2/view/onOnePage/MinuteRainIllustration;

    invoke-virtual {v0, p1}, Lcom/miui/weather2/view/onOnePage/MinuteRainIllustration;->setMinuteRainData(Lcom/miui/weather2/structures/MinuteRainData;)V

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/MinuteRainFallContainer;->l:Lcom/miui/weather2/view/onOnePage/IllustrationBackground;

    invoke-virtual {p1}, Lcom/miui/weather2/structures/MinuteRainData;->getRoughWeatherType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/weather2/view/onOnePage/IllustrationBackground;->setWeatherType(I)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/MinuteRainFallContainer;->k:Lcom/miui/weather2/view/onOnePage/MinuteRainIllustration;

    invoke-virtual {v0}, Lcom/miui/weather2/view/onOnePage/MinuteRainIllustration;->b()V

    return-void
.end method

.method public a(Lcom/miui/weather2/structures/CityData;Landroid/view/View;)V
    .locals 4

    const/16 v3, 0x8

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/miui/weather2/view/onOnePage/MinuteRainFallContainer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/weather2/tools/bi;->Y(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-object p1, p0, Lcom/miui/weather2/view/onOnePage/MinuteRainFallContainer;->d:Lcom/miui/weather2/structures/CityData;

    iput-object p2, p0, Lcom/miui/weather2/view/onOnePage/MinuteRainFallContainer;->m:Landroid/view/View;

    invoke-virtual {p1}, Lcom/miui/weather2/structures/CityData;->getWeatherData()Lcom/miui/weather2/structures/WeatherData;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_4

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/miui/weather2/structures/WeatherData;->getMinuteRainData()Lcom/miui/weather2/structures/MinuteRainData;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/miui/weather2/structures/WeatherData;->getMinuteRainData()Lcom/miui/weather2/structures/MinuteRainData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/weather2/structures/MinuteRainData;->isShow()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0, v0}, Lcom/miui/weather2/view/onOnePage/MinuteRainFallContainer;->setSubViewData(Lcom/miui/weather2/structures/MinuteRainData;)V

    invoke-virtual {p0}, Lcom/miui/weather2/view/onOnePage/MinuteRainFallContainer;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/miui/weather2/view/onOnePage/MinuteRainFallContainer;->d()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/miui/weather2/view/onOnePage/MinuteRainFallContainer;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/miui/weather2/view/onOnePage/MinuteRainFallContainer;->e()V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/miui/weather2/view/onOnePage/MinuteRainFallContainer;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/miui/weather2/view/onOnePage/MinuteRainFallContainer;->e()V

    goto :goto_0

    :cond_4
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/miui/weather2/structures/WeatherData;->getMinuteRainData()Lcom/miui/weather2/structures/MinuteRainData;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lcom/miui/weather2/structures/WeatherData;->getMinuteRainData()Lcom/miui/weather2/structures/MinuteRainData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/weather2/structures/MinuteRainData;->isShow()Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/miui/weather2/view/onOnePage/MinuteRainFallContainer;->setVisibility(I)V

    invoke-direct {p0}, Lcom/miui/weather2/view/onOnePage/MinuteRainFallContainer;->g()V

    invoke-direct {p0, v0}, Lcom/miui/weather2/view/onOnePage/MinuteRainFallContainer;->setSubViewData(Lcom/miui/weather2/structures/MinuteRainData;)V

    goto :goto_0

    :cond_5
    invoke-virtual {p0, v3}, Lcom/miui/weather2/view/onOnePage/MinuteRainFallContainer;->setVisibility(I)V

    invoke-direct {p0}, Lcom/miui/weather2/view/onOnePage/MinuteRainFallContainer;->h()V

    goto :goto_0

    :cond_6
    invoke-virtual {p0}, Lcom/miui/weather2/view/onOnePage/MinuteRainFallContainer;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, v3}, Lcom/miui/weather2/view/onOnePage/MinuteRainFallContainer;->setVisibility(I)V

    invoke-direct {p0}, Lcom/miui/weather2/view/onOnePage/MinuteRainFallContainer;->h()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    const-string v0, "normal_click"

    const-string v1, "minute_rain_forecast"

    invoke-static {v0, v1}, Lcom/miui/weather2/tools/bi;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/weather2/view/onOnePage/MinuteRainFallContainer;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/weather2/view/onOnePage/MinuteRainFallContainer;->d:Lcom/miui/weather2/structures/CityData;

    iget v2, p0, Lcom/miui/weather2/view/onOnePage/MinuteRainFallContainer;->a:I

    iget-boolean v3, p0, Lcom/miui/weather2/view/onOnePage/MinuteRainFallContainer;->b:Z

    iget v4, p0, Lcom/miui/weather2/view/onOnePage/MinuteRainFallContainer;->c:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/miui/weather2/tools/bi;->b(Landroid/content/Context;Lcom/miui/weather2/structures/CityData;IZI)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    const v0, 0x7f0f0134

    invoke-virtual {p0, v0}, Lcom/miui/weather2/view/onOnePage/MinuteRainFallContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/weather2/view/onOnePage/MinuteRainFallContainer;->e:Landroid/widget/TextView;

    const v0, 0x7f0f0136

    invoke-virtual {p0, v0}, Lcom/miui/weather2/view/onOnePage/MinuteRainFallContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/view/onOnePage/IllustrationBackground;

    iput-object v0, p0, Lcom/miui/weather2/view/onOnePage/MinuteRainFallContainer;->l:Lcom/miui/weather2/view/onOnePage/IllustrationBackground;

    const v0, 0x7f0f0135

    invoke-virtual {p0, v0}, Lcom/miui/weather2/view/onOnePage/MinuteRainFallContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/view/onOnePage/MinuteRainIllustration;

    iput-object v0, p0, Lcom/miui/weather2/view/onOnePage/MinuteRainFallContainer;->k:Lcom/miui/weather2/view/onOnePage/MinuteRainIllustration;

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/MinuteRainFallContainer;->k:Lcom/miui/weather2/view/onOnePage/MinuteRainIllustration;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/weather2/view/onOnePage/MinuteRainIllustration;->setFirstPageViewFlag(Z)V

    return-void
.end method
