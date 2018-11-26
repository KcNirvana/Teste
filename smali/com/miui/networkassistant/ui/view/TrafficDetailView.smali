.class public Lcom/miui/networkassistant/ui/view/TrafficDetailView;
.super Landroid/view/View;
.source ""


# static fields
.field public static final DAY_TYPE:I = 0x1

.field private static final DEFAULT_TEXT_SIZE:I = 0xc

.field public static final HOUR_TYPE:I = 0x0

.field private static final LINE:I = 0x5

.field private static final PLAS_PERCENT:I = 0x2

.field private static final PLAS_SPACE_PERCENT:I = 0x1

.field private static final PLAS_TOTAL:I = 0x3

.field private static final TAG:Ljava/lang/String; = "TrafficDetailView"

.field private static final TOP_MARGIN:I = 0xc

.field private static final X_AXIS_MARGIN:I = 0x3

.field private static final X_AXIS_TEXT_Y_OFFSET:I = 0x2

.field private static final Y_AXIS_MARGIN:I = 0x3


# instance fields
.field private invalid:Z

.field private mChartDragListener:Lcom/miui/networkassistant/ui/view/TrafficDetailView$ChartDragListener;

.field private mDashPaint:Landroid/graphics/Paint;

.field private mData:[J

.field private mDensity:F

.field private mEndTimeTxt:Ljava/lang/String;

.field private mFillPaint:Landroid/graphics/Paint;

.field private mHighLightPaint:Landroid/graphics/Paint;

.field private mIsDragging:Z

.field private mLocation:[I

.field private mMaxValue:J

.field private mMonthMaxDay:I

.field private mPlasWidth:F

.field private mPoints:[F

.field private mScaledTouchSlop:I

.field private mStartTimeTxt:Ljava/lang/String;

.field private mTextColor:I

.field private mTextHeight:F

.field private mTextPaint:Landroid/graphics/Paint;

.field private mTextSize:I

.field private mTopMargin:F

.field private mTouch:I

.field private mTouchDownX:F

.field private mTouchDownY:F

.field private mType:I

.field private mXAxisMargin:F

.field private mXTextMaxWidth:F

.field private mXValueTexts:[Ljava/lang/String;

.field private mXValues:[J

.field private mYAxisMargin:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mTouch:I

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mTouch:I

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mTouch:I

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->init(Landroid/content/Context;)V

    return-void
.end method

.method private dividerX()V
    .locals 9

    const/4 v0, 0x0

    const/4 v8, 0x6

    const-wide/16 v6, 0x5

    iget-object v1, p0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mXValues:[J

    if-nez v1, :cond_0

    new-array v1, v8, [Ljava/lang/String;

    iput-object v1, p0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mXValueTexts:[Ljava/lang/String;

    new-array v1, v8, [J

    iput-object v1, p0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mXValues:[J

    :cond_0
    iget-object v1, p0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mXValues:[J

    iget-wide v2, p0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mMaxValue:J

    const/4 v4, 0x5

    aput-wide v2, v1, v4

    iget-object v1, p0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mXValues:[J

    iget-wide v2, p0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mMaxValue:J

    const-wide/16 v4, 0x4

    mul-long/2addr v2, v4

    div-long/2addr v2, v6

    const/4 v4, 0x4

    aput-wide v2, v1, v4

    iget-object v1, p0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mXValues:[J

    iget-wide v2, p0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mMaxValue:J

    const-wide/16 v4, 0x3

    mul-long/2addr v2, v4

    div-long/2addr v2, v6

    const/4 v4, 0x3

    aput-wide v2, v1, v4

    iget-object v1, p0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mXValues:[J

    iget-wide v2, p0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mMaxValue:J

    const-wide/16 v4, 0x2

    mul-long/2addr v2, v4

    div-long/2addr v2, v6

    const/4 v4, 0x2

    aput-wide v2, v1, v4

    iget-object v1, p0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mXValues:[J

    iget-wide v2, p0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mMaxValue:J

    div-long/2addr v2, v6

    const/4 v4, 0x1

    aput-wide v2, v1, v4

    iget-object v1, p0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mXValues:[J

    const-wide/16 v2, 0x0

    aput-wide v2, v1, v0

    iget-wide v2, p0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mMaxValue:J

    invoke-static {v2, v3}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->formatMaxBytes(J)J

    move-result-wide v2

    iget v1, p0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mDensity:F

    const/high16 v4, 0x42180000    # 38.0f

    mul-float/2addr v1, v4

    iput v1, p0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mXTextMaxWidth:F

    :goto_0
    if-ge v0, v8, :cond_2

    iget-object v1, p0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mXValueTexts:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mXValues:[J

    aget-wide v6, v5, v0

    invoke-static {v4, v6, v7, v2, v3}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->formatUniteUnit(Landroid/content/Context;JJ)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mTextPaint:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mXValueTexts:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    iget v4, p0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mXTextMaxWidth:F

    cmpl-float v4, v1, v4

    if-lez v4, :cond_1

    iput v1, p0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mXTextMaxWidth:F

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private static getMaxValue([J)J
    .locals 9

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    array-length v4, p0

    const/4 v0, 0x0

    aget-wide v2, p0, v0

    const/4 v0, 0x1

    move v8, v0

    move-wide v0, v2

    move v2, v8

    :goto_0
    if-ge v2, v4, :cond_2

    aget-wide v6, p0, v2

    cmp-long v3, v6, v0

    if-lez v3, :cond_1

    aget-wide v0, p0, v2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-wide v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 5

    const/high16 v4, 0x40400000    # 3.0f

    invoke-static {}, Lcom/miui/networkassistant/utils/DateUtil;->getActualMaxDayOfMonth()I

    move-result v0

    iput v0, p0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mMonthMaxDay:I

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mTextPaint:Landroid/graphics/Paint;

    const/high16 v0, 0x66000000

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->setTextColor(I)V

    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->setTextSize(I)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mDashPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mDashPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mDashPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x66ff0000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mDashPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/DashPathEffect;

    const/4 v2, 0x4

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mFillPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mFillPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mFillPaint:Landroid/graphics/Paint;

    const v1, -0x4f1f01

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mHighLightPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mHighLightPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mHighLightPaint:Landroid/graphics/Paint;

    const v1, -0xb04401

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mDensity:F

    iget v0, p0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mDensity:F

    const/high16 v1, 0x41400000    # 12.0f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mTopMargin:F

    const/16 v0, 0x1f

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mPoints:[F

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mScaledTouchSlop:I

    iget v0, p0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mDensity:F

    mul-float/2addr v0, v4

    iput v0, p0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mYAxisMargin:F

    iget v0, p0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mDensity:F

    mul-float/2addr v0, v4

    iput v0, p0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mXAxisMargin:F

    return-void

    nop

    :array_0
    .array-data 4
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
    .end array-data
.end method

.method private rectContains(FF)I
    .locals 5

    const/4 v1, -0x1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mPoints:[F

    array-length v2, v0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    iget-object v3, p0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mPoints:[F

    aget v3, v3, v0

    sub-float v3, p1, v3

    const/4 v4, 0x0

    cmpl-float v4, v3, v4

    if-ltz v4, :cond_0

    iget v4, p0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mPlasWidth:F

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 20

    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p0 .. p0}, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->getWidth()I

    move-result v12

    invoke-virtual/range {p0 .. p0}, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->getHeight()I

    move-result v13

    move-object/from16 v0, p0

    iget v2, v0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mXTextMaxWidth:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mYAxisMargin:F

    add-float/2addr v3, v2

    int-to-float v2, v13

    move-object/from16 v0, p0

    iget v4, v0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mTextHeight:F

    sub-float/2addr v2, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mXAxisMargin:F

    sub-float/2addr v2, v4

    const/high16 v4, 0x40000000    # 2.0f

    sub-float v4, v2, v4

    int-to-float v5, v12

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mDashPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    move v6, v4

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mData:[J

    if-nez v2, :cond_0

    return-void

    :cond_0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mType:I

    if-nez v2, :cond_1

    const-string/jumbo v2, "0:00"

    add-int/lit8 v5, v13, -0x2

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :goto_0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mTopMargin:F

    sub-float v2, v4, v2

    const/high16 v5, 0x40a00000    # 5.0f

    div-float v11, v2, v5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getTextAlign()Landroid/graphics/Paint$Align;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mTextPaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    const/4 v2, 0x0

    move v7, v4

    :goto_1
    const/4 v5, 0x5

    if-ge v2, v5, :cond_2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mXValueTexts:[Ljava/lang/String;

    aget-object v5, v5, v2

    move-object/from16 v0, p0

    iget v6, v0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mYAxisMargin:F

    sub-float v6, v3, v6

    move-object/from16 v0, p0

    iget v8, v0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mTextHeight:F

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    add-float/2addr v8, v7

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6, v8, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    sub-float/2addr v7, v11

    int-to-float v8, v12

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mDashPaint:Landroid/graphics/Paint;

    move-object/from16 v5, p1

    move v6, v3

    move v9, v7

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mStartTimeTxt:Ljava/lang/String;

    add-int/lit8 v5, v13, -0x2

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mXValueTexts:[Ljava/lang/String;

    const/4 v5, 0x5

    aget-object v2, v2, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mYAxisMargin:F

    sub-float v5, v3, v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mTextHeight:F

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v6, v8

    add-float/2addr v6, v7

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v5, v6, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v14}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mType:I

    if-nez v2, :cond_4

    const/16 v2, 0x18

    :goto_2
    int-to-double v6, v12

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v6, v8

    float-to-double v8, v3

    sub-double/2addr v6, v8

    double-to-float v5, v6

    mul-int/lit8 v6, v2, 0x3

    int-to-float v6, v6

    div-float/2addr v5, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mTopMargin:F

    sub-float v14, v4, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mData:[J

    array-length v15, v6

    const/high16 v6, 0x40400000    # 3.0f

    mul-float v16, v6, v5

    const/high16 v6, 0x40000000    # 2.0f

    mul-float/2addr v5, v6

    move-object/from16 v0, p0

    iput v5, v0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mPlasWidth:F

    const/4 v11, 0x0

    move v6, v3

    :goto_3
    if-ge v11, v15, :cond_8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mData:[J

    aget-wide v8, v3, v11

    const-wide/16 v18, 0x0

    cmp-long v3, v8, v18

    if-lez v3, :cond_7

    long-to-float v3, v8

    mul-float/2addr v3, v14

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mMaxValue:J

    long-to-float v5, v8

    div-float/2addr v3, v5

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v5, v3, v5

    if-lez v5, :cond_5

    :goto_4
    sub-float v7, v4, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mTouch:I

    if-ne v11, v3, :cond_6

    move-object/from16 v0, p0

    iget v3, v0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mPlasWidth:F

    add-float v8, v6, v3

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mHighLightPaint:Landroid/graphics/Paint;

    move-object/from16 v5, p1

    move v9, v4

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :goto_5
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->invalid:Z

    if-eqz v3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mPoints:[F

    aput v6, v3, v11

    :cond_3
    :goto_6
    add-float v6, v6, v16

    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    :cond_4
    move-object/from16 v0, p0

    iget v2, v0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mMonthMaxDay:I

    goto :goto_2

    :cond_5
    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_4

    :cond_6
    move-object/from16 v0, p0

    iget v3, v0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mPlasWidth:F

    add-float v8, v6, v3

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mFillPaint:Landroid/graphics/Paint;

    move-object/from16 v5, p1

    move v9, v4

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_5

    :cond_7
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->invalid:Z

    if-eqz v3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mPoints:[F

    aput v6, v3, v11

    goto :goto_6

    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getTextAlign()Landroid/graphics/Paint$Align;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mTextPaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    move-object/from16 v0, p0

    iget v4, v0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mType:I

    if-nez v4, :cond_9

    const-string/jumbo v4, "24:00"

    int-to-float v5, v12

    add-int/lit8 v7, v13, -0x2

    int-to-float v7, v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5, v7, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :goto_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->invalid:Z

    if-eqz v3, :cond_c

    move v3, v11

    :goto_8
    if-ge v3, v2, :cond_b

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mPoints:[F

    aput v6, v4, v11

    add-float v6, v6, v16

    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_9
    int-to-float v4, v12

    cmpl-float v4, v6, v4

    if-lez v4, :cond_a

    int-to-float v6, v12

    :cond_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mEndTimeTxt:Ljava/lang/String;

    add-int/lit8 v5, v13, -0x2

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v6, v5, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_7

    :cond_b
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->invalid:Z

    :cond_c
    return-void
.end method

.method onStartTrackingTouch()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mIsDragging:Z

    return-void
.end method

.method onStopTrackingTouch()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mIsDragging:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mTouch:I

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    const/4 v3, 0x0

    const/4 v5, -0x1

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mLocation:[I

    if-nez v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mLocation:[I

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mLocation:[I

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->getLocationOnScreen([I)V

    :cond_0
    const-string/jumbo v0, "TrafficDetailView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "X : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mLocation:[I

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ,Y :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mLocation:[I

    aget v2, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-boolean v1, p0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mIsDragging:Z

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    return v4

    :pswitch_0
    const-string/jumbo v0, "TrafficDetailView"

    const-string/jumbo v1, "MotionEvent.ACTION_DOWN"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "TrafficDetailView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getRawX "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "TrafficDetailView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getRawY "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mLocation:[I

    aget v1, v1, v3

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mTouchDownX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mLocation:[I

    aget v1, v1, v4

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mTouchDownY:F

    iget v0, p0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mTouchDownX:F

    iget v1, p0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mTouchDownY:F

    invoke-direct {p0, v0, v1}, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->rectContains(FF)I

    move-result v0

    iput v0, p0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mTouch:I

    const-string/jumbo v0, "TrafficDetailView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onTouchEvent mTouch "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mTouch:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mTouch:I

    if-eq v0, v5, :cond_1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mChartDragListener:Lcom/miui/networkassistant/ui/view/TrafficDetailView$ChartDragListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mChartDragListener:Lcom/miui/networkassistant/ui/view/TrafficDetailView$ChartDragListener;

    iget v1, p0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mTouchDownX:F

    iget-object v2, p0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mLocation:[I

    aget v2, v2, v4

    int-to-float v2, v2

    iget v3, p0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mTouch:I

    invoke-interface {v0, v1, v2, v3}, Lcom/miui/networkassistant/ui/view/TrafficDetailView$ChartDragListener;->onDragStart(FFI)V

    :cond_2
    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->invalidate()V

    goto/16 :goto_0

    :pswitch_1
    const-string/jumbo v0, "TrafficDetailView"

    const-string/jumbo v1, "MotionEvent.ACTION_MOVE"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "TrafficDetailView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getX "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "TrafficDetailView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getY "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mLocation:[I

    aget v1, v1, v3

    int-to-float v1, v1

    sub-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget-object v2, p0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mLocation:[I

    aget v2, v2, v4

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget-boolean v2, p0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mIsDragging:Z

    if-eqz v2, :cond_4

    invoke-direct {p0, v0, v1}, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->rectContains(FF)I

    move-result v1

    iget v2, p0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mTouch:I

    if-eq v1, v2, :cond_1

    if-eq v1, v5, :cond_1

    iput v1, p0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mTouch:I

    iget-object v1, p0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mChartDragListener:Lcom/miui/networkassistant/ui/view/TrafficDetailView$ChartDragListener;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mChartDragListener:Lcom/miui/networkassistant/ui/view/TrafficDetailView$ChartDragListener;

    iget-object v2, p0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mLocation:[I

    aget v2, v2, v4

    int-to-float v2, v2

    iget v3, p0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mTouch:I

    invoke-interface {v1, v0, v2, v3}, Lcom/miui/networkassistant/ui/view/TrafficDetailView$ChartDragListener;->onDragMove(FFI)V

    :cond_3
    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->invalidate()V

    goto/16 :goto_0

    :cond_4
    iget v2, p0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mTouchDownX:F

    sub-float v2, v0, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mScaledTouchSlop:I

    div-int/lit8 v3, v3, 0x3

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->onStartTrackingTouch()V

    invoke-direct {p0, v0, v1}, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->rectContains(FF)I

    move-result v1

    iput v1, p0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mTouch:I

    iget v1, p0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mTouch:I

    if-eq v1, v5, :cond_1

    iget-object v1, p0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mChartDragListener:Lcom/miui/networkassistant/ui/view/TrafficDetailView$ChartDragListener;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mChartDragListener:Lcom/miui/networkassistant/ui/view/TrafficDetailView$ChartDragListener;

    iget-object v2, p0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mLocation:[I

    aget v2, v2, v4

    int-to-float v2, v2

    iget v3, p0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mTouch:I

    invoke-interface {v1, v0, v2, v3}, Lcom/miui/networkassistant/ui/view/TrafficDetailView$ChartDragListener;->onDragStart(FFI)V

    :cond_5
    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->invalidate()V

    goto/16 :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->onStopTrackingTouch()V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mChartDragListener:Lcom/miui/networkassistant/ui/view/TrafficDetailView$ChartDragListener;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mChartDragListener:Lcom/miui/networkassistant/ui/view/TrafficDetailView$ChartDragListener;

    invoke-interface {v0}, Lcom/miui/networkassistant/ui/view/TrafficDetailView$ChartDragListener;->onDragEnd()V

    :cond_6
    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->invalidate()V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setChartDragListener(Lcom/miui/networkassistant/ui/view/TrafficDetailView$ChartDragListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mChartDragListener:Lcom/miui/networkassistant/ui/view/TrafficDetailView$ChartDragListener;

    return-void
.end method

.method public setData([JI)V
    .locals 4

    iput-object p1, p0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mData:[J

    iput p2, p0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mType:I

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mData:[J

    invoke-static {v0}, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->getMaxValue([J)J

    move-result-wide v0

    const-wide/16 v2, 0x1f4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mMaxValue:J

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->dividerX()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->invalid:Z

    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->invalidate()V

    return-void
.end method

.method public setDurations(JJ)V
    .locals 9

    const/4 v7, 0x5

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x2

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const-string/jumbo v1, "%d-%d"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mStartTimeTxt:Ljava/lang/String;

    invoke-virtual {v0, p3, p4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const-string/jumbo v1, "%d-%d"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mEndTimeTxt:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->invalidate()V

    return-void
.end method

.method public setTextColor(I)V
    .locals 2

    iget v0, p0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mTextColor:I

    if-eq p1, v0, :cond_0

    iput p1, p0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mTextColor:I

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mTextPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mTextColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    :cond_0
    return-void
.end method

.method public setTextSize(I)V
    .locals 3

    iget v0, p0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mTextSize:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mTextSize:I

    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    :goto_0
    int-to-float v1, p1

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v2, 0x2

    invoke-static {v2, v1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mTextPaint:Landroid/graphics/Paint;

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    iget v1, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int v0, v2, v0

    sub-int v0, v1, v0

    int-to-float v0, v0

    iput v0, p0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mTextHeight:F

    :cond_0
    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    goto :goto_0
.end method
