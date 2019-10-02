.class Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment$LoadSeekBarTask;
.super Ljava/lang/Object;
.source "GallerySlowFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LoadSeekBarTask"
.end annotation


# instance fields
.field private mRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment$LoadSeekBarTask;->mRef:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment$LoadSeekBarTask;->mRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {v0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;->access$500(Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;)Lcom/miui/video/galleryplus/galleryvideo/gallery/GallerySlowState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/video/galleryplus/galleryvideo/gallery/GallerySlowState;->getUrl()Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;->FRAME_WIDTH:I

    sget v3, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;->FRAME_HEIGHT:I

    invoke-static {v1, v2, v3}, Lcom/miui/video/galleryplus/galleryvideo/utils/SeekBarFrameUtils;->getEditSeekBarBitmapList(Ljava/lang/String;II)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;->runUIMessage(ILjava/lang/Object;)V

    return-void
.end method
