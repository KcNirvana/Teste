.class public Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;
.super Landroid/view/View;
.source "CustomProgressWheel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/android/app/flybird/ui/CustomProgressWheel$ProgressCallback;,
        Lcom/alipay/android/app/flybird/ui/CustomProgressWheel$WheelSavedState;
    }
.end annotation


# static fields
.field private static final INIT_LOCK:Ljava/lang/Object;


# instance fields
.field private barColor:I

.field private barExtraLength:F

.field private barGrowingFromFront:Z

.field private final barLength:I

.field private final barMaxLength:I

.field private barPaint:Landroid/graphics/Paint;

.field private barSpinCycleTime:D

.field private barWidth:I

.field private callback:Lcom/alipay/android/app/flybird/ui/CustomProgressWheel$ProgressCallback;

.field private circleBounds:Landroid/graphics/RectF;

.field private circleRadius:I

.field private fillRadius:Z

.field private isDrawFirstLine:Z

.field private isDrawSecondLine:Z

.field private isRunning:Z

.field private isSpinning:Z

.field private lastTimeAnimated:J

.field private lineProgress:F

.field private lineSpeed:F

.field private linearProgress:Z

.field private mProgress:F

.field private mTargetProgress:F

.field private final pauseGrowingTime:J

.field private pausedTimeWithoutGrowing:J

.field private rimColor:I

.field private rimPaint:Landroid/graphics/Paint;

.field private rimWidth:I

.field private spinSpeed:F

.field private tickSize:I

