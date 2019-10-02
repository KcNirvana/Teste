.class Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$5$1$1;
.super Ljava/lang/Object;
.source "GalleryMusicFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$5$1;->onSaveSuccess()V
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

    iput-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$5$1$1;->this$2:Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$5$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const-string v0, "GalleryMusicFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "new save success file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$5$1$1;->this$2:Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$5$1;

    iget-object v2, v2, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$5$1;->this$1:Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$5;

    iget-object v2, v2, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$5;->val$outPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$5$1$1;->this$2:Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$5$1;

    iget-object v0, v0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$5$1;->this$1:Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$5;

    iget-object v0, v0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$5;->val$outPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/miui/video/galleryplus/galleryvideo/utils/GalleryPathUtils;->updateMediaStore(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$5$1$1;->this$2:Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$5$1;

    iget-object v0, v0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$5$1;->this$1:Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$5;

    iget-object v0, v0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$5;->this$0:Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;

    iget-object v1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$5$1$1;->this$2:Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$5$1;

    iget-object v1, v1, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$5$1;->this$1:Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$5;

    iget-object v1, v1, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$5;->val$outPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;->notifyGallerySaveSuccess(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$5$1$1;->this$2:Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$5$1;

    iget-object v0, v0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$5$1;->this$1:Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$5;

    iget-object v0, v0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$5;->val$dialog:Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryVideoSaveDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryVideoSaveDialog;->completeSave(Z)V

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$5$1$1;->this$2:Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$5$1;

    iget-object v0, v0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$5$1;->this$1:Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$5;

    iget-object v0, v0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$5;->this$0:Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-wide/16 v3, 0x3e8

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;->runUIMessage(ILjava/lang/Object;J)V

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$5$1$1;->this$2:Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$5$1;

    iget-object v0, v0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$5$1;->this$1:Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$5;

    iget-object v0, v0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$5;->this$0:Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;

    invoke-static {v0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;->access$300(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "success"

    const-string v2, "super_slow_edit"

    invoke-static {v0, v1, v2}, Lcom/miui/video/galleryplus/LocalVideoReport;->reportVideoSave(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
