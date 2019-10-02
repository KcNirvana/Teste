.class Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView$5;
.super Ljava/lang/Object;
.source "GalleryMusicView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;->initAdjustLayoutData(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView$5;->this$0:Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;

    iput-object p2, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView$5;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView$5;->val$url:Ljava/lang/String;

    sget v1, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;->FRAME_WIDTH:I

    sget v2, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;->FRAME_HEIGHT:I

    invoke-static {v0, v1, v2}, Lcom/miui/video/galleryplus/galleryvideo/utils/SeekBarFrameUtils;->getEditSeekBarBitmapList(Ljava/lang/String;II)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView$5$1;

    invoke-direct {v1, p0, v0}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView$5$1;-><init>(Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView$5;Ljava/util/List;)V

    const-wide/16 v2, 0xc8

    invoke-static {v1, v2, v3}, Lcom/miui/video/framework/task/AsyncTaskUtils;->runOnUIHandler(Ljava/lang/Runnable;J)V

    return-void
.end method
