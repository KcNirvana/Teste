.class public Lcom/miui/networkassistant/ui/view/BackgroundView;
.super Landroid/view/View;
.source ""


# static fields
.field public static RES_BG_COLOR_BLUE:I

.field public static RES_BG_COLOR_RED1:I

.field public static RES_BG_COLOR_RED2:I

.field public static RES_BG_COLOR_YELLOW1:I

.field public static RES_BG_COLOR_YELLOW2:I

.field private static START_PHASE:F


# instance fields
.field private mBackGradient1:Landroid/graphics/LinearGradient;

.field private mBackGradient2:Landroid/graphics/LinearGradient;

.field private mBackGradientY1:F

.field private mBackGradientY2:F

.field private mBezierA1:F

.field private mBezierA2:F

.field private mBezierW1:F

.field private mBezierW2:F

.field private mBiasY:I

.field private mBottom:I

.field private mColorBg:I

.field private mColorStart1:I

.field private mColorStart2:I

.field private mHeight:I

.field private mIsFirstShow:Z

.field private mPaddingBottom:I

.field private mPaintFlagsDrawFilter:Landroid/graphics/PaintFlagsDrawFilter;

.field private mPhase:F

.field private mRatioW1:F

.field private mRatioW2:F

.field private mResBgColor1:I

.field private mResBgColor2:I

.field private mRipplePaint:Landroid/graphics/Paint;

.field private mRipplePath:Landroid/graphics/Path;

.field private mTargetHeight:I

.field private mValueAnimator:Landroid/animation/ValueAnimator;

.field private mWidth:I


# direct methods
.method static synthetic -set0(Lcom/miui/networkassistant/ui/view/BackgroundView;F)F
    .locals 0

    iput p1, p0, Lcom/miui/networkassistant/ui/view/BackgroundView;->mPhase:F

    return p1
.end method

.method static constructor <clinit>()V
    .locals 1

    const v0, 0x7f0800f3

    sput v0, Lcom/miui/networkassistant/ui/view/BackgroundView;->RES_BG_COLOR_BLUE:I

    const v0, 0x7f0800f4

    sput v0, Lcom/miui/networkassistant/ui/view/BackgroundView;->RES_BG_COLOR_YELLOW1:I

    const v0, 0x7f0800f5

    sput v0, Lcom/miui/networkassistant/ui/view/BackgroundView;->RES_BG_COLOR_YELLOW2:I

    const v0, 0x7f0800f6

    sput v0, Lcom/miui/networkassistant/ui/view/BackgroundView;->RES_BG_COLOR_RED1:I

    const v0, 0x7f0800f7

    sput v0, Lcom/miui/networkassistant/ui/view/BackgroundView;->RES_BG_COLOR_RED2:I

    const v0, 0x408cbe4c

    sput v0, Lcom/miui/networkassistant/ui/view/BackgroundView;->START_PHASE:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    sget v0, Lcom/miui/networkassistant/ui/view/BackgroundView;->START_PHASE:F

    iput v0, p0, Lcom/miui/networkassistant/ui/view/BackgroundView;->mPhase:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/networkassistant/ui/view/BackgroundView;->mIsFirstShow:Z

    sget v0, Lcom/miui/networkassistant/ui/view/BackgroundView;->RES_BG_COLOR_BLUE:I

    iput v0, p0, Lcom/miui/networkassistant/ui/view/BackgroundView;->mResBgColor1:I

    sget v0, Lcom/miui/networkassistant/ui/view/BackgroundView;->RES_BG_COLOR_BLUE:I

    iput v0, p0, Lcom/miui/networkassistant/ui/view/BackgroundView;->mResBgColor2:I

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/view/BackgroundView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget v0, Lcom/miui/networkassistant/ui/view/BackgroundView;->START_PHASE:F

    iput v0, p0, Lcom/miui/networkassistant/ui/view/BackgroundView;->mPhase:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/networkassistant/ui/view/BackgroundView;->mIsFirstShow:Z

    sget v0, Lcom/miui/networkassistant/ui/view/BackgroundView;->RES_BG_COLOR_BLUE:I

    iput v0, p0, Lcom/miui/networkassistant/ui/view/BackgroundView;->mResBgColor1:I

    sget v0, Lcom/miui/networkassistant/ui/view/BackgroundView;->RES_BG_COLOR_BLUE:I

    iput v0, p0, Lcom/miui/networkassistant/ui/view/BackgroundView;->mResBgColor2:I

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/view/BackgroundView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    sget v0, Lcom/miui/networkassistant/ui/view/BackgroundView;->START_PHASE:F

    iput v0, p0, Lcom/miui/networkassistant/ui/view/BackgroundView;->mPhase:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/networkassistant/ui/view/BackgroundView;->mIsFirstShow:Z

    sget v0, Lcom/miui/networkassistant/ui/view/BackgroundView;->RES_BG_COLOR_BLUE:I

    iput v0, p0, Lcom/miui/networkassistant/ui/view/BackgroundView;->mResBgColor1:I

    sget v0, Lcom/miui/networkassistant/ui/view/BackgroundView;->RES_BG_COLOR_BLUE:I

    iput v0, p0, Lcom/miui/networkassistant/ui/view/BackgroundView;->mResBgColor2:I

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/view/BackgroundView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    sget v0, Lcom/miui/networkassistant/ui/view/BackgroundView;->START_PHASE:F

    iput v0, p0, Lcom/miui/networkassistant/ui/view/BackgroundView;->mPhase:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/networkassistant/ui/view/BackgroundView;->mIsFirstShow:Z

    sget v0, Lcom/miui/networkassistant/ui/view/BackgroundView;->RES_BG_COLOR_BLUE:I

    iput v0, p0, Lcom/miui/networkassistant/ui/view/BackgroundView;->mResBgColor1:I

    sget v0, Lcom/miui/networkassistant/ui/view/BackgroundView;->RES_BG_COLOR_BLUE:I

    iput v0, p0, Lcom/miui/networkassistant/ui/view/BackgroundView;->mResBgColor2:I

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/view/BackgroundView;->init()V

    return-void
