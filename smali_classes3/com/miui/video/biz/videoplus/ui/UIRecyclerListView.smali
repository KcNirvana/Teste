.class public Lcom/miui/video/biz/videoplus/ui/UIRecyclerListView;
.super Lcom/handmark/pulltorefresh/library/PullToRefreshBase;
.source "UIRecyclerListView.java"

# interfaces
.implements Lcom/miui/video/common/feed/recyclerview/IUIShowOrHideListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<",
        "Landroid/support/v7/widget/RecyclerView;",
        ">;",
        "Lcom/miui/video/common/feed/recyclerview/IUIShowOrHideListener;"
    }
.end annotation


# instance fields
.field private final eventOnScroll:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

.field private isGoOnScroll:Z

.field private mAutoReportStatistics:Z

.field private mOnInvisibleItemCountListener:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnInvisibleItemCountListener;

.field private mOnLastItemVisibleListener:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnLastItemVisibleListener;

.field private mScrollPosition:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/miui/video/biz/videoplus/ui/UIRecyclerListView;->mAutoReportStatistics:Z

    new-instance p1, Lcom/miui/video/biz/videoplus/ui/UIRecyclerListView$1;

    invoke-direct {p1, p0}, Lcom/miui/video/biz/videoplus/ui/UIRecyclerListView$1;-><init>(Lcom/miui/video/biz/videoplus/ui/UIRecyclerListView;)V

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/ui/UIRecyclerListView;->eventOnScroll:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/ui/UIRecyclerListView;->initViewsEvent()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/miui/video/biz/videoplus/ui/UIRecyclerListView;->mAutoReportStatistics:Z

    new-instance p1, Lcom/miui/video/biz/videoplus/ui/UIRecyclerListView$1;

    invoke-direct {p1, p0}, Lcom/miui/video/biz/videoplus/ui/UIRecyclerListView$1;-><init>(Lcom/miui/video/biz/videoplus/ui/UIRecyclerListView;)V

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/ui/UIRecyclerListView;->eventOnScroll:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/ui/UIRecyclerListView;->initViewsEvent()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;-><init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/miui/video/biz/videoplus/ui/UIRecyclerListView;->mAutoReportStatistics:Z

    new-instance p1, Lcom/miui/video/biz/videoplus/ui/UIRecyclerListView$1;

    invoke-direct {p1, p0}, Lcom/miui/video/biz/videoplus/ui/UIRecyclerListView$1;-><init>(Lcom/miui/video/biz/videoplus/ui/UIRecyclerListView;)V

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/ui/UIRecyclerListView;->eventOnScroll:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/ui/UIRecyclerListView;->initViewsEvent()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;-><init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/miui/video/biz/videoplus/ui/UIRecyclerListView;->mAutoReportStatistics:Z

    new-instance p1, Lcom/miui/video/biz/videoplus/ui/UIRecyclerListView$1;

    invoke-direct {p1, p0}, Lcom/miui/video/biz/videoplus/ui/UIRecyclerListView$1;-><init>(Lcom/miui/video/biz/videoplus/ui/UIRecyclerListView;)V

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/ui/UIRecyclerListView;->eventOnScroll:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/ui/UIRecyclerListView;->initViewsEvent()V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/video/biz/videoplus/ui/UIRecyclerListView;)Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnLastItemVisibleListener;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/videoplus/ui/UIRecyclerListView;->mOnLastItemVisibleListener:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnLastItemVisibleListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/video/biz/videoplus/ui/UIRecyclerListView;)Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnInvisibleItemCountListener;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/videoplus/ui/UIRecyclerListView;->mOnInvisibleItemCountListener:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnInvisibleItemCountListener;

    return-object p0
.end method

