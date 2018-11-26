.class public Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsDialView;
.super Landroid/view/View;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final START_ANGLE:F

.field private final TOTAL_ANGLE:F

.field mSpeedArcRectF:Landroid/graphics/RectF;

.field mSpeedDialBgPaint:Landroid/graphics/Paint;

.field mSpeedDialPaint:Landroid/graphics/Paint;

.field private mSpeedDialWidth:F

.field private mSpeedPrecent:I

.field mStepArcRectF:Landroid/graphics/RectF;

.field mStepDialBgPaint:Landroid/graphics/Paint;

.field mStepDialPaint:Landroid/graphics/Paint;

.field private mStepDialWidth:F

.field private mStepPrecent:I

.field private mStepSpeedDialPadding:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsDialView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsDialView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/high16 v0, 0x43870000    # 270.0f

    iput v0, p0, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsDialView;->TOTAL_ANGLE:F

    const/high16 v0, 0x43070000    # 135.0f

    iput v0, p0, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsDialView;->START_ANGLE:F

    invoke-direct {p0}, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsDialView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 v0, 0x43870000    # 270.0f

    iput v0, p0, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsDialView;->TOTAL_ANGLE:F

    const/high16 v0, 0x43070000    # 135.0f

    iput v0, p0, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsDialView;->START_ANGLE:F

    invoke-direct {p0}, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsDialView;->init()V

    return-void
.end method

.method private getSpeedDialAngle()F
    .locals 2

    iget v0, p0, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsDialView;->mSpeedPrecent:I

    int-to-float v0, v0

    const/high16 v1, 0x43870000    # 270.0f

    mul-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    return v0
.end method

.method private getStepDialAngle()F
    .locals 2

    iget v0, p0, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsDialView;->mStepPrecent:I

    int-to-float v0, v0

    const/high16 v1, 0x43870000    # 270.0f

    mul-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    return v0
.end method

.method private init()V
    .locals 4

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsDialView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0900fd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsDialView;->mStepDialWidth:F

    invoke-virtual {p0}, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsDialView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0900ff

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsDialView;->mSpeedDialWidth:F

    invoke-virtual {p0}, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsDialView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090101

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsDialView;->mStepSpeedDialPadding:F

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsDialView;->mStepDialBgPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsDialView;->mStepDialBgPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsDialView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08008a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsDialView;->mStepDialBgPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsDialView;->mStepDialWidth:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsDialView;->mStepDialBgPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsDialView;->mStepDialBgPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsDialView;->mStepDialPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsDialView;->mStepDialPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsDialView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080088

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsDialView;->mStepDialPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsDialView;->mStepDialWidth:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsDialView;->mStepDialPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsDialView;->mStepDialPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsDialView;->mSpeedDialBgPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsDialView;->mSpeedDialBgPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsDialView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08008c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsDialView;->mSpeedDialBgPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsDialView;->mSpeedDialWidth:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsDialView;->mSpeedDialBgPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsDialView;->mSpeedDialBgPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsDialView;->mSpeedDialPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsDialView;->mSpeedDialPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsDialView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08008b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsDialView;->mSpeedDialPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsDialView;->mSpeedDialWidth:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsDialView;->mSpeedDialPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsDialView;->mSpeedDialPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsDialView;->mStepArcRectF:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsDialView;->mSpeedArcRectF:Landroid/graphics/RectF;

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11

    const/high16 v3, 0x43870000    # 270.0f

    const/4 v4, 0x0

    const/high16 v2, 0x43070000    # 135.0f

    iget-object v1, p0, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsDialView;->mStepArcRectF:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsDialView;->mStepDialBgPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    iget-object v6, p0, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsDialView;->mStepArcRectF:Landroid/graphics/RectF;

    invoke-direct {p0}, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsDialView;->getStepDialAngle()F

    move-result v8

    iget-object v10, p0, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsDialView;->mStepDialPaint:Landroid/graphics/Paint;

    move-object v5, p1

    move v7, v2

    move v9, v4

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    iget-object v1, p0, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsDialView;->mSpeedArcRectF:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsDialView;->mSpeedDialBgPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    iget-object v1, p0, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsDialView;->mSpeedArcRectF:Landroid/graphics/RectF;

    invoke-direct {p0}, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsDialView;->getSpeedDialAngle()F

    move-result v3

    iget-object v5, p0, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsDialView;->mSpeedDialPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 5

    const/high16 v4, 0x40000000    # 2.0f

    iget-object v0, p0, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsDialView;->mStepArcRectF:Landroid/graphics/RectF;

    iget v1, p0, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsDialView;->mStepDialWidth:F

    div-float/2addr v1, v4

    iput v1, v0, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsDialView;->mStepArcRectF:Landroid/graphics/RectF;

    iget v1, p0, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsDialView;->mStepDialWidth:F

    div-float/2addr v1, v4

    iput v1, v0, Landroid/graphics/RectF;->top:F

    iget-object v0, p0, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsDialView;->mStepArcRectF:Landroid/graphics/RectF;

    int-to-float v1, p1

    iget v2, p0, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsDialView;->mStepDialWidth:F

    div-float/2addr v2, v4

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    iget-object v0, p0, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsDialView;->mStepArcRectF:Landroid/graphics/RectF;

    int-to-float v1, p2

    iget v2, p0, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsDialView;->mStepDialWidth:F

    div-float/2addr v2, v4

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v0, p0, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsDialView;->mSpeedArcRectF:Landroid/graphics/RectF;

    iget v1, p0, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsDialView;->mStepSpeedDialPadding:F

    iget v2, p0, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsDialView;->mSpeedDialWidth:F

    div-float/2addr v2, v4

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsDialView;->mSpeedArcRectF:Landroid/graphics/RectF;

    iget v1, p0, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsDialView;->mStepSpeedDialPadding:F

    iget v2, p0, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsDialView;->mSpeedDialWidth:F

    div-float/2addr v2, v4

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->top:F

    iget-object v0, p0, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsDialView;->mSpeedArcRectF:Landroid/graphics/RectF;

    int-to-float v1, p1

    iget v2, p0, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsDialView;->mStepSpeedDialPadding:F

    iget v3, p0, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsDialView;->mSpeedDialWidth:F

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    iget-object v0, p0, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsDialView;->mSpeedArcRectF:Landroid/graphics/RectF;

    int-to-float v1, p2

    iget v2, p0, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsDialView;->mStepSpeedDialPadding:F

    iget v3, p0, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsDialView;->mSpeedDialWidth:F

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    return-void
.end method

.method public setSetpDialColor(I)V
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsDialView;->mStepDialPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsDialView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsDialView;->invalidate()V

    return-void
.end method

.method public setSpeedPercent(I)V
    .locals 2

    const/16 v1, 0x64

    const/4 v0, 0x0

    if-gez p1, :cond_1

    move p1, v0

    :cond_0
    :goto_0
    iput p1, p0, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsDialView;->mSpeedPrecent:I

    invoke-virtual {p0}, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsDialView;->invalidate()V

    return-void

    :cond_1
    if-le p1, v1, :cond_0

    move p1, v1

    goto :goto_0
.end method

.method public setStepPercent(I)V
    .locals 2

    const/4 v1, 0x0

    if-ltz p1, :cond_0

    const/16 v0, 0x64

    if-le p1, v0, :cond_1

    :cond_0
    iput v1, p0, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsDialView;->mStepPrecent:I

    return-void

    :cond_1
    iput p1, p0, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsDialView;->mStepPrecent:I

    invoke-virtual {p0}, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsDialView;->invalidate()V

    return-void
.end method
