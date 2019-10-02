.class Lcom/miui/video/galleryplus/galleryvideo/videoview/SurfaceNoMatrixRenderView$1;
.super Ljava/lang/Object;
.source "SurfaceNoMatrixRenderView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/galleryplus/galleryvideo/videoview/SurfaceNoMatrixRenderView;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/galleryplus/galleryvideo/videoview/SurfaceNoMatrixRenderView;


# direct methods
.method constructor <init>(Lcom/miui/video/galleryplus/galleryvideo/videoview/SurfaceNoMatrixRenderView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/SurfaceNoMatrixRenderView$1;->this$0:Lcom/miui/video/galleryplus/galleryvideo/videoview/SurfaceNoMatrixRenderView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 1

    iget-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/SurfaceNoMatrixRenderView$1;->this$0:Lcom/miui/video/galleryplus/galleryvideo/videoview/SurfaceNoMatrixRenderView;

    invoke-static {p1}, Lcom/miui/video/galleryplus/galleryvideo/videoview/SurfaceNoMatrixRenderView;->access$300(Lcom/miui/video/galleryplus/galleryvideo/videoview/SurfaceNoMatrixRenderView;)Lcom/miui/video/galleryplus/galleryvideo/videoview/IRenderView$IRenderCallback;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/SurfaceNoMatrixRenderView$1;->this$0:Lcom/miui/video/galleryplus/galleryvideo/videoview/SurfaceNoMatrixRenderView;

    invoke-static {p1}, Lcom/miui/video/galleryplus/galleryvideo/videoview/SurfaceNoMatrixRenderView;->access$300(Lcom/miui/video/galleryplus/galleryvideo/videoview/SurfaceNoMatrixRenderView;)Lcom/miui/video/galleryplus/galleryvideo/videoview/IRenderView$IRenderCallback;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/SurfaceNoMatrixRenderView$1;->this$0:Lcom/miui/video/galleryplus/galleryvideo/videoview/SurfaceNoMatrixRenderView;

    invoke-static {p2}, Lcom/miui/video/galleryplus/galleryvideo/videoview/SurfaceNoMatrixRenderView;->access$100(Lcom/miui/video/galleryplus/galleryvideo/videoview/SurfaceNoMatrixRenderView;)Lcom/miui/video/galleryplus/galleryvideo/videoview/SurfaceNoMatrixRenderView$SurfaceHolder;

    move-result-object p2

    const/4 v0, 0x0

    invoke-interface {p1, p2, v0, p3, p4}, Lcom/miui/video/galleryplus/galleryvideo/videoview/IRenderView$IRenderCallback;->onSurfaceChanged(Lcom/miui/video/galleryplus/galleryvideo/videoview/IRenderView$ISurfaceHolder;III)V

    :cond_0
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/SurfaceNoMatrixRenderView$1;->this$0:Lcom/miui/video/galleryplus/galleryvideo/videoview/SurfaceNoMatrixRenderView;

    invoke-static {v0}, Lcom/miui/video/galleryplus/galleryvideo/videoview/SurfaceNoMatrixRenderView;->access$100(Lcom/miui/video/galleryplus/galleryvideo/videoview/SurfaceNoMatrixRenderView;)Lcom/miui/video/galleryplus/galleryvideo/videoview/SurfaceNoMatrixRenderView$SurfaceHolder;

    move-result-object v0

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/miui/video/galleryplus/galleryvideo/videoview/SurfaceNoMatrixRenderView$SurfaceHolder;->access$200(Lcom/miui/video/galleryplus/galleryvideo/videoview/SurfaceNoMatrixRenderView$SurfaceHolder;Landroid/view/Surface;)V

    iget-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/SurfaceNoMatrixRenderView$1;->this$0:Lcom/miui/video/galleryplus/galleryvideo/videoview/SurfaceNoMatrixRenderView;

    invoke-static {p1}, Lcom/miui/video/galleryplus/galleryvideo/videoview/SurfaceNoMatrixRenderView;->access$300(Lcom/miui/video/galleryplus/galleryvideo/videoview/SurfaceNoMatrixRenderView;)Lcom/miui/video/galleryplus/galleryvideo/videoview/IRenderView$IRenderCallback;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/SurfaceNoMatrixRenderView$1;->this$0:Lcom/miui/video/galleryplus/galleryvideo/videoview/SurfaceNoMatrixRenderView;

    invoke-static {p1}, Lcom/miui/video/galleryplus/galleryvideo/videoview/SurfaceNoMatrixRenderView;->access$300(Lcom/miui/video/galleryplus/galleryvideo/videoview/SurfaceNoMatrixRenderView;)Lcom/miui/video/galleryplus/galleryvideo/videoview/IRenderView$IRenderCallback;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/SurfaceNoMatrixRenderView$1;->this$0:Lcom/miui/video/galleryplus/galleryvideo/videoview/SurfaceNoMatrixRenderView;

    invoke-static {v0}, Lcom/miui/video/galleryplus/galleryvideo/videoview/SurfaceNoMatrixRenderView;->access$100(Lcom/miui/video/galleryplus/galleryvideo/videoview/SurfaceNoMatrixRenderView;)Lcom/miui/video/galleryplus/galleryvideo/videoview/SurfaceNoMatrixRenderView$SurfaceHolder;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/miui/video/galleryplus/galleryvideo/videoview/IRenderView$IRenderCallback;->onSurfaceCreated(Lcom/miui/video/galleryplus/galleryvideo/videoview/IRenderView$ISurfaceHolder;)V

    :cond_0
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1

    iget-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/SurfaceNoMatrixRenderView$1;->this$0:Lcom/miui/video/galleryplus/galleryvideo/videoview/SurfaceNoMatrixRenderView;

    invoke-static {p1}, Lcom/miui/video/galleryplus/galleryvideo/videoview/SurfaceNoMatrixRenderView;->access$100(Lcom/miui/video/galleryplus/galleryvideo/videoview/SurfaceNoMatrixRenderView;)Lcom/miui/video/galleryplus/galleryvideo/videoview/SurfaceNoMatrixRenderView$SurfaceHolder;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/miui/video/galleryplus/galleryvideo/videoview/SurfaceNoMatrixRenderView$SurfaceHolder;->access$400(Lcom/miui/video/galleryplus/galleryvideo/videoview/SurfaceNoMatrixRenderView$SurfaceHolder;Landroid/graphics/SurfaceTexture;)V

    iget-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/SurfaceNoMatrixRenderView$1;->this$0:Lcom/miui/video/galleryplus/galleryvideo/videoview/SurfaceNoMatrixRenderView;

    invoke-static {p1}, Lcom/miui/video/galleryplus/galleryvideo/videoview/SurfaceNoMatrixRenderView;->access$100(Lcom/miui/video/galleryplus/galleryvideo/videoview/SurfaceNoMatrixRenderView;)Lcom/miui/video/galleryplus/galleryvideo/videoview/SurfaceNoMatrixRenderView$SurfaceHolder;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/miui/video/galleryplus/galleryvideo/videoview/SurfaceNoMatrixRenderView$SurfaceHolder;->access$200(Lcom/miui/video/galleryplus/galleryvideo/videoview/SurfaceNoMatrixRenderView$SurfaceHolder;Landroid/view/Surface;)V

    iget-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/SurfaceNoMatrixRenderView$1;->this$0:Lcom/miui/video/galleryplus/galleryvideo/videoview/SurfaceNoMatrixRenderView;

    invoke-static {p1}, Lcom/miui/video/galleryplus/galleryvideo/videoview/SurfaceNoMatrixRenderView;->access$300(Lcom/miui/video/galleryplus/galleryvideo/videoview/SurfaceNoMatrixRenderView;)Lcom/miui/video/galleryplus/galleryvideo/videoview/IRenderView$IRenderCallback;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/SurfaceNoMatrixRenderView$1;->this$0:Lcom/miui/video/galleryplus/galleryvideo/videoview/SurfaceNoMatrixRenderView;

    invoke-static {p1}, Lcom/miui/video/galleryplus/galleryvideo/videoview/SurfaceNoMatrixRenderView;->access$300(Lcom/miui/video/galleryplus/galleryvideo/videoview/SurfaceNoMatrixRenderView;)Lcom/miui/video/galleryplus/galleryvideo/videoview/IRenderView$IRenderCallback;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/SurfaceNoMatrixRenderView$1;->this$0:Lcom/miui/video/galleryplus/galleryvideo/videoview/SurfaceNoMatrixRenderView;

    invoke-static {v0}, Lcom/miui/video/galleryplus/galleryvideo/videoview/SurfaceNoMatrixRenderView;->access$100(Lcom/miui/video/galleryplus/galleryvideo/videoview/SurfaceNoMatrixRenderView;)Lcom/miui/video/galleryplus/galleryvideo/videoview/SurfaceNoMatrixRenderView$SurfaceHolder;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/miui/video/galleryplus/galleryvideo/videoview/IRenderView$IRenderCallback;->onSurfaceDestroyed(Lcom/miui/video/galleryplus/galleryvideo/videoview/IRenderView$ISurfaceHolder;)V

    :cond_0
    return-void
.end method
