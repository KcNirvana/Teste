.class Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$5$1;
.super Ljava/lang/Object;
.source "GalleryMusicFragment.java"

# interfaces
.implements Lcom/miui/extravideo/interpolation/VideoInterpolator$OnSaveListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$5;


# direct methods
.method constructor <init>(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$5;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$5$1;->this$1:Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSaveFailure()V
    .locals 1

    new-instance v0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$5$1$2;

    invoke-direct {v0, p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$5$1$2;-><init>(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$5$1;)V

    invoke-static {v0}, Lcom/miui/video/framework/task/AsyncTaskUtils;->runOnUIHandler(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onSaveSuccess()V
    .locals 3

    const-string v0, "GalleryMusicFragment"

    const-string v1, "new complete"

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$5$1;->this$1:Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$5;

    iget-object v0, v0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$5;->this$0:Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;

    invoke-static {v0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;->access$1300(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "GalleryMusicFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "new save cancel file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$5$1;->this$1:Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$5;

    iget-object v2, v2, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$5;->val$outPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$5$1;->this$1:Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$5;

    iget-object v0, v0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$5;->this$0:Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;->access$1302(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;Z)Z

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$5$1;->this$1:Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$5;

    iget-object v0, v0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$5;->val$outPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/miui/video/framework/utils/FileUtils;->existsFile(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$5$1;->this$1:Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$5;

    iget-object v0, v0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$5;->val$outPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/miui/video/framework/utils/FileUtils;->deleteDirOrFile(Ljava/lang/String;)Z

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$5$1$1;

    invoke-direct {v0, p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$5$1$1;-><init>(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$5$1;)V

    invoke-static {v0}, Lcom/miui/video/framework/task/AsyncTaskUtils;->runOnUIHandler(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method
