.class Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$5$1$2;
.super Ljava/lang/Object;
.source "GalleryMusicFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$5$1;->onSaveFailure()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$5$1;


# direct methods
.method constructor <init>(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$5$1;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$5$1$2;->this$2:Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$5$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-string v0, "GalleryMusicFragment"

    const-string v1, "new onError"

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lcom/miui/video/common/library/utils/ToastUtils;->getInstance()Lcom/miui/video/common/library/utils/ToastUtils;

    move-result-object v0

    sget v1, Lcom/miui/video/galleryplus/R$string;->ai_music_save_fail:I

    invoke-virtual {v0, v1}, Lcom/miui/video/common/library/utils/ToastUtils;->showToast(I)Lcom/miui/video/common/library/utils/ToastUtils;

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$5$1$2;->this$2:Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$5$1;

    iget-object v0, v0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$5$1;->this$1:Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$5;

    iget-object v0, v0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$5;->this$0:Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;

    invoke-virtual {v0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/video/player/service/corelocalvideo/CLVDialog;->dismiss(Landroid/content/Context;)Z

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$5$1$2;->this$2:Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$5$1;

    iget-object v0, v0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$5$1;->this$1:Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$5;

    iget-object v0, v0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$5;->this$0:Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;

    invoke-static {v0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;->access$300(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "failure"

    const-string v2, "super_slow_edit"

    invoke-static {v0, v1, v2}, Lcom/miui/video/galleryplus/LocalVideoReport;->reportVideoSave(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
