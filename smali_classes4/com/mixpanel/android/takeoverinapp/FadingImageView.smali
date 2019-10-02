.class public Lcom/mixpanel/android/takeoverinapp/FadingImageView;
.super Landroid/widget/ImageView;
.source "FadingImageView.java"


# instance fields
.field private mAlphaGradientPaint:Landroid/graphics/Paint;

.field private mAlphaGradientShader:Landroid/graphics/Shader;

.field private mDarkenGradientPaint:Landroid/graphics/Paint;

.field private mDarkenGradientShader:Landroid/graphics/Shader;

.field private mGradientMatrix:Landroid/graphics/Matrix;

.field private mHeight:I

.field private mShouldShowShadow:Z

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/mixpanel/android/takeoverinapp/FadingImageView;->initFadingImageView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0}, Lcom/mixpanel/android/takeoverinapp/FadingImageView;->initFadingImageView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0}, Lcom/mixpanel/android/takeoverinapp/FadingImageView;->initFadingImageView()V

    return-void
.end method

.method private initFadingImageView()V
    .locals 10

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/mixpanel/android/takeoverinapp/FadingImageView;->mGradientMatrix:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/mixpanel/android/takeoverinapp/FadingImageView;->mAlphaGradientPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/LinearGradient;

    const/4 v9, 0x4

    new-array v6, v9, [I

    fill-array-data v6, :array_0

    new-array v7, v9, [F

    fill-array-data v7, :array_1

    sget-object v8, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/mixpanel/android/takeoverinapp/FadingImageView;->mAlphaGradientShader:Landroid/graphics/Shader;

    iget-object v0, p0, Lcom/mixpanel/android/takeoverinapp/FadingImageView;->mAlphaGradientPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/mixpanel/android/takeoverinapp/FadingImageView;->mAlphaGradientShader:Landroid/graphics/Shader;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v0, p0, Lcom/mixpanel/android/takeoverinapp/FadingImageView;->mAlphaGradientPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/mixpanel/android/takeoverinapp/FadingImageView;->mDarkenGradientPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/LinearGradient;

    new-array v6, v9, [I

    fill-array-data v6, :array_2

    new-array v7, v9, [F

    fill-array-data v7, :array_3

    sget-object v8, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v2, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/mixpanel/android/takeoverinapp/FadingImageView;->mDarkenGradientShader:Landroid/graphics/Shader;

    iget-object v0, p0, Lcom/mixpanel/android/takeoverinapp/FadingImageView;->mDarkenGradientPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/mixpanel/android/takeoverinapp/FadingImageView;->mDarkenGradientShader:Landroid/graphics/Shader;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v0, p0, Lcom/mixpanel/android/takeoverinapp/FadingImageView;->mAlphaGradientPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    return-void

    nop

    :array_0
    .array-data 4
        -0x1000000
        -0x1000000
        -0x1b000000
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3e4ccccd    # 0.2f
        0x3ecccccd    # 0.4f
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x0
        -0x1000000
        -0x1000000
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x3f59999a    # 0.85f
        0x3f7ae148    # 0.98f
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 8

    iget-boolean v0, p0, Lcom/mixpanel/android/takeoverinapp/FadingImageView;->mShouldShowShadow:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v4, v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v5, v0

    const/4 v6, 0x0

    const/16 v7, 0x1f

    move-object v1, p1

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    move-result v0

    invoke-super {p0, p1}, Landroid/widget/ImageView;->draw(Landroid/graphics/Canvas;)V

    iget v1, p0, Lcom/mixpanel/android/takeoverinapp/FadingImageView;->mWidth:I

    int-to-float v4, v1

    iget v1, p0, Lcom/mixpanel/android/takeoverinapp/FadingImageView;->mHeight:I

    int-to-float v5, v1

    iget-object v6, p0, Lcom/mixpanel/android/takeoverinapp/FadingImageView;->mAlphaGradientPaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->draw(Landroid/graphics/Canvas;)V

    :goto_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    iget-boolean p1, p0, Lcom/mixpanel/android/takeoverinapp/FadingImageView;->mShouldShowShadow:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/mixpanel/android/takeoverinapp/FadingImageView;->getMeasuredHeight()I

    move-result p1

    iput p1, p0, Lcom/mixpanel/android/takeoverinapp/FadingImageView;->mHeight:I

    invoke-virtual {p0}, Lcom/mixpanel/android/takeoverinapp/FadingImageView;->getMeasuredWidth()I

    move-result p1

    iput p1, p0, Lcom/mixpanel/android/takeoverinapp/FadingImageView;->mWidth:I

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    iget-object p2, p0, Lcom/mixpanel/android/takeoverinapp/FadingImageView;->mGradientMatrix:Landroid/graphics/Matrix;

    const/high16 v0, 0x3f800000    # 1.0f

    int-to-float p1, p1

    invoke-virtual {p2, v0, p1}, Landroid/graphics/Matrix;->setScale(FF)V

    iget-object p1, p0, Lcom/mixpanel/android/takeoverinapp/FadingImageView;->mAlphaGradientShader:Landroid/graphics/Shader;

    iget-object p2, p0, Lcom/mixpanel/android/takeoverinapp/FadingImageView;->mGradientMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, p2}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    iget-object p1, p0, Lcom/mixpanel/android/takeoverinapp/FadingImageView;->mDarkenGradientShader:Landroid/graphics/Shader;

    iget-object p2, p0, Lcom/mixpanel/android/takeoverinapp/FadingImageView;->mGradientMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, p2}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    :cond_0
    return-void
.end method

.method public showShadow(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/mixpanel/android/takeoverinapp/FadingImageView;->mShouldShowShadow:Z

    return-void
.end method
