.class Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$2;
.super Ljava/lang/Object;
.source "GalleryMusicFragment.java"

# interfaces
.implements Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView$OnPreviewSlideListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;->getControllerView()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;


# direct methods
.method constructor <init>(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$2;->this$0:Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic lambda$onEnd$20(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$2;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$2;->this$0:Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;

    invoke-virtual {v0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;->getGalleryState()Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryState;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/video/galleryplus/galleryvideo/utils/PreviewFrameUtils;->pauseDecoder(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onEnd()V
    .locals 3

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$2;->this$0:Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;->mIsPreviewing:Z

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$2;->this$0:Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;

    iput-boolean v1, v0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;->mCanHidePreviewImmediately:Z

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$2;->this$0:Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;

    iget-object v0, v0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;->mBtnPlay:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$2;->this$0:Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;

    const-string v1, "TOKEN_PREVIEW"

    invoke-virtual {v0, v1}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;->removeAsyncTask(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$2;->this$0:Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;

    new-instance v1, Lcom/miui/video/galleryplus/galleryvideo/fragment/-$$Lambda$GalleryMusicFragment$2$TySABi6ViugsKiKur3CZbOjg-vs;

    invoke-direct {v1, p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/-$$Lambda$GalleryMusicFragment$2$TySABi6ViugsKiKur3CZbOjg-vs;-><init>(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$2;)V

    const-string v2, "TOKEN_PAUSE_DECODER"

    invoke-virtual {v0, v1, v2}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;->postAsyncTask(Ljava/lang/Runnable;Ljava/lang/Object;)V

    return-void
.end method

.method public onProgress(F)V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$2;->this$0:Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;

    float-to-int p1, p1

    iget-object v1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$2;->this$0:Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;

    iget-object v1, v1, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;->mVideoView:Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;

    invoke-virtual {v1}, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->getDuration()I

    move-result v1

    mul-int p1, p1, v1

    div-int/lit8 p1, p1, 0x64

    invoke-virtual {v0, p1}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;->showPreviewFrame(I)V

    return-void
.end method

.method public onStart()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$2;->this$0:Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;

    invoke-virtual {v0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;->preparePreviewFrame()V

    return-void
.end method
