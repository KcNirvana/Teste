.class public Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field private A:Landroid/graphics/Shader;

.field private B:Landroid/graphics/Shader;

.field private C:Ljava/lang/String;

.field private D:Ljava/lang/String;

.field private E:J

.field private F:J

.field private G:J

.field private H:J

.field private I:Z

.field private a:Landroid/content/Context;

.field private b:Landroid/graphics/Paint;

.field private c:F

.field private d:F

.field private e:Landroid/graphics/RectF;

.field private f:F

.field private g:F

.field private h:F

.field private i:F

.field private j:F

.field private k:F

.field private l:F

.field private m:F

.field private n:F

.field private o:Landroid/graphics/Path;

.field private p:Landroid/graphics/Path;

.field private q:I

.field private r:I

.field private s:I

.field private t:I

.field private u:I

.field private v:F

.field private w:F

.field private x:F

.field private y:Landroid/graphics/PathEffect;

.field private z:Landroid/graphics/Xfermode;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;->b:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;->e:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;->o:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;->p:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/DashPathEffect;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    iput-object v0, p0, Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;->y:Landroid/graphics/PathEffect;

    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;->z:Landroid/graphics/Xfermode;

    const-string v0, "--"

    iput-object v0, p0, Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;->C:Ljava/lang/String;

    const-string v0, "--"

    iput-object v0, p0, Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;->D:Ljava/lang/String;

    iput-object p1, p0, Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;->a:Landroid/content/Context;

    invoke-direct {p0}, Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;->b()V

    return-void

    :array_0
    .array-data 4
        0x41500000    # 13.0f
        0x41500000    # 13.0f
    .end array-data
.end method

.method private a(J)F
    .locals 7

    iget-wide v0, p0, Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;->E:J

    sub-long v0, p1, v0

    long-to-float v0, v0

    iget-wide v2, p0, Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;->F:J

    iget-wide v4, p0, Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;->E:J

    sub-long/2addr v2, v4

    long-to-float v1, v2

    div-float/2addr v0, v1

    return v0
.end method

.method static synthetic a(Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;)J
    .locals 2

    iget-wide v0, p0, Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;->E:J

    return-wide v0
.end method

.method static synthetic a(Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;J)J
    .locals 1

    iput-wide p1, p0, Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;->H:J

    return-wide p1
.end method

