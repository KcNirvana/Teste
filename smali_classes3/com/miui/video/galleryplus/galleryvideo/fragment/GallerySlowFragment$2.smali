.class Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment$2;
.super Ljava/lang/Object;
.source "GallerySlowFragment.java"

# interfaces
.implements Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController$OnSpeedRangeChangedListener;


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

    iput-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment$2;->this$0:Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSpeedRangeChange(IFF)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment$2;->this$0:Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;

    invoke-static {p1}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;->access$100(Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;)Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;->setCursorPosition(F)V

    iget-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment$2;->this$0:Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;

    iget-object p3, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment$2;->this$0:Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;

    invoke-virtual {p3, p2}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;->getPositionByPercent(F)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;->showPreviewFrame(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment$2;->this$0:Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;

    invoke-static {p1}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;->access$100(Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;)Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;->setCursorPosition(F)V

    iget-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment$2;->this$0:Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;

    iget-object p2, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment$2;->this$0:Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;

    invoke-virtual {p2, p3}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;->getPositionByPercent(F)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;->showPreviewFrame(I)V

    :goto_0
    return-void
.end method

.method public onSpeedRangeChangeEnd(I)V
    .locals 4

    iget-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment$2;->this$0:Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;

    iget-object p1, p1, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;->mVideoView:Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment$2;->this$0:Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;

    iget-object v1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment$2;->this$0:Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;

    invoke-static {v1}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;->access$200(Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;)Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;->getLeftCursor()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;->getPositionByPercent(F)I

    move-result v0

    int-to-long v0, v0

    iget-object v2, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment$2;->this$0:Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;

    iget-object v3, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment$2;->this$0:Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;

    invoke-static {v3}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;->access$200(Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;)Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;->getRightCursor()F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;->getPositionByPercent(F)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->setSlowMotionTime(JJ)V

    iget-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment$2;->this$0:Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;

    invoke-virtual {p1}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;->finishPreviewFrame()V

    iget-boolean p1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment$2;->isPlaying:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment$2;->this$0:Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;

    invoke-static {p1}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;->access$300(Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment$2;->this$0:Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;

    invoke-virtual {p1}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;->onClickPlay()V

    :cond_0
    return-void
.end method

.method public onSpeedRangeChangeStart(I)V
    .locals 1

    iget-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment$2;->this$0:Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;

    invoke-static {p1}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;->access$000(Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;)Landroid/animation/AnimatorSet;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment$2;->this$0:Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;

    invoke-static {p1}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;->access$000(Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;)Landroid/animation/AnimatorSet;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->cancel()V

    iget-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment$2;->this$0:Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;->access$002(Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    :cond_0
    iget-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment$2;->this$0:Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;

    iget-object p1, p1, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;->mVideoView:Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;

    invoke-virtual {p1}, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->isPlaying()Z

    move-result p1

    iput-boolean p1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment$2;->isPlaying:Z

    iget-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment$2;->this$0:Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;

    invoke-virtual {p1}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;->preparePreviewFrame()V

    iget-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment$2;->this$0:Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;->setBtnOkEnabled(Z)V

    return-void
.end method