.end method

.method private drawRipple(Landroid/graphics/Canvas;)V
    .locals 8

    iget v0, p0, Lcom/miui/networkassistant/ui/view/BackgroundView;->mColorBg:I

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    iget v0, p0, Lcom/miui/networkassistant/ui/view/BackgroundView;->mPhase:F

    const v1, 0x3f860a92

    add-float v7, v1, v0

    iget-object v2, p0, Lcom/miui/networkassistant/ui/view/BackgroundView;->mRipplePath:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/miui/networkassistant/ui/view/BackgroundView;->mRipplePaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/miui/networkassistant/ui/view/BackgroundView;->mTargetHeight:I

    iget v5, p0, Lcom/miui/networkassistant/ui/view/BackgroundView;->mBezierA1:F

    iget v6, p0, Lcom/miui/networkassistant/ui/view/BackgroundView;->mBezierW1:F

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/miui/networkassistant/ui/view/BackgroundView;->drawSinBg(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;IFFF)V

    iget v0, p0, Lcom/miui/networkassistant/ui/view/BackgroundView;->mPhase:F

    const v1, 0x3f20d97c

    sub-float v7, v1, v0

    iget-object v2, p0, Lcom/miui/networkassistant/ui/view/BackgroundView;->mRipplePath:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/miui/networkassistant/ui/view/BackgroundView;->mRipplePaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/miui/networkassistant/ui/view/BackgroundView;->mTargetHeight:I

    iget v5, p0, Lcom/miui/networkassistant/ui/view/BackgroundView;->mBezierA2:F

    iget v6, p0, Lcom/miui/networkassistant/ui/view/BackgroundView;->mBezierW2:F

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/miui/networkassistant/ui/view/BackgroundView;->drawSinBg(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;IFFF)V

    return-void
.end method

