.class public Lcom/miui/video/galleryplus/galleryvideo/videoview/SurfaceRenderView;
.super Landroid/view/SurfaceView;
.source "SurfaceRenderView.java"

# interfaces
.implements Lcom/miui/video/galleryplus/galleryvideo/videoview/IRenderView;
.implements Lcom/miui/video/galleryplus/galleryvideo/videoview/ITransformView;
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/video/galleryplus/galleryvideo/videoview/SurfaceRenderView$MySurfaceHolder;
    }
.end annotation


# instance fields
.field private mBaseMatrix:Landroid/graphics/Matrix;

.field private mMeasureHelper:Lcom/miui/video/galleryplus/galleryvideo/videoview/MeasureHelper;

.field private mOnUpdateListener:Lcom/miui/video/galleryplus/galleryvideo/videoview/ITransformView$OnUpdateListener;

.field private mParentHeight:I

.field private mParentWidth:I

.field private mRenderCallback:Lcom/miui/video/galleryplus/galleryvideo/videoview/IRenderView$IRenderCallback;

.field private mSuppMatrix:Landroid/graphics/Matrix;

.field private mSurfaceHolder:Lcom/miui/video/galleryplus/galleryvideo/videoview/SurfaceRenderView$MySurfaceHolder;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/video/galleryplus/galleryvideo/videoview/SurfaceRenderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/video/galleryplus/galleryvideo/videoview/SurfaceRenderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/SurfaceRenderView;->mBaseMatrix:Landroid/graphics/Matrix;

    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/SurfaceRenderView;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-direct {p0}, Lcom/miui/video/galleryplus/galleryvideo/videoview/SurfaceRenderView;->initView()V

    return-void
.end method

