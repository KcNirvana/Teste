.class public Lcom/ali/user/mobile/ui/widget/APRoundAngleImageView;
.super Lcom/ali/user/mobile/ui/widget/APImageView;
.source "APRoundAngleImageView.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private b:I

.field private c:I

.field private d:Z

.field private e:I

.field private f:I

.field private g:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x5

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/ali/user/mobile/ui/widget/APImageView;-><init>(Landroid/content/Context;)V

    const-string/jumbo v0, "RoundAngleImageView"

    iput-object v0, p0, Lcom/ali/user/mobile/ui/widget/APRoundAngleImageView;->a:Ljava/lang/String;

    iput v2, p0, Lcom/ali/user/mobile/ui/widget/APRoundAngleImageView;->b:I

    iput v2, p0, Lcom/ali/user/mobile/ui/widget/APRoundAngleImageView;->c:I

    iput-boolean v1, p0, Lcom/ali/user/mobile/ui/widget/APRoundAngleImageView;->d:Z

    iput v2, p0, Lcom/ali/user/mobile/ui/widget/APRoundAngleImageView;->e:I

    iput v1, p0, Lcom/ali/user/mobile/ui/widget/APRoundAngleImageView;->f:I

    iput-boolean v1, p0, Lcom/ali/user/mobile/ui/widget/APRoundAngleImageView;->g:Z

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/ali/user/mobile/ui/widget/APRoundAngleImageView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v2, 0x5

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Lcom/ali/user/mobile/ui/widget/APImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string/jumbo v0, "RoundAngleImageView"

    iput-object v0, p0, Lcom/ali/user/mobile/ui/widget/APRoundAngleImageView;->a:Ljava/lang/String;

    iput v2, p0, Lcom/ali/user/mobile/ui/widget/APRoundAngleImageView;->b:I

    iput v2, p0, Lcom/ali/user/mobile/ui/widget/APRoundAngleImageView;->c:I

    iput-boolean v1, p0, Lcom/ali/user/mobile/ui/widget/APRoundAngleImageView;->d:Z

    iput v2, p0, Lcom/ali/user/mobile/ui/widget/APRoundAngleImageView;->e:I

    iput v1, p0, Lcom/ali/user/mobile/ui/widget/APRoundAngleImageView;->f:I

    iput-boolean v1, p0, Lcom/ali/user/mobile/ui/widget/APRoundAngleImageView;->g:Z

    invoke-direct {p0, p1, p2}, Lcom/ali/user/mobile/ui/widget/APRoundAngleImageView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    const/4 v2, 0x5

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/ali/user/mobile/ui/widget/APImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string/jumbo v0, "RoundAngleImageView"

    iput-object v0, p0, Lcom/ali/user/mobile/ui/widget/APRoundAngleImageView;->a:Ljava/lang/String;

    iput v2, p0, Lcom/ali/user/mobile/ui/widget/APRoundAngleImageView;->b:I

    iput v2, p0, Lcom/ali/user/mobile/ui/widget/APRoundAngleImageView;->c:I

    iput-boolean v1, p0, Lcom/ali/user/mobile/ui/widget/APRoundAngleImageView;->d:Z

    iput v2, p0, Lcom/ali/user/mobile/ui/widget/APRoundAngleImageView;->e:I

    iput v1, p0, Lcom/ali/user/mobile/ui/widget/APRoundAngleImageView;->f:I

    iput-boolean v1, p0, Lcom/ali/user/mobile/ui/widget/APRoundAngleImageView;->g:Z

    invoke-direct {p0, p1, p2}, Lcom/ali/user/mobile/ui/widget/APRoundAngleImageView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    if-eqz p2, :cond_0

    sget-object v0, Lcom/ali/user/mobile/security/ui/R$styleable;->alipay_RoundAngleImageView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v1, Lcom/ali/user/mobile/security/ui/R$styleable;->alipay_RoundAngleImageView_alipay_roundWidth:I

    iget v2, p0, Lcom/ali/user/mobile/ui/widget/APRoundAngleImageView;->b:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/ali/user/mobile/ui/widget/APRoundAngleImageView;->b:I

    sget v1, Lcom/ali/user/mobile/security/ui/R$styleable;->alipay_RoundAngleImageView_alipay_roundHeight:I

    iget v2, p0, Lcom/ali/user/mobile/ui/widget/APRoundAngleImageView;->c:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/ali/user/mobile/ui/widget/APRoundAngleImageView;->c:I

    sget v1, Lcom/ali/user/mobile/security/ui/R$styleable;->alipay_RoundAngleImageView_alipay_showRound:I

    iget-boolean v2, p0, Lcom/ali/user/mobile/ui/widget/APRoundAngleImageView;->d:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/ali/user/mobile/ui/widget/APRoundAngleImageView;->d:Z

    sget v1, Lcom/ali/user/mobile/security/ui/R$styleable;->alipay_RoundAngleImageView_alipay_circlePadding:I

    iget v2, p0, Lcom/ali/user/mobile/ui/widget/APRoundAngleImageView;->e:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/ali/user/mobile/ui/widget/APRoundAngleImageView;->e:I

    sget v1, Lcom/ali/user/mobile/security/ui/R$styleable;->alipay_RoundAngleImageView_alipay_circleBackground:I

    iget v2, p0, Lcom/ali/user/mobile/ui/widget/APRoundAngleImageView;->f:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/ali/user/mobile/ui/widget/APRoundAngleImageView;->f:I

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iget v1, p0, Lcom/ali/user/mobile/ui/widget/APRoundAngleImageView;->b:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Lcom/ali/user/mobile/ui/widget/APRoundAngleImageView;->b:I

    iget v1, p0, Lcom/ali/user/mobile/ui/widget/APRoundAngleImageView;->c:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/ali/user/mobile/ui/widget/APRoundAngleImageView;->c:I

    goto :goto_0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/ali/user/mobile/ui/widget/APRoundAngleImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/ali/user/mobile/ui/widget/APRoundAngleImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v1

    if-eqz v0, :cond_2

    iget-boolean v2, p0, Lcom/ali/user/mobile/ui/widget/APRoundAngleImageView;->g:Z

    if-nez v2, :cond_2

    new-instance v2, Landroid/graphics/BitmapShader;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    sget-object v4, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v5, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v2, v3, v4, v5}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    new-instance v3, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/ali/user/mobile/ui/widget/APRoundAngleImageView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p0}, Lcom/ali/user/mobile/ui/widget/APRoundAngleImageView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-direct {v3, v6, v6, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    new-instance v5, Landroid/graphics/RectF;

    int-to-float v4, v4

    int-to-float v0, v0

    invoke-direct {v5, v6, v6, v4, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView$ScaleType;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    :goto_0
    invoke-virtual {v4, v5, v3, v0}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    invoke-virtual {v2, v4}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    new-instance v1, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v2, 0x0

    const/4 v4, 0x3

    invoke-direct {v1, v2, v4}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    iget-boolean v1, p0, Lcom/ali/user/mobile/ui/widget/APRoundAngleImageView;->d:Z

    if-eqz v1, :cond_1

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget v2, p0, Lcom/ali/user/mobile/ui/widget/APRoundAngleImageView;->f:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Lcom/ali/user/mobile/ui/widget/APRoundAngleImageView;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/ali/user/mobile/ui/widget/APRoundAngleImageView;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/ali/user/mobile/ui/widget/APRoundAngleImageView;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    iget v5, p0, Lcom/ali/user/mobile/ui/widget/APRoundAngleImageView;->e:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {p1, v2, v3, v4, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    invoke-virtual {p0}, Lcom/ali/user/mobile/ui/widget/APRoundAngleImageView;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/ali/user/mobile/ui/widget/APRoundAngleImageView;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/ali/user/mobile/ui/widget/APRoundAngleImageView;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    iget v4, p0, Lcom/ali/user/mobile/ui/widget/APRoundAngleImageView;->e:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :goto_1
    return-void

    :cond_0
    sget-object v0, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/ali/user/mobile/ui/widget/APRoundAngleImageView;->b:I

    int-to-float v1, v1

    iget v2, p0, Lcom/ali/user/mobile/ui/widget/APRoundAngleImageView;->c:I

    int-to-float v2, v2

    invoke-virtual {p1, v3, v1, v2, v0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_1

    :cond_2
    invoke-super {p0, p1}, Lcom/ali/user/mobile/ui/widget/APImageView;->draw(Landroid/graphics/Canvas;)V

    goto :goto_1
.end method

.method public getRoundHeight()I
    .locals 1

    iget v0, p0, Lcom/ali/user/mobile/ui/widget/APRoundAngleImageView;->c:I

    return v0
.end method

.method public getRoundWidth()I
    .locals 1

    iget v0, p0, Lcom/ali/user/mobile/ui/widget/APRoundAngleImageView;->b:I

    return v0
.end method

.method public isRoundDisable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ali/user/mobile/ui/widget/APRoundAngleImageView;->g:Z

    return v0
.end method

.method public isShowRound()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ali/user/mobile/ui/widget/APRoundAngleImageView;->d:Z

    return v0
.end method

.method public setRoundDisable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ali/user/mobile/ui/widget/APRoundAngleImageView;->g:Z

    return-void
.end method

.method public setRoundHeight(I)V
    .locals 0

    iput p1, p0, Lcom/ali/user/mobile/ui/widget/APRoundAngleImageView;->c:I

    return-void
.end method

.method public setRoundWidth(I)V
    .locals 0

    iput p1, p0, Lcom/ali/user/mobile/ui/widget/APRoundAngleImageView;->b:I

    return-void
.end method

.method public setShowRound(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ali/user/mobile/ui/widget/APRoundAngleImageView;->d:Z

    return-void
.end method
