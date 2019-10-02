.class public Lcom/miui/video/player/service/recommend/RecommendAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "RecommendAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/video/player/service/recommend/RecommendAdapter$RecommendViewHolder;,
        Lcom/miui/video/player/service/recommend/RecommendAdapter$OnItemClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Lcom/miui/video/player/service/recommend/RecommendAdapter$RecommendViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final LOCAL_DIVERSION_LOGO:Ljava/lang/String; = "local_diversion_logo"

.field private static final TAG:Ljava/lang/String; = "RecommendAdapter"


# instance fields
.field public itemClickListener:Lcom/miui/video/player/service/recommend/RecommendAdapter$OnItemClickListener;

.field private mContext:Landroid/content/Context;

.field mDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/video/common/feed/entity/TinyCardEntity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/video/player/service/recommend/RecommendAdapter;->mDataList:Ljava/util/List;

    iput-object p1, p0, Lcom/miui/video/player/service/recommend/RecommendAdapter;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/miui/video/player/service/recommend/RecommendAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    check-cast p1, Lcom/miui/video/player/service/recommend/RecommendAdapter$RecommendViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/miui/video/player/service/recommend/RecommendAdapter;->onBindViewHolder(Lcom/miui/video/player/service/recommend/RecommendAdapter$RecommendViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/miui/video/player/service/recommend/RecommendAdapter$RecommendViewHolder;I)V
    .locals 3

    iget-object v0, p0, Lcom/miui/video/player/service/recommend/RecommendAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/video/common/feed/entity/TinyCardEntity;

    iget-object v1, p1, Lcom/miui/video/player/service/recommend/RecommendAdapter$RecommendViewHolder;->textView:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v1, "local_diversion_logo"

    invoke-virtual {v0}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getItem_id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/recommend/RecommendAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    sget v1, Lcom/miui/video/player/service/R$drawable;->recommend_logo:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Integer;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/RequestBuilder;->centerCrop()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/RequestBuilder;

    invoke-virtual {v0}, Lcom/bumptech/glide/RequestBuilder;->dontAnimate()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/RequestBuilder;

    iget-object v1, p1, Lcom/miui/video/player/service/recommend/RecommendAdapter$RecommendViewHolder;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/miui/video/player/service/recommend/RecommendAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    invoke-virtual {v0}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/RequestBuilder;->centerCrop()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/RequestBuilder;

    invoke-virtual {v0}, Lcom/bumptech/glide/RequestBuilder;->dontAnimate()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/RequestBuilder;

    iget-object v1, p1, Lcom/miui/video/player/service/recommend/RecommendAdapter$RecommendViewHolder;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    :goto_0
    iget-object v0, p1, Lcom/miui/video/player/service/recommend/RecommendAdapter$RecommendViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/miui/video/player/service/recommend/RecommendAdapter$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/miui/video/player/service/recommend/RecommendAdapter$1;-><init>(Lcom/miui/video/player/service/recommend/RecommendAdapter;Lcom/miui/video/player/service/recommend/RecommendAdapter$RecommendViewHolder;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/miui/video/player/service/recommend/RecommendAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/miui/video/player/service/recommend/RecommendAdapter$RecommendViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/miui/video/player/service/recommend/RecommendAdapter$RecommendViewHolder;
    .locals 2

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/miui/video/player/service/R$layout;->recommend_item_view:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/miui/video/player/service/recommend/RecommendAdapter$RecommendViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/miui/video/player/service/recommend/RecommendAdapter$RecommendViewHolder;-><init>(Lcom/miui/video/player/service/recommend/RecommendAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public setData(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/video/common/feed/entity/TinyCardEntity;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/miui/video/player/service/recommend/RecommendAdapter;->mDataList:Ljava/util/List;

    sget-object v0, Lcom/miui/video/player/service/recommend/RecommendAdapter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " setData "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/miui/video/player/service/recommend/RecommendAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setOnItemClickListener(Lcom/miui/video/player/service/recommend/RecommendAdapter$OnItemClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/player/service/recommend/RecommendAdapter;->itemClickListener:Lcom/miui/video/player/service/recommend/RecommendAdapter$OnItemClickListener;

    return-void
.end method
