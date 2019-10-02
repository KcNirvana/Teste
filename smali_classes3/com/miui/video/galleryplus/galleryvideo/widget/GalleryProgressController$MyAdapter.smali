.class Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController$MyAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "GalleryProgressController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController$MyViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;


# direct methods
.method private constructor <init>(Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController$MyAdapter;->this$0:Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController$MyAdapter;-><init>(Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController$MyAdapter;->this$0:Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;

    invoke-static {v0}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;->access$200(Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    check-cast p1, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController$MyViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController$MyAdapter;->onBindViewHolder(Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController$MyViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController$MyViewHolder;I)V
    .locals 4

    iget-object v0, p1, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController$MyViewHolder;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController$MyAdapter;->this$0:Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;

    invoke-virtual {v1}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController$MyAdapter;->this$0:Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;

    invoke-virtual {v2}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController$MyAdapter;->this$0:Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;

    invoke-virtual {v2}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController$MyAdapter;->getItemCount()I

    move-result v2

    div-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController$MyAdapter;->getItemCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne p2, v2, :cond_0

    if-lez v1, :cond_0

    iget-object v2, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController$MyAdapter;->this$0:Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;

    invoke-virtual {v2}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;->getMeasuredWidth()I

    move-result v2

    iget-object v3, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController$MyAdapter;->this$0:Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;

    invoke-virtual {v3}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController$MyAdapter;->this$0:Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;

    invoke-virtual {v3}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    rem-int/2addr v2, v1

    add-int/2addr v1, v2

    :cond_0
    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-eq v2, v1, :cond_1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    :cond_1
    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController$MyAdapter;->this$0:Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;

    invoke-static {v0}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;->access$100(Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le p2, v0, :cond_2

    const/4 p2, 0x0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController$MyAdapter;->this$0:Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;

    invoke-static {v0}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;->access$100(Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/Bitmap;

    :goto_0
    iget-object p1, p1, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController$MyViewHolder;->imageView:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController$MyAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController$MyViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController$MyViewHolder;
    .locals 2

    new-instance p1, Landroid/widget/ImageView;

    iget-object p2, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController$MyAdapter;->this$0:Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;

    invoke-virtual {p2}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    sget-object p2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    new-instance p2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v0, -0x2

    const/4 v1, -0x1

    invoke-direct {p2, v0, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p2, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController$MyViewHolder;

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController$MyAdapter;->this$0:Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;

    invoke-direct {p2, v0, p1}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController$MyViewHolder;-><init>(Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;Landroid/view/View;)V

    return-object p2
.end method
