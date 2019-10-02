.class public abstract Lcom/miui/video/galleryplus/recycleview/BaseRecycleViewAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "BaseRecycleViewAdapter.java"

# interfaces
.implements Lcom/miui/video/galleryplus/recycleview/OnRecyclerViewItemClickListener;
.implements Lcom/miui/video/galleryplus/recycleview/OnRecyclerViewItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<VH:",
        "Lcom/miui/video/galleryplus/recycleview/BaseRecycleViewViewHolder;",
        ">",
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "TVH;>;",
        "Lcom/miui/video/galleryplus/recycleview/OnRecyclerViewItemClickListener;",
        "Lcom/miui/video/galleryplus/recycleview/OnRecyclerViewItemLongClickListener;"
    }
.end annotation


# instance fields
.field protected mOnRecyclerViewItemClickListener:Lcom/miui/video/galleryplus/recycleview/OnRecyclerViewItemClickListener;

.field protected mOnRecyclerViewItemLongClickListener:Lcom/miui/video/galleryplus/recycleview/OnRecyclerViewItemLongClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onBindBaseViewHolder(Lcom/miui/video/galleryplus/recycleview/BaseRecycleViewViewHolder;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I)V"
        }
    .end annotation
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    check-cast p1, Lcom/miui/video/galleryplus/recycleview/BaseRecycleViewViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/miui/video/galleryplus/recycleview/BaseRecycleViewAdapter;->onBindViewHolder(Lcom/miui/video/galleryplus/recycleview/BaseRecycleViewViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/miui/video/galleryplus/recycleview/BaseRecycleViewViewHolder;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I)V"
        }
    .end annotation

    invoke-virtual {p1, p0}, Lcom/miui/video/galleryplus/recycleview/BaseRecycleViewViewHolder;->setOnItemClickListener(Lcom/miui/video/galleryplus/recycleview/OnRecyclerViewItemClickListener;)V

    invoke-virtual {p1, p0}, Lcom/miui/video/galleryplus/recycleview/BaseRecycleViewViewHolder;->setOnItemLongClickListener(Lcom/miui/video/galleryplus/recycleview/OnRecyclerViewItemLongClickListener;)V

    invoke-virtual {p0, p1, p2}, Lcom/miui/video/galleryplus/recycleview/BaseRecycleViewAdapter;->onBindBaseViewHolder(Lcom/miui/video/galleryplus/recycleview/BaseRecycleViewViewHolder;I)V

    return-void
.end method

.method public onRecyclerViewItemClick(Landroid/view/View;I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/galleryplus/recycleview/BaseRecycleViewAdapter;->mOnRecyclerViewItemClickListener:Lcom/miui/video/galleryplus/recycleview/OnRecyclerViewItemClickListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/video/galleryplus/recycleview/BaseRecycleViewAdapter;->mOnRecyclerViewItemClickListener:Lcom/miui/video/galleryplus/recycleview/OnRecyclerViewItemClickListener;

    invoke-interface {v0, p1, p2}, Lcom/miui/video/galleryplus/recycleview/OnRecyclerViewItemClickListener;->onRecyclerViewItemClick(Landroid/view/View;I)V

    return-void
.end method

.method public onRecyclerViewItemLongClick(Landroid/view/View;I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/galleryplus/recycleview/BaseRecycleViewAdapter;->mOnRecyclerViewItemLongClickListener:Lcom/miui/video/galleryplus/recycleview/OnRecyclerViewItemLongClickListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/video/galleryplus/recycleview/BaseRecycleViewAdapter;->mOnRecyclerViewItemLongClickListener:Lcom/miui/video/galleryplus/recycleview/OnRecyclerViewItemLongClickListener;

    invoke-interface {v0, p1, p2}, Lcom/miui/video/galleryplus/recycleview/OnRecyclerViewItemLongClickListener;->onRecyclerViewItemLongClick(Landroid/view/View;I)V

    return-void
.end method

.method public setOnItemClickListener(Lcom/miui/video/galleryplus/recycleview/OnRecyclerViewItemClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/galleryplus/recycleview/BaseRecycleViewAdapter;->mOnRecyclerViewItemClickListener:Lcom/miui/video/galleryplus/recycleview/OnRecyclerViewItemClickListener;

    return-void
.end method

.method public setOnItemLongClickListener(Lcom/miui/video/galleryplus/recycleview/OnRecyclerViewItemLongClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/galleryplus/recycleview/BaseRecycleViewAdapter;->mOnRecyclerViewItemLongClickListener:Lcom/miui/video/galleryplus/recycleview/OnRecyclerViewItemLongClickListener;

    return-void
.end method