.field private timeStartGrowing:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->INIT_LOCK:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/16 v1, 0xa

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/16 v0, 0x69

    iput v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->circleRadius:I

    iput v1, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->barWidth:I

    iput v1, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->rimWidth:I

    const/16 v0, 0x10

    iput v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->barLength:I

    const/16 v0, 0x10e

    iput v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->barMaxLength:I

    iput-boolean v2, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->fillRadius:Z

    const-wide v0, 0x407f400000000000L    # 500.0

    iput-wide v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->timeStartGrowing:D

    const-wide v0, 0x407cc00000000000L    # 460.0

    iput-wide v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->barSpinCycleTime:D

    iput v3, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->barExtraLength:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->barGrowingFromFront:Z

    const-wide/16 v0, 0xd2

    iput-wide v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->pausedTimeWithoutGrowing:J

    const-wide/16 v0, 0xc8

    iput-wide v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->pauseGrowingTime:J

    const-string/jumbo v0, "#108ee9"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->barColor:I

    const v0, 0xffffff

    iput v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->rimColor:I

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->barPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->rimPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->circleBounds:Landroid/graphics/RectF;

    const/high16 v0, 0x43660000    # 230.0f

    iput v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->spinSpeed:F

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->lastTimeAnimated:J

    iput v3, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->mProgress:F

    iput v3, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->mTargetProgress:F

    iput-boolean v2, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->isSpinning:Z

    const/16 v0, 0x40

    iput v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->tickSize:I

    iput v3, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->lineProgress:F

    const v0, 0x3dcccccd    # 0.1f

    iput v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->lineSpeed:F

    iput-boolean v2, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->isDrawFirstLine:Z

    iput-boolean v2, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->isDrawSecondLine:Z

    iput-boolean v2, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->isRunning:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    const/16 v1, 0xa

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 v0, 0x69

    iput v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->circleRadius:I

    iput v1, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->barWidth:I

    iput v1, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->rimWidth:I

    const/16 v0, 0x10

    iput v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->barLength:I

    const/16 v0, 0x10e

    iput v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->barMaxLength:I

    iput-boolean v2, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->fillRadius:Z

    const-wide v0, 0x407f400000000000L    # 500.0

    iput-wide v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->timeStartGrowing:D

    const-wide v0, 0x407cc00000000000L    # 460.0

    iput-wide v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->barSpinCycleTime:D

    iput v3, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->barExtraLength:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->barGrowingFromFront:Z

    const-wide/16 v0, 0xd2

    iput-wide v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->pausedTimeWithoutGrowing:J

    const-wide/16 v0, 0xc8

    iput-wide v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->pauseGrowingTime:J

    const-string/jumbo v0, "#108ee9"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->barColor:I

    const v0, 0xffffff

    iput v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->rimColor:I

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->barPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->rimPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->circleBounds:Landroid/graphics/RectF;

    const/high16 v0, 0x43660000    # 230.0f

    iput v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->spinSpeed:F

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->lastTimeAnimated:J

    iput v3, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->mProgress:F

    iput v3, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->mTargetProgress:F

    iput-boolean v2, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->isSpinning:Z

    const/16 v0, 0x40

    iput v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->tickSize:I

    iput v3, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->lineProgress:F

    const v0, 0x3dcccccd    # 0.1f

    iput v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->lineSpeed:F

    iput-boolean v2, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->isDrawFirstLine:Z

    iput-boolean v2, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->isDrawSecondLine:Z

    iput-boolean v2, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->isRunning:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    const/16 v1, 0xa

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 v0, 0x69

    iput v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->circleRadius:I

    iput v1, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->barWidth:I

    iput v1, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->rimWidth:I

    const/16 v0, 0x10

    iput v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->barLength:I

    const/16 v0, 0x10e

    iput v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->barMaxLength:I

    iput-boolean v2, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->fillRadius:Z

    const-wide v0, 0x407f400000000000L    # 500.0

    iput-wide v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->timeStartGrowing:D

    const-wide v0, 0x407cc00000000000L    # 460.0

    iput-wide v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->barSpinCycleTime:D

    iput v3, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->barExtraLength:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->barGrowingFromFront:Z

    const-wide/16 v0, 0xd2

    iput-wide v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->pausedTimeWithoutGrowing:J

    const-wide/16 v0, 0xc8

    iput-wide v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->pauseGrowingTime:J

    const-string/jumbo v0, "#108ee9"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->barColor:I

    const v0, 0xffffff

    iput v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->rimColor:I

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->barPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->rimPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->circleBounds:Landroid/graphics/RectF;

    const/high16 v0, 0x43660000    # 230.0f

    iput v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->spinSpeed:F

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->lastTimeAnimated:J

    iput v3, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->mProgress:F

    iput v3, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->mTargetProgress:F

    iput-boolean v2, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->isSpinning:Z

    const/16 v0, 0x40

    iput v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->tickSize:I

    iput v3, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->lineProgress:F

    const v0, 0x3dcccccd    # 0.1f

    iput v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->lineSpeed:F

    iput-boolean v2, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->isDrawFirstLine:Z

    iput-boolean v2, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->isDrawSecondLine:Z

    iput-boolean v2, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->isRunning:Z

    return-void
.end method

.method private runCallback()V
    .locals 3

    const/high16 v2, 0x42c80000    # 100.0f

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->callback:Lcom/alipay/android/app/flybird/ui/CustomProgressWheel$ProgressCallback;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->mProgress:F

    mul-float/2addr v0, v2

    const/high16 v1, 0x43b40000    # 360.0f

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->callback:Lcom/alipay/android/app/flybird/ui/CustomProgressWheel$ProgressCallback;

    invoke-interface {v1, v0}, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel$ProgressCallback;->onProgressUpdate(F)V

    :cond_0
    return-void
.end method

.method private runCallback(F)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->callback:Lcom/alipay/android/app/flybird/ui/CustomProgressWheel$ProgressCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->callback:Lcom/alipay/android/app/flybird/ui/CustomProgressWheel$ProgressCallback;

    invoke-interface {v0, p1}, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel$ProgressCallback;->onProgressUpdate(F)V

    :cond_0
    return-void
.end method

