.class Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$10;
.super Ljava/lang/Object;
.source "GalleryMusicFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;->matchVideo(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;

.field final synthetic val$filePath:Ljava/lang/String;

.field final synthetic val$isFromLocalMusic:Z


# direct methods
.method constructor <init>(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;Ljava/lang/String;Z)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$10;->this$0:Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;

    iput-object p2, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$10;->val$filePath:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$10;->val$isFromLocalMusic:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$10;->val$filePath:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$10;->val$filePath:Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$10;->val$filePath:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "aac"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$10;->val$isFromLocalMusic:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$10;->this$0:Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;

    iget-object v1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$10;->val$filePath:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;->access$202(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$10;->this$0:Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;

    iget-object v1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$10;->this$0:Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;

    invoke-static {v1}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;->access$500(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;)Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryMusicState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryMusicState;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;->access$600(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$10;->this$0:Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;

    iget-object v1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$10;->val$filePath:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$10;->val$isFromLocalMusic:Z

    invoke-static {v0, v1, v2}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;->access$2100(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;Ljava/lang/String;Z)V

    goto :goto_1

    :cond_2
    const-string v1, "mp3"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "wma"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "ogg"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$10;->this$0:Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;->access$402(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;Z)Z

    invoke-static {}, Lcom/miui/video/common/library/utils/ToastUtils;->getInstance()Lcom/miui/video/common/library/utils/ToastUtils;

    move-result-object v0

    sget v1, Lcom/miui/video/galleryplus/R$string;->gallery_video_music_format_error:I

    invoke-virtual {v0, v1}, Lcom/miui/video/common/library/utils/ToastUtils;->showToast(I)Lcom/miui/video/common/library/utils/ToastUtils;

    goto :goto_1

    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$10;->this$0:Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;

    iget-object v1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$10;->val$filePath:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$10;->val$isFromLocalMusic:Z

    invoke-static {v0, v1, v2}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;->access$2100(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;Ljava/lang/String;Z)V

    :goto_1
    return-void
.end method
