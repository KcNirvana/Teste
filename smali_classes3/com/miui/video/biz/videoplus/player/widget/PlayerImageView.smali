.class public Lcom/miui/video/biz/videoplus/player/widget/PlayerImageView;
.super Landroid/support/v7/widget/AppCompatImageView;
.source "PlayerImageView.java"

# interfaces
.implements Lcom/miui/video/biz/videoplus/player/widget/ITransformView;


# static fields
.field private static final TAG:Ljava/lang/String; = "PlayerImageView"


# instance fields
.field private mBaseMatrix:Landroid/graphics/Matrix;

.field private mEditModePaint:Landroid/graphics/Paint;

.field private mHeight:I

.field private mIsInEditMode:Z

.field private mMeasureHelper:Lcom/miui/video/biz/videoplus/player/videoview/MeasureHelper;

.field private mOnUpdateListener:Lcom/miui/video/biz/videoplus/player/widget/ITransformView$OnUpdateListener;

.field private mProbablyHeight:I

.field private mProbablyWidth:I

.field private mSuppMatrix:Landroid/graphics/Matrix;

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/video/biz/videoplus/player/widget/PlayerImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/video/biz/videoplus/player/widget/PlayerImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/player/widget/PlayerImageView;->mBaseMatrix:Landroid/graphics/Matrix;

    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/player/widget/PlayerImageView;->mSuppMatrix:Landroid/graphics/Matrix;

    sget-object p1, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, p1}, Lcom/miui/video/biz/videoplus/player/widget/PlayerImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    new-instance p1, Lcom/miui/video/biz/videoplus/player/videoview/MeasureHelper;

    invoke-direct {p1}, Lcom/miui/video/biz/videoplus/player/videoview/MeasureHelper;-><init>()V

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/player/widget/PlayerImageView;->mMeasureHelper:Lcom/miui/video/biz/videoplus/player/videoview/MeasureHelper;

    return-void
.end method

.method private getDisplayMatrix(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;
    .locals 2

    new-instance v0, Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/widget/PlayerImageView;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-direct {v0, v1}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    :cond_0
    return-object v0
.end method

.method private getDrawableHeight()I
    .locals 1

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/widget/PlayerImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/widget/PlayerImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    return v0

    :cond_0
    iget v0, p0, Lcom/miui/video/biz/videoplus/player/widget/PlayerImageView;->mProbablyHeight:I

    return v0
.end method

.method private getDrawableRect()Landroid/graphics/RectF;
    .locals 4

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/player/widget/PlayerImageView;->getDrawableWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/player/widget/PlayerImageView;->getDrawableHeight()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v0
.end method

.method private getDrawableWidth()I
    .locals 1

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/widget/PlayerImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/widget/PlayerImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    return v0

    :cond_0
    iget v0, p0, Lcom/miui/video/biz/videoplus/player/widget/PlayerImageView;->mProbablyWidth:I

    return v0
.end method

.method private update()V
    .locals 5

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/widget/PlayerImageView;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-direct {p0, v0}, Lcom/miui/video/biz/videoplus/player/widget/PlayerImageView;->getDisplayMatrix(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/player/widget/PlayerImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/widget/PlayerImageView;->mOnUpdateListener:Lcom/miui/video/biz/videoplus/player/widget/ITransformView$OnUpdateListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/widget/PlayerImageView;->mOnUpdateListener:Lcom/miui/video/biz/videoplus/player/widget/ITransformView$OnUpdateListener;

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/widget/PlayerImageView;->getViewRect()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/widget/PlayerImageView;->getBaseRect()Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/widget/PlayerImageView;->getDisplayRect()Landroid/graphics/RectF;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/video/biz/videoplus/player/widget/PlayerImageView;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/miui/video/biz/videoplus/player/widget/ITransformView$OnUpdateListener;->onUpdate(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix;)V

    :cond_0
    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/widget/PlayerImageView;->invalidate()V

    return-void
.end method

.method private updateBaseMatrix()V
    .locals 8

    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/player/widget/PlayerImageView;->getDrawableRect()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/widget/PlayerImageView;->getViewRect()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/miui/video/biz/videoplus/player/widget/PlayerImageView;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v4, v2, v3}, Landroid/graphics/Matrix;->setTranslate(FF)V

    iget-object v4, p0, Lcom/miui/video/biz/videoplus/player/widget/PlayerImageView;->mMeasureHelper:Lcom/miui/video/biz/videoplus/player/videoview/MeasureHelper;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {v4, v5, v6}, Lcom/miui/video/biz/videoplus/player/videoview/MeasureHelper;->setVideoSize(II)V

    iget-object v4, p0, Lcom/miui/video/biz/videoplus/player/widget/PlayerImageView;->mMeasureHelper:Lcom/miui/video/biz/videoplus/player/videoview/MeasureHelper;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v4, v5, v1}, Lcom/miui/video/biz/videoplus/player/videoview/MeasureHelper;->doMeasure(II)V

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/widget/PlayerImageView;->mMeasureHelper:Lcom/miui/video/biz/videoplus/player/videoview/MeasureHelper;

    invoke-virtual {v1}, Lcom/miui/video/biz/videoplus/player/videoview/MeasureHelper;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v4, 0x3f800000    # 1.0f

    mul-float v1, v1, v4

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v5

    div-float/2addr v1, v5

    iget-object v5, p0, Lcom/miui/video/biz/videoplus/player/widget/PlayerImageView;->mMeasureHelper:Lcom/miui/video/biz/videoplus/player/videoview/MeasureHelper;

    invoke-virtual {v5}, Lcom/miui/video/biz/videoplus/player/videoview/MeasureHelper;->getMeasuredHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float v5, v5, v4

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v6

    div-float/2addr v5, v6

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v6

    mul-float v6, v6, v4

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    add-float/2addr v2, v6

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    mul-float v0, v0, v4

    div-float/2addr v0, v7

    add-float/2addr v3, v0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/widget/PlayerImageView;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1, v5, v2, v3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/player/widget/PlayerImageView;->update()V

    return-void
