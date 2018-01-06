.class public Lcom/miui/weather2/view/RadarCloudImageProgressIndicator;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:J

.field private f:J

.field private g:Landroid/graphics/Paint;

.field private h:Landroid/graphics/Paint;

.field private i:I

.field private j:J

.field private k:Z

.field private l:Z

.field private m:Landroid/view/View;

.field private n:Landroid/animation/ValueAnimator;

.field private o:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private p:Lcom/miui/weather2/view/RadarCloudImageContainer;

.field private q:[Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/weather2/view/RadarCloudImageProgressIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/weather2/view/RadarCloudImageProgressIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-boolean v1, p0, Lcom/miui/weather2/view/RadarCloudImageProgressIndicator;->k:Z

    iput-boolean v1, p0, Lcom/miui/weather2/view/RadarCloudImageProgressIndicator;->l:Z

    const/4 v0, 0x5

    new-array v0, v0, [Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/weather2/view/RadarCloudImageProgressIndicator;->q:[Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Lcom/miui/weather2/view/RadarCloudImageProgressIndicator;->setWillNotDraw(Z)V

    invoke-direct {p0}, Lcom/miui/weather2/view/RadarCloudImageProgressIndicator;->d()V

    return-void
.end method

.method private a(F)F
    .locals 2

    const/high16 v0, 0x40000000    # 2.0f

    cmpg-float v1, p1, v0

    if-gez v1, :cond_1

    move p1, v0

    :cond_0
    :goto_0
    return p1

    :cond_1
    iget v0, p0, Lcom/miui/weather2/view/RadarCloudImageProgressIndicator;->a:I

    add-int/lit8 v0, v0, -0x2

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_2

    iget v0, p0, Lcom/miui/weather2/view/RadarCloudImageProgressIndicator;->a:I

    add-int/lit8 v0, v0, -0x6

    int-to-float p1, v0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/miui/weather2/view/RadarCloudImageProgressIndicator;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/weather2/tools/bi;->U(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    neg-float p1, p1

    goto :goto_0
.end method

.method static synthetic a(Lcom/miui/weather2/view/RadarCloudImageProgressIndicator;F)F
    .locals 1

    invoke-direct {p0, p1}, Lcom/miui/weather2/view/RadarCloudImageProgressIndicator;->a(F)F

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/miui/weather2/view/RadarCloudImageProgressIndicator;)I
    .locals 1

    iget v0, p0, Lcom/miui/weather2/view/RadarCloudImageProgressIndicator;->a:I

    return v0
.end method

.method static synthetic a(Lcom/miui/weather2/view/RadarCloudImageProgressIndicator;I)I
    .locals 0

    iput p1, p0, Lcom/miui/weather2/view/RadarCloudImageProgressIndicator;->i:I

    return p1
.end method

.method private a(I)Ljava/lang/String;
    .locals 6

    iget-wide v0, p0, Lcom/miui/weather2/view/RadarCloudImageProgressIndicator;->e:J

    iget-wide v2, p0, Lcom/miui/weather2/view/RadarCloudImageProgressIndicator;->f:J

    iget-wide v4, p0, Lcom/miui/weather2/view/RadarCloudImageProgressIndicator;->e:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0xa

    div-long/2addr v2, v4

    mul-int/lit8 v4, p1, 0x2

    add-int/lit8 v4, v4, 0x1

    int-to-long v4, v4

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Lcom/miui/weather2/tools/bi;->b(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private b(F)F
    .locals 2

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gez v1, :cond_1

    move p1, v0

    :cond_0
    :goto_0
    return p1

    :cond_1
    iget v0, p0, Lcom/miui/weather2/view/RadarCloudImageProgressIndicator;->a:I

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    iget v0, p0, Lcom/miui/weather2/view/RadarCloudImageProgressIndicator;->a:I

    int-to-float p1, v0

    goto :goto_0
.end method

.method static synthetic b(Lcom/miui/weather2/view/RadarCloudImageProgressIndicator;)I
    .locals 1

    iget v0, p0, Lcom/miui/weather2/view/RadarCloudImageProgressIndicator;->i:I

    return v0
.end method

.method static synthetic c(Lcom/miui/weather2/view/RadarCloudImageProgressIndicator;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/view/RadarCloudImageProgressIndicator;->m:Landroid/view/View;

    return-object v0
.end method

.method static synthetic d(Lcom/miui/weather2/view/RadarCloudImageProgressIndicator;)Lcom/miui/weather2/view/RadarCloudImageContainer;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/view/RadarCloudImageProgressIndicator;->p:Lcom/miui/weather2/view/RadarCloudImageContainer;

    return-object v0
.end method

.method private d()V
    .locals 5

    const v4, 0x7f0a00bf

    const/4 v3, 0x1

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/miui/weather2/view/RadarCloudImageProgressIndicator;->g:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/miui/weather2/view/RadarCloudImageProgressIndicator;->g:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/miui/weather2/view/RadarCloudImageProgressIndicator;->g:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/miui/weather2/view/RadarCloudImageProgressIndicator;->g:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v0, p0, Lcom/miui/weather2/view/RadarCloudImageProgressIndicator;->g:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/miui/weather2/view/RadarCloudImageProgressIndicator;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b00a2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/miui/weather2/view/RadarCloudImageProgressIndicator;->g:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/miui/weather2/view/RadarCloudImageProgressIndicator;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/miui/weather2/view/RadarCloudImageProgressIndicator;->h:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/miui/weather2/view/RadarCloudImageProgressIndicator;->h:Landroid/graphics/Paint;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/miui/weather2/view/RadarCloudImageProgressIndicator;->h:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/miui/weather2/view/RadarCloudImageProgressIndicator;->h:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/miui/weather2/view/RadarCloudImageProgressIndicator;->h:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v0, p0, Lcom/miui/weather2/view/RadarCloudImageProgressIndicator;->h:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/miui/weather2/view/RadarCloudImageProgressIndicator;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0091

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/miui/weather2/view/RadarCloudImageProgressIndicator;->h:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/miui/weather2/view/RadarCloudImageProgressIndicator;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/weather2/view/RadarCloudImageProgressIndicator;->n:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/miui/weather2/view/RadarCloudImageProgressIndicator;->n:Landroid/animation/ValueAnimator;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    iget-object v0, p0, Lcom/miui/weather2/view/RadarCloudImageProgressIndicator;->n:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/miui/weather2/view/RadarCloudImageProgressIndicator;->n:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/miui/weather2/view/o;

    invoke-direct {v0, p0}, Lcom/miui/weather2/view/o;-><init>(Lcom/miui/weather2/view/RadarCloudImageProgressIndicator;)V

    iput-object v0, p0, Lcom/miui/weather2/view/RadarCloudImageProgressIndicator;->o:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    iget-object v0, p0, Lcom/miui/weather2/view/RadarCloudImageProgressIndicator;->n:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/miui/weather2/view/RadarCloudImageProgressIndicator;->o:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/weather2/view/RadarCloudImageProgressIndicator;->l:Z

    iget-object v0, p0, Lcom/miui/weather2/view/RadarCloudImageProgressIndicator;->n:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/view/RadarCloudImageProgressIndicator;->n:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->resume()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/weather2/view/RadarCloudImageProgressIndicator;->n:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0
.end method

.method a(JJ)V
    .locals 3

    iput-wide p1, p0, Lcom/miui/weather2/view/RadarCloudImageProgressIndicator;->e:J

    iput-wide p3, p0, Lcom/miui/weather2/view/RadarCloudImageProgressIndicator;->f:J

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/miui/weather2/view/RadarCloudImageProgressIndicator;->q:[Landroid/widget/TextView;

    aget-object v1, v1, v0

    invoke-direct {p0, v0}, Lcom/miui/weather2/view/RadarCloudImageProgressIndicator;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(ZZ)V
    .locals 2

    iget-object v0, p0, Lcom/miui/weather2/view/RadarCloudImageProgressIndicator;->n:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/miui/weather2/view/RadarCloudImageProgressIndicator;->o:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/miui/weather2/view/RadarCloudImageProgressIndicator;->n:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/miui/weather2/view/RadarCloudImageProgressIndicator;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/weather2/tools/bi;->e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/view/RadarCloudImageProgressIndicator;->n:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_0
    return-void
.end method

.method b()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/weather2/view/RadarCloudImageProgressIndicator;->l:Z

    iget-object v0, p0, Lcom/miui/weather2/view/RadarCloudImageProgressIndicator;->n:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->pause()V

    return-void
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/view/RadarCloudImageProgressIndicator;->n:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/view/RadarCloudImageProgressIndicator;->n:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    iget-object v0, p0, Lcom/miui/weather2/view/RadarCloudImageProgressIndicator;->n:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    :cond_0
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    const/4 v2, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/view/RadarCloudImageProgressIndicator;->n:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/view/RadarCloudImageProgressIndicator;->n:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v2, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    :cond_1
    iget-boolean v0, p0, Lcom/miui/weather2/view/RadarCloudImageProgressIndicator;->l:Z

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/miui/weather2/view/RadarCloudImageProgressIndicator;->b(F)F

    move-result v0

    iget v1, p0, Lcom/miui/weather2/view/RadarCloudImageProgressIndicator;->a:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/miui/weather2/view/RadarCloudImageProgressIndicator;->n:Landroid/animation/ValueAnimator;

    const v2, 0x459c4000    # 5000.0f

    mul-float/2addr v0, v2

    float-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setCurrentPlayTime(J)V

    iget-object v0, p0, Lcom/miui/weather2/view/RadarCloudImageProgressIndicator;->n:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Lcom/miui/weather2/view/RadarCloudImageProgressIndicator;->d:I

    shr-int/lit8 v1, v1, 0x1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    iget v0, p0, Lcom/miui/weather2/view/RadarCloudImageProgressIndicator;->d:I

    shr-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/miui/weather2/view/RadarCloudImageProgressIndicator;->i:I

    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/miui/weather2/view/RadarCloudImageProgressIndicator;->b(F)F

    move-result v0

    iget v1, p0, Lcom/miui/weather2/view/RadarCloudImageProgressIndicator;->a:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/miui/weather2/view/RadarCloudImageProgressIndicator;->p:Lcom/miui/weather2/view/RadarCloudImageContainer;

    invoke-virtual {v1, v0}, Lcom/miui/weather2/view/RadarCloudImageContainer;->a(F)V

    iget-wide v2, p0, Lcom/miui/weather2/view/RadarCloudImageProgressIndicator;->e:J

    long-to-float v1, v2

    iget-wide v2, p0, Lcom/miui/weather2/view/RadarCloudImageProgressIndicator;->f:J

    iget-wide v4, p0, Lcom/miui/weather2/view/RadarCloudImageProgressIndicator;->e:J

    sub-long/2addr v2, v4

    long-to-float v2, v2

    mul-float/2addr v0, v2

    add-float/2addr v0, v1

    float-to-long v0, v0

    iput-wide v0, p0, Lcom/miui/weather2/view/RadarCloudImageProgressIndicator;->j:J

    invoke-virtual {p0}, Lcom/miui/weather2/view/RadarCloudImageProgressIndicator;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/weather2/tools/bi;->U(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/miui/weather2/view/RadarCloudImageProgressIndicator;->m:Landroid/view/View;

    iget v1, p0, Lcom/miui/weather2/view/RadarCloudImageProgressIndicator;->a:I

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-direct {p0, v1}, Lcom/miui/weather2/view/RadarCloudImageProgressIndicator;->a(F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    :goto_2
    invoke-virtual {p0}, Lcom/miui/weather2/view/RadarCloudImageProgressIndicator;->invalidate()V

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :pswitch_1
    iput-boolean v2, p0, Lcom/miui/weather2/view/RadarCloudImageProgressIndicator;->k:Z

    const-string v0, "minute_rain_detail"

    const-string v1, "timeline"

    invoke-static {v0, v1}, Lcom/miui/weather2/tools/bi;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/weather2/view/RadarCloudImageProgressIndicator;->k:Z

    goto/16 :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Lcom/miui/weather2/view/RadarCloudImageProgressIndicator;->a:I

    iget v2, p0, Lcom/miui/weather2/view/RadarCloudImageProgressIndicator;->d:I

    shr-int/lit8 v2, v2, 0x1

    sub-int/2addr v1, v2

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_4

    iget v0, p0, Lcom/miui/weather2/view/RadarCloudImageProgressIndicator;->a:I

    iget v1, p0, Lcom/miui/weather2/view/RadarCloudImageProgressIndicator;->d:I

    shr-int/lit8 v1, v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/miui/weather2/view/RadarCloudImageProgressIndicator;->i:I

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/miui/weather2/view/RadarCloudImageProgressIndicator;->i:I

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/miui/weather2/view/RadarCloudImageProgressIndicator;->m:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-direct {p0, v1}, Lcom/miui/weather2/view/RadarCloudImageProgressIndicator;->a(F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    iget-boolean v0, p0, Lcom/miui/weather2/view/RadarCloudImageProgressIndicator;->k:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/miui/weather2/view/RadarCloudImageProgressIndicator;->j:J

    invoke-static {v0, v1}, Lcom/miui/weather2/tools/bi;->b(J)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/miui/weather2/view/RadarCloudImageProgressIndicator;->i:I

    int-to-float v1, v1

    iget v2, p0, Lcom/miui/weather2/view/RadarCloudImageProgressIndicator;->c:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/miui/weather2/view/RadarCloudImageProgressIndicator;->h:Landroid/graphics/Paint;

    invoke-static {p1, v0, v1, v2, v3}, Lcom/miui/weather2/tools/bi;->a(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-wide v0, p0, Lcom/miui/weather2/view/RadarCloudImageProgressIndicator;->j:J

    invoke-static {v0, v1}, Lcom/miui/weather2/tools/bi;->b(J)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/miui/weather2/view/RadarCloudImageProgressIndicator;->i:I

    int-to-float v1, v1

    iget v2, p0, Lcom/miui/weather2/view/RadarCloudImageProgressIndicator;->c:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/miui/weather2/view/RadarCloudImageProgressIndicator;->g:Landroid/graphics/Paint;

    invoke-static {p1, v0, v1, v2, v3}, Lcom/miui/weather2/tools/bi;->a(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    iget-object v1, p0, Lcom/miui/weather2/view/RadarCloudImageProgressIndicator;->q:[Landroid/widget/TextView;

    const/4 v2, 0x0

    const v0, 0x7f0f0150

    invoke-virtual {p0, v0}, Lcom/miui/weather2/view/RadarCloudImageProgressIndicator;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v1, v2

    iget-object v1, p0, Lcom/miui/weather2/view/RadarCloudImageProgressIndicator;->q:[Landroid/widget/TextView;

    const/4 v2, 0x1

    const v0, 0x7f0f0151

    invoke-virtual {p0, v0}, Lcom/miui/weather2/view/RadarCloudImageProgressIndicator;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v1, v2

    iget-object v1, p0, Lcom/miui/weather2/view/RadarCloudImageProgressIndicator;->q:[Landroid/widget/TextView;

    const/4 v2, 0x2

    const v0, 0x7f0f0152

    invoke-virtual {p0, v0}, Lcom/miui/weather2/view/RadarCloudImageProgressIndicator;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v1, v2

    iget-object v1, p0, Lcom/miui/weather2/view/RadarCloudImageProgressIndicator;->q:[Landroid/widget/TextView;

    const/4 v2, 0x3

    const v0, 0x7f0f0153

    invoke-virtual {p0, v0}, Lcom/miui/weather2/view/RadarCloudImageProgressIndicator;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v1, v2

    iget-object v1, p0, Lcom/miui/weather2/view/RadarCloudImageProgressIndicator;->q:[Landroid/widget/TextView;

    const/4 v2, 0x4

    const v0, 0x7f0f0154

    invoke-virtual {p0, v0}, Lcom/miui/weather2/view/RadarCloudImageProgressIndicator;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v1, v2

    const v0, 0x7f0f0155

    invoke-virtual {p0, v0}, Lcom/miui/weather2/view/RadarCloudImageProgressIndicator;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/weather2/view/RadarCloudImageProgressIndicator;->m:Landroid/view/View;

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 5

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onWindowFocusChanged(Z)V

    invoke-virtual {p0}, Lcom/miui/weather2/view/RadarCloudImageProgressIndicator;->getMeasuredWidth()I

    move-result v0

    iput v0, p0, Lcom/miui/weather2/view/RadarCloudImageProgressIndicator;->a:I

    invoke-virtual {p0}, Lcom/miui/weather2/view/RadarCloudImageProgressIndicator;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/miui/weather2/view/RadarCloudImageProgressIndicator;->b:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Lcom/miui/weather2/view/RadarCloudImageProgressIndicator;->h:Landroid/graphics/Paint;

    const-string v2, "00:00"

    const/4 v3, 0x0

    const-string v4, "00:00"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iput v0, p0, Lcom/miui/weather2/view/RadarCloudImageProgressIndicator;->d:I

    iget-object v0, p0, Lcom/miui/weather2/view/RadarCloudImageProgressIndicator;->m:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget v1, p0, Lcom/miui/weather2/view/RadarCloudImageProgressIndicator;->b:I

    sub-int v0, v1, v0

    shr-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/miui/weather2/view/RadarCloudImageProgressIndicator;->c:I

    return-void
.end method

.method setRadarCloudImageContainer(Lcom/miui/weather2/view/RadarCloudImageContainer;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/view/RadarCloudImageProgressIndicator;->p:Lcom/miui/weather2/view/RadarCloudImageContainer;

    return-void
.end method
