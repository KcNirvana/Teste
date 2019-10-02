.class Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment$LoadSeekBarTask;
.super Ljava/lang/Object;
.source "GalleryPlayerFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;
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
            "Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment$LoadSeekBarTask;->mRef:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment$LoadSeekBarTask;->mRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;

    iget-object v1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment$LoadSeekBarTask;->mRef:Ljava/lang/ref/WeakReference;

    if-nez v1, :cond_0

    return-void

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->getGalleryState()Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryState;->getVideoInfo()Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryVideoInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryVideoInfo;->is8kVideo()Z

    move-result v2

    const-string v3, "GalleryPlayerFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LoadSeekBarTask "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    if-nez v2, :cond_1

    invoke-static {v0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->access$1200(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;)Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryPlayerState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryPlayerState;->getUrl()Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;->FRAME_WIDTH:I

    sget v3, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;->FRAME_HEIGHT:I

    invoke-static {v1, v2, v3}, Lcom/miui/video/galleryplus/galleryvideo/utils/SeekBarFrameUtils;->getSeekBarBitmapList(Ljava/lang/String;II)Ljava/util/List;

    move-result-object v1

    :cond_1
    const/16 v2, 0x66

    invoke-virtual {v0, v2, v1}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->runUIMessage(ILjava/lang/Object;)V

    return-void
.end method
