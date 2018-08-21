.class public Lcom/alipay/android/app/birdnest/gifimage/ProgressWheelHelper;
.super Ljava/lang/Object;
.source "ProgressWheelHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/android/app/birdnest/gifimage/ProgressWheelHelper$a;,
        Lcom/alipay/android/app/birdnest/gifimage/ProgressWheelHelper$WheelSavedState;
    }
.end annotation


# static fields
.field private static final A:Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private final d:I

.field private final e:I

.field private f:Z

.field private g:D

.field private h:D

.field private i:F

.field private j:Z

.field private k:J

.field private final l:J

.field private m:I

.field private n:I

.field private o:Landroid/graphics/Paint;

.field private p:Landroid/graphics/Paint;

.field private q:Landroid/graphics/RectF;

.field private r:F

.field private s:J

.field private t:Z

.field private u:F

.field private v:F

.field private w:Z

.field private x:Lcom/alipay/android/app/birdnest/gifimage/ProgressWheelHelper$a;

.field private y:Landroid/view/View;

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/alipay/android/app/birdnest/gifimage/ProgressWheelHelper;->A:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;III)V
    .locals 4

    const/16 v1, 0xa

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1c

    iput v0, p0, Lcom/alipay/android/app/birdnest/gifimage/ProgressWheelHelper;->a:I

    iput v1, p0, Lcom/alipay/android/app/birdnest/gifimage/ProgressWheelHelper;->b:I

    iput v1, p0, Lcom/alipay/android/app/birdnest/gifimage/ProgressWheelHelper;->c:I

    const/16 v0, 0x10

    iput v0, p0, Lcom/alipay/android/app/birdnest/gifimage/ProgressWheelHelper;->d:I

    const/16 v0, 0x10e

    iput v0, p0, Lcom/alipay/android/app/birdnest/gifimage/ProgressWheelHelper;->e:I

    iput-boolean v3, p0, Lcom/alipay/android/app/birdnest/gifimage/ProgressWheelHelper;->f:Z

    const-wide v0, 0x407f400000000000L    # 500.0

    iput-wide v0, p0, Lcom/alipay/android/app/birdnest/gifimage/ProgressWheelHelper;->g:D

    const-wide v0, 0x407cc00000000000L    # 460.0

    iput-wide v0, p0, Lcom/alipay/android/app/birdnest/gifimage/ProgressWheelHelper;->h:D

    iput v2, p0, Lcom/alipay/android/app/birdnest/gifimage/ProgressWheelHelper;->i:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/app/birdnest/gifimage/ProgressWheelHelper;->j:Z

    const-wide/16 v0, 0xd2

    iput-wide v0, p0, Lcom/alipay/android/app/birdnest/gifimage/ProgressWheelHelper;->k:J

    const-wide/16 v0, 0xc8

    iput-wide v0, p0, Lcom/alipay/android/app/birdnest/gifimage/ProgressWheelHelper;->l:J

    const/high16 v0, -0x55010000

    iput v0, p0, Lcom/alipay/android/app/birdnest/gifimage/ProgressWheelHelper;->m:I

    const v0, 0xffffff

    iput v0, p0, Lcom/alipay/android/app/birdnest/gifimage/ProgressWheelHelper;->n:I

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/birdnest/gifimage/ProgressWheelHelper;->o:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/birdnest/gifimage/ProgressWheelHelper;->p:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/birdnest/gifimage/ProgressWheelHelper;->q:Landroid/graphics/RectF;

    const/high16 v0, 0x43660000    # 230.0f

    iput v0, p0, Lcom/alipay/android/app/birdnest/gifimage/ProgressWheelHelper;->r:F

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alipay/android/app/birdnest/gifimage/ProgressWheelHelper;->s:J

    iput v2, p0, Lcom/alipay/android/app/birdnest/gifimage/ProgressWheelHelper;->u:F

    iput v2, p0, Lcom/alipay/android/app/birdnest/gifimage/ProgressWheelHelper;->v:F

    iput-boolean v3, p0, Lcom/alipay/android/app/birdnest/gifimage/ProgressWheelHelper;->w:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/app/birdnest/gifimage/ProgressWheelHelper;->y:Landroid/view/View;

    iput-boolean v3, p0, Lcom/alipay/android/app/birdnest/gifimage/ProgressWheelHelper;->z:Z

    iput-object p2, p0, Lcom/alipay/android/app/birdnest/gifimage/ProgressWheelHelper;->y:Landroid/view/View;

    iput p5, p0, Lcom/alipay/android/app/birdnest/gifimage/ProgressWheelHelper;->m:I

    iput p3, p0, Lcom/alipay/android/app/birdnest/gifimage/ProgressWheelHelper;->b:I

    iput p4, p0, Lcom/alipay/android/app/birdnest/gifimage/ProgressWheelHelper;->c:I

    return-void
