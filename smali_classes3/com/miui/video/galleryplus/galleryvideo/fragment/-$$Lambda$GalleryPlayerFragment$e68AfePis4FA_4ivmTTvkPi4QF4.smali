.class public final synthetic Lcom/miui/video/galleryplus/galleryvideo/fragment/-$$Lambda$GalleryPlayerFragment$e68AfePis4FA_4ivmTTvkPi4QF4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;

.field private final synthetic f$1:Lcom/miui/video/galleryplus/galleryvideo/videoview/IRenderView$ISurfaceHolder;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;Lcom/miui/video/galleryplus/galleryvideo/videoview/IRenderView$ISurfaceHolder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/-$$Lambda$GalleryPlayerFragment$e68AfePis4FA_4ivmTTvkPi4QF4;->f$0:Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;

    iput-object p2, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/-$$Lambda$GalleryPlayerFragment$e68AfePis4FA_4ivmTTvkPi4QF4;->f$1:Lcom/miui/video/galleryplus/galleryvideo/videoview/IRenderView$ISurfaceHolder;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/-$$Lambda$GalleryPlayerFragment$e68AfePis4FA_4ivmTTvkPi4QF4;->f$0:Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;

    iget-object v1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/-$$Lambda$GalleryPlayerFragment$e68AfePis4FA_4ivmTTvkPi4QF4;->f$1:Lcom/miui/video/galleryplus/galleryvideo/videoview/IRenderView$ISurfaceHolder;

    invoke-static {v0, v1}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->lambda$onSurfaceCreated$45(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;Lcom/miui/video/galleryplus/galleryvideo/videoview/IRenderView$ISurfaceHolder;)V

    return-void
.end method
