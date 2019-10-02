.class public Lcom/miui/video/galleryplus/galleryvideo/widget/PreviewTextureView;
.super Lcom/miui/video/galleryplus/galleryvideo/videoview/TextureRenderView;
.source "PreviewTextureView.java"

# interfaces
.implements Lcom/miui/video/galleryplus/galleryvideo/videoview/IRenderView$IRenderCallback;


# instance fields
.field private mCallback:Lcom/miui/video/galleryplus/galleryvideo/videoview/IRenderView$IRenderCallback;

.field private mSurface:Landroid/view/Surface;

.field private mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/video/galleryplus/galleryvideo/widget/PreviewTextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/video/galleryplus/galleryvideo/widget/PreviewTextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/video/galleryplus/galleryvideo/videoview/TextureRenderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-super {p0, p0}, Lcom/miui/video/galleryplus/galleryvideo/videoview/TextureRenderView;->setRenderCallback(Lcom/miui/video/galleryplus/galleryvideo/videoview/IRenderView$IRenderCallback;)V

    return-void
.end method


# virtual methods
.method public onSurfaceChanged(Lcom/miui/video/galleryplus/galleryvideo/videoview/IRenderView$ISurfaceHolder;III)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/PreviewTextureView;->mCallback:Lcom/miui/video/galleryplus/galleryvideo/videoview/IRenderView$IRenderCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/PreviewTextureView;->mCallback:Lcom/miui/video/galleryplus/galleryvideo/videoview/IRenderView$IRenderCallback;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/miui/video/galleryplus/galleryvideo/videoview/IRenderView$IRenderCallback;->onSurfaceChanged(Lcom/miui/video/galleryplus/galleryvideo/videoview/IRenderView$ISurfaceHolder;III)V

    :cond_0
    return-void
.end method

.method public onSurfaceCreated(Lcom/miui/video/galleryplus/galleryvideo/videoview/IRenderView$ISurfaceHolder;)V
    .locals 1

    invoke-interface {p1}, Lcom/miui/video/galleryplus/galleryvideo/videoview/IRenderView$ISurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/PreviewTextureView;->mSurface:Landroid/view/Surface;

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/PreviewTextureView;->mCallback:Lcom/miui/video/galleryplus/galleryvideo/videoview/IRenderView$IRenderCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/PreviewTextureView;->mCallback:Lcom/miui/video/galleryplus/galleryvideo/videoview/IRenderView$IRenderCallback;

    invoke-interface {v0, p1}, Lcom/miui/video/galleryplus/galleryvideo/videoview/IRenderView$IRenderCallback;->onSurfaceCreated(Lcom/miui/video/galleryplus/galleryvideo/videoview/IRenderView$ISurfaceHolder;)V

    :cond_0
    return-void
.end method

.method public onSurfaceDestroyed(Lcom/miui/video/galleryplus/galleryvideo/videoview/IRenderView$ISurfaceHolder;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/PreviewTextureView;->mSurface:Landroid/view/Surface;

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/PreviewTextureView;->mCallback:Lcom/miui/video/galleryplus/galleryvideo/videoview/IRenderView$IRenderCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/PreviewTextureView;->mCallback:Lcom/miui/video/galleryplus/galleryvideo/videoview/IRenderView$IRenderCallback;

    invoke-interface {v0, p1}, Lcom/miui/video/galleryplus/galleryvideo/videoview/IRenderView$IRenderCallback;->onSurfaceDestroyed(Lcom/miui/video/galleryplus/galleryvideo/videoview/IRenderView$ISurfaceHolder;)V

    :cond_0
    return-void
.end method

.method public setCurrentPosition(J)V
    .locals 7

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/PreviewTextureView;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/PreviewTextureView;->mUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/PreviewTextureView;->mSurface:Landroid/view/Surface;

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/PreviewTextureView;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    const-string v6, "from_video"

    move-wide v4, p1

    invoke-static/range {v1 .. v6}, Lcom/miui/video/galleryplus/galleryvideo/utils/PreviewFrameUtils;->showPreviewFrameAtTime(Ljava/lang/String;Landroid/view/Surface;IJLjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setRenderCallback(Lcom/miui/video/galleryplus/galleryvideo/videoview/IRenderView$IRenderCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/PreviewTextureView;->mCallback:Lcom/miui/video/galleryplus/galleryvideo/videoview/IRenderView$IRenderCallback;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/PreviewTextureView;->mUrl:Ljava/lang/String;

    return-void
.end method