.method private drawSinBg(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;IFFF)V
    .locals 6

    const/4 v1, 0x0

    invoke-virtual {p2}, Landroid/graphics/Path;->reset()V

    int-to-float v0, p4

    invoke-virtual {p2, v1, v0}, Landroid/graphics/Path;->moveTo(FF)V

    move v0, v1

    :goto_0
    iget v2, p0, Lcom/miui/networkassistant/ui/view/BackgroundView;->mWidth:I

    int-to-float v2, v2

    cmpg-float v2, v0, v2

    if-gtz v2, :cond_0

    float-to-double v2, p5

    mul-float v4, p6, v0

    add-float/2addr v4, p7

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    double-to-float v2, v2

    int-to-float v3, p4

    sub-float v2, v3, v2

    invoke-virtual {p2, v0, v2}, Landroid/graphics/Path;->lineTo(FF)V

    const/high16 v2, 0x41200000    # 10.0f

    add-float/2addr v0, v2

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/miui/networkassistant/ui/view/BackgroundView;->mWidth:I

    int-to-float v0, v0

    iget v2, p0, Lcom/miui/networkassistant/ui/view/BackgroundView;->mBottom:I

    int-to-float v2, v2

    invoke-virtual {p2, v0, v2}, Landroid/graphics/Path;->lineTo(FF)V

    iget v0, p0, Lcom/miui/networkassistant/ui/view/BackgroundView;->mBottom:I

    int-to-float v0, v0

    invoke-virtual {p2, v1, v0}, Landroid/graphics/Path;->lineTo(FF)V

    int-to-float v0, p4

    invoke-virtual {p2, v1, v0}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/BackgroundView;->mPaintFlagsDrawFilter:Landroid/graphics/PaintFlagsDrawFilter;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method private init()V
    .locals 3

    new-instance v0, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/view/BackgroundView;->mPaintFlagsDrawFilter:Landroid/graphics/PaintFlagsDrawFilter;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/view/BackgroundView;->mRipplePaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/BackgroundView;->mRipplePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/view/BackgroundView;->mRipplePath:Landroid/graphics/Path;

    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/view/BackgroundView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0901e7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/networkassistant/ui/view/BackgroundView;->mPaddingBottom:I

    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/view/BackgroundView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0800eb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/miui/networkassistant/ui/view/BackgroundView;->mColorBg:I

    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/view/BackgroundView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0901e5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/networkassistant/ui/view/BackgroundView;->mBiasY:I

    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/view/BackgroundView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/miui/networkassistant/ui/view/BackgroundView;->mResBgColor1:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/miui/networkassistant/ui/view/BackgroundView;->mColorStart1:I

    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/view/BackgroundView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/miui/networkassistant/ui/view/BackgroundView;->mResBgColor2:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/miui/networkassistant/ui/view/BackgroundView;->mColorStart2:I

    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/view/BackgroundView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0901e6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/miui/networkassistant/ui/view/BackgroundView;->mBezierA1:F

    iget v0, p0, Lcom/miui/networkassistant/ui/view/BackgroundView;->mBezierA1:F

    neg-float v0, v0

    const v1, 0x3f99999a    # 1.2f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/miui/networkassistant/ui/view/BackgroundView;->mBezierA2:F

    const v0, 0x4071463b

    iput v0, p0, Lcom/miui/networkassistant/ui/view/BackgroundView;->mRatioW1:F

    const v0, 0x40b4f4ab

    iput v0, p0, Lcom/miui/networkassistant/ui/view/BackgroundView;->mRatioW2:F

    return-void
.end method


