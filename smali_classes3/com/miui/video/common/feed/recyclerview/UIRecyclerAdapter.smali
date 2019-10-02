.class public Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "UIRecyclerAdapter.java"

# interfaces
.implements Lcom/miui/video/common/feed/recyclerview/RecyclerViewItemTouchHelper$ItemStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter$ICreateFooterListener;
    }
.end annotation


# static fields
.field private static final ISLOG:Z = false

.field private static final LAYOUT_FOOTER:I = -0x1

.field private static final LAYOUT_INTERVAL_SPACE:I = 0x1b


# instance fields
.field private actionDelegateFactory:Lcom/miui/video/common/feed/architeture/action/ActionDelegateFactory;

.field private isShowFooter:Z

.field private mContext:Landroid/content/Context;

.field private mFactorys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/video/common/feed/recyclerview/IUIFactory;",
            ">;"
        }
    .end annotation
.end field

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

.field private mListener:Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter$ICreateFooterListener;

.field private mPageFlag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/miui/video/common/feed/recyclerview/IUIFactory;)V
    .locals 1

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter;->mFactorys:Ljava/util/List;

    const-string v0, ""

    iput-object v0, p0, Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter;->mPageFlag:Ljava/lang/String;

    iput-object p1, p0, Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter;->mContext:Landroid/content/Context;

    iget-object p1, p0, Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter;->mFactorys:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter;->mList:Ljava/util/List;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter;->isShowFooter:Z

    return-void
.end method


