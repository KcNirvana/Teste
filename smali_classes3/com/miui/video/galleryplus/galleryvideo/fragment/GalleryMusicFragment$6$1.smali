.class Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$6$1;
.super Ljava/lang/Object;
.source "GalleryMusicFragment.java"

# interfaces
.implements Lorg/videolan/libvlc/MIPlayerTranscoder$onCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$6;

.field final synthetic val$outPath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$6;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$6$1;->this$1:Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$6;

    iput-object p2, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$6$1;->val$outPath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion()V
    .locals 3

    const-string v0, "GalleryMusicFragment"

    const-string v1, "old complete"

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$6$1;->this$1:Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$6;

    iget-object v0, v0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$6;->this$0:Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;

    invoke-static {v0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;->access$1300(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$6$1;->this$1:Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$6;

    iget-object v0, v0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$6;->this$0:Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;->access$1302(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;Z)Z

    const-string v0, "GalleryMusicFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "old save cancel file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$6$1;->val$outPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$6$1;->val$outPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/miui/video/framework/utils/FileUtils;->existsFile(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$6$1;->val$outPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/miui/video/framework/utils/FileUtils;->deleteDirOrFile(Ljava/lang/String;)Z

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$6$1$1;

    invoke-direct {v0, p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$6$1$1;-><init>(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$6$1;)V

    invoke-static {v0}, Lcom/miui/video/framework/task/AsyncTaskUtils;->runOnUIHandler(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method
