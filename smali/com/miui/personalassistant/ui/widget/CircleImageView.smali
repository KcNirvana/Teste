.class public Lcom/miui/personalassistant/ui/widget/CircleImageView;
.super Landroid/widget/ImageView;
.source "CircleImageView.java"


# static fields
.field private static final BITMAP_CONFIG:Landroid/graphics/Bitmap$Config;

.field private static final COLORDRAWABLE_DIMENSION:I = 0x2

.field private static final DEFAULT_BORDER_COLOR:I = -0x1000000

.field private static final DEFAULT_BORDER_OVERLAY:Z

.field private static final DEFAULT_BORDER_WIDTH:I

.field private static final DEFAULT_FILL_COLOR:I

.field private static final SCALE_TYPE:Landroid/widget/ImageView$ScaleType;


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mBitmapHeight:I

.field private final mBitmapPaint:Landroid/graphics/Paint;

.field private mBitmapShader:Landroid/graphics/BitmapShader;

.field private mBitmapWidth:I

.field private mBorderColor:I

.field private mBorderOverlay:Z

.field private final mBorderPaint:Landroid/graphics/Paint;

.field private mBorderRadius:F

.field private final mBorderRect:Landroid/graphics/RectF;

.field private mBorderWidth:I

.field private mColorFilter:Landroid/graphics/ColorFilter;

.field private mDisableCircularTransformation:Z

.field private mDrawableRadius:F

.field private final mDrawableRect:Landroid/graphics/RectF;

.field private mFillColor:I

.field private final mFillPaint:Landroid/graphics/Paint;

.field private mReady:Z

.field private mSetupPending:Z