.end method

.method private a(J)V
    .locals 5

    iget-wide v0, p0, Lcom/alipay/android/app/birdnest/gifimage/ProgressWheelHelper;->k:J

    const-wide/16 v2, 0xc8

    cmp-long v0, v0, v2

    if-ltz v0, :cond_3

    iget-wide v0, p0, Lcom/alipay/android/app/birdnest/gifimage/ProgressWheelHelper;->g:D

    long-to-double v2, p1

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/alipay/android/app/birdnest/gifimage/ProgressWheelHelper;->g:D

    iget-wide v0, p0, Lcom/alipay/android/app/birdnest/gifimage/ProgressWheelHelper;->g:D

    iget-wide v2, p0, Lcom/alipay/android/app/birdnest/gifimage/ProgressWheelHelper;->h:D

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    iget-wide v0, p0, Lcom/alipay/android/app/birdnest/gifimage/ProgressWheelHelper;->g:D

    iget-wide v2, p0, Lcom/alipay/android/app/birdnest/gifimage/ProgressWheelHelper;->h:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lcom/alipay/android/app/birdnest/gifimage/ProgressWheelHelper;->g:D

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alipay/android/app/birdnest/gifimage/ProgressWheelHelper;->k:J

    iget-boolean v0, p0, Lcom/alipay/android/app/birdnest/gifimage/ProgressWheelHelper;->j:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/alipay/android/app/birdnest/gifimage/ProgressWheelHelper;->j:Z

    :cond_0
    iget-wide v0, p0, Lcom/alipay/android/app/birdnest/gifimage/ProgressWheelHelper;->g:D

    iget-wide v2, p0, Lcom/alipay/android/app/birdnest/gifimage/ProgressWheelHelper;->h:D

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double/2addr v0, v2

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    double-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    const/high16 v1, 0x437e0000    # 254.0f

    iget-boolean v2, p0, Lcom/alipay/android/app/birdnest/gifimage/ProgressWheelHelper;->j:Z

    if-eqz v2, :cond_2

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/alipay/android/app/birdnest/gifimage/ProgressWheelHelper;->i:F

    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v0, v2, v0

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/alipay/android/app/birdnest/gifimage/ProgressWheelHelper;->u:F

    iget v2, p0, Lcom/alipay/android/app/birdnest/gifimage/ProgressWheelHelper;->i:F

    sub-float/2addr v2, v0

    add-float/2addr v1, v2

    iput v1, p0, Lcom/alipay/android/app/birdnest/gifimage/ProgressWheelHelper;->u:F

    iput v0, p0, Lcom/alipay/android/app/birdnest/gifimage/ProgressWheelHelper;->i:F

    goto :goto_1

    :cond_3
    iget-wide v0, p0, Lcom/alipay/android/app/birdnest/gifimage/ProgressWheelHelper;->k:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/alipay/android/app/birdnest/gifimage/ProgressWheelHelper;->k:J

    goto :goto_1
.end method