.method private setupBounds(II)V
    .locals 7

    invoke-virtual {p0}, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->getPaddingBottom()I

    move-result v1

    invoke-virtual {p0}, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->getPaddingRight()I

    move-result v3

    iget-boolean v4, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->fillRadius:Z

    if-nez v4, :cond_0

    sub-int v4, p1, v2

    sub-int/2addr v4, v3

    sub-int v5, p2, v1

    sub-int/2addr v5, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    iget v5, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->circleRadius:I

    mul-int/lit8 v5, v5, 0x2

    iget v6, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->barWidth:I

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

    iget v3, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->barWidth:I

    add-int/2addr v3, v2

    int-to-float v3, v3

    iget v5, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->barWidth:I

    add-int/2addr v5, v0

    int-to-float v5, v5

    add-int/2addr v2, v4

    iget v6, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->barWidth:I

    sub-int/2addr v2, v6

    int-to-float v2, v2

    add-int/2addr v0, v4

    iget v4, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->barWidth:I

    sub-int/2addr v0, v4

    int-to-float v0, v0

    invoke-direct {v1, v3, v5, v2, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v1, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->circleBounds:Landroid/graphics/RectF;

    :goto_0
    return-void

    :cond_0
    new-instance v4, Landroid/graphics/RectF;

    iget v5, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->barWidth:I

    add-int/2addr v2, v5

    int-to-float v2, v2

    iget v5, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->barWidth:I

    add-int/2addr v0, v5

    int-to-float v0, v0

    sub-int v3, p1, v3

    iget v5, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->barWidth:I

    sub-int/2addr v3, v5

    int-to-float v3, v3

    sub-int v1, p2, v1

    iget v5, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->barWidth:I

    sub-int/2addr v1, v5

    int-to-float v1, v1

    invoke-direct {v4, v2, v0, v3, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v4, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->circleBounds:Landroid/graphics/RectF;

    goto :goto_0
.end method

.method private setupPaints()V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->barPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->barColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->barPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->barPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->barPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->barWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->barPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->rimPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->rimColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->rimPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->rimPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->rimPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->rimWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method private updateBarLength(J)V
    .locals 5

    iget-wide v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->pausedTimeWithoutGrowing:J

    const-wide/16 v2, 0xc8

    cmp-long v0, v0, v2

    if-ltz v0, :cond_3

    iget-wide v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->timeStartGrowing:D

    long-to-double v2, p1

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->timeStartGrowing:D

    iget-wide v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->timeStartGrowing:D

    iget-wide v2, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->barSpinCycleTime:D

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    iget-wide v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->timeStartGrowing:D

    iget-wide v2, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->barSpinCycleTime:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->timeStartGrowing:D

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->pausedTimeWithoutGrowing:J

    iget-boolean v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->barGrowingFromFront:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->barGrowingFromFront:Z

    :cond_0
    iget-wide v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->timeStartGrowing:D

    iget-wide v2, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->barSpinCycleTime:D

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

    iget-boolean v2, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->barGrowingFromFront:Z

    if-eqz v2, :cond_2

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->barExtraLength:F

    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v0, v2, v0

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->mProgress:F

    iget v2, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->barExtraLength:F

    sub-float/2addr v2, v0

    add-float/2addr v1, v2

    iput v1, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->mProgress:F

    iput v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->barExtraLength:F

    goto :goto_1

    :cond_3
    iget-wide v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->pausedTimeWithoutGrowing:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->pausedTimeWithoutGrowing:J

    goto :goto_1
.end method


# virtual methods
.method public beginDrawTick()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->isDrawFirstLine:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->isDrawSecondLine:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->lineProgress:F

    invoke-virtual {p0}, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->invalidate()V

    return-void
.end method

.method public getBarColor()I
    .locals 1

    iget v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->barColor:I

    return v0
.end method

.method public getBarWidth()I
    .locals 1

    iget v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->barWidth:I

    return v0
.end method

.method public getCircleRadius()I
    .locals 1

    iget v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->circleRadius:I

    return v0
.end method

.method public getProgress()F
    .locals 2

    iget-boolean v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->isSpinning:Z

    if-eqz v0, :cond_0

    const/high16 v0, -0x40800000    # -1.0f

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->mProgress:F

    const/high16 v1, 0x43b40000    # 360.0f

    div-float/2addr v0, v1

    goto :goto_0
.end method

.method public getRimColor()I
    .locals 1

    iget v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->rimColor:I

    return v0
.end method

.method public getRimWidth()I
    .locals 1

    iget v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->rimWidth:I

    return v0
.end method

.method public getSpinSpeed()F
    .locals 2

    iget v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->spinSpeed:F

    const/high16 v1, 0x43b40000    # 360.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public isSpinning()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->isSpinning:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    sget-object v1, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->isRunning:Z

    if-nez v0, :cond_1

    monitor-exit v1

    :cond_0
    :goto_0
    return-void

    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->circleBounds:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x3ff999999999999aL    # 1.6

    div-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->tickSize:I

    iget-boolean v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->isDrawFirstLine:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->isDrawSecondLine:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->circleBounds:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v6

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->circleBounds:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v7

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->circleBounds:Landroid/graphics/RectF;

    const/high16 v2, 0x43b40000    # 360.0f

    const/high16 v3, 0x43b40000    # 360.0f

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->barPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    iget v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->tickSize:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    sub-float v1, v6, v0

    iget v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->tickSize:I

    div-int/lit8 v0, v0, 0x6

    int-to-float v0, v0

    add-float v2, v7, v0

    iget v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->tickSize:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    sub-float v0, v6, v0

    iget v3, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->tickSize:I

    div-int/lit8 v3, v3, 0x3

    int-to-float v3, v3

    iget v4, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->lineProgress:F

    mul-float/2addr v3, v4

    add-float/2addr v3, v0

    iget v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->tickSize:I

    div-int/lit8 v0, v0, 0x6

    int-to-float v0, v0

    add-float/2addr v0, v7

    iget v4, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->tickSize:I

    div-int/lit8 v4, v4, 0x3

    int-to-float v4, v4

    iget v5, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->lineProgress:F

    mul-float/2addr v4, v5

    add-float/2addr v4, v0

    iget-object v5, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->barPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->lineProgress:F

    iget v1, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->lineSpeed:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->lineProgress:F

    iget v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->lineProgress:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_2

    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->lineProgress:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->isDrawSecondLine:Z

    :cond_2
    const/4 v6, 0x1

    :goto_1
    if-eqz v6, :cond_0

    invoke-virtual {p0}, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->invalidate()V

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_3
    iget-boolean v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->isDrawFirstLine:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->isDrawSecondLine:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->circleBounds:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v6

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->circleBounds:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v7

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->circleBounds:Landroid/graphics/RectF;

    const/high16 v2, 0x43b40000    # 360.0f

    const/high16 v3, 0x43b40000    # 360.0f

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->barPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    iget v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->tickSize:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    sub-float v1, v6, v0

    iget v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->tickSize:I

    div-int/lit8 v0, v0, 0x6

    int-to-float v0, v0

    add-float v2, v7, v0

    iget v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->tickSize:I

    div-int/lit8 v0, v0, 0x6

    int-to-float v0, v0

    sub-float v3, v6, v0

    iget v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->tickSize:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    add-float v4, v7, v0

    iget-object v5, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->barPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->tickSize:I

    div-int/lit8 v0, v0, 0x6

    int-to-float v0, v0

    sub-float v1, v6, v0

    iget v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->tickSize:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    add-float v2, v7, v0

    iget v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->tickSize:I

    div-int/lit8 v0, v0, 0x6

    int-to-float v0, v0

    sub-float v0, v6, v0

    iget v3, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->tickSize:I

    mul-int/lit8 v3, v3, 0x7

    div-int/lit8 v3, v3, 0xc

    int-to-float v3, v3

    iget v4, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->lineProgress:F

    mul-float/2addr v3, v4

    add-float/2addr v3, v0

    iget v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->tickSize:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    add-float/2addr v0, v7

    iget v4, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->tickSize:I

    mul-int/lit8 v4, v4, 0x3

    div-int/lit8 v4, v4, 0x4

    int-to-float v4, v4

    iget v5, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->lineProgress:F

    mul-float/2addr v4, v5

    sub-float v4, v0, v4

    iget-object v5, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->barPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->lineProgress:F

    iget v1, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->lineSpeed:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->lineProgress:F

    iget v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->lineProgress:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_4

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->lineProgress:F

    :cond_4
    const/4 v6, 0x1

    goto/16 :goto_1

    :cond_5
    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->circleBounds:Landroid/graphics/RectF;

    const/high16 v2, 0x43b40000    # 360.0f

    const/high16 v3, 0x43b40000    # 360.0f

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->rimPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    iget-boolean v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->isSpinning:Z

    if-eqz v0, :cond_8

    const/4 v6, 0x1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->lastTimeAnimated:J

    sub-long/2addr v0, v2

    long-to-float v2, v0

    iget v3, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->spinSpeed:F

    mul-float/2addr v2, v3

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float/2addr v2, v3

    invoke-direct {p0, v0, v1}, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->updateBarLength(J)V

    iget v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->mProgress:F

    add-float/2addr v0, v2

    iput v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->mProgress:F

    iget v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->mProgress:F

    const/high16 v1, 0x43b40000    # 360.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_6

    iget v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->mProgress:F

    const/high16 v1, 0x43b40000    # 360.0f

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->mProgress:F

    const/high16 v0, -0x40800000    # -1.0f

    invoke-direct {p0, v0}, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->runCallback(F)V

    :cond_6
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->lastTimeAnimated:J

    iget v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->mProgress:F

    const/high16 v1, 0x42b40000    # 90.0f

    sub-float v2, v0, v1

    const/high16 v0, 0x41800000    # 16.0f

    iget v1, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->barExtraLength:F

    add-float v3, v0, v1

    invoke-virtual {p0}, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v2, 0x0

    const/high16 v3, 0x43070000    # 135.0f

    :cond_7
    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->circleBounds:Landroid/graphics/RectF;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->barPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto/16 :goto_1

    :cond_8
    iget v1, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->mProgress:F

    iget v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->mProgress:F

    iget v2, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->mTargetProgress:F

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->lastTimeAnimated:J

    sub-long/2addr v2, v4

    long-to-float v2, v2

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float/2addr v2, v3

    iget v3, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->spinSpeed:F

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->mProgress:F

    add-float/2addr v2, v3

    iget v3, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->mTargetProgress:F

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iput v2, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->mProgress:F

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->lastTimeAnimated:J

    move v6, v0

    :cond_9
    iget v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->mProgress:F

    cmpl-float v0, v1, v0

    if-eqz v0, :cond_a

    invoke-direct {p0}, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->runCallback()V

    :cond_a
    const/4 v1, 0x0

    iget v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->mProgress:F

    iget-boolean v2, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->linearProgress:Z

    if-nez v2, :cond_c

    const/high16 v0, 0x40000000    # 2.0f

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const/high16 v1, 0x3f800000    # 1.0f

    iget v4, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->mProgress:F

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

    iget v5, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->mProgress:F

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
    invoke-virtual {p0}, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->isInEditMode()Z

    move-result v1

    if-eqz v1, :cond_b

    const/high16 v3, 0x43b40000    # 360.0f

    :goto_3
    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->circleBounds:Landroid/graphics/RectF;

    const/high16 v0, 0x42b40000    # 90.0f

    sub-float/2addr v2, v0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->barPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto/16 :goto_1

    :cond_b
    move v3, v0

    goto :goto_3

    :cond_c
    move v2, v1

    goto :goto_2
.end method

.method protected onMeasure(II)V
    .locals 8

    const/high16 v7, -0x80000000

    const/high16 v6, 0x40000000    # 2.0f

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    iget v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->circleRadius:I

    mul-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->getPaddingRight()I

    move-result v1

    add-int v3, v0, v1

    iget v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->circleRadius:I

    mul-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->getPaddingTop()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->getPaddingBottom()I

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
    invoke-virtual {p0, v2, v0}, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->setMeasuredDimension(II)V

    return-void

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

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    instance-of v0, p1, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel$WheelSavedState;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    :goto_0
    return-void

    :cond_0
    check-cast p1, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel$WheelSavedState;

    invoke-virtual {p1}, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel$WheelSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget v0, p1, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel$WheelSavedState;->mProgress:F

    iput v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->mProgress:F

    iget v0, p1, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel$WheelSavedState;->mTargetProgress:F

    iput v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->mTargetProgress:F

    iget-boolean v0, p1, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel$WheelSavedState;->isSpinning:Z

    iput-boolean v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->isSpinning:Z

    iget v0, p1, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel$WheelSavedState;->spinSpeed:F

    iput v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->spinSpeed:F

    iget v0, p1, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel$WheelSavedState;->barWidth:I

    iput v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->barWidth:I

    iget v0, p1, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel$WheelSavedState;->barColor:I

    iput v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->barColor:I

    iget v0, p1, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel$WheelSavedState;->rimWidth:I

    iput v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->rimWidth:I

    iget v0, p1, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel$WheelSavedState;->rimColor:I

    iput v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->rimColor:I

    iget v0, p1, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel$WheelSavedState;->circleRadius:I

    iput v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->circleRadius:I

    iget-boolean v0, p1, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel$WheelSavedState;->linearProgress:Z

    iput-boolean v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->linearProgress:Z

    iget-boolean v0, p1, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel$WheelSavedState;->fillRadius:Z

    iput-boolean v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->fillRadius:Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->lastTimeAnimated:J

    goto :goto_0
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel$WheelSavedState;

    invoke-direct {v1, v0}, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel$WheelSavedState;-><init>(Landroid/os/Parcelable;)V

    iget v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->mProgress:F

    iput v0, v1, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel$WheelSavedState;->mProgress:F

    iget v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->mTargetProgress:F

    iput v0, v1, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel$WheelSavedState;->mTargetProgress:F

    iget-boolean v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->isSpinning:Z

    iput-boolean v0, v1, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel$WheelSavedState;->isSpinning:Z

    iget v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->spinSpeed:F

    iput v0, v1, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel$WheelSavedState;->spinSpeed:F

    iget v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->barWidth:I

    iput v0, v1, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel$WheelSavedState;->barWidth:I

    iget v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->barColor:I

    iput v0, v1, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel$WheelSavedState;->barColor:I

    iget v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->rimWidth:I

    iput v0, v1, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel$WheelSavedState;->rimWidth:I

    iget v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->rimColor:I

    iput v0, v1, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel$WheelSavedState;->rimColor:I

    iget v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->circleRadius:I

    iput v0, v1, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel$WheelSavedState;->circleRadius:I

    iget-boolean v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->linearProgress:Z

    iput-boolean v0, v1, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel$WheelSavedState;->linearProgress:Z

    iget-boolean v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->fillRadius:Z

    iput-boolean v0, v1, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel$WheelSavedState;->fillRadius:Z

    return-object v1
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    invoke-direct {p0, p1, p2}, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->setupBounds(II)V

    invoke-direct {p0}, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->setupPaints()V

    invoke-virtual {p0}, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->invalidate()V

    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    if-nez p2, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->lastTimeAnimated:J

    :cond_0
    return-void
.end method

.method public pause()V
    .locals 4

    sget-object v1, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->isRunning:Z

    const-wide v2, 0x407f400000000000L    # 500.0

    iput-wide v2, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->timeStartGrowing:D

    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->barExtraLength:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->barGrowingFromFront:Z

    const-wide/16 v2, 0xd2

    iput-wide v2, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->pausedTimeWithoutGrowing:J

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->lastTimeAnimated:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->mProgress:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->mTargetProgress:F

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public resetCount()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->mProgress:F

    iput v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->mTargetProgress:F

    invoke-virtual {p0}, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->invalidate()V

    return-void
.end method

.method public setBarColor(I)V
    .locals 1

    iput p1, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->barColor:I

    invoke-direct {p0}, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->setupPaints()V

    iget-boolean v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->isSpinning:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->invalidate()V

    :cond_0
    return-void
.end method

.method public setBarWidth(I)V
    .locals 1

    iput p1, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->barWidth:I

    iget-boolean v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->isSpinning:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->invalidate()V

    :cond_0
    return-void
.end method

.method public setCallback(Lcom/alipay/android/app/flybird/ui/CustomProgressWheel$ProgressCallback;)V
    .locals 1

    iput-object p1, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->callback:Lcom/alipay/android/app/flybird/ui/CustomProgressWheel$ProgressCallback;

    iget-boolean v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->isSpinning:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->runCallback()V

    :cond_0
    return-void
.end method

.method public setCircleRadius(I)V
    .locals 1

    iput p1, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->circleRadius:I

    iget-boolean v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->isSpinning:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->invalidate()V

    :cond_0
    return-void
.end method

.method public setInstantProgress(F)V
    .locals 4

    const/high16 v3, 0x43b40000    # 360.0f

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->isSpinning:Z

    if-eqz v1, :cond_0

    iput v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->mProgress:F

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->isSpinning:Z

    :cond_0
    cmpl-float v1, p1, v2

    if-lez v1, :cond_2

    sub-float/2addr p1, v2

    :cond_1
    :goto_0
    iget v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->mTargetProgress:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_3

    :goto_1
    return-void

    :cond_2
    cmpg-float v1, p1, v0

    if-gez v1, :cond_1

    move p1, v0

    goto :goto_0

    :cond_3
    mul-float v0, p1, v3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->mTargetProgress:F

    iget v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->mTargetProgress:F

    iput v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->mProgress:F

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->lastTimeAnimated:J

    invoke-virtual {p0}, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->invalidate()V

    goto :goto_1
.end method

.method public setLinearProgress(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->linearProgress:Z

    iget-boolean v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->isSpinning:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->invalidate()V

    :cond_0
    return-void
.end method

.method public setProgress(F)V
    .locals 4

    const/high16 v3, 0x43b40000    # 360.0f

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->isSpinning:Z

    if-eqz v1, :cond_0

    iput v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->mProgress:F

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->isSpinning:Z

    invoke-direct {p0}, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->runCallback()V

    :cond_0
    cmpl-float v1, p1, v2

    if-lez v1, :cond_2

    sub-float/2addr p1, v2

    :cond_1
    :goto_0
    iget v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->mTargetProgress:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_3

    :goto_1
    return-void

    :cond_2
    cmpg-float v1, p1, v0

    if-gez v1, :cond_1

    move p1, v0

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->mProgress:F

    iget v1, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->mTargetProgress:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->lastTimeAnimated:J

    :cond_4
    mul-float v0, p1, v3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->mTargetProgress:F

    invoke-virtual {p0}, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->invalidate()V

    goto :goto_1
.end method

.method public setRimColor(I)V
    .locals 1

    iput p1, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->rimColor:I

    invoke-direct {p0}, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->setupPaints()V

    iget-boolean v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->isSpinning:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->invalidate()V

    :cond_0
    return-void
.end method

.method public setRimWidth(I)V
    .locals 1

    iput p1, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->rimWidth:I

    iget-boolean v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->isSpinning:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->invalidate()V

    :cond_0
    return-void
.end method

.method public setSpinSpeed(F)V
    .locals 1

    const/high16 v0, 0x43b40000    # 360.0f

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->spinSpeed:F

    return-void
.end method

.method public spin()V
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->lastTimeAnimated:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->isSpinning:Z

    invoke-virtual {p0}, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->invalidate()V

    return-void
.end method

.method public start()V
    .locals 2

    sget-object v1, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->isRunning:Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public stopSpinning()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->isSpinning:Z

    iput v1, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->mProgress:F

    iput v1, p0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->mTargetProgress:F

    invoke-virtual {p0}, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->invalidate()V

    return-void
.end method