.field private final mShaderMatrix:Landroid/graphics/Matrix;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    sput-object v0, Lcom/miui/personalassistant/ui/widget/CircleImageView;->SCALE_TYPE:Landroid/widget/ImageView$ScaleType;

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    sput-object v0, Lcom/miui/personalassistant/ui/widget/CircleImageView;->BITMAP_CONFIG:Landroid/graphics/Bitmap$Config;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/miui/personalassistant/ui/widget/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/miui/personalassistant/ui/widget/CircleImageView;->mBorderRect:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/miui/personalassistant/ui/widget/CircleImageView;->mShaderMatrix:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/miui/personalassistant/ui/widget/CircleImageView;->mBitmapPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/miui/personalassistant/ui/widget/CircleImageView;->mBorderPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/miui/personalassistant/ui/widget/CircleImageView;->mFillPaint:Landroid/graphics/Paint;

    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/miui/personalassistant/ui/widget/CircleImageView;->mBorderColor:I

    iput v1, p0, Lcom/miui/personalassistant/ui/widget/CircleImageView;->mBorderWidth:I

    iput v1, p0, Lcom/miui/personalassistant/ui/widget/CircleImageView;->mFillColor:I

    invoke-direct {p0}, Lcom/miui/personalassistant/ui/widget/CircleImageView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/personalassistant/ui/widget/CircleImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    const/high16 v3, -0x1000000

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/miui/personalassistant/ui/widget/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/miui/personalassistant/ui/widget/CircleImageView;->mBorderRect:Landroid/graphics/RectF;

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/miui/personalassistant/ui/widget/CircleImageView;->mShaderMatrix:Landroid/graphics/Matrix;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/miui/personalassistant/ui/widget/CircleImageView;->mBitmapPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/miui/personalassistant/ui/widget/CircleImageView;->mBorderPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/miui/personalassistant/ui/widget/CircleImageView;->mFillPaint:Landroid/graphics/Paint;

    iput v3, p0, Lcom/miui/personalassistant/ui/widget/CircleImageView;->mBorderColor:I

    iput v2, p0, Lcom/miui/personalassistant/ui/widget/CircleImageView;->mBorderWidth:I

    iput v2, p0, Lcom/miui/personalassistant/ui/widget/CircleImageView;->mFillColor:I

    sget-object v1, Lcom/miui/personalassistant/R$styleable;->CircleImageView:[I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/miui/personalassistant/ui/widget/CircleImageView;->mBorderWidth:I

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/miui/personalassistant/ui/widget/CircleImageView;->mBorderColor:I

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/miui/personalassistant/ui/widget/CircleImageView;->mBorderOverlay:Z

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/miui/personalassistant/ui/widget/CircleImageView;->mFillColor:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-direct {p0}, Lcom/miui/personalassistant/ui/widget/CircleImageView;->init()V

    return-void
.end method

.method private applyColorFilter()V
    .locals 2

    iget-object v0, p0, Lcom/miui/personalassistant/ui/widget/CircleImageView;->mBitmapPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/ui/widget/CircleImageView;->mBitmapPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/miui/personalassistant/ui/widget/CircleImageView;->mColorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    :cond_0
    return-void
.end method

.method private calculateBounds()Landroid/graphics/RectF;
    .locals 8

    const/high16 v7, 0x40000000    # 2.0f

    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/widget/CircleImageView;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/widget/CircleImageView;->getPaddingLeft()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/widget/CircleImageView;->getPaddingRight()I

    move-result v6

    sub-int v1, v5, v6

    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/widget/CircleImageView;->getHeight()I

    move-result v5

    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/widget/CircleImageView;->getPaddingTop()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/widget/CircleImageView;->getPaddingBottom()I

    move-result v6

    sub-int v0, v5, v6

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/widget/CircleImageView;->getPaddingLeft()I

    move-result v5

    int-to-float v5, v5

    sub-int v6, v1, v3

    int-to-float v6, v6

    div-float/2addr v6, v7

    add-float v2, v5, v6

    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/widget/CircleImageView;->getPaddingTop()I

    move-result v5

    int-to-float v5, v5

    sub-int v6, v0, v3

    int-to-float v6, v6

    div-float/2addr v6, v7

    add-float v4, v5, v6

    new-instance v5, Landroid/graphics/RectF;

    int-to-float v6, v3

    add-float/2addr v6, v2

    int-to-float v7, v3

    add-float/2addr v7, v4

    invoke-direct {v5, v2, v4, v6, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v5
.end method

.method private getBitmapFromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 8

    const/4 v3, 0x0

    if-nez p1, :cond_0

    move-object v0, v3

    :goto_0
    return-object v0

    :cond_0
    instance-of v4, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v4, :cond_1

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_1
    :try_start_0
    instance-of v4, p1, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v4, :cond_2

    const/4 v4, 0x2

    const/4 v5, 0x2

    sget-object v6, Lcom/miui/personalassistant/ui/widget/CircleImageView;->BITMAP_CONFIG:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_1
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v6

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v7

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v3

    goto :goto_0

    :cond_2
    :try_start_1
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    sget-object v6, Lcom/miui/personalassistant/ui/widget/CircleImageView;->BITMAP_CONFIG:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_1
.end method

.method private init()V
    .locals 1

    sget-object v0, Lcom/miui/personalassistant/ui/widget/CircleImageView;->SCALE_TYPE:Landroid/widget/ImageView$ScaleType;

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/personalassistant/ui/widget/CircleImageView;->mReady:Z

    iget-boolean v0, p0, Lcom/miui/personalassistant/ui/widget/CircleImageView;->mSetupPending:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/miui/personalassistant/ui/widget/CircleImageView;->setup()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/personalassistant/ui/widget/CircleImageView;->mSetupPending:Z

    :cond_0
    return-void
.end method

.method private initializeBitmap()V
    .locals 1

    iget-boolean v0, p0, Lcom/miui/personalassistant/ui/widget/CircleImageView;->mDisableCircularTransformation:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/personalassistant/ui/widget/CircleImageView;->mBitmap:Landroid/graphics/Bitmap;

    :goto_0
    invoke-direct {p0}, Lcom/miui/personalassistant/ui/widget/CircleImageView;->setup()V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/widget/CircleImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/personalassistant/ui/widget/CircleImageView;->getBitmapFromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/personalassistant/ui/widget/CircleImageView;->mBitmap:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method private setup()V
    .locals 7

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v5, 0x1

    const/high16 v4, 0x40000000    # 2.0f

    iget-boolean v0, p0, Lcom/miui/personalassistant/ui/widget/CircleImageView;->mReady:Z

    if-nez v0, :cond_1

    iput-boolean v5, p0, Lcom/miui/personalassistant/ui/widget/CircleImageView;->mSetupPending:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/widget/CircleImageView;->getWidth()I

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/widget/CircleImageView;->getHeight()I

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    iget-object v0, p0, Lcom/miui/personalassistant/ui/widget/CircleImageView;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/widget/CircleImageView;->invalidate()V

    goto :goto_0

    :cond_3
    new-instance v0, Landroid/graphics/BitmapShader;

    iget-object v1, p0, Lcom/miui/personalassistant/ui/widget/CircleImageView;->mBitmap:Landroid/graphics/Bitmap;

    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v3, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/miui/personalassistant/ui/widget/CircleImageView;->mBitmapShader:Landroid/graphics/BitmapShader;

    iget-object v0, p0, Lcom/miui/personalassistant/ui/widget/CircleImageView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/miui/personalassistant/ui/widget/CircleImageView;->mBitmapPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/miui/personalassistant/ui/widget/CircleImageView;->mBitmapShader:Landroid/graphics/BitmapShader;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v0, p0, Lcom/miui/personalassistant/ui/widget/CircleImageView;->mBorderPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/miui/personalassistant/ui/widget/CircleImageView;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/miui/personalassistant/ui/widget/CircleImageView;->mBorderPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/miui/personalassistant/ui/widget/CircleImageView;->mBorderColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/miui/personalassistant/ui/widget/CircleImageView;->mBorderPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/miui/personalassistant/ui/widget/CircleImageView;->mBorderWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/miui/personalassistant/ui/widget/CircleImageView;->mFillPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/miui/personalassistant/ui/widget/CircleImageView;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/miui/personalassistant/ui/widget/CircleImageView;->mFillPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/miui/personalassistant/ui/widget/CircleImageView;->mFillColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/miui/personalassistant/ui/widget/CircleImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/miui/personalassistant/ui/widget/CircleImageView;->mBitmapHeight:I

    iget-object v0, p0, Lcom/miui/personalassistant/ui/widget/CircleImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/miui/personalassistant/ui/widget/CircleImageView;->mBitmapWidth:I

    iget-object v0, p0, Lcom/miui/personalassistant/ui/widget/CircleImageView;->mBorderRect:Landroid/graphics/RectF;

    invoke-direct {p0}, Lcom/miui/personalassistant/ui/widget/CircleImageView;->calculateBounds()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object v0, p0, Lcom/miui/personalassistant/ui/widget/CircleImageView;->mBorderRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    iget v1, p0, Lcom/miui/personalassistant/ui/widget/CircleImageView;->mBorderWidth:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    div-float/2addr v0, v4

    iget-object v1, p0, Lcom/miui/personalassistant/ui/widget/CircleImageView;->mBorderRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget v2, p0, Lcom/miui/personalassistant/ui/widget/CircleImageView;->mBorderWidth:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    div-float/2addr v1, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/miui/personalassistant/ui/widget/CircleImageView;->mBorderRadius:F

    iget-object v0, p0, Lcom/miui/personalassistant/ui/widget/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/miui/personalassistant/ui/widget/CircleImageView;->mBorderRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-boolean v0, p0, Lcom/miui/personalassistant/ui/widget/CircleImageView;->mBorderOverlay:Z

    if-nez v0, :cond_4

    iget v0, p0, Lcom/miui/personalassistant/ui/widget/CircleImageView;->mBorderWidth:I

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/miui/personalassistant/ui/widget/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/miui/personalassistant/ui/widget/CircleImageView;->mBorderWidth:I

    int-to-float v1, v1

    sub-float/2addr v1, v6

    iget v2, p0, Lcom/miui/personalassistant/ui/widget/CircleImageView;->mBorderWidth:I

    int-to-float v2, v2

    sub-float/2addr v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->inset(FF)V

    :cond_4
    iget-object v0, p0, Lcom/miui/personalassistant/ui/widget/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    div-float/2addr v0, v4

    iget-object v1, p0, Lcom/miui/personalassistant/ui/widget/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    div-float/2addr v1, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/miui/personalassistant/ui/widget/CircleImageView;->mDrawableRadius:F

    invoke-direct {p0}, Lcom/miui/personalassistant/ui/widget/CircleImageView;->applyColorFilter()V

    invoke-direct {p0}, Lcom/miui/personalassistant/ui/widget/CircleImageView;->updateShaderMatrix()V

    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/widget/CircleImageView;->invalidate()V

    goto/16 :goto_0
.end method

.method private updateShaderMatrix()V
    .locals 7

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/miui/personalassistant/ui/widget/CircleImageView;->mShaderMatrix:Landroid/graphics/Matrix;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget v3, p0, Lcom/miui/personalassistant/ui/widget/CircleImageView;->mBitmapWidth:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/miui/personalassistant/ui/widget/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/miui/personalassistant/ui/widget/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    iget v5, p0, Lcom/miui/personalassistant/ui/widget/CircleImageView;->mBitmapHeight:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    iget-object v3, p0, Lcom/miui/personalassistant/ui/widget/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    iget v4, p0, Lcom/miui/personalassistant/ui/widget/CircleImageView;->mBitmapHeight:I

    int-to-float v4, v4

    div-float v2, v3, v4

    iget-object v3, p0, Lcom/miui/personalassistant/ui/widget/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    iget v4, p0, Lcom/miui/personalassistant/ui/widget/CircleImageView;->mBitmapWidth:I

    int-to-float v4, v4

    mul-float/2addr v4, v2

    sub-float/2addr v3, v4

    mul-float v0, v3, v6

    :goto_0
    iget-object v3, p0, Lcom/miui/personalassistant/ui/widget/CircleImageView;->mShaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v2, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    iget-object v3, p0, Lcom/miui/personalassistant/ui/widget/CircleImageView;->mShaderMatrix:Landroid/graphics/Matrix;

    add-float v4, v0, v6

    float-to-int v4, v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/miui/personalassistant/ui/widget/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    add-float/2addr v4, v5

    add-float v5, v1, v6

    float-to-int v5, v5

    int-to-float v5, v5

    iget-object v6, p0, Lcom/miui/personalassistant/ui/widget/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    add-float/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v3, p0, Lcom/miui/personalassistant/ui/widget/CircleImageView;->mBitmapShader:Landroid/graphics/BitmapShader;

    iget-object v4, p0, Lcom/miui/personalassistant/ui/widget/CircleImageView;->mShaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v4}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    return-void

    :cond_0
    iget-object v3, p0, Lcom/miui/personalassistant/ui/widget/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    iget v4, p0, Lcom/miui/personalassistant/ui/widget/CircleImageView;->mBitmapWidth:I

    int-to-float v4, v4

    div-float v2, v3, v4

    iget-object v3, p0, Lcom/miui/personalassistant/ui/widget/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    iget v4, p0, Lcom/miui/personalassistant/ui/widget/CircleImageView;->mBitmapHeight:I

    int-to-float v4, v4

    mul-float/2addr v4, v2

    sub-float/2addr v3, v4

    mul-float v1, v3, v6

    goto :goto_0
.end method


# virtual methods
.method public getBorderColor()I
    .locals 1

    iget v0, p0, Lcom/miui/personalassistant/ui/widget/CircleImageView;->mBorderColor:I

    return v0
.end method

.method public getBorderWidth()I
    .locals 1

    iget v0, p0, Lcom/miui/personalassistant/ui/widget/CircleImageView;->mBorderWidth:I

    return v0
.end method

.method public getColorFilter()Landroid/graphics/ColorFilter;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/ui/widget/CircleImageView;->mColorFilter:Landroid/graphics/ColorFilter;

    return-object v0
.end method

.method public getFillColor()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p0, Lcom/miui/personalassistant/ui/widget/CircleImageView;->mFillColor:I

    return v0
.end method

.method public getScaleType()Landroid/widget/ImageView$ScaleType;
    .locals 1

    sget-object v0, Lcom/miui/personalassistant/ui/widget/CircleImageView;->SCALE_TYPE:Landroid/widget/ImageView$ScaleType;

    return-object v0
.end method

.method public isBorderOverlay()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/personalassistant/ui/widget/CircleImageView;->mBorderOverlay:Z

    return v0
.end method

.method public isDisableCircularTransformation()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/personalassistant/ui/widget/CircleImageView;->mDisableCircularTransformation:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    iget-boolean v0, p0, Lcom/miui/personalassistant/ui/widget/CircleImageView;->mDisableCircularTransformation:Z

    if-eqz v0, :cond_1

    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/miui/personalassistant/ui/widget/CircleImageView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/miui/personalassistant/ui/widget/CircleImageView;->mFillColor:I

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/personalassistant/ui/widget/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iget-object v1, p0, Lcom/miui/personalassistant/ui/widget/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    iget v2, p0, Lcom/miui/personalassistant/ui/widget/CircleImageView;->mDrawableRadius:F

    iget-object v3, p0, Lcom/miui/personalassistant/ui/widget/CircleImageView;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_2
    iget-object v0, p0, Lcom/miui/personalassistant/ui/widget/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iget-object v1, p0, Lcom/miui/personalassistant/ui/widget/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    iget v2, p0, Lcom/miui/personalassistant/ui/widget/CircleImageView;->mDrawableRadius:F

    iget-object v3, p0, Lcom/miui/personalassistant/ui/widget/CircleImageView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget v0, p0, Lcom/miui/personalassistant/ui/widget/CircleImageView;->mBorderWidth:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/ui/widget/CircleImageView;->mBorderRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iget-object v1, p0, Lcom/miui/personalassistant/ui/widget/CircleImageView;->mBorderRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    iget v2, p0, Lcom/miui/personalassistant/ui/widget/CircleImageView;->mBorderRadius:F

    iget-object v3, p0, Lcom/miui/personalassistant/ui/widget/CircleImageView;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->onSizeChanged(IIII)V

    invoke-direct {p0}, Lcom/miui/personalassistant/ui/widget/CircleImageView;->setup()V

    return-void
.end method

.method public setAdjustViewBounds(Z)V
    .locals 2

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "adjustViewBounds not supported."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public setBorderColor(I)V
    .locals 2
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    iget v0, p0, Lcom/miui/personalassistant/ui/widget/CircleImageView;->mBorderColor:I

    if-ne p1, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lcom/miui/personalassistant/ui/widget/CircleImageView;->mBorderColor:I

    iget-object v0, p0, Lcom/miui/personalassistant/ui/widget/CircleImageView;->mBorderPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/miui/personalassistant/ui/widget/CircleImageView;->mBorderColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/widget/CircleImageView;->invalidate()V

    goto :goto_0
.end method

.method public setBorderColorResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/widget/CircleImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/personalassistant/ui/widget/CircleImageView;->setBorderColor(I)V

    return-void
.end method

.method public setBorderOverlay(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/miui/personalassistant/ui/widget/CircleImageView;->mBorderOverlay:Z

    if-ne p1, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/miui/personalassistant/ui/widget/CircleImageView;->mBorderOverlay:Z

    invoke-direct {p0}, Lcom/miui/personalassistant/ui/widget/CircleImageView;->setup()V

    goto :goto_0
.end method

.method public setBorderWidth(I)V
    .locals 1

    iget v0, p0, Lcom/miui/personalassistant/ui/widget/CircleImageView;->mBorderWidth:I

    if-ne p1, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lcom/miui/personalassistant/ui/widget/CircleImageView;->mBorderWidth:I

    invoke-direct {p0}, Lcom/miui/personalassistant/ui/widget/CircleImageView;->setup()V

    goto :goto_0
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/ui/widget/CircleImageView;->mColorFilter:Landroid/graphics/ColorFilter;

    if-ne p1, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/miui/personalassistant/ui/widget/CircleImageView;->mColorFilter:Landroid/graphics/ColorFilter;

    invoke-direct {p0}, Lcom/miui/personalassistant/ui/widget/CircleImageView;->applyColorFilter()V

    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/widget/CircleImageView;->invalidate()V

    goto :goto_0
.end method

.method public setDisableCircularTransformation(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/miui/personalassistant/ui/widget/CircleImageView;->mDisableCircularTransformation:Z

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/miui/personalassistant/ui/widget/CircleImageView;->mDisableCircularTransformation:Z

    invoke-direct {p0}, Lcom/miui/personalassistant/ui/widget/CircleImageView;->initializeBitmap()V

    goto :goto_0
.end method

.method public setFillColor(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p0, Lcom/miui/personalassistant/ui/widget/CircleImageView;->mFillColor:I

    if-ne p1, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lcom/miui/personalassistant/ui/widget/CircleImageView;->mFillColor:I

    iget-object v0, p0, Lcom/miui/personalassistant/ui/widget/CircleImageView;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/widget/CircleImageView;->invalidate()V

    goto :goto_0
.end method

.method public setFillColorResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/widget/CircleImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/personalassistant/ui/widget/CircleImageView;->setFillColor(I)V

    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-direct {p0}, Lcom/miui/personalassistant/ui/widget/CircleImageView;->initializeBitmap()V

    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-direct {p0}, Lcom/miui/personalassistant/ui/widget/CircleImageView;->initializeBitmap()V

    return-void
.end method

.method public setImageResource(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-direct {p0}, Lcom/miui/personalassistant/ui/widget/CircleImageView;->initializeBitmap()V

    return-void
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    invoke-direct {p0}, Lcom/miui/personalassistant/ui/widget/CircleImageView;->initializeBitmap()V

    return-void
.end method

.method public setPadding(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->setPadding(IIII)V

    invoke-direct {p0}, Lcom/miui/personalassistant/ui/widget/CircleImageView;->setup()V

    return-void
.end method

.method public setPaddingRelative(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->setPaddingRelative(IIII)V

    invoke-direct {p0}, Lcom/miui/personalassistant/ui/widget/CircleImageView;->setup()V

    return-void
.end method

.method public setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 4

    sget-object v0, Lcom/miui/personalassistant/ui/widget/CircleImageView;->SCALE_TYPE:Landroid/widget/ImageView$ScaleType;

    if-eq p1, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "ScaleType %s not supported."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method