.method private g()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/app/birdnest/gifimage/ProgressWheelHelper;->x:Lcom/alipay/android/app/birdnest/gifimage/ProgressWheelHelper$a;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/alipay/android/app/birdnest/gifimage/ProgressWheelHelper;->u:F

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    const/high16 v1, 0x43b40000    # 360.0f

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcelable;)Landroid/os/Parcelable;
    .locals 2

    new-instance v0, Lcom/alipay/android/app/birdnest/gifimage/ProgressWheelHelper$WheelSavedState;

    invoke-direct {v0, p1}, Lcom/alipay/android/app/birdnest/gifimage/ProgressWheelHelper$WheelSavedState;-><init>(Landroid/os/Parcelable;)V

    iget v1, p0, Lcom/alipay/android/app/birdnest/gifimage/ProgressWheelHelper;->u:F

    iput v1, v0, Lcom/alipay/android/app/birdnest/gifimage/ProgressWheelHelper$WheelSavedState;->mProgress:F

    iget v1, p0, Lcom/alipay/android/app/birdnest/gifimage/ProgressWheelHelper;->v:F

    iput v1, v0, Lcom/alipay/android/app/birdnest/gifimage/ProgressWheelHelper$WheelSavedState;->mTargetProgress:F

    iget-boolean v1, p0, Lcom/alipay/android/app/birdnest/gifimage/ProgressWheelHelper;->w:Z

    iput-boolean v1, v0, Lcom/alipay/android/app/birdnest/gifimage/ProgressWheelHelper$WheelSavedState;->isSpinning:Z

    iget v1, p0, Lcom/alipay/android/app/birdnest/gifimage/ProgressWheelHelper;->r:F

    iput v1, v0, Lcom/alipay/android/app/birdnest/gifimage/ProgressWheelHelper$WheelSavedState;->spinSpeed:F

    iget v1, p0, Lcom/alipay/android/app/birdnest/gifimage/ProgressWheelHelper;->b:I

    iput v1, v0, Lcom/alipay/android/app/birdnest/gifimage/ProgressWheelHelper$WheelSavedState;->barWidth:I

    iget v1, p0, Lcom/alipay/android/app/birdnest/gifimage/ProgressWheelHelper;->m:I

    iput v1, v0, Lcom/alipay/android/app/birdnest/gifimage/ProgressWheelHelper$WheelSavedState;->barColor:I

    iget v1, p0, Lcom/alipay/android/app/birdnest/gifimage/ProgressWheelHelper;->c:I

    iput v1, v0, Lcom/alipay/android/app/birdnest/gifimage/ProgressWheelHelper$WheelSavedState;->rimWidth:I

    iget v1, p0, Lcom/alipay/android/app/birdnest/gifimage/ProgressWheelHelper;->n:I

    iput v1, v0, Lcom/alipay/android/app/birdnest/gifimage/ProgressWheelHelper$WheelSavedState;->rimColor:I

    iget v1, p0, Lcom/alipay/android/app/birdnest/gifimage/ProgressWheelHelper;->a:I

    iput v1, v0, Lcom/alipay/android/app/birdnest/gifimage/ProgressWheelHelper$WheelSavedState;->circleRadius:I

    iget-boolean v1, p0, Lcom/alipay/android/app/birdnest/gifimage/ProgressWheelHelper;->t:Z

    iput-boolean v1, v0, Lcom/alipay/android/app/birdnest/gifimage/ProgressWheelHelper$WheelSavedState;->linearProgress:Z

    iget-boolean v1, p0, Lcom/alipay/android/app/birdnest/gifimage/ProgressWheelHelper;->f:Z

    iput-boolean v1, v0, Lcom/alipay/android/app/birdnest/gifimage/ProgressWheelHelper$WheelSavedState;->fillRadius:Z

    return-object v0
.end method

