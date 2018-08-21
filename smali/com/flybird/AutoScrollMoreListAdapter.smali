.class public abstract Lcom/flybird/AutoScrollMoreListAdapter;
.super Landroid/widget/BaseAdapter;
.source "AutoScrollMoreListAdapter.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private listViewListener:Lcom/flybird/FBListView$FBListViewListener;

.field protected mContext:Landroid/content/Context;

.field protected mFootView:Landroid/view/View;

.field protected mIsLoading:Z

.field protected mListDatas:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/flybird/FBTable$Item;",
            ">;"
        }
    .end annotation
.end field

.field protected mListView:Landroid/widget/ListView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/ListView;Landroid/util/SparseArray;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/widget/ListView;",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/flybird/FBTable$Item;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v0, Lcom/flybird/AutoScrollMoreListAdapter$1;

    invoke-direct {v0, p0}, Lcom/flybird/AutoScrollMoreListAdapter$1;-><init>(Lcom/flybird/AutoScrollMoreListAdapter;)V

    iput-object v0, p0, Lcom/flybird/AutoScrollMoreListAdapter;->listViewListener:Lcom/flybird/FBListView$FBListViewListener;

    invoke-virtual {p0, p1, p2, p3}, Lcom/flybird/AutoScrollMoreListAdapter;->setListAndData(Landroid/content/Context;Landroid/widget/ListView;Landroid/util/SparseArray;)V

    invoke-virtual {p0}, Lcom/flybird/AutoScrollMoreListAdapter;->init()V

    return-void
.end method


# virtual methods
.method protected addFooter()V
    .locals 2

    iget-object v0, p0, Lcom/flybird/AutoScrollMoreListAdapter;->mFootView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flybird/AutoScrollMoreListAdapter;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/flybird/AutoScrollMoreListAdapter;->mFootView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/flybird/AutoScrollMoreListAdapter;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/flybird/AutoScrollMoreListAdapter;->mFootView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public clearData()V
    .locals 1

    iget-object v0, p0, Lcom/flybird/AutoScrollMoreListAdapter;->mListDatas:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flybird/AutoScrollMoreListAdapter;->mListDatas:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    invoke-virtual {p0}, Lcom/flybird/AutoScrollMoreListAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public disableLoadMore()V
    .locals 0

    invoke-virtual {p0}, Lcom/flybird/AutoScrollMoreListAdapter;->removeFooter()V

    return-void
.end method

.method public enableLoadMore()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flybird/AutoScrollMoreListAdapter;->mIsLoading:Z

    iget-object v0, p0, Lcom/flybird/AutoScrollMoreListAdapter;->mListView:Landroid/widget/ListView;

    check-cast v0, Lcom/flybird/FBListView;

    iget-object v1, p0, Lcom/flybird/AutoScrollMoreListAdapter;->listViewListener:Lcom/flybird/FBListView$FBListViewListener;

    invoke-virtual {v0, v1}, Lcom/flybird/FBListView;->setListener(Lcom/flybird/FBListView$FBListViewListener;)V

    return-void
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/flybird/AutoScrollMoreListAdapter;->mListDatas:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/flybird/AutoScrollMoreListAdapter;->mListDatas:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    goto :goto_0
.end method

.method protected abstract getFailView()Landroid/view/View;
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/flybird/AutoScrollMoreListAdapter;->mListDatas:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flybird/AutoScrollMoreListAdapter;->mListDatas:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    if-gez p1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/flybird/AutoScrollMoreListAdapter;->mListDatas:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method protected abstract getLoadingView()Landroid/view/View;
.end method

.method protected hideFooter()V
    .locals 2

    iget-object v0, p0, Lcom/flybird/AutoScrollMoreListAdapter;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/flybird/AutoScrollMoreListAdapter;->mFootView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    return-void
.end method

.method protected init()V
    .locals 1

    invoke-virtual {p0}, Lcom/flybird/AutoScrollMoreListAdapter;->getLoadingView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/flybird/AutoScrollMoreListAdapter;->mFootView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/flybird/AutoScrollMoreListAdapter;->enableLoadMore()V

    return-void
.end method

.method protected abstract itemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation
.end method

.method public notifyLoadMoreFinished()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flybird/AutoScrollMoreListAdapter;->mIsLoading:Z

    invoke-virtual {p0}, Lcom/flybird/AutoScrollMoreListAdapter;->hideFooter()V

    invoke-virtual {p0}, Lcom/flybird/AutoScrollMoreListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method protected abstract onAutoLoadMore()Z
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    invoke-virtual/range {p0 .. p5}, Lcom/flybird/AutoScrollMoreListAdapter;->itemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method

.method protected abstract onRetry()V
.end method

.method protected removeFooter()V
    .locals 2

    iget-object v0, p0, Lcom/flybird/AutoScrollMoreListAdapter;->mFootView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flybird/AutoScrollMoreListAdapter;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/flybird/AutoScrollMoreListAdapter;->mFootView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    :cond_0
    return-void
.end method

.method public setListAndData(Landroid/content/Context;Landroid/widget/ListView;Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/widget/ListView;",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/flybird/FBTable$Item;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/flybird/AutoScrollMoreListAdapter;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/flybird/AutoScrollMoreListAdapter;->mListView:Landroid/widget/ListView;

    iput-object p3, p0, Lcom/flybird/AutoScrollMoreListAdapter;->mListDatas:Landroid/util/SparseArray;

    return-void
.end method

.method protected showFooter()V
    .locals 0

    invoke-virtual {p0}, Lcom/flybird/AutoScrollMoreListAdapter;->addFooter()V

    return-void
.end method
