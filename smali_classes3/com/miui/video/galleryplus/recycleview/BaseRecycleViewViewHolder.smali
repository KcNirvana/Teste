.class public Lcom/miui/video/galleryplus/recycleview/BaseRecycleViewViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "BaseRecycleViewViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# static fields
.field public static final TAG_TYPE_DEFAULT_ITEM_VIEW:I = -0x1


# instance fields
.field private mItemClickListener:Lcom/miui/video/galleryplus/recycleview/OnRecyclerViewItemClickListener;

.field private mItemLongClickListener:Lcom/miui/video/galleryplus/recycleview/OnRecyclerViewItemLongClickListener;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/miui/video/galleryplus/recycleview/BaseRecycleViewViewHolder;->init(Landroid/view/View;Lcom/miui/video/galleryplus/recycleview/OnRecyclerViewItemClickListener;Lcom/miui/video/galleryplus/recycleview/OnRecyclerViewItemLongClickListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lcom/miui/video/galleryplus/recycleview/OnRecyclerViewItemClickListener;Lcom/miui/video/galleryplus/recycleview/OnRecyclerViewItemLongClickListener;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/video/galleryplus/recycleview/BaseRecycleViewViewHolder;->init(Landroid/view/View;Lcom/miui/video/galleryplus/recycleview/OnRecyclerViewItemClickListener;Lcom/miui/video/galleryplus/recycleview/OnRecyclerViewItemLongClickListener;)V

    return-void
.end method

.method private init(Landroid/view/View;Lcom/miui/video/galleryplus/recycleview/OnRecyclerViewItemClickListener;Lcom/miui/video/galleryplus/recycleview/OnRecyclerViewItemLongClickListener;)V
    .locals 0

    iput-object p2, p0, Lcom/miui/video/galleryplus/recycleview/BaseRecycleViewViewHolder;->mItemClickListener:Lcom/miui/video/galleryplus/recycleview/OnRecyclerViewItemClickListener;

    iput-object p3, p0, Lcom/miui/video/galleryplus/recycleview/BaseRecycleViewViewHolder;->mItemLongClickListener:Lcom/miui/video/galleryplus/recycleview/OnRecyclerViewItemLongClickListener;

    const/4 p2, -0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/galleryplus/recycleview/BaseRecycleViewViewHolder;->mItemClickListener:Lcom/miui/video/galleryplus/recycleview/OnRecyclerViewItemClickListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/galleryplus/recycleview/BaseRecycleViewViewHolder;->mItemClickListener:Lcom/miui/video/galleryplus/recycleview/OnRecyclerViewItemClickListener;

    invoke-virtual {p0}, Lcom/miui/video/galleryplus/recycleview/BaseRecycleViewViewHolder;->getLayoutPosition()I

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/miui/video/galleryplus/recycleview/OnRecyclerViewItemClickListener;->onRecyclerViewItemClick(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 2

    iget-object v0, p0, Lcom/miui/video/galleryplus/recycleview/BaseRecycleViewViewHolder;->mItemLongClickListener:Lcom/miui/video/galleryplus/recycleview/OnRecyclerViewItemLongClickListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/galleryplus/recycleview/BaseRecycleViewViewHolder;->mItemLongClickListener:Lcom/miui/video/galleryplus/recycleview/OnRecyclerViewItemLongClickListener;

    invoke-virtual {p0}, Lcom/miui/video/galleryplus/recycleview/BaseRecycleViewViewHolder;->getLayoutPosition()I

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/miui/video/galleryplus/recycleview/OnRecyclerViewItemLongClickListener;->onRecyclerViewItemLongClick(Landroid/view/View;I)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public setOnItemClickListener(Lcom/miui/video/galleryplus/recycleview/OnRecyclerViewItemClickListener;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/galleryplus/recycleview/BaseRecycleViewViewHolder;->mItemClickListener:Lcom/miui/video/galleryplus/recycleview/OnRecyclerViewItemClickListener;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/miui/video/galleryplus/recycleview/BaseRecycleViewViewHolder;->mItemClickListener:Lcom/miui/video/galleryplus/recycleview/OnRecyclerViewItemClickListener;

    return-void
.end method

.method public setOnItemLongClickListener(Lcom/miui/video/galleryplus/recycleview/OnRecyclerViewItemLongClickListener;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/galleryplus/recycleview/BaseRecycleViewViewHolder;->mItemLongClickListener:Lcom/miui/video/galleryplus/recycleview/OnRecyclerViewItemLongClickListener;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/miui/video/galleryplus/recycleview/BaseRecycleViewViewHolder;->mItemLongClickListener:Lcom/miui/video/galleryplus/recycleview/OnRecyclerViewItemLongClickListener;

    return-void
.end method