.method public a()V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/alipay/android/app/birdnest/gifimage/ProgressWheelHelper;->o:Landroid/graphics/Paint;

    iget v1, p0, Lcom/alipay/android/app/birdnest/gifimage/ProgressWheelHelper;->m:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/alipay/android/app/birdnest/gifimage/ProgressWheelHelper;->o:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/alipay/android/app/birdnest/gifimage/ProgressWheelHelper;->o:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/alipay/android/app/birdnest/gifimage/ProgressWheelHelper;->o:Landroid/graphics/Paint;

    iget v1, p0, Lcom/alipay/android/app/birdnest/gifimage/ProgressWheelHelper;->b:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/alipay/android/app/birdnest/gifimage/ProgressWheelHelper;->p:Landroid/graphics/Paint;

    iget v1, p0, Lcom/alipay/android/app/birdnest/gifimage/ProgressWheelHelper;->n:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/alipay/android/app/birdnest/gifimage/ProgressWheelHelper;->p:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/alipay/android/app/birdnest/gifimage/ProgressWheelHelper;->p:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/alipay/android/app/birdnest/gifimage/ProgressWheelHelper;->p:Landroid/graphics/Paint;

    iget v1, p0, Lcom/alipay/android/app/birdnest/gifimage/ProgressWheelHelper;->c:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method public a(I)V
    .locals 1

    iput p1, p0, Lcom/alipay/android/app/birdnest/gifimage/ProgressWheelHelper;->a:I

    iget-boolean v0, p0, Lcom/alipay/android/app/birdnest/gifimage/ProgressWheelHelper;->w:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/birdnest/gifimage/ProgressWheelHelper;->y:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method protected a(IIII)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/alipay/android/app/birdnest/gifimage/ProgressWheelHelper;->a(I)V

    invoke-virtual {p0, p1, p2}, Lcom/alipay/android/app/birdnest/gifimage/ProgressWheelHelper;->b(II)V

    invoke-virtual {p0}, Lcom/alipay/android/app/birdnest/gifimage/ProgressWheelHelper;->a()V

    iget-object v0, p0, Lcom/alipay/android/app/birdnest/gifimage/ProgressWheelHelper;->y:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method protected a(Landroid/graphics/Canvas;)V
    .locals 10

    sget-object v1, Lcom/alipay/android/app/birdnest/gifimage/ProgressWheelHelper;->A:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/alipay/android/app/birdnest/gifimage/ProgressWheelHelper;->z:Z

    if-nez v0, :cond_1

    monitor-exit v1

    :cond_0
    :goto_0
    return-void

    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/alipay/android/app/birdnest/gifimage/ProgressWheelHelper;->q:Landroid/graphics/RectF;

    const/high16 v2, 0x43b40000    # 360.0f

    const/high16 v3, 0x43b40000    # 360.0f

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/alipay/android/app/birdnest/gifimage/ProgressWheelHelper;->p:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/alipay/android/app/birdnest/gifimage/ProgressWheelHelper;->w:Z

    if-eqz v1, :cond_4

    const/4 v6, 0x1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/alipay/android/app/birdnest/gifimage/ProgressWheelHelper;->s:J

    sub-long/2addr v0, v2

    long-to-float v2, v0

    iget v3, p0, Lcom/alipay/android/app/birdnest/gifimage/ProgressWheelHelper;->r:F

    mul-float/2addr v2, v3

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float/2addr v2, v3

    invoke-direct {p0, v0, v1}, Lcom/alipay/android/app/birdnest/gifimage/ProgressWheelHelper;->a(J)V

    iget v0, p0, Lcom/alipay/android/app/birdnest/gifimage/ProgressWheelHelper;->u:F

    add-float/2addr v0, v2

    iput v0, p0, Lcom/alipay/android/app/birdnest/gifimage/ProgressWheelHelper;->u:F

    iget v0, p0, Lcom/alipay/android/app/birdnest/gifimage/ProgressWheelHelper;->u:F

    const/high16 v1, 0x43b40000    # 360.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    iget v0, p0, Lcom/alipay/android/app/birdnest/gifimage/ProgressWheelHelper;->u:F

    const/high16 v1, 0x43b40000    # 360.0f

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/alipay/android/app/birdnest/gifimage/ProgressWheelHelper;->u:F

    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/android/app/birdnest/gifimage/ProgressWheelHelper;->s:J

    iget v0, p0, Lcom/alipay/android/app/birdnest/gifimage/ProgressWheelHelper;->u:F

    const/high16 v1, 0x42b40000    # 90.0f

    sub-float v2, v0, v1

    const/high16 v0, 0x41800000    # 16.0f

    iget v1, p0, Lcom/alipay/android/app/birdnest/gifimage/ProgressWheelHelper;->i:F

    add-float v3, v0, v1

    iget-object v0, p0, Lcom/alipay/android/app/birdnest/gifimage/ProgressWheelHelper;->y:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v2, 0x0

    const/high16 v3, 0x43070000    # 135.0f

    :cond_3
    iget-object v1, p0, Lcom/alipay/android/app/birdnest/gifimage/ProgressWheelHelper;->q:Landroid/graphics/RectF;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/alipay/android/app/birdnest/gifimage/ProgressWheelHelper;->o:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    :goto_1
    if-eqz v6, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/birdnest/gifimage/ProgressWheelHelper;->y:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_4
    iget v1, p0, Lcom/alipay/android/app/birdnest/gifimage/ProgressWheelHelper;->u:F

    iget v2, p0, Lcom/alipay/android/app/birdnest/gifimage/ProgressWheelHelper;->u:F

    iget v3, p0, Lcom/alipay/android/app/birdnest/gifimage/ProgressWheelHelper;->v:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_5

    const/4 v0, 0x1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/alipay/android/app/birdnest/gifimage/ProgressWheelHelper;->s:J

    sub-long/2addr v2, v4

    long-to-float v2, v2

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float/2addr v2, v3

    iget v3, p0, Lcom/alipay/android/app/birdnest/gifimage/ProgressWheelHelper;->r:F

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/alipay/android/app/birdnest/gifimage/ProgressWheelHelper;->u:F

    add-float/2addr v2, v3

    iget v3, p0, Lcom/alipay/android/app/birdnest/gifimage/ProgressWheelHelper;->v:F

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iput v2, p0, Lcom/alipay/android/app/birdnest/gifimage/ProgressWheelHelper;->u:F

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/alipay/android/app/birdnest/gifimage/ProgressWheelHelper;->s:J

    :cond_5
    move v6, v0

    iget v0, p0, Lcom/alipay/android/app/birdnest/gifimage/ProgressWheelHelper;->u:F

    cmpl-float v0, v1, v0

    if-eqz v0, :cond_6

    invoke-direct {p0}, Lcom/alipay/android/app/birdnest/gifimage/ProgressWheelHelper;->g()V

    :cond_6
    const/4 v1, 0x0

    iget v0, p0, Lcom/alipay/android/app/birdnest/gifimage/ProgressWheelHelper;->u:F

    iget-boolean v2, p0, Lcom/alipay/android/app/birdnest/gifimage/ProgressWheelHelper;->t:Z

    if-nez v2, :cond_8

    const/high16 v0, 0x40000000    # 2.0f

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const/high16 v1, 0x3f800000    # 1.0f

    iget v4, p0, Lcom/alipay/android/app/birdnest/gifimage/ProgressWheelHelper;->u:F

    const/high16 v5, 0x43b40000    # 360.0f

    div-float/2addr v4, v5

    sub-float/2addr v1, v4

    float-to-double v4, v1

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v1, v0

    float-to-double v8, v1

    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    sub-double/2addr v2, v4

    double-to-float v1, v2

    const/high16 v2, 0x43b40000    # 360.0f

    mul-float/2addr v1, v2

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const/high16 v4, 0x3f800000    # 1.0f

    iget v5, p0, Lcom/alipay/android/app/birdnest/gifimage/ProgressWheelHelper;->u:F

    const/high16 v7, 0x43b40000    # 360.0f

    div-float/2addr v5, v7

    sub-float/2addr v4, v5

    float-to-double v4, v4

    float-to-double v8, v0

    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    sub-double/2addr v2, v4

    double-to-float v0, v2

    const/high16 v2, 0x43b40000    # 360.0f

    mul-float/2addr v0, v2

    move v2, v1

    :goto_2
    iget-object v1, p0, Lcom/alipay/android/app/birdnest/gifimage/ProgressWheelHelper;->y:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->isInEditMode()Z

    move-result v1

    if-eqz v1, :cond_7

    const/high16 v3, 0x43b40000    # 360.0f

    :goto_3
    iget-object v1, p0, Lcom/alipay/android/app/birdnest/gifimage/ProgressWheelHelper;->q:Landroid/graphics/RectF;

    const/high16 v0, 0x42b40000    # 90.0f

    sub-float/2addr v2, v0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/alipay/android/app/birdnest/gifimage/ProgressWheelHelper;->o:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto/16 :goto_1

    :cond_7
    move v3, v0

    goto :goto_3

    :cond_8
    move v2, v1

    goto :goto_2
