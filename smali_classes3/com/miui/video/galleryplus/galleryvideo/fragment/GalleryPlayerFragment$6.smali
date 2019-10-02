.class Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment$6;
.super Ljava/lang/Object;
.source "GalleryPlayerFragment.java"

# interfaces
.implements Lcom/miui/video/player/service/recommend/RecommendVideoContainer$ReplayCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mIsShowRecommend:Z

.field final synthetic this$0:Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;


# direct methods
.method constructor <init>(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment$6;->this$0:Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment$6;->mIsShowRecommend:Z

    return-void
.end method


# virtual methods
.method public getVideoTitle()Ljava/lang/String;
    .locals 3

    const-string v0, "GalleryPlayerFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ReplayCallback  getVideoTitle mVideoTitle =="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment$6;->this$0:Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;

    invoke-static {v2}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->access$1200(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;)Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryPlayerState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryPlayerState;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment$6;->this$0:Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;

    invoke-static {v0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->access$1200(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;)Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryPlayerState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryPlayerState;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isShowRecommendFragment()Z
    .locals 3

    const-string v0, "GalleryPlayerFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ReplayCallback  isShowRecommendFragment mIsShowRecommend =="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment$6;->mIsShowRecommend:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment$6;->mIsShowRecommend:Z

    return v0
.end method

.method public onBack()Z
    .locals 2

    const-string v0, "GalleryPlayerFragment"

    const-string v1, "ReplayCallback  onBack"

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment$6;->this$0:Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1, v1}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->access$200(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;IZ)V

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment$6;->this$0:Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;

    invoke-static {v0, v1}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->access$300(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;I)V

    const/4 v0, 0x1

    return v0
.end method

.method public onReplay()Z
    .locals 2

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment$6;->this$0:Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;

    invoke-virtual {v0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x600

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    const-string v0, "GalleryPlayerFragment"

    const-string v1, "ReplayCallback  onReplay"

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment$6;->this$0:Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;

    invoke-static {v0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->access$400(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;)Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment$6;->this$0:Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;

    invoke-static {v1}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->access$1200(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;)Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryPlayerState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryPlayerState;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->setDataSource(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment$6;->this$0:Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;

    invoke-static {v0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->access$400(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;)Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment$6;->this$0:Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;

    invoke-static {v0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->access$400(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;)Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->accurateSeekTo(I)V

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment$6;->this$0:Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;

    invoke-static {v0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->access$400(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;)Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->start()V

    :cond_0
    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment$6;->this$0:Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;

    invoke-static {v0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->access$1300(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;)Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment$6;->this$0:Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;

    invoke-static {v0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->access$1300(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;)Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;->resetController()V

    :cond_1
    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment$6;->this$0:Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;

    invoke-static {v0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->access$1500(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;)V

    const/4 v0, 0x1

    return v0
.end method

.method public setIsShowRecommend(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment$6;->mIsShowRecommend:Z

    return-void
.end method
