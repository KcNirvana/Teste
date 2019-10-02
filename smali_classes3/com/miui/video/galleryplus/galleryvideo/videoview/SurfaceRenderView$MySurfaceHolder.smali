.class Lcom/miui/video/galleryplus/galleryvideo/videoview/SurfaceRenderView$MySurfaceHolder;
.super Ljava/lang/Object;
.source "SurfaceRenderView.java"

# interfaces
.implements Lcom/miui/video/galleryplus/galleryvideo/videoview/IRenderView$ISurfaceHolder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/galleryplus/galleryvideo/videoview/SurfaceRenderView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MySurfaceHolder"
.end annotation


# instance fields
.field private mSurface:Landroid/view/Surface;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/video/galleryplus/galleryvideo/videoview/SurfaceRenderView$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/galleryplus/galleryvideo/videoview/SurfaceRenderView$MySurfaceHolder;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/miui/video/galleryplus/galleryvideo/videoview/SurfaceRenderView$MySurfaceHolder;Landroid/view/Surface;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/video/galleryplus/galleryvideo/videoview/SurfaceRenderView$MySurfaceHolder;->setSurface(Landroid/view/Surface;)V

    return-void
.end method

.method private setSurface(Landroid/view/Surface;)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/SurfaceRenderView$MySurfaceHolder;->mSurface:Landroid/view/Surface;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/SurfaceRenderView$MySurfaceHolder;->mSurface:Landroid/view/Surface;

    :goto_0
    return-void
.end method


# virtual methods
.method public getSurface()Landroid/view/Surface;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/SurfaceRenderView$MySurfaceHolder;->mSurface:Landroid/view/Surface;

    return-object v0
.end method
