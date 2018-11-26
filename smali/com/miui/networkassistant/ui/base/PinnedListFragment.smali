.class public abstract Lcom/miui/networkassistant/ui/base/PinnedListFragment;
.super Lcom/miui/common/a/a/k;
.source ""


# instance fields
.field protected mAdapter:Lcom/miui/networkassistant/ui/adapter/PinnedListAdapter;

.field protected mEmptyView:Landroid/widget/TextView;

.field protected mList:Lcom/miui/common/expandableview/PinnedHeaderListView;

.field protected mSearchActionMode:Lmiui/view/SearchActionMode;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/common/a/a/k;-><init>()V

    return-void
.end method


# virtual methods
.method public exitSearchMode()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/PinnedListFragment;->mSearchActionMode:Lmiui/view/SearchActionMode;

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/miui/networkassistant/ui/base/PinnedListFragment;->mSearchActionMode:Lmiui/view/SearchActionMode;

    :cond_0
    return-void
.end method

.method public getListView()Lcom/miui/common/expandableview/PinnedHeaderListView;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/PinnedListFragment;->mList:Lcom/miui/common/expandableview/PinnedHeaderListView;

    return-object v0
.end method

.method public hideLoadingView()V
    .locals 2

    invoke-super {p0}, Lcom/miui/common/a/a/k;->hideLoadingView()V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/PinnedListFragment;->mList:Lcom/miui/common/expandableview/PinnedHeaderListView;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/base/PinnedListFragment;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lcom/miui/common/expandableview/PinnedHeaderListView;->setEmptyView(Landroid/view/View;)V

    return-void
.end method

.method public isSearchMode()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/PinnedListFragment;->mSearchActionMode:Lmiui/view/SearchActionMode;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract onCreateFooterView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method protected abstract onCreateHeaderView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method protected abstract onCreateListAdapter()Lcom/miui/networkassistant/ui/adapter/PinnedListAdapter;
.end method

.method protected onCreateView2(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V
    .locals 3

    const v0, 0x7f0a01bf

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/base/PinnedListFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0, p1, v0}, Lcom/miui/networkassistant/ui/base/PinnedListFragment;->onCreateHeaderView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_0
    const v0, 0x7f0a01c0

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/base/PinnedListFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0, p1, p2}, Lcom/miui/networkassistant/ui/base/PinnedListFragment;->onCreateFooterView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_1
    const v0, 0x7f0a00ad

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/base/PinnedListFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/common/expandableview/PinnedHeaderListView;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/base/PinnedListFragment;->mList:Lcom/miui/common/expandableview/PinnedHeaderListView;

    const v0, 0x1020004

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/base/PinnedListFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/base/PinnedListFragment;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/base/PinnedListFragment;->onCreateListAdapter()Lcom/miui/networkassistant/ui/adapter/PinnedListAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/base/PinnedListFragment;->mAdapter:Lcom/miui/networkassistant/ui/adapter/PinnedListAdapter;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/PinnedListFragment;->mList:Lcom/miui/common/expandableview/PinnedHeaderListView;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/base/PinnedListFragment;->mAdapter:Lcom/miui/networkassistant/ui/adapter/PinnedListAdapter;

    invoke-virtual {v0, v1}, Lcom/miui/common/expandableview/PinnedHeaderListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/PinnedListFragment;->mList:Lcom/miui/common/expandableview/PinnedHeaderListView;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/base/PinnedListFragment;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lcom/miui/common/expandableview/PinnedHeaderListView;->setEmptyView(Landroid/view/View;)V

    return-void
.end method

.method protected onCreateViewLayout()I
    .locals 1

    const v0, 0x7f030094

    return v0
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Lcom/miui/common/a/a/k;->onPause()V

    invoke-static {}, Lcom/miui/analytics/AnalyticsUtil;->recordPageEnd()V

    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Lcom/miui/common/a/a/k;->onResume()V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/PinnedListFragment;->mAppContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/base/PinnedListFragment;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/analytics/AnalyticsUtil;->recordPageStart(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public setEmptyImage(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/PinnedListFragment;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v0, v1, p1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setEmptyText(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/PinnedListFragment;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public setEmptyText(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/PinnedListFragment;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public showEmptyView()V
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/PinnedListFragment;->mEmptyView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public showLoadingView()V
    .locals 2

    invoke-super {p0}, Lcom/miui/common/a/a/k;->showLoadingView()V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/PinnedListFragment;->mList:Lcom/miui/common/expandableview/PinnedHeaderListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/common/expandableview/PinnedHeaderListView;->setEmptyView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/PinnedListFragment;->mEmptyView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public showLoadingView(Z)V
    .locals 2

    invoke-super {p0, p1}, Lcom/miui/common/a/a/k;->showLoadingView(Z)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/PinnedListFragment;->mList:Lcom/miui/common/expandableview/PinnedHeaderListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/common/expandableview/PinnedHeaderListView;->setEmptyView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/PinnedListFragment;->mEmptyView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public startSearchMode(Lmiui/view/SearchActionMode$Callback;)V
    .locals 1

    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/base/PinnedListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/base/PinnedListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lmiui/app/Activity;

    invoke-virtual {v0, p1}, Lmiui/app/Activity;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    check-cast v0, Lmiui/view/SearchActionMode;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/base/PinnedListFragment;->mSearchActionMode:Lmiui/view/SearchActionMode;

    :cond_0
    return-void
.end method
