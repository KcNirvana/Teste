.class public Lcom/miui/personalassistant/interfaces/ItemDragHelperCallback;
.super Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;
.source "ItemDragHelperCallback.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public clearView(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 2

    instance-of v1, p2, Lcom/miui/personalassistant/interfaces/OnDragVHListener;

    if-eqz v1, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/miui/personalassistant/interfaces/OnDragVHListener;

    invoke-interface {v0}, Lcom/miui/personalassistant/interfaces/OnDragVHListener;->onItemFinish()V

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->clearView(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method public getMovementFlags(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)I
    .locals 4

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v1

    instance-of v3, v1, Landroid/support/v7/widget/GridLayoutManager;

    if-nez v3, :cond_0

    instance-of v3, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager;

    if-eqz v3, :cond_1

    :cond_0
    const/16 v0, 0xf

    :goto_0
    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/miui/personalassistant/interfaces/ItemDragHelperCallback;->makeMovementFlags(II)I

    move-result v3

    return v3

    :cond_1
    const/4 v0, 0x3

    goto :goto_0
.end method

.method public isItemViewSwipeEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isLongPressDragEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onMove(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z
    .locals 3

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v1

    invoke-virtual {p3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v2

    if-eq v1, v2, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v1

    instance-of v1, v1, Lcom/miui/personalassistant/interfaces/OnItemMoveListener;

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/miui/personalassistant/interfaces/OnItemMoveListener;

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v1

    invoke-virtual {p3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/miui/personalassistant/interfaces/OnItemMoveListener;->onItemMove(II)V

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public onSelectedChanged(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 2

    if-eqz p2, :cond_0

    instance-of v1, p1, Lcom/miui/personalassistant/interfaces/OnDragVHListener;

    if-eqz v1, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/miui/personalassistant/interfaces/OnDragVHListener;

    invoke-interface {v0}, Lcom/miui/personalassistant/interfaces/OnDragVHListener;->onItemSelected()V

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->onSelectedChanged(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    return-void
.end method

.method public onSwiped(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    return-void
.end method
