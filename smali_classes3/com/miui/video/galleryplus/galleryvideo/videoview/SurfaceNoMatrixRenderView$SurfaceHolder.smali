.class Lcom/miui/video/galleryplus/galleryvideo/videoview/SurfaceNoMatrixRenderView$SurfaceHolder;
.super Ljava/lang/Object;
.source "SurfaceNoMatrixRenderView.java"

# interfaces
.implements Lcom/miui/video/galleryplus/galleryvideo/videoview/IRenderView$ISurfaceHolder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/galleryplus/galleryvideo/videoview/SurfaceNoMatrixRenderView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SurfaceHolder"
.end annotation


# instance fields
.field private mSurface:Landroid/view/Surface;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/video/galleryplus/galleryvideo/videoview/SurfaceNoMatrixRenderView$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/galleryplus/galleryvideo/videoview/SurfaceNoMatrixRenderView$SurfaceHolder;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lcom/miui/video/galleryplus/galleryvideo/videoview/SurfaceNoMatrixRenderView$SurfaceHolder;Landroid/view/Surface;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/video/galleryplus/galleryvideo/videoview/SurfaceNoMatrixRenderView$SurfaceHolder;->setSurface(Landroid/view/Surface;)V

    return-void
.end method

.method static synthetic access$400(Lcom/miui/video/galleryplus/galleryvideo/videoview/SurfaceNoMatrixRenderView$SurfaceHolder;Landroid/graphics/SurfaceTexture;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/video/galleryplus/galleryvideo/videoview/SurfaceNoMatrixRenderView$SurfaceHolder;->setSurfaceTexture(Landroid/graphics/SurfaceTexture;)V

    return-void
.end method

.method private setSurface(Landroid/view/Surface;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/SurfaceNoMatrixRenderView$SurfaceHolder;->mSurface:Landroid/view/Surface;

    return-void
.end method

.method private setSurfaceTexture(Landroid/graphics/SurfaceTexture;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/SurfaceNoMatrixRenderView$SurfaceHolder;->mSurface:Landroid/view/Surface;

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/SurfaceNoMatrixRenderView$SurfaceHolder;->mSurface:Landroid/view/Surface;

    :goto_0
    return-void
.end method


# virtual methods
.method public getSurface()Landroid/view/Surface;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/SurfaceNoMatrixRenderView$SurfaceHolder;->mSurface:Landroid/view/Surface;

    return-object v0
.end method
