.class public Lcom/miui/video/biz/ugc/widget/RefreshLayout;
.super Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;
.source "RefreshLayout.java"


# instance fields
.field private footer:Lcom/miui/video/biz/ugc/widget/UIRefreshFooter;

.field private header:Lcom/miui/video/biz/ugc/widget/UIRefreshHeader;

.field private vContent:Landroid/widget/FrameLayout;

.field private vLoading:Lcom/miui/video/common/feed/ui/UILoadingView;

.field private vRecyclerView:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/video/biz/ugc/widget/RefreshLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/video/biz/ugc/widget/RefreshLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0}, Lcom/miui/video/biz/ugc/widget/RefreshLayout;->initView()V

    return-void
.end method

.method private initView()V
    .locals 4

    new-instance v0, Lcom/miui/video/biz/ugc/widget/UIRefreshHeader;

    invoke-virtual {p0}, Lcom/miui/video/biz/ugc/widget/RefreshLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/video/biz/ugc/widget/UIRefreshHeader;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/video/biz/ugc/widget/RefreshLayout;->header:Lcom/miui/video/biz/ugc/widget/UIRefreshHeader;

    new-instance v0, Lcom/miui/video/biz/ugc/widget/UIRefreshFooter;

    invoke-virtual {p0}, Lcom/miui/video/biz/ugc/widget/RefreshLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/video/biz/ugc/widget/UIRefreshFooter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/video/biz/ugc/widget/RefreshLayout;->footer:Lcom/miui/video/biz/ugc/widget/UIRefreshFooter;

    invoke-virtual {p0}, Lcom/miui/video/biz/ugc/widget/RefreshLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/miui/video/biz/ugc/R$layout;->refresh_recyclerview:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/miui/video/biz/ugc/widget/RefreshLayout;->vContent:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/miui/video/biz/ugc/widget/RefreshLayout;->vContent:Landroid/widget/FrameLayout;

    sget v1, Lcom/miui/video/biz/ugc/R$id;->recyclerView:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/miui/video/biz/ugc/widget/RefreshLayout;->vRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, p0, Lcom/miui/video/biz/ugc/widget/RefreshLayout;->vContent:Landroid/widget/FrameLayout;

    sget v1, Lcom/miui/video/biz/ugc/R$id;->v_loading:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/video/common/feed/ui/UILoadingView;

    iput-object v0, p0, Lcom/miui/video/biz/ugc/widget/RefreshLayout;->vLoading:Lcom/miui/video/common/feed/ui/UILoadingView;

    iget-object v0, p0, Lcom/miui/video/biz/ugc/widget/RefreshLayout;->header:Lcom/miui/video/biz/ugc/widget/UIRefreshHeader;

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/ugc/widget/RefreshLayout;->setRefreshHeader(Lcom/scwang/smartrefresh/layout/api/RefreshHeader;)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    iget-object v0, p0, Lcom/miui/video/biz/ugc/widget/RefreshLayout;->vContent:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/ugc/widget/RefreshLayout;->setRefreshContent(Landroid/view/View;)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    iget-object v0, p0, Lcom/miui/video/biz/ugc/widget/RefreshLayout;->footer:Lcom/miui/video/biz/ugc/widget/UIRefreshFooter;

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/ugc/widget/RefreshLayout;->setRefreshFooter(Lcom/scwang/smartrefresh/layout/api/RefreshFooter;)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    const/high16 v0, 0x43480000    # 200.0f

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/ugc/widget/RefreshLayout;->setHeaderHeight(F)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    const/high16 v0, 0x42200000    # 40.0f

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/ugc/widget/RefreshLayout;->setFooterHeight(F)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    const/16 v0, 0x12c

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/ugc/widget/RefreshLayout;->setReboundDuration(I)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    const/high16 v0, 0x40000000    # 2.0f

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/ugc/widget/RefreshLayout;->setHeaderMaxDragRate(F)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    const v0, 0x3f333333    # 0.7f

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/ugc/widget/RefreshLayout;->setHeaderTriggerRate(F)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/ugc/widget/RefreshLayout;->setFooterTriggerRate(F)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/ugc/widget/RefreshLayout;->setEnableAutoLoadMore(Z)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    invoke-virtual {p0, v2}, Lcom/miui/video/biz/ugc/widget/RefreshLayout;->setEnableOverScrollBounce(Z)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/ugc/widget/RefreshLayout;->setEnableScrollContentWhenLoaded(Z)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/ugc/widget/RefreshLayout;->setEnableHeaderTranslationContent(Z)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/ugc/widget/RefreshLayout;->setEnableFooterTranslationContent(Z)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    invoke-virtual {p0, v2}, Lcom/miui/video/biz/ugc/widget/RefreshLayout;->setEnableLoadMoreWhenContentNotFull(Z)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    invoke-virtual {p0, v2}, Lcom/miui/video/biz/ugc/widget/RefreshLayout;->setDisableContentWhenRefresh(Z)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/ugc/widget/RefreshLayout;->setEnableFooterFollowWhenNoMoreData(Z)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    return-void
.end method


