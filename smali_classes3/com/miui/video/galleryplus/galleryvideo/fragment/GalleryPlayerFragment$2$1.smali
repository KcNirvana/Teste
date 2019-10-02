.class Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment$2$1;
.super Ljava/lang/Object;
.source "GalleryPlayerFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment$2;->onPageSelected(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment$2;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment$2;I)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment$2$1;->this$1:Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment$2;

    iput p2, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment$2$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment$2$1;->val$position:I

    iget-object v1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment$2$1;->this$1:Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment$2;

    iget-object v1, v1, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment$2;->this$0:Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;

    invoke-static {v1}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->access$100(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;)I

    move-result v1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment$2$1;->val$position:I

    iget-object v1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment$2$1;->this$1:Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment$2;

    iget-object v1, v1, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment$2;->this$0:Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;

    invoke-static {v1}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->access$100(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;)I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment$2$1;->this$1:Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment$2;

    iget-object v1, v1, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment$2;->this$0:Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->access$200(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;IZ)V

    iget-object v1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment$2$1;->this$1:Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment$2;

    iget-object v1, v1, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment$2;->this$0:Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;

    invoke-static {v1, v0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->access$300(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;I)V

    :cond_0
    return-void
.end method
