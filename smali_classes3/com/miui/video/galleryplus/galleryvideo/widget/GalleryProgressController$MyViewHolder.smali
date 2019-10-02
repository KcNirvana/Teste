.class Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController$MyViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "GalleryProgressController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyViewHolder"
.end annotation


# instance fields
.field imageView:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;


# direct methods
.method constructor <init>(Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController$MyViewHolder;->this$0:Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;

    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController$MyViewHolder;->imageView:Landroid/widget/ImageView;

    return-void
.end method
