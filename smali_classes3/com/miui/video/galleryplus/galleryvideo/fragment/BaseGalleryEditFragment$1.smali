.class Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryEditFragment$1;
.super Ljava/lang/Object;
.source "BaseGalleryEditFragment.java"

# interfaces
.implements Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryEditFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryEditFragment;


# direct methods
.method constructor <init>(Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryEditFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryEditFragment$1;->this$0:Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryEditFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic lambda$onError$3(Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryEditFragment$1;II)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryEditFragment$1;->this$0:Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryEditFragment;

    invoke-virtual {v0, p1, p2}, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryEditFragment;->onVideoError(II)V

    return-void
.end method


# virtual methods
.method public onError(Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer;II)Z
    .locals 1

    iget-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryEditFragment$1;->this$0:Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryEditFragment;

    iget-object p1, p1, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryEditFragment;->mVideoView:Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryEditFragment$1;->this$0:Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryEditFragment;

    iget-object p1, p1, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryEditFragment;->mVideoView:Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;

    new-instance v0, Lcom/miui/video/galleryplus/galleryvideo/fragment/-$$Lambda$BaseGalleryEditFragment$1$7DeQrglGOxBlqaxMvvn25Uv8H60;

    invoke-direct {v0, p0, p2, p3}, Lcom/miui/video/galleryplus/galleryvideo/fragment/-$$Lambda$BaseGalleryEditFragment$1$7DeQrglGOxBlqaxMvvn25Uv8H60;-><init>(Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryEditFragment$1;II)V

    const-wide/16 p2, 0x96

    invoke-virtual {p1, v0, p2, p3}, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