.method static synthetic access$200(Lcom/miui/video/biz/videoplus/ui/UIRecyclerListView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/video/biz/videoplus/ui/UIRecyclerListView;->isGoOnScroll:Z

    return p0
.end method

.method static synthetic access$202(Lcom/miui/video/biz/videoplus/ui/UIRecyclerListView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/video/biz/videoplus/ui/UIRecyclerListView;->isGoOnScroll:Z

    return p1
.end method

.method static synthetic access$300(Lcom/miui/video/biz/videoplus/ui/UIRecyclerListView;)I
    .locals 0

    iget p0, p0, Lcom/miui/video/biz/videoplus/ui/UIRecyclerListView;->mScrollPosition:I

    return p0
.end method

.method static synthetic access$400(Lcom/miui/video/biz/videoplus/ui/UIRecyclerListView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/video/biz/videoplus/ui/UIRecyclerListView;->runSmoothScrollToPosition(I)V

    return-void
.end method

.method private getShowViewPercent(Landroid/view/View;IIILcom/miui/video/framework/base/ui/BaseUIEntity;)Lcom/miui/video/framework/base/ui/BaseUIEntity;
    .locals 3

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    if-lez v0, :cond_3

    if-lez p2, :cond_3

    if-eqz p5, :cond_3

    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-static {}, Lcom/miui/video/common/library/utils/DeviceUtils;->getInstance()Lcom/miui/video/common/library/utils/DeviceUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/video/common/library/utils/DeviceUtils;->getScreenWidthPixels()I

    move-result v2

    if-lt v0, v2, :cond_0

    invoke-virtual {p5, v1}, Lcom/miui/video/framework/base/ui/BaseUIEntity;->setShowPercent(I)V

    return-object p5

    :cond_0
    const/16 v0, 0x64

    if-nez p3, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p2

    mul-int/lit8 p2, p2, 0x64

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    div-int/2addr p2, p1

    invoke-virtual {p5, p2}, Lcom/miui/video/framework/base/ui/BaseUIEntity;->setShowPercent(I)V

    goto :goto_0

    :cond_1
    add-int/lit8 p4, p4, -0x1

    if-ne p3, p4, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p3

    sub-int/2addr p3, p2

    mul-int/lit8 p3, p3, 0x64

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    div-int/2addr p3, p1

    sub-int/2addr v0, p3

    invoke-virtual {p5, v0}, Lcom/miui/video/framework/base/ui/BaseUIEntity;->setShowPercent(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p5, v0}, Lcom/miui/video/framework/base/ui/BaseUIEntity;->setShowPercent(I)V

    :cond_3
    :goto_0
    return-object p5
.end method

.method private runSmoothScrollToPosition(I)V
    .locals 4

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/ui/UIRecyclerListView;->getFirstVisiblePosition()I

    move-result v0

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/ui/UIRecyclerListView;->getLastVisiblePosition()I

    move-result v1

    if-gt p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/ui/UIRecyclerListView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    new-instance v1, Lcom/miui/video/common/feed/recyclerview/BaseSmoothScroller;

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/ui/UIRecyclerListView;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/miui/video/common/feed/recyclerview/BaseSmoothScroller$ScrollerSpeed;->SLOW:Lcom/miui/video/common/feed/recyclerview/BaseSmoothScroller$ScrollerSpeed;

    invoke-direct {v1, v2, v3, p1}, Lcom/miui/video/common/feed/recyclerview/BaseSmoothScroller;-><init>(Landroid/content/Context;Lcom/miui/video/common/feed/recyclerview/BaseSmoothScroller$ScrollerSpeed;I)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->startSmoothScroll(Landroid/support/v7/widget/RecyclerView$SmoothScroller;)V

    goto :goto_0

    :cond_0
    if-gt p1, v1, :cond_2

    sub-int/2addr p1, v0

    if-ltz p1, :cond_3

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/ui/UIRecyclerListView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v0

    if-ge p1, v0, :cond_3

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/ui/UIRecyclerListView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/ui/UIRecyclerListView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/support/v7/widget/RecyclerView;->smoothScrollBy(II)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/ui/UIRecyclerListView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->scrollToPosition(I)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/miui/video/biz/videoplus/ui/UIRecyclerListView;->isGoOnScroll:Z

    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public autoReportStatistics(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/video/biz/videoplus/ui/UIRecyclerListView;->mAutoReportStatistics:Z

    return-void
.end method

.method protected createRefreshableView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/support/v7/widget/RecyclerView;
    .locals 1

    new-instance v0, Landroid/support/v7/widget/RecyclerView;

    invoke-direct {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget p1, Lcom/miui/video/biz/videoplus/R$id;->recyclerview:I

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->setId(I)V

    return-object v0
.end method

.method protected bridge synthetic createRefreshableView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/miui/video/biz/videoplus/ui/UIRecyclerListView;->createRefreshableView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/support/v7/widget/RecyclerView;

    move-result-object p1

    return-object p1
.end method

.method public getFirstVisiblePosition()I
    .locals 2

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/ui/UIRecyclerListView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/ui/UIRecyclerListView;->getRefreshableView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public getLastVisiblePosition()I
    .locals 2

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/ui/UIRecyclerListView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/ui/UIRecyclerListView;->getRefreshableView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/ui/UIRecyclerListView;->getRefreshableView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public getPullToRefreshScrollDirection()Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;
    .locals 1

    sget-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;->VERTICAL:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;

    return-object v0
.end method

.method public initViewsEvent()V
    .locals 2

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/ui/UIRecyclerListView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/ui/UIRecyclerListView;->eventOnScroll:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    return-void
.end method

.method public isFirstItemVisible()Z
    .locals 4

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/ui/UIRecyclerListView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/ui/UIRecyclerListView;->getFirstVisiblePosition()I

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/ui/UIRecyclerListView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/ui/UIRecyclerListView;->getRefreshableView()Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->getTop()I

    move-result v3

    if-lt v0, v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_2
    return v2

    :cond_3
    :goto_1
    return v1
.end method

.method public isLastItemVisible()Z
    .locals 4

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/ui/UIRecyclerListView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/ui/UIRecyclerListView;->getLastVisiblePosition()I

    move-result v0

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/ui/UIRecyclerListView;->getRefreshableView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v2

    sub-int/2addr v2, v1

    const/4 v3, 0x0

    if-lt v0, v2, :cond_2

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/ui/UIRecyclerListView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/ui/UIRecyclerListView;->getRefreshableView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/ui/UIRecyclerListView;->getRefreshableView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getBottom()I

    move-result v2

    if-gt v0, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_2
    return v3

    :cond_3
    :goto_1
    return v1
.end method

.method protected isReadyForPullEnd()Z
    .locals 1

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/ui/UIRecyclerListView;->isLastItemVisible()Z

    move-result v0

    return v0
.end method

.method protected isReadyForPullStart()Z
    .locals 1

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/ui/UIRecyclerListView;->isFirstItemVisible()Z

    move-result v0

    return v0
.end method

.method public onDestory()V
    .locals 2

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/ui/UIRecyclerListView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method protected onPtrSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/ui/UIRecyclerListView;->onRefreshComplete()V

    return-void
.end method

.method public onUIAttached()V
    .locals 0

    return-void
.end method

.method public onUIDetached()V
    .locals 0

    return-void
.end method

.method public onUIHide()V
    .locals 5

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/ui/UIRecyclerListView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/ui/UIRecyclerListView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v3

    instance-of v4, v3, Lcom/miui/video/common/feed/recyclerview/IUIShowOrHideListener;

    if-eqz v4, :cond_0

    check-cast v3, Lcom/miui/video/common/feed/recyclerview/IUIShowOrHideListener;

    invoke-interface {v3}, Lcom/miui/video/common/feed/recyclerview/IUIShowOrHideListener;->onUIHide()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onUIShow()V
    .locals 11

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/ui/UIRecyclerListView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/ui/UIRecyclerListView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    instance-of v0, v0, Lcom/miui/video/biz/videoplus/uiadapter/UIRecyclerAdapter;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/ui/UIRecyclerListView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v1

    check-cast v1, Lcom/miui/video/biz/videoplus/uiadapter/UIRecyclerAdapter;

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/ui/UIRecyclerListView;->getFirstVisiblePosition()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v10

    :goto_0
    if-ge v3, v10, :cond_3

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v4

    instance-of v6, v4, Lcom/miui/video/common/feed/recyclerview/IUIShowOrHideListener;

    if-eqz v6, :cond_0

    check-cast v4, Lcom/miui/video/common/feed/recyclerview/IUIShowOrHideListener;

    invoke-interface {v4}, Lcom/miui/video/common/feed/recyclerview/IUIShowOrHideListener;->onUIShow()V

    goto :goto_1

    :cond_0
    invoke-static {}, Lcom/miui/video/framework/utils/statistics/StatisticsUtils;->getInstance()Lcom/miui/video/framework/utils/statistics/StatisticsUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/miui/video/framework/utils/statistics/StatisticsUtils;->isStatistics()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-boolean v4, p0, Lcom/miui/video/biz/videoplus/ui/UIRecyclerListView;->mAutoReportStatistics:Z

    if-nez v4, :cond_1

    return-void

    :cond_1
    add-int v4, v2, v3

    invoke-virtual {v1, v4}, Lcom/miui/video/biz/videoplus/uiadapter/UIRecyclerAdapter;->getItem(I)Lcom/miui/video/framework/base/ui/BaseUIEntity;

    move-result-object v9

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v6

    move-object v4, p0

    move v7, v3

    move v8, v10

    invoke-direct/range {v4 .. v9}, Lcom/miui/video/biz/videoplus/ui/UIRecyclerListView;->getShowViewPercent(Landroid/view/View;IIILcom/miui/video/framework/base/ui/BaseUIEntity;)Lcom/miui/video/framework/base/ui/BaseUIEntity;

    move-result-object v4

    invoke-static {}, Lcom/miui/video/framework/utils/statistics/StatisticsUtils;->getInstance()Lcom/miui/video/framework/utils/statistics/StatisticsUtils;

    move-result-object v5

    sget-object v6, Lcom/miui/video/framework/utils/statistics/StatisticsUtils$STATISTICS_ACTION;->ACTION_SHOW:Lcom/miui/video/framework/utils/statistics/StatisticsUtils$STATISTICS_ACTION;

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v4, v7}, Lcom/miui/video/framework/utils/statistics/StatisticsUtils;->addStatistics(Lcom/miui/video/framework/utils/statistics/StatisticsUtils$STATISTICS_ACTION;Ljava/lang/Object;Ljava/util/List;)V

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public scrollToPosition(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/ui/UIRecyclerListView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->scrollToPosition(I)V

    return-void
.end method

.method public setOnInvisibleItemCountListener(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnInvisibleItemCountListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/ui/UIRecyclerListView;->mOnInvisibleItemCountListener:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnInvisibleItemCountListener;

    return-void
.end method

.method public final setOnLastItemVisibleListener(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnLastItemVisibleListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/ui/UIRecyclerListView;->mOnLastItemVisibleListener:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnLastItemVisibleListener;

    return-void
.end method

.method public smoothScrollToPosition(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/ui/UIRecyclerListView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->stopScroll()V

    iput p1, p0, Lcom/miui/video/biz/videoplus/ui/UIRecyclerListView;->mScrollPosition:I

    invoke-direct {p0, p1}, Lcom/miui/video/biz/videoplus/ui/UIRecyclerListView;->runSmoothScrollToPosition(I)V

    return-void
.end method

.method public smoothScrollToTop()V
    .locals 2

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/ui/UIRecyclerListView;->getFirstVisiblePosition()I

    move-result v0

    const/16 v1, 0x1e

    if-le v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/ui/UIRecyclerListView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->scrollToPosition(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/ui/UIRecyclerListView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->smoothScrollToPosition(I)V

    return-void
.end method