.method private getDisplayMatrix(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;
    .locals 2

    new-instance v0, Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/SurfaceRenderView;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-direct {v0, v1}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    :cond_0
    return-object v0
.end method

.method private initView()V
    .locals 2

    new-instance v0, Lcom/miui/video/galleryplus/galleryvideo/videoview/SurfaceRenderView$MySurfaceHolder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/video/galleryplus/galleryvideo/videoview/SurfaceRenderView$MySurfaceHolder;-><init>(Lcom/miui/video/galleryplus/galleryvideo/videoview/SurfaceRenderView$1;)V

    iput-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/SurfaceRenderView;->mSurfaceHolder:Lcom/miui/video/galleryplus/galleryvideo/videoview/SurfaceRenderView$MySurfaceHolder;

    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/videoview/SurfaceRenderView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/videoview/SurfaceRenderView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, -0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    new-instance v0, Lcom/miui/video/galleryplus/galleryvideo/videoview/MeasureHelper;

    invoke-direct {v0}, Lcom/miui/video/galleryplus/galleryvideo/videoview/MeasureHelper;-><init>()V

    iput-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/SurfaceRenderView;->mMeasureHelper:Lcom/miui/video/galleryplus/galleryvideo/videoview/MeasureHelper;

    return-void
.end method


# virtual methods
.method public asView()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method public getBaseRect()Landroid/graphics/RectF;
    .locals 3

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    invoke-virtual {v0}, Landroid/graphics/RectF;->setEmpty()V

    iget-object v1, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/SurfaceRenderView;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/videoview/SurfaceRenderView;->getViewRect()Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    return-object v0
.end method

.method public getDisplayRect()Landroid/graphics/RectF;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/SurfaceRenderView;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Lcom/miui/video/galleryplus/galleryvideo/videoview/SurfaceRenderView;->getDisplayRect(Landroid/graphics/Matrix;)Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayRect(Landroid/graphics/Matrix;)Landroid/graphics/RectF;
    .locals 2

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    invoke-virtual {v0}, Landroid/graphics/RectF;->setEmpty()V

    invoke-direct {p0, p1}, Lcom/miui/video/galleryplus/galleryvideo/videoview/SurfaceRenderView;->getDisplayMatrix(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object p1

    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/videoview/SurfaceRenderView;->getViewRect()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    return-object v0
.end method

.method public getSuppMatrix()Landroid/graphics/Matrix;
    .locals 2

    new-instance v0, Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/SurfaceRenderView;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-direct {v0, v1}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    return-object v0
.end method

.method public getViewRect()Landroid/graphics/RectF;
    .locals 4

    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/SurfaceRenderView;->mParentWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/SurfaceRenderView;->mParentHeight:I

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v0
.end method

.method protected onMeasure(II)V
    .locals 5

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    iput p1, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/SurfaceRenderView;->mParentWidth:I

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    iput p1, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/SurfaceRenderView;->mParentHeight:I

    iget-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/SurfaceRenderView;->mMeasureHelper:Lcom/miui/video/galleryplus/galleryvideo/videoview/MeasureHelper;

    iget p2, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/SurfaceRenderView;->mParentWidth:I

    iget v0, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/SurfaceRenderView;->mParentHeight:I

    invoke-virtual {p1, p2, v0}, Lcom/miui/video/galleryplus/galleryvideo/videoview/MeasureHelper;->doMeasure(II)V

    iget-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/SurfaceRenderView;->mMeasureHelper:Lcom/miui/video/galleryplus/galleryvideo/videoview/MeasureHelper;

    invoke-virtual {p1}, Lcom/miui/video/galleryplus/galleryvideo/videoview/MeasureHelper;->getMeasuredWidth()I

    move-result p1

    iget-object p2, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/SurfaceRenderView;->mMeasureHelper:Lcom/miui/video/galleryplus/galleryvideo/videoview/MeasureHelper;

    invoke-virtual {p2}, Lcom/miui/video/galleryplus/galleryvideo/videoview/MeasureHelper;->getMeasuredHeight()I

    move-result p2

    int-to-float p1, p1

    const/high16 v0, 0x3f800000    # 1.0f

    mul-float p1, p1, v0

    iget v1, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/SurfaceRenderView;->mParentWidth:I

    int-to-float v1, v1

    div-float/2addr p1, v1

    int-to-float p2, p2

    mul-float p2, p2, v0

    iget v1, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/SurfaceRenderView;->mParentHeight:I

    int-to-float v1, v1

    div-float/2addr p2, v1

    iget-object v1, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/SurfaceRenderView;->mBaseMatrix:Landroid/graphics/Matrix;

    iget v2, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/SurfaceRenderView;->mParentWidth:I

    int-to-float v2, v2

    mul-float v2, v2, v0

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    iget v4, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/SurfaceRenderView;->mParentHeight:I

    int-to-float v4, v4

    mul-float v4, v4, v0

    div-float/2addr v4, v3

    invoke-virtual {v1, p1, p2, v2, v4}, Landroid/graphics/Matrix;->setScale(FFFF)V

    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/videoview/SurfaceRenderView;->getDisplayRect()Landroid/graphics/RectF;

    move-result-object p1

    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/videoview/SurfaceRenderView;->getViewRect()Landroid/graphics/RectF;

    move-result-object p2

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/miui/video/galleryplus/galleryvideo/videoview/SurfaceRenderView;->setMeasuredDimension(II)V

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/miui/video/galleryplus/galleryvideo/videoview/SurfaceRenderView;->setTranslationX(F)V

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    move-result p1

    invoke-virtual {p2}, Landroid/graphics/RectF;->centerY()F

    move-result p2

    sub-float/2addr p1, p2

    invoke-virtual {p0, p1}, Lcom/miui/video/galleryplus/galleryvideo/videoview/SurfaceRenderView;->setTranslationY(F)V

    iget-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/SurfaceRenderView;->mOnUpdateListener:Lcom/miui/video/galleryplus/galleryvideo/videoview/ITransformView$OnUpdateListener;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/SurfaceRenderView;->mOnUpdateListener:Lcom/miui/video/galleryplus/galleryvideo/videoview/ITransformView$OnUpdateListener;

    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/videoview/SurfaceRenderView;->getViewRect()Landroid/graphics/RectF;

    move-result-object p2

    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/videoview/SurfaceRenderView;->getBaseRect()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/videoview/SurfaceRenderView;->getDisplayRect()Landroid/graphics/RectF;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/SurfaceRenderView;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-interface {p1, p2, v0, v1, v2}, Lcom/miui/video/galleryplus/galleryvideo/videoview/ITransformView$OnUpdateListener;->onUpdate(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix;)V

    :cond_0
    return-void
.end method

.method public setAspectRatio(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/SurfaceRenderView;->mMeasureHelper:Lcom/miui/video/galleryplus/galleryvideo/videoview/MeasureHelper;

    invoke-virtual {v0, p1}, Lcom/miui/video/galleryplus/galleryvideo/videoview/MeasureHelper;->setAspectRatio(I)V

    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/videoview/SurfaceRenderView;->requestLayout()V

    return-void
.end method

.method public setOnUpdateListener(Lcom/miui/video/galleryplus/galleryvideo/videoview/ITransformView$OnUpdateListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/SurfaceRenderView;->mOnUpdateListener:Lcom/miui/video/galleryplus/galleryvideo/videoview/ITransformView$OnUpdateListener;

    return-void
.end method

.method public setRenderCallback(Lcom/miui/video/galleryplus/galleryvideo/videoview/IRenderView$IRenderCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/SurfaceRenderView;->mRenderCallback:Lcom/miui/video/galleryplus/galleryvideo/videoview/IRenderView$IRenderCallback;

    return-void
.end method

.method public setVideoSize(II)V
    .locals 1

    if-lez p1, :cond_0

    if-lez p2, :cond_0

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/SurfaceRenderView;->mMeasureHelper:Lcom/miui/video/galleryplus/galleryvideo/videoview/MeasureHelper;

    invoke-virtual {v0, p1, p2}, Lcom/miui/video/galleryplus/galleryvideo/videoview/MeasureHelper;->setVideoSize(II)V

    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/videoview/SurfaceRenderView;->requestLayout()V

    :cond_0
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 1

    iget-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/SurfaceRenderView;->mRenderCallback:Lcom/miui/video/galleryplus/galleryvideo/videoview/IRenderView$IRenderCallback;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/SurfaceRenderView;->mRenderCallback:Lcom/miui/video/galleryplus/galleryvideo/videoview/IRenderView$IRenderCallback;

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/SurfaceRenderView;->mSurfaceHolder:Lcom/miui/video/galleryplus/galleryvideo/videoview/SurfaceRenderView$MySurfaceHolder;

    invoke-interface {p1, v0, p2, p3, p4}, Lcom/miui/video/galleryplus/galleryvideo/videoview/IRenderView$IRenderCallback;->onSurfaceChanged(Lcom/miui/video/galleryplus/galleryvideo/videoview/IRenderView$ISurfaceHolder;III)V

    :cond_0
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/SurfaceRenderView;->mSurfaceHolder:Lcom/miui/video/galleryplus/galleryvideo/videoview/SurfaceRenderView$MySurfaceHolder;

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/miui/video/galleryplus/galleryvideo/videoview/SurfaceRenderView$MySurfaceHolder;->access$100(Lcom/miui/video/galleryplus/galleryvideo/videoview/SurfaceRenderView$MySurfaceHolder;Landroid/view/Surface;)V

    iget-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/SurfaceRenderView;->mRenderCallback:Lcom/miui/video/galleryplus/galleryvideo/videoview/IRenderView$IRenderCallback;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/SurfaceRenderView;->mRenderCallback:Lcom/miui/video/galleryplus/galleryvideo/videoview/IRenderView$IRenderCallback;

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/SurfaceRenderView;->mSurfaceHolder:Lcom/miui/video/galleryplus/galleryvideo/videoview/SurfaceRenderView$MySurfaceHolder;

    invoke-interface {p1, v0}, Lcom/miui/video/galleryplus/galleryvideo/videoview/IRenderView$IRenderCallback;->onSurfaceCreated(Lcom/miui/video/galleryplus/galleryvideo/videoview/IRenderView$ISurfaceHolder;)V

    :cond_0
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1

    iget-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/SurfaceRenderView;->mSurfaceHolder:Lcom/miui/video/galleryplus/galleryvideo/videoview/SurfaceRenderView$MySurfaceHolder;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/miui/video/galleryplus/galleryvideo/videoview/SurfaceRenderView$MySurfaceHolder;->access$100(Lcom/miui/video/galleryplus/galleryvideo/videoview/SurfaceRenderView$MySurfaceHolder;Landroid/view/Surface;)V

    iget-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/SurfaceRenderView;->mRenderCallback:Lcom/miui/video/galleryplus/galleryvideo/videoview/IRenderView$IRenderCallback;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/SurfaceRenderView;->mRenderCallback:Lcom/miui/video/galleryplus/galleryvideo/videoview/IRenderView$IRenderCallback;

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/SurfaceRenderView;->mSurfaceHolder:Lcom/miui/video/galleryplus/galleryvideo/videoview/SurfaceRenderView$MySurfaceHolder;

    invoke-interface {p1, v0}, Lcom/miui/video/galleryplus/galleryvideo/videoview/IRenderView$IRenderCallback;->onSurfaceDestroyed(Lcom/miui/video/galleryplus/galleryvideo/videoview/IRenderView$ISurfaceHolder;)V

    :cond_0
    return-void
.end method

.method public updateSuppMatrix(Landroid/graphics/Matrix;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/SurfaceRenderView;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/videoview/SurfaceRenderView;->requestLayout()V

    return-void
.end method