.end method

.method protected a(Landroid/view/View;I)V
    .locals 2

    if-nez p2, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/android/app/birdnest/gifimage/ProgressWheelHelper;->s:J

    :cond_0
    return-void
.end method

.method public a(II)[I
    .locals 8

    const/high16 v7, -0x80000000

    const/high16 v6, 0x40000000    # 2.0f

    iget v0, p0, Lcom/alipay/android/app/birdnest/gifimage/ProgressWheelHelper;->a:I

    mul-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/alipay/android/app/birdnest/gifimage/ProgressWheelHelper;->y:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/alipay/android/app/birdnest/gifimage/ProgressWheelHelper;->y:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    add-int v3, v0, v1

    iget v0, p0, Lcom/alipay/android/app/birdnest/gifimage/ProgressWheelHelper;->a:I

    mul-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/alipay/android/app/birdnest/gifimage/ProgressWheelHelper;->y:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/alipay/android/app/birdnest/gifimage/ProgressWheelHelper;->y:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    if-ne v4, v6, :cond_2

    :goto_0
    if-eq v5, v6, :cond_0

    if-ne v4, v6, :cond_4

    :cond_0
    move v0, v1

    :cond_1
    :goto_1
    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    aput v0, v1, v2

    return-object v1

    :cond_2
    if-ne v4, v7, :cond_3

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_0

    :cond_3
    move v2, v3

    goto :goto_0

    :cond_4
    if-ne v5, v7, :cond_1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_1
.end method

.method public b()V
    .locals 2

    sget-object v1, Lcom/alipay/android/app/birdnest/gifimage/ProgressWheelHelper;->A:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/alipay/android/app/birdnest/gifimage/ProgressWheelHelper;->z:Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected b(II)V
    .locals 7

    iget-object v0, p0, Lcom/alipay/android/app/birdnest/gifimage/ProgressWheelHelper;->y:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    iget-object v1, p0, Lcom/alipay/android/app/birdnest/gifimage/ProgressWheelHelper;->y:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    iget-object v2, p0, Lcom/alipay/android/app/birdnest/gifimage/ProgressWheelHelper;->y:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    iget-object v3, p0, Lcom/alipay/android/app/birdnest/gifimage/ProgressWheelHelper;->y:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    iget-boolean v4, p0, Lcom/alipay/android/app/birdnest/gifimage/ProgressWheelHelper;->f:Z

    if-nez v4, :cond_0

    sub-int v4, p1, v2

    sub-int/2addr v4, v3

    sub-int v5, p2, v1

    sub-int/2addr v5, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    iget v5, p0, Lcom/alipay/android/app/birdnest/gifimage/ProgressWheelHelper;->a:I

    mul-int/lit8 v5, v5, 0x2

    iget v6, p0, Lcom/alipay/android/app/birdnest/gifimage/ProgressWheelHelper;->b:I

    mul-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    sub-int v5, p1, v2

    sub-int v3, v5, v3

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    sub-int v3, p2, v0

    sub-int v1, v3, v1

    sub-int/2addr v1, v4

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    new-instance v1, Landroid/graphics/RectF;

    iget v3, p0, Lcom/alipay/android/app/birdnest/gifimage/ProgressWheelHelper;->b:I

    add-int/2addr v3, v2

    int-to-float v3, v3

    iget v5, p0, Lcom/alipay/android/app/birdnest/gifimage/ProgressWheelHelper;->b:I

    add-int/2addr v5, v0

    int-to-float v5, v5

    add-int/2addr v2, v4

    iget v6, p0, Lcom/alipay/android/app/birdnest/gifimage/ProgressWheelHelper;->b:I

    sub-int/2addr v2, v6

    int-to-float v2, v2

    add-int/2addr v0, v4

    iget v4, p0, Lcom/alipay/android/app/birdnest/gifimage/ProgressWheelHelper;->b:I

    sub-int/2addr v0, v4

    int-to-float v0, v0

    invoke-direct {v1, v3, v5, v2, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v1, p0, Lcom/alipay/android/app/birdnest/gifimage/ProgressWheelHelper;->q:Landroid/graphics/RectF;

    :goto_0
    return-void

    :cond_0
    new-instance v4, Landroid/graphics/RectF;

    iget v5, p0, Lcom/alipay/android/app/birdnest/gifimage/ProgressWheelHelper;->b:I

    add-int/2addr v2, v5

    int-to-float v2, v2

    iget v5, p0, Lcom/alipay/android/app/birdnest/gifimage/ProgressWheelHelper;->b:I

    add-int/2addr v0, v5

    int-to-float v0, v0

    sub-int v3, p1, v3

    iget v5, p0, Lcom/alipay/android/app/birdnest/gifimage/ProgressWheelHelper;->b:I

    sub-int/2addr v3, v5

    int-to-float v3, v3

    sub-int v1, p2, v1

    iget v5, p0, Lcom/alipay/android/app/birdnest/gifimage/ProgressWheelHelper;->b:I

    sub-int/2addr v1, v5

    int-to-float v1, v1

    invoke-direct {v4, v2, v0, v3, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v4, p0, Lcom/alipay/android/app/birdnest/gifimage/ProgressWheelHelper;->q:Landroid/graphics/RectF;

    goto :goto_0
.end method

.method public b(Landroid/os/Parcelable;)V
    .locals 2

    check-cast p1, Lcom/alipay/android/app/birdnest/gifimage/ProgressWheelHelper$WheelSavedState;

    iget v0, p1, Lcom/alipay/android/app/birdnest/gifimage/ProgressWheelHelper$WheelSavedState;->mProgress:F

    iput v0, p0, Lcom/alipay/android/app/birdnest/gifimage/ProgressWheelHelper;->u:F

    iget v0, p1, Lcom/alipay/android/app/birdnest/gifimage/ProgressWheelHelper$WheelSavedState;->mTargetProgress:F

    iput v0, p0, Lcom/alipay/android/app/birdnest/gifimage/ProgressWheelHelper;->v:F

    iget-boolean v0, p1, Lcom/alipay/android/app/birdnest/gifimage/ProgressWheelHelper$WheelSavedState;->isSpinning:Z

    iput-boolean v0, p0, Lcom/alipay/android/app/birdnest/gifimage/ProgressWheelHelper;->w:Z

    iget v0, p1, Lcom/alipay/android/app/birdnest/gifimage/ProgressWheelHelper$WheelSavedState;->spinSpeed:F

    iput v0, p0, Lcom/alipay/android/app/birdnest/gifimage/ProgressWheelHelper;->r:F

    iget v0, p1, Lcom/alipay/android/app/birdnest/gifimage/ProgressWheelHelper$WheelSavedState;->barWidth:I

    iput v0, p0, Lcom/alipay/android/app/birdnest/gifimage/ProgressWheelHelper;->b:I

    iget v0, p1, Lcom/alipay/android/app/birdnest/gifimage/ProgressWheelHelper$WheelSavedState;->barColor:I

    iput v0, p0, Lcom/alipay/android/app/birdnest/gifimage/ProgressWheelHelper;->m:I

    iget v0, p1, Lcom/alipay/android/app/birdnest/gifimage/ProgressWheelHelper$WheelSavedState;->rimWidth:I

    iput v0, p0, Lcom/alipay/android/app/birdnest/gifimage/ProgressWheelHelper;->c:I

    iget v0, p1, Lcom/alipay/android/app/birdnest/gifimage/ProgressWheelHelper$WheelSavedState;->rimColor:I

    iput v0, p0, Lcom/alipay/android/app/birdnest/gifimage/ProgressWheelHelper;->n:I

    iget v0, p1, Lcom/alipay/android/app/birdnest/gifimage/ProgressWheelHelper$WheelSavedState;->circleRadius:I

    iput v0, p0, Lcom/alipay/android/app/birdnest/gifimage/ProgressWheelHelper;->a:I

    iget-boolean v0, p1, Lcom/alipay/android/app/birdnest/gifimage/ProgressWheelHelper$WheelSavedState;->linearProgress:Z

    iput-boolean v0, p0, Lcom/alipay/android/app/birdnest/gifimage/ProgressWheelHelper;->t:Z

    iget-boolean v0, p1, Lcom/alipay/android/app/birdnest/gifimage/ProgressWheelHelper$WheelSavedState;->fillRadius:Z

    iput-boolean v0, p0, Lcom/alipay/android/app/birdnest/gifimage/ProgressWheelHelper;->f:Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/android/app/birdnest/gifimage/ProgressWheelHelper;->s:J

    return-void
.end method

.method public c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/android/app/birdnest/gifimage/ProgressWheelHelper;->z:Z

    return v0
.end method

.method public d()V
    .locals 4

    sget-object v1, Lcom/alipay/android/app/birdnest/gifimage/ProgressWheelHelper;->A:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/alipay/android/app/birdnest/gifimage/ProgressWheelHelper;->z:Z

    const-wide v2, 0x407f400000000000L    # 500.0

    iput-wide v2, p0, Lcom/alipay/android/app/birdnest/gifimage/ProgressWheelHelper;->g:D

    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/android/app/birdnest/gifimage/ProgressWheelHelper;->i:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/app/birdnest/gifimage/ProgressWheelHelper;->j:Z

    const-wide/16 v2, 0xd2

    iput-wide v2, p0, Lcom/alipay/android/app/birdnest/gifimage/ProgressWheelHelper;->k:J

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/alipay/android/app/birdnest/gifimage/ProgressWheelHelper;->s:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/android/app/birdnest/gifimage/ProgressWheelHelper;->u:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/android/app/birdnest/gifimage/ProgressWheelHelper;->v:F

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public e()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/app/birdnest/gifimage/ProgressWheelHelper;->w:Z

    iput v1, p0, Lcom/alipay/android/app/birdnest/gifimage/ProgressWheelHelper;->u:F

    iput v1, p0, Lcom/alipay/android/app/birdnest/gifimage/ProgressWheelHelper;->v:F

    iget-object v0, p0, Lcom/alipay/android/app/birdnest/gifimage/ProgressWheelHelper;->y:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public f()V
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/android/app/birdnest/gifimage/ProgressWheelHelper;->s:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/app/birdnest/gifimage/ProgressWheelHelper;->w:Z

    iget-object v0, p0, Lcom/alipay/android/app/birdnest/gifimage/ProgressWheelHelper;->y:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void
.end method
