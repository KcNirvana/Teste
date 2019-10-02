.class public Lcom/miui/video/biz/videoplus/uiadapter/UIRecyclerAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "UIRecyclerAdapter.java"

# interfaces
.implements Lcom/miui/video/common/feed/recyclerview/RecyclerViewItemTouchHelper$ItemStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/video/biz/videoplus/uiadapter/UIRecyclerAdapter$ICreateFooterListener;
    }
.end annotation


# static fields
.field private static final ISLOG:Z = false

.field private static final LAYOUT_FOOTER:I = -0x1

.field private static final LAYOUT_INTERVAL_SPACE:I = 0x1b


# instance fields
.field private isShowFooter:Z

.field private mContext:Landroid/content/Context;

.field private mFactory:Lcom/miui/video/biz/videoplus/app/factory/IUIFactory;

.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/miui/video/framework/base/ui/BaseUIEntity;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Lcom/miui/video/biz/videoplus/uiadapter/UIRecyclerAdapter$ICreateFooterListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/miui/video/biz/videoplus/app/factory/IUIFactory;)V
    .locals 0

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/uiadapter/UIRecyclerAdapter;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/miui/video/biz/videoplus/uiadapter/UIRecyclerAdapter;->mFactory:Lcom/miui/video/biz/videoplus/app/factory/IUIFactory;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/uiadapter/UIRecyclerAdapter;->mList:Ljava/util/List;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/miui/video/biz/videoplus/uiadapter/UIRecyclerAdapter;->isShowFooter:Z

    return-void
.end method


