.class public Lcom/miui/payment/ui/view/PieChartView;
.super Landroid/view/View;
.source "PieChartView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/payment/ui/view/PieChartView$PieChartData;
    }
.end annotation


# static fields
.field private static final FULL_ANGLE:I = 0x168

.field private static final MIN_ANGLE:F = 0.5f

.field private static final sCenterRadiusRatio:F = 0.5f

.field private static final sDividerAngle:F = 1.2f

.field private static final sNormalRadiusRatio:F = 0.9f


# instance fields
.field private mCenterPosition:Landroid/graphics/Point;

.field private mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/payment/ui/view/PieChartView$PieChartData;",
            ">;"
        }
    .end annotation
.end field

.field private mPaintFill:Landroid/graphics/Paint;

.field private mPaintText:Landroid/graphics/Paint;

.field private mRadius:I

.field private mRadiusCenter:I

.field private mRadiusSelected:I

.field private mSelectedIndex:I

.field private mStartAngles:[F

.field private mSumValue:F

.field private mSweepAngles:[F

.field private mTextSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/payment/ui/view/PieChartView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/payment/ui/view/PieChartView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 v0, 0x24

    iput v0, p0, Lcom/miui/payment/ui/view/PieChartView;->mTextSize:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/payment/ui/view/PieChartView;->mSumValue:F

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/miui/payment/ui/view/PieChartView;->mPaintFill:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/miui/payment/ui/view/PieChartView;->mPaintText:Landroid/graphics/Paint;

    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/payment/ui/view/PieChartView;->mSelectedIndex:I

    invoke-direct {p0}, Lcom/miui/payment/ui/view/PieChartView;->init()V

    return-void
.end method

.method private calculateSelectedIndex(II)I
    .locals 8

    const/4 v3, -0x1

    invoke-direct {p0}, Lcom/miui/payment/ui/view/PieChartView;->getCount()I

    move-result v1

    if-gtz v1, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    int-to-double v4, p2

    int-to-double v6, p1

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v4

    const-wide v6, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v4, v6

    const-wide v6, 0x4076800000000000L    # 360.0

    mul-double/2addr v4, v6

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    div-double/2addr v4, v6

    double-to-int v0, v4

    if-gez v0, :cond_2

    add-int/lit16 v0, v0, 0x168

    :cond_2
    const/4 v2, 0x0

    :goto_1
    iget-object v4, p0, Lcom/miui/payment/ui/view/PieChartView;->mStartAngles:[F

    array-length v4, v4

    if-ge v2, v4, :cond_0

    iget-object v4, p0, Lcom/miui/payment/ui/view/PieChartView;->mStartAngles:[F

    aget v4, v4, v2

    int-to-float v5, v0

    cmpl-float v4, v4, v5

    if-lez v4, :cond_3

    add-int/lit8 v3, v2, -0x1

    goto :goto_0

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private calculateSweepAngle()V
    .locals 13

    const/high16 v12, 0x43b40000    # 360.0f

    const v11, 0x3f99999a    # 1.2f

    const/4 v10, 0x0

    iput v10, p0, Lcom/miui/payment/ui/view/PieChartView;->mSumValue:F

    iget-object v6, p0, Lcom/miui/payment/ui/view/PieChartView;->mData:Ljava/util/List;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/miui/payment/ui/view/PieChartView;->mData:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_4

    iget-object v6, p0, Lcom/miui/payment/ui/view/PieChartView;->mData:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    iget v6, p0, Lcom/miui/payment/ui/view/PieChartView;->mSumValue:F

    float-to-double v8, v6

    iget-object v6, p0, Lcom/miui/payment/ui/view/PieChartView;->mData:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/miui/payment/ui/view/PieChartView$PieChartData;

    invoke-virtual {v6}, Lcom/miui/payment/ui/view/PieChartView$PieChartData;->getValue()D

    move-result-wide v6

    add-double/2addr v6, v8

    double-to-float v6, v6

    iput v6, p0, Lcom/miui/payment/ui/view/PieChartView;->mSumValue:F

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget v6, p0, Lcom/miui/payment/ui/view/PieChartView;->mSumValue:F

    cmpl-float v6, v6, v10

    if-lez v6, :cond_4

    iget-object v6, p0, Lcom/miui/payment/ui/view/PieChartView;->mData:Ljava/util/List;

    new-instance v7, Lcom/miui/payment/ui/view/PieChartView$1;

    invoke-direct {v7, p0}, Lcom/miui/payment/ui/view/PieChartView$1;-><init>(Lcom/miui/payment/ui/view/PieChartView;)V

    invoke-static {v6, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    add-int/lit8 v6, v1, 0x1

    new-array v6, v6, [F

    iput-object v6, p0, Lcom/miui/payment/ui/view/PieChartView;->mStartAngles:[F

    new-array v6, v1, [F

    iput-object v6, p0, Lcom/miui/payment/ui/view/PieChartView;->mSweepAngles:[F

    int-to-float v6, v1

    mul-float/2addr v6, v11

    sub-float v0, v12, v6

    move v3, v0

    const/4 v4, 0x0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_3

    iget-object v6, p0, Lcom/miui/payment/ui/view/PieChartView;->mStartAngles:[F

    aput v4, v6, v2

    iget-object v6, p0, Lcom/miui/payment/ui/view/PieChartView;->mData:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/miui/payment/ui/view/PieChartView$PieChartData;

    invoke-virtual {v6}, Lcom/miui/payment/ui/view/PieChartView$PieChartData;->getValue()D

    move-result-wide v6

    iget v8, p0, Lcom/miui/payment/ui/view/PieChartView;->mSumValue:F

    float-to-double v8, v8

    div-double/2addr v6, v8

    float-to-double v8, v0

    mul-double/2addr v6, v8

    double-to-float v5, v6

    cmpg-float v6, v5, v3

    if-gez v6, :cond_2

    const/high16 v6, 0x3f000000    # 0.5f

    cmpg-float v6, v5, v6

    if-gez v6, :cond_1

    const/high16 v5, 0x3f000000    # 0.5f

    :cond_1
    sub-float/2addr v3, v5

    :goto_2
    iget-object v6, p0, Lcom/miui/payment/ui/view/PieChartView;->mSweepAngles:[F

    aput v5, v6, v2

    add-float v6, v4, v5

    add-float v4, v6, v11

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    move v5, v3

    const/4 v3, 0x0

    goto :goto_2

    :cond_3
    iget-object v6, p0, Lcom/miui/payment/ui/view/PieChartView;->mStartAngles:[F

    aput v12, v6, v1

    :cond_4
    return-void
.end method

.method private drawCenterCircle(Landroid/graphics/Canvas;)V
    .locals 6

    iget-object v0, p0, Lcom/miui/payment/ui/view/PieChartView;->mPaintFill:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/miui/payment/ui/view/PieChartView;->mCenterPosition:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget v2, p0, Lcom/miui/payment/ui/view/PieChartView;->mRadiusCenter:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/miui/payment/ui/view/PieChartView;->mCenterPosition:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    iget v3, p0, Lcom/miui/payment/ui/view/PieChartView;->mRadiusCenter:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/miui/payment/ui/view/PieChartView;->mCenterPosition:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    iget v4, p0, Lcom/miui/payment/ui/view/PieChartView;->mRadiusCenter:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    iget-object v4, p0, Lcom/miui/payment/ui/view/PieChartView;->mCenterPosition:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    iget v5, p0, Lcom/miui/payment/ui/view/PieChartView;->mRadiusCenter:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v1, p0, Lcom/miui/payment/ui/view/PieChartView;->mPaintFill:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method private drawLabels(Landroid/graphics/Canvas;)V
    .locals 18

    move-object/from16 v0, p0

    iget v9, v0, Lcom/miui/payment/ui/view/PieChartView;->mSelectedIndex:I

    if-ltz v9, :cond_0

    invoke-direct/range {p0 .. p0}, Lcom/miui/payment/ui/view/PieChartView;->getCount()I

    move-result v9

    if-eqz v9, :cond_0

    move-object/from16 v0, p0

    iget v9, v0, Lcom/miui/payment/ui/view/PieChartView;->mSumValue:F

    const/4 v10, 0x0

    cmpl-float v9, v9, v10

    if-nez v9, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v4, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/miui/payment/ui/view/PieChartView;->mData:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v4, v9, :cond_0

    move-object/from16 v0, p0

    iget v9, v0, Lcom/miui/payment/ui/view/PieChartView;->mSelectedIndex:I

    if-ne v9, v4, :cond_2

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/miui/payment/ui/view/PieChartView;->mStartAngles:[F

    aget v9, v9, v4

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/miui/payment/ui/view/PieChartView;->mStartAngles:[F

    add-int/lit8 v11, v4, 0x1

    aget v10, v10, v11

    add-float/2addr v9, v10

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    float-to-double v10, v9

    const-wide v12, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v10, v12

    const-wide v12, 0x4076800000000000L    # 360.0

    div-double/2addr v10, v12

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    mul-double v6, v10, v12

    move-object/from16 v0, p0

    iget v9, v0, Lcom/miui/payment/ui/view/PieChartView;->mRadiusSelected:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/miui/payment/ui/view/PieChartView;->mRadiusCenter:I

    add-int/2addr v9, v10

    div-int/lit8 v8, v9, 0x2

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/miui/payment/ui/view/PieChartView;->mPaintText:Landroid/graphics/Paint;

    invoke-virtual {v9}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v2

    iget v9, v2, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget v10, v2, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float v3, v9, v10

    const/high16 v9, 0x40000000    # 2.0f

    div-float v9, v3, v9

    iget v10, v2, Landroid/graphics/Paint$FontMetrics;->bottom:F

    sub-float v5, v9, v10

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/miui/payment/ui/view/PieChartView;->mData:Ljava/util/List;

    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/miui/payment/ui/view/PieChartView$PieChartData;

    invoke-virtual {v9}, Lcom/miui/payment/ui/view/PieChartView$PieChartData;->getLabel()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/miui/payment/ui/view/PieChartView;->mCenterPosition:Landroid/graphics/Point;

    iget v10, v10, Landroid/graphics/Point;->x:I

    int-to-double v10, v10

    int-to-double v12, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    mul-double/2addr v12, v14

    add-double/2addr v10, v12

    double-to-float v10, v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/miui/payment/ui/view/PieChartView;->mCenterPosition:Landroid/graphics/Point;

    iget v11, v11, Landroid/graphics/Point;->y:I

    int-to-double v12, v11

    int-to-double v14, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v16

    mul-double v14, v14, v16

    add-double/2addr v12, v14

    double-to-float v11, v12

    add-float/2addr v11, v5

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/miui/payment/ui/view/PieChartView;->mPaintText:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v9, v10, v11, v12}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0
.end method

.method private drawSectors(Landroid/graphics/Canvas;)V
    .locals 9

    iget-object v0, p0, Lcom/miui/payment/ui/view/PieChartView;->mData:Ljava/util/List;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/miui/payment/ui/view/PieChartView;->mSumValue:F

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_1

    const/4 v7, 0x0

    :goto_0
    iget-object v0, p0, Lcom/miui/payment/ui/view/PieChartView;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v7, v0, :cond_1

    iget v0, p0, Lcom/miui/payment/ui/view/PieChartView;->mRadius:I

    int-to-float v8, v0

    iget v0, p0, Lcom/miui/payment/ui/view/PieChartView;->mSelectedIndex:I

    if-ne v7, v0, :cond_0

    iget v0, p0, Lcom/miui/payment/ui/view/PieChartView;->mRadiusSelected:I

    int-to-float v8, v0

    :cond_0
    iget-object v0, p0, Lcom/miui/payment/ui/view/PieChartView;->mData:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/miui/payment/ui/view/PieChartView$PieChartData;

    iget-object v0, p0, Lcom/miui/payment/ui/view/PieChartView;->mPaintFill:Landroid/graphics/Paint;

    invoke-virtual {v6}, Lcom/miui/payment/ui/view/PieChartView$PieChartData;->getColor()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v1, Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/miui/payment/ui/view/PieChartView;->mCenterPosition:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    sub-float/2addr v0, v8

    iget-object v2, p0, Lcom/miui/payment/ui/view/PieChartView;->mCenterPosition:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    sub-float/2addr v2, v8

    iget-object v3, p0, Lcom/miui/payment/ui/view/PieChartView;->mCenterPosition:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    add-float/2addr v3, v8

    iget-object v4, p0, Lcom/miui/payment/ui/view/PieChartView;->mCenterPosition:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    add-float/2addr v4, v8

    invoke-direct {v1, v0, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v0, p0, Lcom/miui/payment/ui/view/PieChartView;->mStartAngles:[F

    aget v2, v0, v7

    iget-object v0, p0, Lcom/miui/payment/ui/view/PieChartView;->mSweepAngles:[F

    aget v3, v0, v7

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/miui/payment/ui/view/PieChartView;->mPaintFill:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private getCount()I
    .locals 1

    iget-object v0, p0, Lcom/miui/payment/ui/view/PieChartView;->mData:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/miui/payment/ui/view/PieChartView;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method private init()V
    .locals 3

    iget-object v0, p0, Lcom/miui/payment/ui/view/PieChartView;->mPaintFill:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/miui/payment/ui/view/PieChartView;->mPaintFill:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/miui/payment/ui/view/PieChartView;->mPaintText:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/miui/payment/ui/view/PieChartView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1b0f00dc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/miui/payment/ui/view/PieChartView;->mPaintText:Landroid/graphics/Paint;

    iget v1, p0, Lcom/miui/payment/ui/view/PieChartView;->mTextSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/miui/payment/ui/view/PieChartView;->mPaintText:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    return-void
.end method


# virtual methods
.method public getData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/miui/payment/ui/view/PieChartView$PieChartData;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/payment/ui/view/PieChartView;->mData:Ljava/util/List;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lcom/miui/payment/ui/view/PieChartView;->drawSectors(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lcom/miui/payment/ui/view/PieChartView;->drawCenterCircle(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lcom/miui/payment/ui/view/PieChartView;->drawLabels(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 5

    const/high16 v4, 0x40000000    # 2.0f

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    new-instance v1, Landroid/graphics/Point;

    int-to-float v2, p1

    div-float/2addr v2, v4

    float-to-int v2, v2

    int-to-float v3, p2

    div-float/2addr v3, v4

    float-to-int v3, v3

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    iput-object v1, p0, Lcom/miui/payment/ui/view/PieChartView;->mCenterPosition:Landroid/graphics/Point;

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    div-int/lit8 v1, v0, 0x2

    iput v1, p0, Lcom/miui/payment/ui/view/PieChartView;->mRadiusSelected:I

    iget v1, p0, Lcom/miui/payment/ui/view/PieChartView;->mRadiusSelected:I

    int-to-float v1, v1

    const v2, 0x3f666666    # 0.9f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/miui/payment/ui/view/PieChartView;->mRadius:I

    iget v1, p0, Lcom/miui/payment/ui/view/PieChartView;->mRadiusSelected:I

    int-to-float v1, v1

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/miui/payment/ui/view/PieChartView;->mRadiusCenter:I

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    iget-object v4, p0, Lcom/miui/payment/ui/view/PieChartView;->mCenterPosition:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    sub-int v1, v3, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    iget-object v4, p0, Lcom/miui/payment/ui/view/PieChartView;->mCenterPosition:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    sub-int v2, v3, v4

    mul-int v3, v1, v1

    mul-int v4, v2, v2

    add-int/2addr v3, v4

    int-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-int v0, v4

    iget v3, p0, Lcom/miui/payment/ui/view/PieChartView;->mRadiusCenter:I

    if-lt v0, v3, :cond_0

    iget v3, p0, Lcom/miui/payment/ui/view/PieChartView;->mRadiusSelected:I

    if-le v0, v3, :cond_2

    :cond_0
    const/4 v3, -0x1

    iput v3, p0, Lcom/miui/payment/ui/view/PieChartView;->mSelectedIndex:I

    :goto_0
    invoke-virtual {p0}, Lcom/miui/payment/ui/view/PieChartView;->invalidate()V

    :cond_1
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    return v3

    :cond_2
    invoke-direct {p0, v1, v2}, Lcom/miui/payment/ui/view/PieChartView;->calculateSelectedIndex(II)I

    move-result v3

    iput v3, p0, Lcom/miui/payment/ui/view/PieChartView;->mSelectedIndex:I

    goto :goto_0
.end method

.method public setData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/payment/ui/view/PieChartView$PieChartData;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/payment/ui/view/PieChartView;->mData:Ljava/util/List;

    invoke-direct {p0}, Lcom/miui/payment/ui/view/PieChartView;->calculateSweepAngle()V

    invoke-virtual {p0}, Lcom/miui/payment/ui/view/PieChartView;->invalidate()V

    return-void
.end method

.method public setTextSize(I)V
    .locals 0

    iput p1, p0, Lcom/miui/payment/ui/view/PieChartView;->mTextSize:I

    return-void
.end method
