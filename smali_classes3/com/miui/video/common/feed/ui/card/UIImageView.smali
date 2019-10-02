.class public Lcom/miui/video/common/feed/ui/card/UIImageView;
.super Landroid/support/v7/widget/AppCompatImageView;
.source "UIImageView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UIImageView"

.field public static final TYPE_BORDER:I = 0x1

.field public static final TYPE_CIRCLE:I = 0x2

.field public static final TYPE_NORMAL:I = 0x0

.field public static final TYPE_OVAL:I = 0x3

.field public static final TYPE_ROUND:I = 0x4

.field public static final TYPE_SHAPE:I = 0x5


# instance fields
.field private mBorderColor:I

.field private mBorderWidth:I

.field private mPath:Landroid/graphics/Path;

.field private mRound:I

.field private mType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/miui/video/common/feed/ui/card/UIImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/video/common/feed/ui/card/UIImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x0

    iput p3, p0, Lcom/miui/video/common/feed/ui/card/UIImageView;->mType:I

    if-eqz p2, :cond_0

    sget-object v0, Lcom/miui/video/common/feed/R$styleable;->UIImageView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, Lcom/miui/video/common/feed/R$styleable;->UIImageView_uiType:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, Lcom/miui/video/common/feed/ui/card/UIImageView;->mType:I

    sget p2, Lcom/miui/video/common/feed/R$styleable;->UIImageView_uiBorderWidth:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, p0, Lcom/miui/video/common/feed/ui/card/UIImageView;->mBorderWidth:I

    sget p2, Lcom/miui/video/common/feed/R$styleable;->UIImageView_uiBorderColor:I

    const/4 v0, -0x1

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/miui/video/common/feed/ui/card/UIImageView;->mBorderColor:I

    sget p2, Lcom/miui/video/common/feed/R$styleable;->UIImageView_uiRound:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/miui/video/common/feed/ui/card/UIImageView;->mRound:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_0
    return-void
.end method

