.class public Lcom/miui/video/common/feed/recyclerview/RecyclerViewItemTouchHelper$ItemTouchHelperCallback;
.super Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;
.source "RecyclerViewItemTouchHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/common/feed/recyclerview/RecyclerViewItemTouchHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ItemTouchHelperCallback"
.end annotation


# instance fields
.field private mItemStateChangeListener:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/video/common/feed/recyclerview/RecyclerViewItemTouchHelper$ItemStateChangeListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/video/common/feed/recyclerview/RecyclerViewItemTouchHelper$ItemTouchHelperCallback;->mItemStateChangeListener:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addItemStateChangeListener(Lcom/miui/video/common/feed/recyclerview/RecyclerViewItemTouchHelper$ItemStateChangeListener;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/feed/recyclerview/RecyclerViewItemTouchHelper$ItemTouchHelperCallback;->mItemStateChangeListener:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public clearView(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->clearView(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    instance-of p1, p2, Lcom/miui/video/common/feed/recyclerview/RecyclerViewItemTouchHelper$ItemTouchHelperViewHolder;

    if-eqz p1, :cond_0

    check-cast p2, Lcom/miui/video/common/feed/recyclerview/RecyclerViewItemTouchHelper$ItemTouchHelperViewHolder;

    invoke-interface {p2}, Lcom/miui/video/common/feed/recyclerview/RecyclerViewItemTouchHelper$ItemTouchHelperViewHolder;->onItemClear()V

    :cond_0
    return-void
.end method

.method public getMovementFlags(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)I
    .locals 0
    .param p1    # Landroid/support/v7/widget/RecyclerView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object p1

    instance-of p1, p1, Landroid/support/v7/widget/GridLayoutManager;

    if-eqz p1, :cond_0

    const/16 p1, 0xf

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/miui/video/common/feed/recyclerview/RecyclerViewItemTouchHelper$ItemTouchHelperCallback;->makeMovementFlags(II)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x3

    const/16 p2, 0x30

    invoke-static {p1, p2}, Lcom/miui/video/common/feed/recyclerview/RecyclerViewItemTouchHelper$ItemTouchHelperCallback;->makeMovementFlags(II)I

    move-result p1

    return p1
.end method

.method public isItemViewSwipeEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isLongPressDragEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onChildDraw(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;FFIZ)V
    .locals 0
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/support/v7/widget/RecyclerView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-super/range {p0 .. p7}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->onChildDraw(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;FFIZ)V

    iget-object p1, p0, Lcom/miui/video/common/feed/recyclerview/RecyclerViewItemTouchHelper$ItemTouchHelperCallback;->mItemStateChangeListener:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/common/feed/recyclerview/RecyclerViewItemTouchHelper$ItemTouchHelperCallback;->mItemStateChangeListener:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/miui/video/common/feed/recyclerview/RecyclerViewItemTouchHelper$ItemStateChangeListener;

    float-to-int p3, p5

    invoke-interface {p2, p3}, Lcom/miui/video/common/feed/recyclerview/RecyclerViewItemTouchHelper$ItemStateChangeListener;->onChildDraw(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onMove(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z
    .locals 3
    .param p1    # Landroid/support/v7/widget/RecyclerView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object p1, p0, Lcom/miui/video/common/feed/recyclerview/RecyclerViewItemTouchHelper$ItemTouchHelperCallback;->mItemStateChangeListener:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/common/feed/recyclerview/RecyclerViewItemTouchHelper$ItemTouchHelperCallback;->mItemStateChangeListener:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/video/common/feed/recyclerview/RecyclerViewItemTouchHelper$ItemStateChangeListener;

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v1

    invoke-virtual {p3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/miui/video/common/feed/recyclerview/RecyclerViewItemTouchHelper$ItemStateChangeListener;->onItemMove(II)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public onSelectedChanged(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 1

    if-eqz p2, :cond_0

    instance-of v0, p1, Lcom/miui/video/common/feed/recyclerview/RecyclerViewItemTouchHelper$ItemTouchHelperViewHolder;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/miui/video/common/feed/recyclerview/RecyclerViewItemTouchHelper$ItemTouchHelperViewHolder;

    invoke-interface {v0}, Lcom/miui/video/common/feed/recyclerview/RecyclerViewItemTouchHelper$ItemTouchHelperViewHolder;->onItemSelected()V

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->onSelectedChanged(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    return-void
.end method

.method public onSwiped(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 2
    .param p1    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object p2, p0, Lcom/miui/video/common/feed/recyclerview/RecyclerViewItemTouchHelper$ItemTouchHelperCallback;->mItemStateChangeListener:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_0

    iget-object p2, p0, Lcom/miui/video/common/feed/recyclerview/RecyclerViewItemTouchHelper$ItemTouchHelperCallback;->mItemStateChangeListener:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/video/common/feed/recyclerview/RecyclerViewItemTouchHelper$ItemStateChangeListener;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/miui/video/common/feed/recyclerview/RecyclerViewItemTouchHelper$ItemStateChangeListener;->onItemDismiss(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public removeItemStateChangeListener(Lcom/miui/video/common/feed/recyclerview/RecyclerViewItemTouchHelper$ItemStateChangeListener;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/feed/recyclerview/RecyclerViewItemTouchHelper$ItemTouchHelperCallback;->mItemStateChangeListener:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
