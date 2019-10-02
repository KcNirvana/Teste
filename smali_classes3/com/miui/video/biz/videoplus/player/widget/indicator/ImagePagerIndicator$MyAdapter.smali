.class Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator$MyAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "ImagePagerIndicator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator$MyViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;",
            ">;"
        }
    .end annotation
.end field

.field private mOutRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator;)V
    .locals 1

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator$MyAdapter;->list:Ljava/util/List;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator$MyAdapter;->mOutRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method static synthetic access$100(Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator$MyAdapter;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator$MyAdapter;->setList(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator$MyAdapter;)Ljava/lang/ref/WeakReference;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator$MyAdapter;->mOutRef:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method private setList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator$MyAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator$MyAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator$MyAdapter;->notifyDataSetChanged()V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator$MyAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    check-cast p1, Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator$MyViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator$MyAdapter;->onBindViewHolder(Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator$MyViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator$MyViewHolder;I)V
    .locals 8

    if-ltz p2, :cond_3

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator$MyAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p2, v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator$MyAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    invoke-static {p1, v0}, Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator$MyViewHolder;->access$802(Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator$MyViewHolder;Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;)Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->isImage()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p1}, Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator$MyViewHolder;->access$1400(Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator$MyViewHolder;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/RequestBuilder;->centerCrop()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/RequestBuilder;

    invoke-virtual {v0}, Lcom/bumptech/glide/RequestBuilder;->dontAnimate()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/RequestBuilder;

    invoke-static {}, Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator;->access$900()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-static {}, Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator;->access$1200()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/bumptech/glide/RequestBuilder;->override(II)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/RequestBuilder;

    invoke-static {p1}, Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator$MyViewHolder;->access$1400(Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator$MyViewHolder;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator;->access$900()I

    move-result v0

    div-int/lit8 v3, v0, 0x2

    invoke-static {}, Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator;->access$1200()I

    move-result v0

    div-int/lit8 v4, v0, 0x2

    const/4 v5, -0x1

    invoke-static {p1}, Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator$MyViewHolder;->access$1400(Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator$MyViewHolder;)Landroid/widget/ImageView;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/miui/video/biz/videoplus/app/utils/glide/CustomVideoGlide;->into(Ljava/lang/String;IIILandroid/widget/ImageView;Lcom/bumptech/glide/request/RequestListener;)V

    :goto_0
    invoke-static {p1}, Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator$MyViewHolder;->access$1400(Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator$MyViewHolder;)Landroid/widget/ImageView;

    move-result-object p1

    new-instance v0, Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator$MyAdapter$1;

    invoke-direct {v0, p0, p2}, Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator$MyAdapter$1;-><init>(Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator$MyAdapter;I)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_3
    :goto_1
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator$MyAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator$MyViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator$MyViewHolder;
    .locals 2

    new-instance p2, Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    sget-object p1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    new-instance p1, Landroid/view/ViewGroup$LayoutParams;

    invoke-static {}, Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator;->access$900()I

    move-result v0

    invoke-static {}, Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator;->access$1200()I

    move-result v1

    invoke-direct {p1, v0, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p1, Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator$MyViewHolder;

    const/4 v0, 0x0

    invoke-direct {p1, p2, v0}, Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator$MyViewHolder;-><init>(Landroid/widget/ImageView;Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator$1;)V

    return-object p1
.end method
