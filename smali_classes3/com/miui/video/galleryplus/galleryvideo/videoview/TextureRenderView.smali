.class public Lcom/miui/video/galleryplus/galleryvideo/videoview/TextureRenderView;
.super Landroid/view/TextureView;
.source "TextureRenderView.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Lcom/miui/video/galleryplus/galleryvideo/videoview/IRenderView;
.implements Lcom/miui/video/galleryplus/galleryvideo/videoview/ITransformView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/video/galleryplus/galleryvideo/videoview/TextureRenderView$SurfaceHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TextureRenderView"


# instance fields
.field private mBaseMatrix:Landroid/graphics/Matrix;

.field private mHeight:I

.field private mMeasureHelper:Lcom/miui/video/galleryplus/galleryvideo/videoview/MeasureHelper;

.field private mOnUpdateListener:Lcom/miui/video/galleryplus/galleryvideo/videoview/ITransformView$OnUpdateListener;

.field private mRenderCallback:Lcom/miui/video/galleryplus/galleryvideo/videoview/IRenderView$IRenderCallback;

.field private mSuppMatrix:Landroid/graphics/Matrix;

.field private mSurfaceHolder:Lcom/miui/video/galleryplus/galleryvideo/videoview/TextureRenderView$SurfaceHolder;

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/video/galleryplus/galleryvideo/videoview/TextureRenderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/video/galleryplus/galleryvideo/videoview/TextureRenderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/TextureRenderView;->mBaseMatrix:Landroid/graphics/Matrix;

    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/TextureRenderView;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-direct {p0}, Lcom/miui/video/galleryplus/galleryvideo/videoview/TextureRenderView;->initView()V

    return-void
.end method