# virtual methods
.method public addData(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/miui/video/framework/base/ui/BaseUIEntity;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter;->mList:Ljava/util/List;

    move-object v1, p1

    check-cast v1, Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter;->notifyItemRangeInserted(II)V

    return-void
.end method

.method public addItemData(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter;->notifyItemInserted(I)V

    return-void
.end method

.method public addUIFactory(Lcom/miui/video/common/feed/recyclerview/IUIFactory;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter;->mFactorys:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/miui/video/common/feed/recyclerview/IUIFactory;->setLayoutTypeOffset(I)V

    iget-object v0, p0, Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter;->mFactorys:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public changeItemData(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter;->notifyItemChanged(I)V

    return-void
.end method

.method public getActionDelegateFactory()Lcom/miui/video/common/feed/architeture/action/ActionDelegateFactory;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter;->actionDelegateFactory:Lcom/miui/video/common/feed/architeture/action/ActionDelegateFactory;

    return-object v0
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

    iget-object v0, p0, Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter;->mList:Ljava/util/List;

    return-object v0
.end method

.method public getItem(I)Lcom/miui/video/framework/base/ui/BaseUIEntity;
    .locals 1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter;->mList:Ljava/util/List;

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

    iget-boolean v0, p0, Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter;->isShowFooter:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getItemId(I)J
    .locals 2

    iget-object v0, p0, Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter;->mList:Ljava/util/List;

    if-eqz v0, :cond_1

    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter;->mList:Ljava/util/List;

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

    iget-boolean v0, p0, Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter;->isShowFooter:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter;->mList:Ljava/util/List;

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
    iget-object v0, p0, Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/video/framework/base/ui/BaseUIEntity;

    invoke-virtual {p1}, Lcom/miui/video/framework/base/ui/BaseUIEntity;->getLayoutType()I

    move-result p1

    return p1
.end method

.method public getPageFlag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter;->mPageFlag:Ljava/lang/String;

    return-object v0
.end method

.method public getUIFactorys()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/video/common/feed/recyclerview/IUIFactory;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter;->mFactorys:Ljava/util/List;

    return-object v0
.end method

.method public hideFooter()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter;->isShowFooter:Z

    return-void
.end method

.method public onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    return-void
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 2

    instance-of v0, p1, Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_0

    check-cast p1, Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;

    invoke-virtual {p0}, Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter;->getActionDelegateFactory()Lcom/miui/video/common/feed/architeture/action/ActionDelegateFactory;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;->setActionDelegateFactory(Lcom/miui/video/common/feed/architeture/action/ActionDelegateFactory;)V

    iget-object v0, p0, Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/video/framework/base/ui/BaseUIEntity;

    invoke-virtual {p1, p2, v0}, Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;->setData(ILcom/miui/video/framework/base/ui/BaseUIEntity;)V

    const-string v0, "ACTION_SET_VALUE"

    iget-object v1, p0, Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter;->mList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v0, p2, v1}, Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;->onUIRefresh(Ljava/lang/String;ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onChildDraw(I)V
    .locals 0

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 3

    iget-boolean v0, p0, Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter;->isShowFooter:Z

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    if-ne v0, p2, :cond_0

    iget-object v0, p0, Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter;->mListener:Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter$ICreateFooterListener;

    if-eqz v0, :cond_0

    iget-object p2, p0, Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter;->mListener:Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter$ICreateFooterListener;

    iget-object v0, p0, Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter;->mContext:Landroid/content/Context;

    invoke-interface {p2, v0, p1}, Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter$ICreateFooterListener;->onCreateFooterView(Landroid/content/Context;Landroid/view/ViewGroup;)Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;

    move-result-object p2

    move-object v1, p2

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter;->mFactorys:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/video/common/feed/recyclerview/IUIFactory;

    iget-object v2, p0, Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter;->mContext:Landroid/content/Context;

    invoke-interface {v1, v2, p2, p1}, Lcom/miui/video/common/feed/recyclerview/IUIFactory;->getUIRecyclerView(Landroid/content/Context;ILandroid/view/ViewGroup;)Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;

    move-result-object v1

    if-eqz v1, :cond_1

    :cond_2
    :goto_0
    if-nez v1, :cond_4

    iget-object p2, p0, Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter;->mFactorys:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    instance-of p2, p2, Lcom/miui/video/framework/impl/IUIStyle;

    if-eqz p2, :cond_3

    new-instance v1, Lcom/miui/video/common/feed/ui/UICardUpdateBar;

    iget-object p2, p0, Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter;->mFactorys:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/video/framework/impl/IUIStyle;

    invoke-interface {v0}, Lcom/miui/video/framework/impl/IUIStyle;->getStyle()I

    move-result v0

    invoke-direct {v1, p2, p1, v0}, Lcom/miui/video/common/feed/ui/UICardUpdateBar;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;I)V

    goto :goto_1

    :cond_3
    new-instance v1, Lcom/miui/video/common/feed/ui/UICardUpdateBar;

    iget-object p2, p0, Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter;->mContext:Landroid/content/Context;

    const/4 v0, 0x1

    invoke-direct {v1, p2, p1, v0}, Lcom/miui/video/common/feed/ui/UICardUpdateBar;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;I)V

    :cond_4
    :goto_1
    return-object v1
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

    iget-object v0, p0, Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter;->notifyItemRemoved(I)V

    return-void
.end method

.method public onItemMove(II)V
    .locals 3

    if-ge p1, p2, :cond_0

    move v0, p1

    :goto_0
    if-ge v0, p2, :cond_1

    iget-object v1, p0, Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter;->mList:Ljava/util/List;

    add-int/lit8 v2, v0, 0x1

    invoke-static {v1, v0, v2}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, p1

    :goto_1
    if-le v0, p2, :cond_1

    iget-object v1, p0, Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter;->mList:Ljava/util/List;

    add-int/lit8 v2, v0, -0x1

    invoke-static {v1, v0, v2}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter;->notifyItemMoved(II)V

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

    instance-of v0, p1, Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;

    invoke-virtual {p1}, Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;->onDestroyView()V

    :cond_0
    return-void
.end method

.method public removeItemData(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter;->notifyItemRemoved(I)V

    return-void
.end method

.method public removeItemFromList(I)V
    .locals 2

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    iget-object v0, p0, Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter;->notifyItemRemoved(I)V

    :cond_0
    add-int/lit8 p1, p1, -0x1

    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/video/framework/base/ui/BaseUIEntity;

    invoke-virtual {v0}, Lcom/miui/video/framework/base/ui/BaseUIEntity;->getLayoutType()I

    move-result v0

    const/16 v1, 0x1b

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter;->notifyItemRemoved(I)V

    :cond_1
    return-void
.end method

.method public setActionDelegateFactory(Lcom/miui/video/common/feed/architeture/action/ActionDelegateFactory;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter;->actionDelegateFactory:Lcom/miui/video/common/feed/architeture/action/ActionDelegateFactory;

    return-void
.end method

.method public setData(Ljava/util/List;)Z
    .locals 2
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
    iget-object v0, p0, Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter;->mList:Ljava/util/List;

    if-eq v0, p1, :cond_1

    iput-object p1, p0, Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter;->mList:Ljava/util/List;

    :cond_1
    iget-object p1, p0, Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter;->mList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/video/framework/base/ui/BaseUIEntity;

    invoke-virtual {p0}, Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter;->getPageFlag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/video/framework/base/ui/BaseUIEntity;->setPageFlag(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter;->notifyDataSetChanged()V

    const/4 p1, 0x1

    return p1
.end method

.method public setOnCreateFooterListener(Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter$ICreateFooterListener;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter;->isShowFooter:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter;->mListener:Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter$ICreateFooterListener;

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter;->isShowFooter:Z

    iput-object p1, p0, Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter;->mListener:Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter$ICreateFooterListener;

    :goto_0
    return-void
.end method

.method public setPageFlag(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter;->mPageFlag:Ljava/lang/String;

    return-void
.end method

.method public setUIFactory(Lcom/miui/video/common/feed/recyclerview/IUIFactory;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter;->mFactorys:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter;->mFactorys:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public showFooter()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter;->isShowFooter:Z

    return-void
.end method
