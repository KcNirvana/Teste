.class public Lcom/miui/video/galleryplus/galleryvideo/widget/ComboTransformView;
.super Ljava/lang/Object;
.source "ComboTransformView.java"

# interfaces
.implements Lcom/miui/video/galleryplus/galleryvideo/videoview/ITransformView;


# instance fields
.field private mPrimary:Lcom/miui/video/galleryplus/galleryvideo/videoview/ITransformView;

.field private mSecondary:Lcom/miui/video/galleryplus/galleryvideo/videoview/ITransformView;


# direct methods
.method public constructor <init>(Lcom/miui/video/galleryplus/galleryvideo/videoview/ITransformView;Lcom/miui/video/galleryplus/galleryvideo/videoview/ITransformView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/ComboTransformView;->mPrimary:Lcom/miui/video/galleryplus/galleryvideo/videoview/ITransformView;

    iput-object p2, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/ComboTransformView;->mSecondary:Lcom/miui/video/galleryplus/galleryvideo/videoview/ITransformView;

    return-void
.end method


# virtual methods
.method public getBaseRect()Landroid/graphics/RectF;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/ComboTransformView;->mPrimary:Lcom/miui/video/galleryplus/galleryvideo/videoview/ITransformView;

    invoke-interface {v0}, Lcom/miui/video/galleryplus/galleryvideo/videoview/ITransformView;->getBaseRect()Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayRect()Landroid/graphics/RectF;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/ComboTransformView;->mPrimary:Lcom/miui/video/galleryplus/galleryvideo/videoview/ITransformView;

    invoke-interface {v0}, Lcom/miui/video/galleryplus/galleryvideo/videoview/ITransformView;->getDisplayRect()Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayRect(Landroid/graphics/Matrix;)Landroid/graphics/RectF;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/ComboTransformView;->mPrimary:Lcom/miui/video/galleryplus/galleryvideo/videoview/ITransformView;

    invoke-interface {v0, p1}, Lcom/miui/video/galleryplus/galleryvideo/videoview/ITransformView;->getDisplayRect(Landroid/graphics/Matrix;)Landroid/graphics/RectF;

    move-result-object p1

    return-object p1
.end method

.method public getSuppMatrix()Landroid/graphics/Matrix;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/ComboTransformView;->mPrimary:Lcom/miui/video/galleryplus/galleryvideo/videoview/ITransformView;

    invoke-interface {v0}, Lcom/miui/video/galleryplus/galleryvideo/videoview/ITransformView;->getSuppMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    return-object v0
.end method

.method public getViewRect()Landroid/graphics/RectF;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/ComboTransformView;->mPrimary:Lcom/miui/video/galleryplus/galleryvideo/videoview/ITransformView;

    invoke-interface {v0}, Lcom/miui/video/galleryplus/galleryvideo/videoview/ITransformView;->getViewRect()Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method public setOnUpdateListener(Lcom/miui/video/galleryplus/galleryvideo/videoview/ITransformView$OnUpdateListener;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/ComboTransformView;->mPrimary:Lcom/miui/video/galleryplus/galleryvideo/videoview/ITransformView;

    invoke-interface {v0, p1}, Lcom/miui/video/galleryplus/galleryvideo/videoview/ITransformView;->setOnUpdateListener(Lcom/miui/video/galleryplus/galleryvideo/videoview/ITransformView$OnUpdateListener;)V

    return-void
.end method

.method public updateSuppMatrix(Landroid/graphics/Matrix;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/ComboTransformView;->mPrimary:Lcom/miui/video/galleryplus/galleryvideo/videoview/ITransformView;

    invoke-interface {v0, p1}, Lcom/miui/video/galleryplus/galleryvideo/videoview/ITransformView;->updateSuppMatrix(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/ComboTransformView;->mSecondary:Lcom/miui/video/galleryplus/galleryvideo/videoview/ITransformView;

    invoke-interface {v0, p1}, Lcom/miui/video/galleryplus/galleryvideo/videoview/ITransformView;->updateSuppMatrix(Landroid/graphics/Matrix;)V

    return-void
.end method