.method private a(F)[F
    .locals 8

    const/high16 v4, 0x40000000    # 2.0f

    iget v0, p0, Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;->f:F

    div-float v1, p1, v4

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;->i:F

    mul-float/2addr v1, v4

    float-to-double v2, v1

    div-float v1, p1, v4

    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    double-to-float v1, v2

    iget v2, p0, Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;->d:F

    float-to-double v2, v2

    float-to-double v4, v1

    float-to-double v6, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    sub-double/2addr v2, v4

    double-to-float v2, v2

    float-to-double v4, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    mul-double/2addr v0, v4

    double-to-float v0, v0

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v3, 0x0

    aput v0, v1, v3

    const/4 v0, 0x1

    aput v2, v1, v0

    return-object v1
.end method

.method private b(J)F
    .locals 3

    invoke-direct {p0, p1, p2}, Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;->a(J)F

    move-result v0

    iget v1, p0, Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;->f:F

    mul-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    return v0
.end method

.method static synthetic b(Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;)J
    .locals 2

    iget-wide v0, p0, Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;->G:J

    return-wide v0
.end method

.method private b()V
    .locals 2

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b00a7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;->q:I

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b00a8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;->r:I

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b00a5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;->s:I

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b00a9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;->t:I

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b00a6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;->u:I

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a01a6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;->v:F

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a01a5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;->w:F

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a01a2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;->j:F

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a01a3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;->k:F

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a01a4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;->l:F

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;->b:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;->b:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;->b:Landroid/graphics/Paint;

    const/high16 v1, 0x40200000    # 2.5f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;->b:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;->b:Landroid/graphics/Paint;

    sget-object v1, Lcom/miui/weather2/bf;->e:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;->b:Landroid/graphics/Paint;

    iget v1, p0, Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;->v:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    return-void
.end method

.method private c()V
    .locals 5

    iget-wide v0, p0, Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;->H:J

    invoke-direct {p0, v0, v1}, Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;->b(J)F

    move-result v0

    iput v0, p0, Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;->h:F

    iget v0, p0, Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;->h:F

    invoke-direct {p0, v0}, Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;->a(F)[F

    move-result-object v0

    const/4 v1, 0x0

    aget v1, v0, v1

    iput v1, p0, Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;->m:F

    const/4 v1, 0x1

    aget v0, v0, v1

    iput v0, p0, Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;->n:F

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;->o:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;->o:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;->e:Landroid/graphics/RectF;

    iget v2, p0, Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;->g:F

    iget v3, p0, Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;->h:F

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Path;->addArc(Landroid/graphics/RectF;FF)V

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;->o:Landroid/graphics/Path;

    iget v1, p0, Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;->m:F

    iget v2, p0, Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;->d:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;->o:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;->p:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;->p:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;->e:Landroid/graphics/RectF;

    iget v2, p0, Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;->g:F

    iget v3, p0, Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;->h:F

    add-float/2addr v2, v3

    iget v3, p0, Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;->f:F

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v3, v4

    iget v4, p0, Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;->h:F

    sub-float/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Path;->addArc(Landroid/graphics/RectF;FF)V

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;->p:Landroid/graphics/Path;

    iget v1, p0, Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;->m:F

    iget v2, p0, Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;->d:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;->o:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    iget v0, p0, Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;->d:F

    iget-object v1, p0, Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;->b:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->descent()F

    move-result v1

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;->j:F

    add-float/2addr v0, v1

    const/high16 v1, 0x41000000    # 8.0f

    add-float/2addr v0, v1

    iput v0, p0, Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;->x:F

    return-void
.end method

.method static synthetic c(Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;->c()V

    return-void
.end method

.method private d()J
    .locals 5

    const-wide/16 v0, 0x1f4

    iget-wide v2, p0, Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;->G:J

    invoke-direct {p0, v2, v3}, Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;->a(J)F

    move-result v2

    const v3, 0x450fc000    # 2300.0f

    mul-float/2addr v2, v3

    float-to-long v2, v2

    cmp-long v4, v2, v0

    if-gez v4, :cond_0

    :goto_0
    return-wide v0

    :cond_0
    move-wide v0, v2

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 4

    iget-boolean v0, p0, Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;->I:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;->I:Z

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ObjectAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v1, Lmiui/view/animation/SineEaseOutInterpolator;

    invoke-direct {v1}, Lmiui/view/animation/SineEaseOutInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-direct {p0}, Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;->d()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/miui/weather2/view/onOnePage/bf;

    invoke-direct {v1, p0}, Lcom/miui/weather2/view/onOnePage/bf;-><init>(Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget v0, p0, Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;->l:F

    iget v1, p0, Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;->l:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v7

    iget v0, v7, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    iget v0, v7, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    iget v0, v7, Landroid/graphics/Rect;->right:I

    int-to-float v3, v0

    iget v0, v7, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v0

    const/4 v5, 0x0

    const/16 v6, 0x1f

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    move-result v6

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;->b:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;->b:Landroid/graphics/Paint;

    iget v1, p0, Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;->t:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;->e:Landroid/graphics/RectF;

    iget v2, p0, Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;->g:F

    iget v0, p0, Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;->f:F

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v3, v0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;->b:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;->b:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;->z:Landroid/graphics/Xfermode;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;->b:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget v1, p0, Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;->m:F

    iget v0, p0, Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;->l:F

    neg-float v2, v0

    iget v3, p0, Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;->c:F

    iget v4, p0, Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;->d:F

    iget-object v5, p0, Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;->b:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;->b:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->restoreToCount(I)V

    iget v0, v7, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    iget v0, v7, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    iget v0, v7, Landroid/graphics/Rect;->right:I

    int-to-float v3, v0

    iget v0, v7, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v0

    const/4 v5, 0x0

    const/16 v6, 0x1f

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    move-result v6

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;->b:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;->b:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;->y:Landroid/graphics/PathEffect;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    iget-object v1, p0, Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;->e:Landroid/graphics/RectF;

    iget v2, p0, Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;->g:F

    iget v0, p0, Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;->f:F

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v3, v0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;->b:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;->b:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;->b:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;->z:Landroid/graphics/Xfermode;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;->b:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 v1, 0x0

    iget v0, p0, Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;->l:F

    neg-float v2, v0

    iget v3, p0, Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;->m:F

    iget v4, p0, Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;->d:F

    iget-object v5, p0, Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;->b:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;->b:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->restoreToCount(I)V

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;->b:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;->b:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;->A:Landroid/graphics/Shader;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;->o:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;->b:Landroid/graphics/Paint;

    iget v1, p0, Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;->t:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;->b:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;->B:Landroid/graphics/Shader;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;->p:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;->b:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;->b:Landroid/graphics/Paint;

    iget v1, p0, Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;->t:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;->b:Landroid/graphics/Paint;

    iget v1, p0, Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;->v:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;->C:Ljava/lang/String;

    iget v1, p0, Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;->w:F

    iget v2, p0, Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;->x:F

    iget-object v3, p0, Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;->D:Ljava/lang/String;

    iget v1, p0, Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;->c:F

    iget v2, p0, Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;->w:F

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;->b:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;->D:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;->x:F

    iget-object v3, p0, Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;->b:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 v0, 0x0

    iget v1, p0, Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;->d:F

    iget v2, p0, Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;->j:F

    iget-object v3, p0, Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget v0, p0, Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;->c:F

    iget v1, p0, Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;->d:F

    iget v2, p0, Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;->j:F

    iget-object v3, p0, Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;->b:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;->b:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget v0, p0, Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;->m:F

    iget v1, p0, Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;->n:F

    iget v2, p0, Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;->l:F

    iget-object v3, p0, Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;->b:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;->b:Landroid/graphics/Paint;

    iget v1, p0, Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;->u:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget v0, p0, Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;->m:F

    iget v1, p0, Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;->n:F

    iget v2, p0, Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;->k:F

    iget-object v3, p0, Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 9

    const/4 v2, 0x0

    const/high16 v8, 0x40000000    # 2.0f

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;->l:F

    mul-float/2addr v1, v8

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;->c:F

    iget v0, p0, Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;->c:F

    const v1, 0x3f468db9    # 0.7756f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;->i:F

    iget v0, p0, Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;->i:F

    iget v1, p0, Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;->i:F

    iget v3, p0, Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;->i:F

    mul-float/2addr v1, v3

    iget v3, p0, Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;->c:F

    iget v4, p0, Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;->c:F

    mul-float/2addr v3, v4

    const/high16 v4, 0x40800000    # 4.0f

    div-float/2addr v3, v4

    sub-float/2addr v1, v3

    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v1, v4

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;->d:F

    iget v0, p0, Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;->c:F

    div-float/2addr v0, v8

    iget v1, p0, Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;->i:F

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->asin(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;->f:F

    const/high16 v0, 0x43870000    # 270.0f

    iget v1, p0, Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;->f:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;->g:F

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;->e:Landroid/graphics/RectF;

    iget v1, p0, Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;->i:F

    iget v3, p0, Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;->c:F

    div-float/2addr v3, v8

    sub-float/2addr v1, v3

    neg-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;->e:Landroid/graphics/RectF;

    iput v2, v0, Landroid/graphics/RectF;->top:F

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;->e:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;->e:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget v3, p0, Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;->i:F

    mul-float/2addr v3, v8

    add-float/2addr v1, v3

    iput v1, v0, Landroid/graphics/RectF;->right:F

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;->e:Landroid/graphics/RectF;

    iget v1, p0, Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;->i:F

    mul-float/2addr v1, v8

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    new-instance v0, Landroid/graphics/LinearGradient;

    iget v1, p0, Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;->c:F

    div-float/2addr v1, v8

    iget v3, p0, Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;->c:F

    div-float/2addr v3, v8

    iget v4, p0, Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;->d:F

    iget v5, p0, Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;->q:I

    iget v6, p0, Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;->s:I

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;->A:Landroid/graphics/Shader;

    new-instance v0, Landroid/graphics/LinearGradient;

    iget v1, p0, Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;->c:F

    div-float/2addr v1, v8

    iget v3, p0, Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;->c:F

    div-float/2addr v3, v8

    iget v4, p0, Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;->d:F

    iget v5, p0, Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;->r:I

    iget v6, p0, Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;->s:I

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;->B:Landroid/graphics/Shader;

    iget v0, p0, Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;->d:F

    iget v1, p0, Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;->l:F

    mul-float/2addr v1, v8

    add-float/2addr v0, v1

    float-to-int v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-super {p0, p1, v0}, Landroid/view/View;->onMeasure(II)V

    return-void
.end method

.method public setData(Lcom/miui/weather2/structures/TodayData;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;->a:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/miui/weather2/structures/TodayData;->getSunRiseTodayNum(Landroid/content/Context;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;->E:J

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;->a:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/miui/weather2/structures/TodayData;->getSunSetTodayNum(Landroid/content/Context;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;->F:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;->G:J

    iget-wide v0, p0, Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;->G:J

    iget-wide v2, p0, Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;->F:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    iget-wide v0, p0, Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;->F:J

    iput-wide v0, p0, Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;->G:J

    :cond_0
    :goto_0
    iget-wide v0, p0, Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;->E:J

    iget-wide v2, p0, Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;->F:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    const-string v0, "SunRiseAndSetView"

    const-string v1, "setData() mSunRiseTime equals to mSunSetTime"

    invoke-static {v0, v1}, Lcom/miui/weather2/tools/ae;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;->setVisibility(I)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-wide v0, p0, Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;->G:J

    iget-wide v2, p0, Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;->E:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    iget-wide v0, p0, Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;->E:J

    iput-wide v0, p0, Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;->G:J

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v5}, Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;->setVisibility(I)V

    iget-wide v0, p0, Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;->G:J

    iput-wide v0, p0, Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;->H:J

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;->a:Landroid/content/Context;

    const v1, 0x7f0900bf

    new-array v2, v6, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;->a:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/miui/weather2/structures/TodayData;->getSunRiseTodayLocal()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/miui/weather2/tools/bi;->d(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;->C:Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;->a:Landroid/content/Context;

    const v1, 0x7f0900c0

    new-array v2, v6, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;->a:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/miui/weather2/structures/TodayData;->getSunSetTodayLocal()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/miui/weather2/tools/bi;->d(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;->D:Ljava/lang/String;

    invoke-direct {p0}, Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;->c()V

    invoke-virtual {p0}, Lcom/miui/weather2/view/onOnePage/SunRiseAndSetView;->invalidate()V

    goto :goto_1
.end method
