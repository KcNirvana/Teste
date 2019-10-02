.class Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController$MyAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "FrameLocalController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController$MyViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;


# direct methods
.method private constructor <init>(Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController$MyAdapter;->this$0:Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController$MyAdapter;-><init>(Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController$MyAdapter;->this$0:Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;

    invoke-static {v0}, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;->access$2200(Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    check-cast p1, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController$MyViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController$MyAdapter;->onBindViewHolder(Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController$MyViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController$MyViewHolder;I)V
    .locals 3

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController$MyAdapter;->this$0:Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;

    invoke-static {v0}, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;->access$1900(Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController$MyAdapter;->this$0:Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;

    invoke-static {v0}, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;->access$2000(Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController$MyAdapter;->this$0:Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;

    invoke-static {v0}, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;->access$2000(Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController$MyAdapter;->this$0:Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;

    invoke-static {v0}, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;->access$2000(Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/Bitmap;

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p2, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    iget-object p2, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController$MyAdapter;->this$0:Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;

    invoke-virtual {p2}, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object p2

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/bumptech/glide/RequestManager;->load([B)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p2

    iget-object p1, p1, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController$MyViewHolder;->img:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    goto :goto_1

    :cond_1
    iget-object p1, p1, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController$MyViewHolder;->img:Landroid/widget/ImageView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1

    :cond_2
    :goto_0
    iget-object p1, p1, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController$MyViewHolder;->img:Landroid/widget/ImageView;

    iget-object p2, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController$MyAdapter;->this$0:Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;

    invoke-static {p2}, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;->access$2100(Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;)Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_1
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController$MyAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController$MyViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController$MyViewHolder;
    .locals 2

    new-instance p2, Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    sget-object p1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    new-instance p1, Landroid/view/ViewGroup$LayoutParams;

    sget v0, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;->FRAME_WIDTH:I

    sget v1, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;->FRAME_HEIGHT:I

    invoke-direct {p1, v0, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p1, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController$MyViewHolder;

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController$MyAdapter;->this$0:Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;

    invoke-direct {p1, v0, p2}, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController$MyViewHolder;-><init>(Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;Landroid/widget/ImageView;)V

    return-object p1
.end method
