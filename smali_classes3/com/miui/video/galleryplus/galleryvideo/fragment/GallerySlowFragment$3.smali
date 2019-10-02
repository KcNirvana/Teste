.class Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment$3;
.super Ljava/lang/Object;
.source "GallerySlowFragment.java"

# interfaces
.implements Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController$OnProgressChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private isPlaying:Z

.field final synthetic this$0:Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;


# direct methods
.method constructor <init>(Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment$3;->this$0:Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChangeEnd()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment$3;->this$0:Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;

    invoke-virtual {v0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;->finishPreviewFrame()V

    iget-boolean v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment$3;->isPlaying:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment$3;->this$0:Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;

    invoke-static {v0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;->access$300(Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment$3;->this$0:Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;

    invoke-virtual {v0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;->onClickPlay()V

    :cond_0
    return-void
.end method

.method public onProgressChangeStart()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment$3;->this$0:Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;

    invoke-static {v0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;->access$000(Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;)Landroid/animation/AnimatorSet;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment$3;->this$0:Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;

    invoke-static {v0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;->access$000(Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment$3;->this$0:Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;->access$002(Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    :cond_0
    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment$3;->this$0:Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;

    iget-object v0, v0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;->mVideoView:Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;

    invoke-virtual {v0}, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->isPlaying()Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment$3;->isPlaying:Z

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment$3;->this$0:Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;

    invoke-virtual {v0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;->preparePreviewFrame()V

    return-void
.end method

.method public onProgressChanged(F)V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment$3;->this$0:Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;

    iget-object v1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment$3;->this$0:Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;

    invoke-virtual {v1, p1}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;->getPositionByPercent(F)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;->showPreviewFrame(I)V

    return-void
.end method