.end method


# virtual methods
.method public getBaseRect()Landroid/graphics/RectF;
    .locals 3

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    invoke-virtual {v0}, Landroid/graphics/RectF;->setEmpty()V

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/widget/PlayerImageView;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/player/widget/PlayerImageView;->getDrawableRect()Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    return-object v0
.end method

.method public getDisplayRect()Landroid/graphics/RectF;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/widget/PlayerImageView;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/player/widget/PlayerImageView;->getDisplayRect(Landroid/graphics/Matrix;)Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayRect(Landroid/graphics/Matrix;)Landroid/graphics/RectF;
    .locals 2

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    invoke-virtual {v0}, Landroid/graphics/RectF;->setEmpty()V

    invoke-direct {p0, p1}, Lcom/miui/video/biz/videoplus/player/widget/PlayerImageView;->getDisplayMatrix(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object p1

    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/player/widget/PlayerImageView;->getDrawableRect()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    return-object v0
.end method

.method public getSuppMatrix()Landroid/graphics/Matrix;
    .locals 2

    new-instance v0, Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/widget/PlayerImageView;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-direct {v0, v1}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    return-object v0
.end method

.method public getViewRect()Landroid/graphics/RectF;
    .locals 4

    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/miui/video/biz/videoplus/player/widget/PlayerImageView;->mWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/miui/video/biz/videoplus/player/widget/PlayerImageView;->mHeight:I

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v0
.end method

.method public onDrawForeground(Landroid/graphics/Canvas;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatImageView;->onDrawForeground(Landroid/graphics/Canvas;)V

    iget-boolean v0, p0, Lcom/miui/video/biz/videoplus/player/widget/PlayerImageView;->mIsInEditMode:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/widget/PlayerImageView;->mEditModePaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/widget/PlayerImageView;->mEditModePaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/widget/PlayerImageView;->mEditModePaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/widget/PlayerImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/miui/video/biz/videoplus/R$color;->c_black_20:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/widget/PlayerImageView;->getDisplayRect()Landroid/graphics/RectF;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/widget/PlayerImageView;->mEditModePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/AppCompatImageView;->onMeasure(II)V

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/widget/PlayerImageView;->getMeasuredWidth()I

    move-result p1

    iput p1, p0, Lcom/miui/video/biz/videoplus/player/widget/PlayerImageView;->mWidth:I

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/widget/PlayerImageView;->getMeasuredHeight()I

    move-result p1

    iput p1, p0, Lcom/miui/video/biz/videoplus/player/widget/PlayerImageView;->mHeight:I

    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/player/widget/PlayerImageView;->updateBaseMatrix()V

    return-void
.end method

.method public setEditMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/video/biz/videoplus/player/widget/PlayerImageView;->mIsInEditMode:Z

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/widget/PlayerImageView;->invalidate()V

    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/player/widget/PlayerImageView;->updateBaseMatrix()V

    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/player/widget/PlayerImageView;->updateBaseMatrix()V

    return-void
.end method

.method public setImageResource(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatImageView;->setImageResource(I)V

    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/player/widget/PlayerImageView;->updateBaseMatrix()V

    return-void
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatImageView;->setImageURI(Landroid/net/Uri;)V

    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/player/widget/PlayerImageView;->updateBaseMatrix()V

    return-void
.end method

.method public setOnUpdateListener(Lcom/miui/video/biz/videoplus/player/widget/ITransformView$OnUpdateListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/player/widget/PlayerImageView;->mOnUpdateListener:Lcom/miui/video/biz/videoplus/player/widget/ITransformView$OnUpdateListener;

    return-void
.end method

.method public setProbablySize(II)V
    .locals 0

    iput p1, p0, Lcom/miui/video/biz/videoplus/player/widget/PlayerImageView;->mProbablyWidth:I

    iput p2, p0, Lcom/miui/video/biz/videoplus/player/widget/PlayerImageView;->mProbablyHeight:I

    return-void
.end method

.method public updateSuppMatrix(Landroid/graphics/Matrix;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/widget/PlayerImageView;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/player/widget/PlayerImageView;->update()V

    return-void
.end method
