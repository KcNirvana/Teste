.class Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$1$1$1;
.super Ljava/lang/Object;
.source "GalleryMusicFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$1$1;->onSuccess(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$1$1;


# direct methods
.method constructor <init>(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$1$1;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$1$1$1;->this$2:Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$1$1$1;->this$2:Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$1$1;

    iget-object v0, v0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$1$1;->this$1:Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$1;

    iget-object v0, v0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$1;->this$0:Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;

    iget-object v1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$1$1$1;->this$2:Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$1$1;

    iget-object v1, v1, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$1$1;->this$1:Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$1;

    iget-object v1, v1, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$1;->this$0:Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;

    invoke-static {v1}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;->access$100(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;->setBtnOkEnabled(Z)V

    return-void
.end method
