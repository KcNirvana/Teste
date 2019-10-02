.class Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$8;
.super Ljava/lang/Object;
.source "GalleryMusicFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;->playVideo(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;

.field final synthetic val$end:I

.field final synthetic val$start:I


# direct methods
.method constructor <init>(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;II)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$8;->this$0:Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;

    iput p2, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$8;->val$start:I

    iput p3, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$8;->val$end:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$8;->this$0:Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;

    invoke-static {v0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;->access$2000(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$8;->this$0:Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;

    iget-object v0, v0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;->mPreviewView:Lcom/miui/video/galleryplus/galleryvideo/widget/PreviewTextureView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/miui/video/galleryplus/galleryvideo/widget/PreviewTextureView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$8;->this$0:Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;

    invoke-static {v0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;->access$800(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;)Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;

    move-result-object v0

    iget v1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$8;->val$start:I

    iget v2, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$8;->val$end:I

    invoke-virtual {v0, v1, v2}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;->startAdjustBarAnim(II)V

    :cond_0
    return-void
.end method