.method private getDisplayMatrix(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;
    .locals 2

    new-instance v0, Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/TextureRenderView;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-direct {v0, v1}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    :cond_0
    return-object v0
.end method

.method private initView()V
    .locals 2

    new-instance v0, Lcom/miui/video/galleryplus/galleryvideo/videoview/TextureRenderView$SurfaceHolder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/video/galleryplus/galleryvideo/videoview/TextureRenderView$SurfaceHolder;-><init>(Lcom/miui/video/galleryplus/galleryvideo/videoview/TextureRenderView$1;)V

    iput-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/TextureRenderView;->mSurfaceHolder:Lcom/miui/video/galleryplus/galleryvideo/videoview/TextureRenderView$SurfaceHolder;

    invoke-virtual {p0, p0}, Lcom/miui/video/galleryplus/galleryvideo/videoview/TextureRenderView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    new-instance v0, Lcom/miui/video/galleryplus/galleryvideo/videoview/MeasureHelper;

    invoke-direct {v0}, Lcom/miui/video/galleryplus/galleryvideo/videoview/MeasureHelper;-><init>()V

    iput-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/TextureRenderView;->mMeasureHelper:Lcom/miui/video/galleryplus/galleryvideo/videoview/MeasureHelper;

    return-void
.end method

.method private update()V
    .locals 5

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/TextureRenderView;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-direct {p0, v0}, Lcom/miui/video/galleryplus/galleryvideo/videoview/TextureRenderView;->getDisplayMatrix(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/video/galleryplus/galleryvideo/videoview/TextureRenderView;->setTransform(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/TextureRenderView;->mOnUpdateListener:Lcom/miui/video/galleryplus/galleryvideo/videoview/ITransformView$OnUpdateListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/TextureRenderView;->mOnUpdateListener:Lcom/miui/video/galleryplus/galleryvideo/videoview/ITransformView$OnUpdateListener;

    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/videoview/TextureRenderView;->getViewRect()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/videoview/TextureRenderView;->getBaseRect()Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/videoview/TextureRenderView;->getDisplayRect()Landroid/graphics/RectF;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/TextureRenderView;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/miui/video/galleryplus/galleryvideo/videoview/ITransformView$OnUpdateListener;->onUpdate(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix;)V

    :cond_0
    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/videoview/TextureRenderView;->invalidate()V

    return-void
.end method

.method private updateBaseMatrix()V
    .locals 7

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/TextureRenderView;->mMeasureHelper:Lcom/miui/video/galleryplus/galleryvideo/videoview/MeasureHelper;

    iget v1, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/TextureRenderView;->mWidth:I

    iget v2, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/TextureRenderView;->mHeight:I

    invoke-virtual {v0, v1, v2}, Lcom/miui/video/galleryplus/galleryvideo/videoview/MeasureHelper;->doMeasure(II)V

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/TextureRenderView;->mMeasureHelper:Lcom/miui/video/galleryplus/galleryvideo/videoview/MeasureHelper;

    invoke-virtual {v0}, Lcom/miui/video/galleryplus/galleryvideo/videoview/MeasureHelper;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float v0, v0, v1

    iget v2, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/TextureRenderView;->mWidth:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    iget-object v2, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/TextureRenderView;->mMeasureHelper:Lcom/miui/video/galleryplus/galleryvideo/videoview/MeasureHelper;

    invoke-virtual {v2}, Lcom/miui/video/galleryplus/galleryvideo/videoview/MeasureHelper;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v1

    iget v3, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/TextureRenderView;->mHeight:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    iget-object v3, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/TextureRenderView;->mBaseMatrix:Landroid/graphics/Matrix;

    iget v4, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/TextureRenderView;->mWidth:I

    int-to-float v4, v4

    mul-float v4, v4, v1

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    iget v6, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/TextureRenderView;->mHeight:I

    int-to-float v6, v6

    mul-float v6, v6, v1

    div-float/2addr v6, v5

    invoke-virtual {v3, v0, v2, v4, v6}, Landroid/graphics/Matrix;->setScale(FFFF)V

    invoke-direct {p0}, Lcom/miui/video/galleryplus/galleryvideo/videoview/TextureRenderView;->update()V

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

    iget-object v1, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/TextureRenderView;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/videoview/TextureRenderView;->getViewRect()Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    return-object v0
.end method

.method public getDisplayRect()Landroid/graphics/RectF;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/TextureRenderView;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Lcom/miui/video/galleryplus/galleryvideo/videoview/TextureRenderView;->getDisplayRect(Landroid/graphics/Matrix;)Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayRect(Landroid/graphics/Matrix;)Landroid/graphics/RectF;
    .locals 2

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    invoke-virtual {v0}, Landroid/graphics/RectF;->setEmpty()V

    invoke-direct {p0, p1}, Lcom/miui/video/galleryplus/galleryvideo/videoview/TextureRenderView;->getDisplayMatrix(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object p1

    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/videoview/TextureRenderView;->getViewRect()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    return-object v0
.end method

.method public getSuppMatrix()Landroid/graphics/Matrix;
    .locals 2

    new-instance v0, Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/TextureRenderView;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-direct {v0, v1}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    return-object v0
.end method

.method public getViewRect()Landroid/graphics/RectF;
    .locals 4

    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/TextureRenderView;->mWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/TextureRenderView;->mHeight:I

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v0
.end method

.method protected onMeasure(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/view/TextureView;->onMeasure(II)V

    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/videoview/TextureRenderView;->getMeasuredWidth()I

    move-result p1

    iput p1, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/TextureRenderView;->mWidth:I

    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/videoview/TextureRenderView;->getMeasuredHeight()I

    move-result p1

    iput p1, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/TextureRenderView;->mHeight:I

    invoke-direct {p0}, Lcom/miui/video/galleryplus/galleryvideo/videoview/TextureRenderView;->updateBaseMatrix()V

    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    iget-object p2, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/TextureRenderView;->mSurfaceHolder:Lcom/miui/video/galleryplus/galleryvideo/videoview/TextureRenderView$SurfaceHolder;

    invoke-static {p2, p1}, Lcom/miui/video/galleryplus/galleryvideo/videoview/TextureRenderView$SurfaceHolder;->access$100(Lcom/miui/video/galleryplus/galleryvideo/videoview/TextureRenderView$SurfaceHolder;Landroid/graphics/SurfaceTexture;)V

    iget-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/TextureRenderView;->mRenderCallback:Lcom/miui/video/galleryplus/galleryvideo/videoview/IRenderView$IRenderCallback;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/TextureRenderView;->mRenderCallback:Lcom/miui/video/galleryplus/galleryvideo/videoview/IRenderView$IRenderCallback;

    iget-object p2, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/TextureRenderView;->mSurfaceHolder:Lcom/miui/video/galleryplus/galleryvideo/videoview/TextureRenderView$SurfaceHolder;

    invoke-interface {p1, p2}, Lcom/miui/video/galleryplus/galleryvideo/videoview/IRenderView$IRenderCallback;->onSurfaceCreated(Lcom/miui/video/galleryplus/galleryvideo/videoview/IRenderView$ISurfaceHolder;)V

    :cond_0
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 1

    iget-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/TextureRenderView;->mSurfaceHolder:Lcom/miui/video/galleryplus/galleryvideo/videoview/TextureRenderView$SurfaceHolder;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/miui/video/galleryplus/galleryvideo/videoview/TextureRenderView$SurfaceHolder;->access$100(Lcom/miui/video/galleryplus/galleryvideo/videoview/TextureRenderView$SurfaceHolder;Landroid/graphics/SurfaceTexture;)V

    iget-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/TextureRenderView;->mRenderCallback:Lcom/miui/video/galleryplus/galleryvideo/videoview/IRenderView$IRenderCallback;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/TextureRenderView;->mRenderCallback:Lcom/miui/video/galleryplus/galleryvideo/videoview/IRenderView$IRenderCallback;

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/TextureRenderView;->mSurfaceHolder:Lcom/miui/video/galleryplus/galleryvideo/videoview/TextureRenderView$SurfaceHolder;

    invoke-interface {p1, v0}, Lcom/miui/video/galleryplus/galleryvideo/videoview/IRenderView$IRenderCallback;->onSurfaceDestroyed(Lcom/miui/video/galleryplus/galleryvideo/videoview/IRenderView$ISurfaceHolder;)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 2

    iget-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/TextureRenderView;->mRenderCallback:Lcom/miui/video/galleryplus/galleryvideo/videoview/IRenderView$IRenderCallback;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/TextureRenderView;->mRenderCallback:Lcom/miui/video/galleryplus/galleryvideo/videoview/IRenderView$IRenderCallback;

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/TextureRenderView;->mSurfaceHolder:Lcom/miui/video/galleryplus/galleryvideo/videoview/TextureRenderView$SurfaceHolder;

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1, p2, p3}, Lcom/miui/video/galleryplus/galleryvideo/videoview/IRenderView$IRenderCallback;->onSurfaceChanged(Lcom/miui/video/galleryplus/galleryvideo/videoview/IRenderView$ISurfaceHolder;III)V

    :cond_0
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method

.method public setAspectRatio(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/TextureRenderView;->mMeasureHelper:Lcom/miui/video/galleryplus/galleryvideo/videoview/MeasureHelper;

    invoke-virtual {v0, p1}, Lcom/miui/video/galleryplus/galleryvideo/videoview/MeasureHelper;->setAspectRatio(I)V

    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/videoview/TextureRenderView;->requestLayout()V

    return-void
.end method

.method public setOnUpdateListener(Lcom/miui/video/galleryplus/galleryvideo/videoview/ITransformView$OnUpdateListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/TextureRenderView;->mOnUpdateListener:Lcom/miui/video/galleryplus/galleryvideo/videoview/ITransformView$OnUpdateListener;

    return-void
.end method

.method public setRenderCallback(Lcom/miui/video/galleryplus/galleryvideo/videoview/IRenderView$IRenderCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/TextureRenderView;->mRenderCallback:Lcom/miui/video/galleryplus/galleryvideo/videoview/IRenderView$IRenderCallback;

    return-void
.end method

.method public setVideoSize(II)V
    .locals 1

    if-lez p1, :cond_0

    if-lez p2, :cond_0

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/TextureRenderView;->mMeasureHelper:Lcom/miui/video/galleryplus/galleryvideo/videoview/MeasureHelper;

    invoke-virtual {v0, p1, p2}, Lcom/miui/video/galleryplus/galleryvideo/videoview/MeasureHelper;->setVideoSize(II)V

    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/videoview/TextureRenderView;->requestLayout()V

    :cond_0
    return-void
.end method

.method public updateSuppMatrix(Landroid/graphics/Matrix;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/TextureRenderView;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    invoke-direct {p0}, Lcom/miui/video/galleryplus/galleryvideo/videoview/TextureRenderView;->update()V

    return-void
.end method
