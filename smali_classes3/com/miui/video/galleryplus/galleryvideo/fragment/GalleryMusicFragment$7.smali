.class Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$7;
.super Ljava/lang/Object;
.source "GalleryMusicFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;->playVideoOnUIThread(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;

.field final synthetic val$end:I

.field final synthetic val$header:Ljava/util/Map;

.field final synthetic val$start:I

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;Ljava/lang/String;Ljava/util/Map;II)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$7;->this$0:Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;

    iput-object p2, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$7;->val$url:Ljava/lang/String;

    iput-object p3, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$7;->val$header:Ljava/util/Map;

    iput p4, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$7;->val$start:I

    iput p5, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$7;->val$end:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$7;->this$0:Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;

    iget-object v0, v0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;->mVideoView:Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$7;->this$0:Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;

    invoke-static {v0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;->access$1800(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;)V

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$7;->this$0:Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;

    iget-object v0, v0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;->mVideoView:Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;

    iget-object v1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$7;->val$url:Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$7;->val$header:Ljava/util/Map;

    invoke-virtual {v0, v1, v2}, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->setDataSource(Ljava/lang/String;Ljava/util/Map;)V

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$7;->this$0:Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;

    iget v1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$7;->val$start:I

    iget v2, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$7;->val$end:I

    invoke-static {v0, v1, v2}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;->access$1900(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;II)V

    :cond_0
    return-void
.end method
