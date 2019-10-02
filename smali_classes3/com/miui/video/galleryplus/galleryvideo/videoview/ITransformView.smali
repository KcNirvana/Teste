.class public interface abstract Lcom/miui/video/galleryplus/galleryvideo/videoview/ITransformView;
.super Ljava/lang/Object;
.source "ITransformView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/video/galleryplus/galleryvideo/videoview/ITransformView$OnUpdateListener;
    }
.end annotation


# virtual methods
.method public abstract getBaseRect()Landroid/graphics/RectF;
.end method

.method public abstract getDisplayRect()Landroid/graphics/RectF;
.end method

.method public abstract getDisplayRect(Landroid/graphics/Matrix;)Landroid/graphics/RectF;
.end method

.method public abstract getSuppMatrix()Landroid/graphics/Matrix;
.end method

.method public abstract getViewRect()Landroid/graphics/RectF;
.end method

.method public abstract setOnUpdateListener(Lcom/miui/video/galleryplus/galleryvideo/videoview/ITransformView$OnUpdateListener;)V
.end method

.method public abstract updateSuppMatrix(Landroid/graphics/Matrix;)V
.end method