.method private drawBorder(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 6

    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/miui/video/common/feed/ui/card/UIImageView;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/miui/video/common/feed/ui/card/UIImageView;->getPaddingTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/miui/video/common/feed/ui/card/UIImageView;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/miui/video/common/feed/ui/card/UIImageView;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/miui/video/common/feed/ui/card/UIImageView;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Lcom/miui/video/common/feed/ui/card/UIImageView;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method private drawCircle(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 5

    invoke-virtual {p0}, Lcom/miui/video/common/feed/ui/card/UIImageView;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/miui/video/common/feed/ui/card/UIImageView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/miui/video/common/feed/ui/card/UIImageView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/miui/video/common/feed/ui/card/UIImageView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/miui/video/common/feed/ui/card/UIImageView;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Lcom/miui/video/common/feed/ui/card/UIImageView;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/miui/video/common/feed/ui/card/UIImageView;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/miui/video/common/feed/ui/card/UIImageView;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/miui/video/common/feed/ui/card/UIImageView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/miui/video/common/feed/ui/card/UIImageView;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/miui/video/common/feed/ui/card/UIImageView;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/miui/video/common/feed/ui/card/UIImageView;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/miui/video/common/feed/ui/card/UIImageView;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/miui/video/common/feed/ui/card/UIImageView;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2, p2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawOval(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 6

    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/miui/video/common/feed/ui/card/UIImageView;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/miui/video/common/feed/ui/card/UIImageView;->getPaddingTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/miui/video/common/feed/ui/card/UIImageView;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/miui/video/common/feed/ui/card/UIImageView;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/miui/video/common/feed/ui/card/UIImageView;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Lcom/miui/video/common/feed/ui/card/UIImageView;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method private drawRound(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 6

    iget v0, p0, Lcom/miui/video/common/feed/ui/card/UIImageView;->mRound:I

    if-gez v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/video/common/feed/ui/card/UIImageView;->mRound:I

    :cond_0
    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/miui/video/common/feed/ui/card/UIImageView;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/miui/video/common/feed/ui/card/UIImageView;->getPaddingTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/miui/video/common/feed/ui/card/UIImageView;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/miui/video/common/feed/ui/card/UIImageView;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/miui/video/common/feed/ui/card/UIImageView;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Lcom/miui/video/common/feed/ui/card/UIImageView;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v1, p0, Lcom/miui/video/common/feed/ui/card/UIImageView;->mRound:I

    int-to-float v1, v1

    iget v2, p0, Lcom/miui/video/common/feed/ui/card/UIImageView;->mRound:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawShape(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/feed/ui/card/UIImageView;->mPath:Landroid/graphics/Path;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/common/feed/ui/card/UIImageView;->mPath:Landroid/graphics/Path;

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method private getBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    instance-of v1, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_1

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    goto :goto_0

    :cond_2
    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    :goto_0
    :try_start_0
    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0}, Lcom/miui/video/common/feed/ui/card/UIImageView;->getPaddingLeft()I

    move-result v4

    invoke-virtual {p0}, Lcom/miui/video/common/feed/ui/card/UIImageView;->getPaddingTop()I

    move-result v5

    invoke-virtual {p0}, Lcom/miui/video/common/feed/ui/card/UIImageView;->getPaddingRight()I

    move-result v6

    sub-int/2addr v1, v6

    invoke-virtual {p0}, Lcom/miui/video/common/feed/ui/card/UIImageView;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v2, v6

    invoke-virtual {p1, v4, v5, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    move-object v3, v0

    :goto_1
    const-string v0, "UIImageView"

    invoke-static {v0, p1}, Lcom/miui/video/framework/log/LogUtils;->catchException(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :goto_2
    return-object v3
.end method

.method private getMatrix(FFFF)Landroid/graphics/Matrix;
    .locals 5

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {p0}, Lcom/miui/video/common/feed/ui/card/UIImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v1

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    const/high16 v3, 0x40000000    # 2.0f

    if-ne v1, v2, :cond_0

    sub-float/2addr p3, p1

    div-float/2addr p3, v3

    sub-float/2addr p4, p2

    div-float/2addr p4, v3

    invoke-virtual {v0, p3, p4}, Landroid/graphics/Matrix;->setTranslate(FF)V

    goto/16 :goto_0

    :cond_0
    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    if-ne v1, v2, :cond_1

    div-float v1, p3, p1

    div-float v2, p4, p2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    mul-float p1, p1, v1

    mul-float p2, p2, v1

    sub-float/2addr p3, p1

    div-float/2addr p3, v3

    sub-float/2addr p4, p2

    div-float/2addr p4, v3

    invoke-virtual {v0, p3, p4}, Landroid/graphics/Matrix;->setTranslate(FF)V

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Matrix;->preScale(FF)Z

    goto :goto_0

    :cond_1
    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    if-ne v1, v2, :cond_3

    div-float v1, p3, p1

    div-float v2, p4, p2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v4, v1, v2

    if-lez v4, :cond_2

    const/high16 v1, 0x3f800000    # 1.0f

    :cond_2
    mul-float p1, p1, v1

    mul-float p2, p2, v1

    sub-float/2addr p3, p1

    div-float/2addr p3, v3

    sub-float/2addr p4, p2

    div-float/2addr p4, v3

    invoke-virtual {v0, p3, p4}, Landroid/graphics/Matrix;->setTranslate(FF)V

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Matrix;->preScale(FF)Z

    goto :goto_0

    :cond_3
    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    const/4 v4, 0x0

    if-ne v1, v2, :cond_4

    div-float v1, p3, p1

    div-float/2addr p4, p2

    invoke-static {v1, p4}, Ljava/lang/Math;->min(FF)F

    move-result p2

    mul-float p1, p1, p2

    sub-float/2addr p3, p1

    div-float/2addr p3, v3

    invoke-virtual {v0, p3, v4}, Landroid/graphics/Matrix;->setTranslate(FF)V

    invoke-virtual {v0, p2, p2}, Landroid/graphics/Matrix;->preScale(FF)Z

    goto :goto_0

    :cond_4
    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_END:Landroid/widget/ImageView$ScaleType;

    if-ne v1, v2, :cond_5

    div-float v1, p3, p1

    div-float/2addr p4, p2

    invoke-static {v1, p4}, Ljava/lang/Math;->min(FF)F

    move-result p2

    mul-float p1, p1, p2

    sub-float/2addr p3, p1

    invoke-virtual {v0, p3, v4}, Landroid/graphics/Matrix;->setTranslate(FF)V

    invoke-virtual {v0, p2, p2}, Landroid/graphics/Matrix;->preScale(FF)Z

    goto :goto_0

    :cond_5
    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_START:Landroid/widget/ImageView$ScaleType;

    if-ne v1, v2, :cond_6

    div-float/2addr p3, p1

    div-float/2addr p4, p2

    invoke-static {p3, p4}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-virtual {v0, p1, p1}, Landroid/graphics/Matrix;->setScale(FF)V

    goto :goto_0

    :cond_6
    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    if-ne v1, v2, :cond_7

    div-float/2addr p3, p1

    div-float/2addr p4, p2

    invoke-virtual {v0, p3, p4}, Landroid/graphics/Matrix;->setScale(FF)V

    goto :goto_0

    :cond_7
    sget-object p1, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    :goto_0
    return-object v0
.end method

.method private getStrokePaint()Landroid/graphics/Paint;
    .locals 2

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget v1, p0, Lcom/miui/video/common/feed/ui/card/UIImageView;->mBorderWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget v1, p0, Lcom/miui/video/common/feed/ui/card/UIImageView;->mBorderColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-object v0
.end method


# virtual methods
.method public getBorderColor()I
    .locals 1

    iget v0, p0, Lcom/miui/video/common/feed/ui/card/UIImageView;->mBorderColor:I

    return v0
.end method

.method public getBorderWidth()I
    .locals 1

    iget v0, p0, Lcom/miui/video/common/feed/ui/card/UIImageView;->mBorderWidth:I

    return v0
.end method

.method protected getFillPaint()Landroid/graphics/Paint;
    .locals 2

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-object v0
.end method

.method public getPath()Landroid/graphics/Path;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/feed/ui/card/UIImageView;->mPath:Landroid/graphics/Path;

    return-object v0
.end method

.method public getRound()I
    .locals 1

    iget v0, p0, Lcom/miui/video/common/feed/ui/card/UIImageView;->mRound:I

    return v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lcom/miui/video/common/feed/ui/card/UIImageView;->mType:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12

    invoke-virtual {p0}, Lcom/miui/video/common/feed/ui/card/UIImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_c

    iget v1, p0, Lcom/miui/video/common/feed/ui/card/UIImageView;->mType:I

    if-lez v1, :cond_c

    iget v1, p0, Lcom/miui/video/common/feed/ui/card/UIImageView;->mType:I

    const/4 v2, 0x5

    if-gt v1, v2, :cond_c

    const/16 v9, 0x1f

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/miui/video/common/feed/ui/card/UIImageView;->getWidth()I

    move-result v1

    int-to-float v6, v1

    invoke-virtual {p0}, Lcom/miui/video/common/feed/ui/card/UIImageView;->getHeight()I

    move-result v1

    int-to-float v7, v1

    const/4 v8, 0x0

    move-object v3, p1

    invoke-virtual/range {v3 .. v9}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    invoke-virtual {p0}, Lcom/miui/video/common/feed/ui/card/UIImageView;->getFillPaint()Landroid/graphics/Paint;

    move-result-object v1

    iget v3, p0, Lcom/miui/video/common/feed/ui/card/UIImageView;->mType:I

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-ne v7, v3, :cond_0

    invoke-direct {p0, p1, v1}, Lcom/miui/video/common/feed/ui/card/UIImageView;->drawBorder(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    goto :goto_0

    :cond_0
    iget v3, p0, Lcom/miui/video/common/feed/ui/card/UIImageView;->mType:I

    if-ne v6, v3, :cond_1

    invoke-direct {p0, p1, v1}, Lcom/miui/video/common/feed/ui/card/UIImageView;->drawCircle(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    goto :goto_0

    :cond_1
    iget v3, p0, Lcom/miui/video/common/feed/ui/card/UIImageView;->mType:I

    if-ne v5, v3, :cond_2

    invoke-direct {p0, p1, v1}, Lcom/miui/video/common/feed/ui/card/UIImageView;->drawOval(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    goto :goto_0

    :cond_2
    iget v3, p0, Lcom/miui/video/common/feed/ui/card/UIImageView;->mType:I

    if-ne v4, v3, :cond_3

    invoke-direct {p0, p1, v1}, Lcom/miui/video/common/feed/ui/card/UIImageView;->drawRound(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    goto :goto_0

    :cond_3
    iget v3, p0, Lcom/miui/video/common/feed/ui/card/UIImageView;->mType:I

    if-ne v2, v3, :cond_4

    invoke-direct {p0, p1, v1}, Lcom/miui/video/common/feed/ui/card/UIImageView;->drawShape(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    :cond_4
    :goto_0
    new-instance v3, Landroid/graphics/PorterDuffXfermode;

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v8}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    invoke-direct {p0, v0}, Lcom/miui/video/common/feed/ui/card/UIImageView;->getBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v3

    if-nez v3, :cond_5

    return-void

    :cond_5
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {p0}, Lcom/miui/video/common/feed/ui/card/UIImageView;->getWidth()I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {p0}, Lcom/miui/video/common/feed/ui/card/UIImageView;->getHeight()I

    move-result v11

    int-to-float v11, v11

    invoke-direct {p0, v8, v9, v10, v11}, Lcom/miui/video/common/feed/ui/card/UIImageView;->getMatrix(FFFF)Landroid/graphics/Matrix;

    move-result-object v8

    invoke-virtual {p1, v3, v8, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    iget v8, p0, Lcom/miui/video/common/feed/ui/card/UIImageView;->mBorderWidth:I

    if-lez v8, :cond_a

    iget v8, p0, Lcom/miui/video/common/feed/ui/card/UIImageView;->mBorderWidth:I

    int-to-float v8, v8

    invoke-virtual {v1, v8}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget v8, p0, Lcom/miui/video/common/feed/ui/card/UIImageView;->mBorderColor:I

    invoke-virtual {v1, v8}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v8, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v8}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget v8, p0, Lcom/miui/video/common/feed/ui/card/UIImageView;->mType:I

    if-ne v7, v8, :cond_6

    invoke-direct {p0, p1, v1}, Lcom/miui/video/common/feed/ui/card/UIImageView;->drawBorder(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    goto :goto_1

    :cond_6
    iget v7, p0, Lcom/miui/video/common/feed/ui/card/UIImageView;->mType:I

    if-ne v6, v7, :cond_7

    invoke-direct {p0, p1, v1}, Lcom/miui/video/common/feed/ui/card/UIImageView;->drawCircle(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    goto :goto_1

    :cond_7
    iget v6, p0, Lcom/miui/video/common/feed/ui/card/UIImageView;->mType:I

    if-ne v5, v6, :cond_8

    invoke-direct {p0, p1, v1}, Lcom/miui/video/common/feed/ui/card/UIImageView;->drawOval(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    goto :goto_1

    :cond_8
    iget v5, p0, Lcom/miui/video/common/feed/ui/card/UIImageView;->mType:I

    if-ne v4, v5, :cond_9

    invoke-direct {p0, p1, v1}, Lcom/miui/video/common/feed/ui/card/UIImageView;->drawRound(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    goto :goto_1

    :cond_9
    iget v4, p0, Lcom/miui/video/common/feed/ui/card/UIImageView;->mType:I

    if-ne v2, v4, :cond_a

    invoke-direct {p0, p1, v1}, Lcom/miui/video/common/feed/ui/card/UIImageView;->drawShape(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    :cond_a
    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    instance-of p1, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz p1, :cond_b

    goto :goto_2

    :cond_b
    if-eqz v3, :cond_d

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p1

    if-nez p1, :cond_d

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_2

    :cond_c
    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatImageView;->onDraw(Landroid/graphics/Canvas;)V

    :cond_d
    :goto_2
    return-void
.end method

.method public setBorderColor(I)V
    .locals 0

    iput p1, p0, Lcom/miui/video/common/feed/ui/card/UIImageView;->mBorderColor:I

    return-void
.end method

.method public setBorderWidth(I)V
    .locals 0

    iput p1, p0, Lcom/miui/video/common/feed/ui/card/UIImageView;->mBorderWidth:I

    return-void
.end method

.method public setPath(Landroid/graphics/Path;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/common/feed/ui/card/UIImageView;->mPath:Landroid/graphics/Path;

    return-void
.end method

.method public setRound(I)V
    .locals 0

    iput p1, p0, Lcom/miui/video/common/feed/ui/card/UIImageView;->mRound:I

    return-void
.end method

.method public setType(I)V
    .locals 0

    iput p1, p0, Lcom/miui/video/common/feed/ui/card/UIImageView;->mType:I

    return-void
.end method
