.class Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$1$1;
.super Ljava/lang/Object;
.source "GalleryMusicFragment.java"

# interfaces
.implements Lcom/miui/video/galleryplus/galleryvideo/utils/MatchMusicManager$OnMatchMusicListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$1;->notifyMatchMusicByLocal(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$1;


# direct methods
.method constructor <init>(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$1;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$1$1;->this$1:Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$1$1$1;

    invoke-direct {v0, p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$1$1$1;-><init>(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$1$1;)V

    invoke-static {v0}, Lcom/miui/video/framework/task/AsyncTaskUtils;->runOnUIHandler(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$1$1;->this$1:Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$1;

    iget-object v0, v0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$1;->this$0:Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;

    invoke-static {v0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;->access$800(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;)Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;->getMusicStatus()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$1$1;->this$1:Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$1;

    iget-object v0, v0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$1;->this$0:Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;

    invoke-static {v0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;->access$100(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$1$1;->this$1:Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$1;

    iget-object v0, v0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$1;->this$0:Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;->access$900(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method
