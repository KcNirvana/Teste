.class Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$4;
.super Ljava/lang/Object;
.source "GalleryMusicFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;->onClickOk()V
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

    iput-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$4;->this$0:Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 3

    const-string p1, "GalleryMusicFragment"

    const-string v0, "onKey"

    invoke-static {p1, v0}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p1, 0x0

    const/4 v0, 0x4

    if-ne v0, p2, :cond_3

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p2

    const/4 p3, 0x1

    if-ne p2, p3, :cond_3

    iget-object p2, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$4;->this$0:Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;

    invoke-static {p2}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;->access$1100(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;)Z

    move-result p2

    const/4 v0, 0x2

    if-eqz p2, :cond_0

    const-string p2, "GalleryMusicFragment"

    const-string v1, "onKey first"

    invoke-static {p2, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$4;->this$0:Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;

    invoke-static {p2, p1}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;->access$1102(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;Z)Z

    invoke-static {}, Lcom/miui/video/common/library/utils/ToastUtils;->getInstance()Lcom/miui/video/common/library/utils/ToastUtils;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$4;->this$0:Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;

    sget v1, Lcom/miui/video/galleryplus/R$string;->save_cancel_toast:I

    invoke-virtual {p2, v1}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/miui/video/common/library/utils/ToastUtils;->showToast(Ljava/lang/String;)Lcom/miui/video/common/library/utils/ToastUtils;

    iget-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$4;->this$0:Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;

    const-wide/16 v1, 0xbb8

    invoke-virtual {p1, v0, v1, v2}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;->runUIMessage(IJ)V

    goto :goto_1

    :cond_0
    const-string p1, "GalleryMusicFragment"

    const-string p2, "onKey second"

    invoke-static {p1, p2}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$4;->this$0:Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;

    invoke-static {p1}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;->access$000(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/miui/extravideo/interpolation/VideoInterpolator;->getInstance()Lcom/miui/extravideo/interpolation/VideoInterpolator;

    invoke-static {}, Lcom/miui/extravideo/interpolation/VideoInterpolator;->cancelSave()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$4;->this$0:Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;

    invoke-static {p1}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;->access$1200(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;)Lorg/videolan/libvlc/MIPlayerTranscoder;

    move-result-object p1

    if-eqz p1, :cond_2

    const-string p1, "GalleryMusicFragment"

    const-string p2, "old transcoder stop"

    invoke-static {p1, p2}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$4;->this$0:Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;

    invoke-static {p1}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;->access$1200(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;)Lorg/videolan/libvlc/MIPlayerTranscoder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/videolan/libvlc/MIPlayerTranscoder;->stopTranscoder()V

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$4;->this$0:Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;

    invoke-static {p1, p3}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;->access$1302(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;Z)Z

    iget-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$4;->this$0:Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;

    invoke-static {p1, p3}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;->access$1102(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;Z)Z

    iget-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$4;->this$0:Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;

    invoke-virtual {p1}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/video/player/service/corelocalvideo/CLVDialog;->dismiss(Landroid/content/Context;)Z

    iget-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$4;->this$0:Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;

    invoke-virtual {p1, v0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;->removeUIMessages(I)V

    :goto_1
    return p3

    :cond_3
    return p1
.end method