# virtual methods
.method protected onDetachedFromWindow()V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/BackgroundView;->mValueAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/BackgroundView;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    iput-object v1, p0, Lcom/miui/networkassistant/ui/view/BackgroundView;->mValueAnimator:Landroid/animation/ValueAnimator;

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/view/BackgroundView;->drawRipple(Landroid/graphics/Canvas;)V

    iget-boolean v0, p0, Lcom/miui/networkassistant/ui/view/BackgroundView;->mIsFirstShow:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/networkassistant/ui/view/BackgroundView;->mIsFirstShow:Z

    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/view/BackgroundView;->startAnimation()V

    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/high16 v4, 0x40000000    # 2.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/view/BackgroundView;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/miui/networkassistant/ui/view/BackgroundView;->mWidth:I

    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/view/BackgroundView;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/miui/networkassistant/ui/view/BackgroundView;->mHeight:I

    iget v0, p0, Lcom/miui/networkassistant/ui/view/BackgroundView;->mHeight:I

    div-int/lit8 v0, v0, 0x2

    iget v2, p0, Lcom/miui/networkassistant/ui/view/BackgroundView;->mBiasY:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/miui/networkassistant/ui/view/BackgroundView;->mTargetHeight:I

    iget v0, p0, Lcom/miui/networkassistant/ui/view/BackgroundView;->mTargetHeight:I

    int-to-float v0, v0

    iget v2, p0, Lcom/miui/networkassistant/ui/view/BackgroundView;->mBezierA1:F

    div-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    sub-float/2addr v0, v2

    sub-float/2addr v0, v3

    iput v0, p0, Lcom/miui/networkassistant/ui/view/BackgroundView;->mBackGradientY1:F

    iget v0, p0, Lcom/miui/networkassistant/ui/view/BackgroundView;->mTargetHeight:I

    int-to-float v0, v0

    iget v2, p0, Lcom/miui/networkassistant/ui/view/BackgroundView;->mBezierA2:F

    div-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    sub-float/2addr v0, v2

    sub-float/2addr v0, v3

    iput v0, p0, Lcom/miui/networkassistant/ui/view/BackgroundView;->mBackGradientY2:F

    iget v0, p0, Lcom/miui/networkassistant/ui/view/BackgroundView;->mRatioW1:F

    iget v2, p0, Lcom/miui/networkassistant/ui/view/BackgroundView;->mWidth:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    iput v0, p0, Lcom/miui/networkassistant/ui/view/BackgroundView;->mBezierW1:F

    iget v0, p0, Lcom/miui/networkassistant/ui/view/BackgroundView;->mRatioW2:F

    iget v2, p0, Lcom/miui/networkassistant/ui/view/BackgroundView;->mWidth:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    iput v0, p0, Lcom/miui/networkassistant/ui/view/BackgroundView;->mBezierW2:F

    iget v0, p0, Lcom/miui/networkassistant/ui/view/BackgroundView;->mHeight:I

    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/view/BackgroundView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0901e7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/miui/networkassistant/ui/view/BackgroundView;->mBottom:I

    new-instance v0, Landroid/graphics/LinearGradient;

    iget v2, p0, Lcom/miui/networkassistant/ui/view/BackgroundView;->mBackGradientY1:F

    iget v3, p0, Lcom/miui/networkassistant/ui/view/BackgroundView;->mHeight:I

    iget v4, p0, Lcom/miui/networkassistant/ui/view/BackgroundView;->mPaddingBottom:I

    sub-int/2addr v3, v4

    int-to-float v4, v3

    const/4 v3, 0x2

    new-array v5, v3, [I

    iget v3, p0, Lcom/miui/networkassistant/ui/view/BackgroundView;->mColorStart1:I

    aput v3, v5, v8

    iget v3, p0, Lcom/miui/networkassistant/ui/view/BackgroundView;->mColorBg:I

    aput v3, v5, v9

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v6, 0x0

    move v3, v1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/view/BackgroundView;->mBackGradient1:Landroid/graphics/LinearGradient;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/BackgroundView;->mRipplePaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/miui/networkassistant/ui/view/BackgroundView;->mBackGradient1:Landroid/graphics/LinearGradient;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    new-instance v0, Landroid/graphics/LinearGradient;

    iget v2, p0, Lcom/miui/networkassistant/ui/view/BackgroundView;->mBackGradientY2:F

    iget v3, p0, Lcom/miui/networkassistant/ui/view/BackgroundView;->mHeight:I

    iget v4, p0, Lcom/miui/networkassistant/ui/view/BackgroundView;->mPaddingBottom:I

    sub-int/2addr v3, v4

    int-to-float v4, v3

    const/4 v3, 0x2

    new-array v5, v3, [I

    iget v3, p0, Lcom/miui/networkassistant/ui/view/BackgroundView;->mColorStart2:I

    aput v3, v5, v8

    iget v3, p0, Lcom/miui/networkassistant/ui/view/BackgroundView;->mColorBg:I

    aput v3, v5, v9

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v6, 0x0

    move v3, v1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/view/BackgroundView;->mBackGradient2:Landroid/graphics/LinearGradient;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/BackgroundView;->mRipplePaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/view/BackgroundView;->mBackGradient2:Landroid/graphics/LinearGradient;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    return-void
.end method

.method public setResBgColor(IIZ)V
    .locals 11

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v6, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/BackgroundView;->mRipplePaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/miui/networkassistant/ui/view/BackgroundView;->mResBgColor1:I

    if-ne v0, p1, :cond_1

    iget v0, p0, Lcom/miui/networkassistant/ui/view/BackgroundView;->mResBgColor2:I

    if-ne v0, p2, :cond_1

    return-void

    :cond_1
    iput p1, p0, Lcom/miui/networkassistant/ui/view/BackgroundView;->mResBgColor1:I

    iput p2, p0, Lcom/miui/networkassistant/ui/view/BackgroundView;->mResBgColor2:I

    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/view/BackgroundView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v2, p0, Lcom/miui/networkassistant/ui/view/BackgroundView;->mResBgColor1:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/miui/networkassistant/ui/view/BackgroundView;->mColorStart1:I

    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/view/BackgroundView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v2, p0, Lcom/miui/networkassistant/ui/view/BackgroundView;->mResBgColor2:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/miui/networkassistant/ui/view/BackgroundView;->mColorStart2:I

    new-instance v0, Landroid/graphics/LinearGradient;

    iget v2, p0, Lcom/miui/networkassistant/ui/view/BackgroundView;->mBackGradientY1:F

    iget v3, p0, Lcom/miui/networkassistant/ui/view/BackgroundView;->mHeight:I

    iget v4, p0, Lcom/miui/networkassistant/ui/view/BackgroundView;->mPaddingBottom:I

    sub-int/2addr v3, v4

    int-to-float v4, v3

    new-array v5, v10, [I

    iget v3, p0, Lcom/miui/networkassistant/ui/view/BackgroundView;->mColorStart1:I

    aput v3, v5, v8

    iget v3, p0, Lcom/miui/networkassistant/ui/view/BackgroundView;->mColorBg:I

    aput v3, v5, v9

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v3, v1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/view/BackgroundView;->mBackGradient1:Landroid/graphics/LinearGradient;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/BackgroundView;->mRipplePaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/miui/networkassistant/ui/view/BackgroundView;->mBackGradient1:Landroid/graphics/LinearGradient;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    new-instance v0, Landroid/graphics/LinearGradient;

    iget v2, p0, Lcom/miui/networkassistant/ui/view/BackgroundView;->mBackGradientY2:F

    iget v3, p0, Lcom/miui/networkassistant/ui/view/BackgroundView;->mHeight:I

    iget v4, p0, Lcom/miui/networkassistant/ui/view/BackgroundView;->mPaddingBottom:I

    sub-int/2addr v3, v4

    int-to-float v4, v3

    new-array v5, v10, [I

    iget v3, p0, Lcom/miui/networkassistant/ui/view/BackgroundView;->mColorStart2:I

    aput v3, v5, v8

    iget v3, p0, Lcom/miui/networkassistant/ui/view/BackgroundView;->mColorBg:I

    aput v3, v5, v9

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v3, v1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/view/BackgroundView;->mBackGradient2:Landroid/graphics/LinearGradient;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/BackgroundView;->mRipplePaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/view/BackgroundView;->mBackGradient2:Landroid/graphics/LinearGradient;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    if-eqz p3, :cond_2

    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/view/BackgroundView;->startAnimation()V

    :goto_0
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/view/BackgroundView;->invalidate()V

    goto :goto_0
.end method

.method public startAnimation()V
    .locals 5

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/miui/networkassistant/ui/view/BackgroundView;->mIsFirstShow:Z

    const/4 v0, 0x2

    new-array v0, v0, [F

    iget v1, p0, Lcom/miui/networkassistant/ui/view/BackgroundView;->mPhase:F

    aput v1, v0, v4

    iget v1, p0, Lcom/miui/networkassistant/ui/view/BackgroundView;->mPhase:F

    sget v2, Lcom/miui/networkassistant/ui/view/BackgroundView;->START_PHASE:F

    sub-float/2addr v1, v2

    const/4 v2, 0x1

    aput v1, v0, v2

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/view/BackgroundView;->mValueAnimator:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/BackgroundView;->mValueAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/BackgroundView;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/BackgroundView;->mValueAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lmiui/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v1}, Lmiui/view/animation/CubicEaseOutInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/BackgroundView;->mValueAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/miui/networkassistant/ui/view/BackgroundView$1;

    invoke-direct {v1, p0}, Lcom/miui/networkassistant/ui/view/BackgroundView$1;-><init>(Lcom/miui/networkassistant/ui/view/BackgroundView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/BackgroundView;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method