# virtual methods
.method public addItemData(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/miui/video/biz/videoplus/uiadapter/UIRecyclerAdapter;->notifyItemInserted(I)V

    return-void
.end method

.method public changeItemData(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/miui/video/biz/videoplus/uiadapter/UIRecyclerAdapter;->notifyItemChanged(I)V

    return-void
.end method

.method public getData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/miui/video/framework/base/ui/BaseUIEntity;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/uiadapter/UIRecyclerAdapter;->mList:Ljava/util/List;

    return-object v0
.end method

.method public getItem(I)Lcom/miui/video/framework/base/ui/BaseUIEntity;
    .locals 1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/uiadapter/UIRecyclerAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/uiadapter/UIRecyclerAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/video/framework/base/ui/BaseUIEntity;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    iget-boolean v0, p0, Lcom/miui/video/biz/videoplus/uiadapter/UIRecyclerAdapter;->isShowFooter:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/uiadapter/UIRecyclerAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/uiadapter/UIRecyclerAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getItemId(I)J
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/uiadapter/UIRecyclerAdapter;->mList:Ljava/util/List;

    if-eqz v0, :cond_1

    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/uiadapter/UIRecyclerAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/uiadapter/UIRecyclerAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/video/framework/base/ui/BaseUIEntity;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    int-to-long v0, p1

    return-wide v0

    :cond_1
    :goto_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    iget-boolean v0, p0, Lcom/miui/video/biz/videoplus/uiadapter/UIRecyclerAdapter;->isShowFooter:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/uiadapter/UIRecyclerAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/uiadapter/UIRecyclerAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/video/framework/base/ui/BaseUIEntity;

    invoke-virtual {p1}, Lcom/miui/video/framework/base/ui/BaseUIEntity;->getLayoutType()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1

    :cond_1
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/uiadapter/UIRecyclerAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/video/framework/base/ui/BaseUIEntity;

    invoke-virtual {p1}, Lcom/miui/video/framework/base/ui/BaseUIEntity;->getLayoutType()I

    move-result p1

    return p1
.end method

.method public hideFooter()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/video/biz/videoplus/uiadapter/UIRecyclerAdapter;->isShowFooter:Z

    return-void
.end method

.method public onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    return-void
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 2

    instance-of v0, p1, Lcom/miui/video/biz/videoplus/ui/UIRecyclerBase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/uiadapter/UIRecyclerAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_0

    check-cast p1, Lcom/miui/video/biz/videoplus/ui/UIRecyclerBase;

    const-string v0, "ACTION_SET_VALUE"

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/uiadapter/UIRecyclerAdapter;->mList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v0, p2, v1}, Lcom/miui/video/biz/videoplus/ui/UIRecyclerBase;->onUIRefresh(Ljava/lang/String;ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onChildDraw(I)V
    .locals 0

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 2

    iget-boolean v0, p0, Lcom/miui/video/biz/videoplus/uiadapter/UIRecyclerAdapter;->isShowFooter:Z

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    if-ne v0, p2, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/uiadapter/UIRecyclerAdapter;->mListener:Lcom/miui/video/biz/videoplus/uiadapter/UIRecyclerAdapter$ICreateFooterListener;

    if-eqz v0, :cond_0

    iget-object p2, p0, Lcom/miui/video/biz/videoplus/uiadapter/UIRecyclerAdapter;->mListener:Lcom/miui/video/biz/videoplus/uiadapter/UIRecyclerAdapter$ICreateFooterListener;

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/uiadapter/UIRecyclerAdapter;->mContext:Landroid/content/Context;

    invoke-interface {p2, v0, p1}, Lcom/miui/video/biz/videoplus/uiadapter/UIRecyclerAdapter$ICreateFooterListener;->onCreateFooterView(Landroid/content/Context;Landroid/view/ViewGroup;)Lcom/miui/video/biz/videoplus/ui/UIRecyclerBase;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/uiadapter/UIRecyclerAdapter;->mFactory:Lcom/miui/video/biz/videoplus/app/factory/IUIFactory;

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/uiadapter/UIRecyclerAdapter;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1, p2, p1}, Lcom/miui/video/biz/videoplus/app/factory/IUIFactory;->getUIRecyclerView(Landroid/content/Context;ILandroid/view/ViewGroup;)Lcom/miui/video/biz/videoplus/ui/UIRecyclerBase;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public onDetachedFromRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onDetachedFromRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    return-void
.end method

.method public onFailedToRecycleView(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z
    .locals 0

    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onFailedToRecycleView(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z

    move-result p1

    return p1
.end method

.method public onItemDismiss(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/uiadapter/UIRecyclerAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/miui/video/biz/videoplus/uiadapter/UIRecyclerAdapter;->notifyItemRemoved(I)V

    return-void
.end method

.method public onItemMove(II)V
    .locals 3

    if-ge p1, p2, :cond_0

    move v0, p1

    :goto_0
    if-ge v0, p2, :cond_1

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/uiadapter/UIRecyclerAdapter;->mList:Ljava/util/List;

    add-int/lit8 v2, v0, 0x1

    invoke-static {v1, v0, v2}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, p1

    :goto_1
    if-le v0, p2, :cond_1

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/uiadapter/UIRecyclerAdapter;->mList:Ljava/util/List;

    add-int/lit8 v2, v0, -0x1

    invoke-static {v1, v0, v2}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/miui/video/biz/videoplus/uiadapter/UIRecyclerAdapter;->notifyItemMoved(II)V

    return-void
.end method

.method public onViewAttachedToWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 1

    instance-of v0, p1, Lcom/miui/video/common/feed/recyclerview/IUIShowOrHideListener;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/miui/video/common/feed/recyclerview/IUIShowOrHideListener;

    invoke-interface {p1}, Lcom/miui/video/common/feed/recyclerview/IUIShowOrHideListener;->onUIAttached()V

    :cond_0
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 1

    instance-of v0, p1, Lcom/miui/video/common/feed/recyclerview/IUIShowOrHideListener;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/miui/video/common/feed/recyclerview/IUIShowOrHideListener;

    invoke-interface {p1}, Lcom/miui/video/common/feed/recyclerview/IUIShowOrHideListener;->onUIDetached()V

    :cond_0
    return-void
.end method

.method public onViewRecycled(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onViewRecycled(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/miui/video/biz/videoplus/ui/UIRecyclerBase;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/miui/video/biz/videoplus/ui/UIRecyclerBase;

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/ui/UIRecyclerBase;->onDestroyView()V

    :cond_0
    return-void
.end method

.method public removeItemData(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/miui/video/biz/videoplus/uiadapter/UIRecyclerAdapter;->notifyItemRemoved(I)V

    return-void
.end method

.method public removeItemFromList(I)V
    .locals 2

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/uiadapter/UIRecyclerAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/uiadapter/UIRecyclerAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/miui/video/biz/videoplus/uiadapter/UIRecyclerAdapter;->notifyItemRemoved(I)V

    :cond_0
    add-int/lit8 p1, p1, -0x1

    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/uiadapter/UIRecyclerAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/video/framework/base/ui/BaseUIEntity;

    invoke-virtual {v0}, Lcom/miui/video/framework/base/ui/BaseUIEntity;->getLayoutType()I

    move-result v0

    const/16 v1, 0x1b

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/uiadapter/UIRecyclerAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/miui/video/biz/videoplus/uiadapter/UIRecyclerAdapter;->notifyItemRemoved(I)V

    :cond_1
    return-void
.end method

.method public setData(Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/miui/video/framework/base/ui/BaseUIEntity;",
            ">;)Z"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/uiadapter/UIRecyclerAdapter;->mList:Ljava/util/List;

    if-eq v0, p1, :cond_1

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/uiadapter/UIRecyclerAdapter;->mList:Ljava/util/List;

    :cond_1
    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/uiadapter/UIRecyclerAdapter;->notifyDataSetChanged()V

    const/4 p1, 0x1

    return p1
.end method

.method public setOnCreateFooterListener(Lcom/miui/video/biz/videoplus/uiadapter/UIRecyclerAdapter$ICreateFooterListener;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/miui/video/biz/videoplus/uiadapter/UIRecyclerAdapter;->isShowFooter:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/uiadapter/UIRecyclerAdapter;->mListener:Lcom/miui/video/biz/videoplus/uiadapter/UIRecyclerAdapter$ICreateFooterListener;

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/video/biz/videoplus/uiadapter/UIRecyclerAdapter;->isShowFooter:Z

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/uiadapter/UIRecyclerAdapter;->mListener:Lcom/miui/video/biz/videoplus/uiadapter/UIRecyclerAdapter$ICreateFooterListener;

    :goto_0
    return-void
.end method

.method public setUIFactory(Lcom/miui/video/biz/videoplus/app/factory/IUIFactory;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/uiadapter/UIRecyclerAdapter;->mFactory:Lcom/miui/video/biz/videoplus/app/factory/IUIFactory;

    return-void
.end method

.method public showFooter()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/video/biz/videoplus/uiadapter/UIRecyclerAdapter;->isShowFooter:Z

    return-void
.end method