# virtual methods
.method public autoRefresh()Z
    .locals 3

    iget v0, p0, Lcom/miui/video/biz/ugc/widget/RefreshLayout;->mReboundDuration:I

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-super {p0, v1, v0, v2, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->autoRefresh(IIFZ)Z

    move-result v0

    return v0
.end method

.method public finishLoadMore()Lcom/scwang/smartrefresh/layout/api/RefreshLayout;
    .locals 1

    const/4 v0, 0x5

    invoke-super {p0, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->finishLoadMore(I)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    move-result-object v0

    return-object v0
.end method

.method public finishRefresh()Lcom/scwang/smartrefresh/layout/api/RefreshLayout;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/video/biz/ugc/widget/RefreshLayout;->resetNoMoreData()Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    iget-object v0, p0, Lcom/miui/video/biz/ugc/widget/RefreshLayout;->vRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/ugc/widget/RefreshLayout;->vRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/ugc/widget/RefreshLayout;->vRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_0
    invoke-super {p0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->finishRefresh()Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRecyclerView()Landroid/support/v7/widget/RecyclerView;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/ugc/widget/RefreshLayout;->vRecyclerView:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method public hideLoading()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/ugc/widget/RefreshLayout;->vRecyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/biz/ugc/widget/RefreshLayout;->vLoading:Lcom/miui/video/common/feed/ui/UILoadingView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/miui/video/common/feed/ui/UILoadingView;->setVisibility(I)V

    return-void
.end method

.method public setRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/ugc/widget/RefreshLayout;->vRecyclerView:Landroid/support/v7/widget/RecyclerView;

    return-void
.end method

.method public showLoading()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/ugc/widget/RefreshLayout;->vRecyclerView:Landroid/support/v7/widget/RecyclerView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/biz/ugc/widget/RefreshLayout;->vLoading:Lcom/miui/video/common/feed/ui/UILoadingView;

    invoke-virtual {v0}, Lcom/miui/video/common/feed/ui/UILoadingView;->showLoading()V

    return-void
.end method

.method public showRetry(Landroid/view/View$OnClickListener;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/ugc/widget/RefreshLayout;->vRecyclerView:Landroid/support/v7/widget/RecyclerView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/biz/ugc/widget/RefreshLayout;->vLoading:Lcom/miui/video/common/feed/ui/UILoadingView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/video/common/feed/ui/UILoadingView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/biz/ugc/widget/RefreshLayout;->vLoading:Lcom/miui/video/common/feed/ui/UILoadingView;

    invoke-virtual {v0, p1}, Lcom/miui/video/common/feed/ui/UILoadingView;->showDataEmptyOrNetworkError(Landroid/view/View$OnClickListener;)V

    return-void
.end method
