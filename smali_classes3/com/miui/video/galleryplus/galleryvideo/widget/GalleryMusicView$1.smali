.class Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView$1;
.super Ljava/lang/Object;
.source "GalleryMusicView.java"

# interfaces
.implements Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController$OnProgressChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;


# direct methods
.method constructor <init>(Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView$1;->this$0:Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChangeEnd()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView$1;->this$0:Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;

    invoke-static {v0}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;->access$000(Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;)Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView$OnPreviewSlideListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView$1;->this$0:Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;

    invoke-static {v0}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;->access$000(Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;)Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView$OnPreviewSlideListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView$OnPreviewSlideListener;->onEnd()V

    :cond_0
    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView$1;->this$0:Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;

    invoke-static {v0}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;->access$100(Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView$1;->this$0:Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;

    invoke-static {v0}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;->access$100(Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    return-void
.end method

.method public onProgressChangeStart()V
    .locals 4

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView$1;->this$0:Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;

    invoke-static {v0}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;->access$000(Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;)Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView$OnPreviewSlideListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView$1;->this$0:Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;

    invoke-static {v0}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;->access$000(Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;)Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView$OnPreviewSlideListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView$OnPreviewSlideListener;->onStart()V

    :cond_0
    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView$1;->this$0:Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;

    invoke-static {v0}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;->access$100(Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView$1;->this$0:Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;

    invoke-virtual {v0}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;->cancelAdjustBarAnim()V

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView$1;->this$0:Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;

    invoke-virtual {v0}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "gallery_video"

    const-string v2, "show_hint"

    invoke-static {v0, v1, v2}, Lcom/miui/video/base/utils/SharePreferenceManager;->readInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/miui/video/common/library/utils/ToastUtils;->getInstance()Lcom/miui/video/common/library/utils/ToastUtils;

    move-result-object v0

    sget v1, Lcom/miui/video/galleryplus/R$string;->gallery_video_adjust_hint:I

    invoke-virtual {v0, v1}, Lcom/miui/video/common/library/utils/ToastUtils;->showToast(I)Lcom/miui/video/common/library/utils/ToastUtils;

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView$1;->this$0:Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;

    invoke-virtual {v0}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "gallery_video"

    const-string v2, "show_hint"

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/miui/video/base/utils/SharePreferenceManager;->saveInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    :cond_1
    return-void
.end method

.method public onProgressChanged(F)V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView$1;->this$0:Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;

    invoke-static {v0}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;->access$200(Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;)Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView$OnNotifyListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView$1;->this$0:Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;

    invoke-static {v0}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;->access$200(Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;)Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView$OnNotifyListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView$OnNotifyListener;->notifySave()V

    :cond_0
    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView$1;->this$0:Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;

    invoke-static {v0}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;->access$300(Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;)Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;

    move-result-object v0

    const v1, 0x3e4ccccd    # 0.2f

    sub-float/2addr v1, p1

    invoke-virtual {v0, p1, v1}, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;->setCursorRange(FF)V

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView$1;->this$0:Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;

    invoke-static {v0}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;->access$000(Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;)Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView$OnPreviewSlideListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView$1;->this$0:Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;

    invoke-static {v0}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;->access$000(Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;)Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView$OnPreviewSlideListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView$OnPreviewSlideListener;->onProgress(F)V

    :cond_1
    return-void
.end method
