.class public Lcom/miui/video/common/feed/UIRecyclerView;
.super Lcom/handmark/pulltorefresh/library/PullToRefreshBase;
.source "UIRecyclerView.java"

# interfaces
.implements Lcom/miui/video/common/feed/recyclerview/IUIShowOrHideListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/video/common/feed/UIRecyclerView$OnPreLoadMoreListener;,
        Lcom/miui/video/common/feed/UIRecyclerView$OnScrollEventListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<",
        "Landroid/support/v7/widget/RecyclerView;",
        ">;",
        "Lcom/miui/video/common/feed/recyclerview/IUIShowOrHideListener;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "com.miui.video.common.feed.UIRecyclerView"


# instance fields
.field private channel:Ljava/lang/String;

.field private final eventOnScroll:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

.field private isGoOnScroll:Z

.field private mOnLastItemVisibleListener:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnLastItemVisibleListener;

.field private mOnPreLoadMoreListener:Lcom/miui/video/common/feed/UIRecyclerView$OnPreLoadMoreListener;

.field private mOnScrollEventListener:Lcom/miui/video/common/feed/UIRecyclerView$OnScrollEventListener;

.field private mPreloadContentNum:I

.field private mPullMode:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

.field private mScrollPosition:I

.field private mStartToPreLoadMoreOffset:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x3

    iput p1, p0, Lcom/miui/video/common/feed/UIRecyclerView;->mPreloadContentNum:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/miui/video/common/feed/UIRecyclerView;->mStartToPreLoadMoreOffset:I

    sget-object p1, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->DISABLED:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    iput-object p1, p0, Lcom/miui/video/common/feed/UIRecyclerView;->mPullMode:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    new-instance p1, Lcom/miui/video/common/feed/UIRecyclerView$1;

    invoke-direct {p1, p0}, Lcom/miui/video/common/feed/UIRecyclerView$1;-><init>(Lcom/miui/video/common/feed/UIRecyclerView;)V

    iput-object p1, p0, Lcom/miui/video/common/feed/UIRecyclerView;->eventOnScroll:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x3

    iput p1, p0, Lcom/miui/video/common/feed/UIRecyclerView;->mPreloadContentNum:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/miui/video/common/feed/UIRecyclerView;->mStartToPreLoadMoreOffset:I

    sget-object p1, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->DISABLED:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    iput-object p1, p0, Lcom/miui/video/common/feed/UIRecyclerView;->mPullMode:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    new-instance p1, Lcom/miui/video/common/feed/UIRecyclerView$1;

    invoke-direct {p1, p0}, Lcom/miui/video/common/feed/UIRecyclerView$1;-><init>(Lcom/miui/video/common/feed/UIRecyclerView;)V

    iput-object p1, p0, Lcom/miui/video/common/feed/UIRecyclerView;->eventOnScroll:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;-><init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V

    const/4 p1, 0x3

    iput p1, p0, Lcom/miui/video/common/feed/UIRecyclerView;->mPreloadContentNum:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/miui/video/common/feed/UIRecyclerView;->mStartToPreLoadMoreOffset:I

    sget-object p1, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->DISABLED:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    iput-object p1, p0, Lcom/miui/video/common/feed/UIRecyclerView;->mPullMode:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    new-instance p1, Lcom/miui/video/common/feed/UIRecyclerView$1;

    invoke-direct {p1, p0}, Lcom/miui/video/common/feed/UIRecyclerView$1;-><init>(Lcom/miui/video/common/feed/UIRecyclerView;)V

    iput-object p1, p0, Lcom/miui/video/common/feed/UIRecyclerView;->eventOnScroll:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;-><init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle;)V

    const/4 p1, 0x3

    iput p1, p0, Lcom/miui/video/common/feed/UIRecyclerView;->mPreloadContentNum:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/miui/video/common/feed/UIRecyclerView;->mStartToPreLoadMoreOffset:I

    sget-object p1, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->DISABLED:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    iput-object p1, p0, Lcom/miui/video/common/feed/UIRecyclerView;->mPullMode:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    new-instance p1, Lcom/miui/video/common/feed/UIRecyclerView$1;

    invoke-direct {p1, p0}, Lcom/miui/video/common/feed/UIRecyclerView$1;-><init>(Lcom/miui/video/common/feed/UIRecyclerView;)V

    iput-object p1, p0, Lcom/miui/video/common/feed/UIRecyclerView;->eventOnScroll:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/video/common/feed/UIRecyclerView;)Lcom/miui/video/common/feed/UIRecyclerView$OnScrollEventListener;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/common/feed/UIRecyclerView;->mOnScrollEventListener:Lcom/miui/video/common/feed/UIRecyclerView$OnScrollEventListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/video/common/feed/UIRecyclerView;)Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnLastItemVisibleListener;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/common/feed/UIRecyclerView;->mOnLastItemVisibleListener:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnLastItemVisibleListener;

    return-object p0
.end method

.method static synthetic access$200(Lcom/miui/video/common/feed/UIRecyclerView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/video/common/feed/UIRecyclerView;->isGoOnScroll:Z

    return p0
.end method

.method static synthetic access$202(Lcom/miui/video/common/feed/UIRecyclerView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/video/common/feed/UIRecyclerView;->isGoOnScroll:Z

    return p1
.end method

.method static synthetic access$300(Lcom/miui/video/common/feed/UIRecyclerView;)I
    .locals 0

    iget p0, p0, Lcom/miui/video/common/feed/UIRecyclerView;->mScrollPosition:I

    return p0
.end method

.method static synthetic access$400(Lcom/miui/video/common/feed/UIRecyclerView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/video/common/feed/UIRecyclerView;->runSmoothScrollToPosition(I)V

    return-void
.end method

.method private getShowGridViewPercent(Landroid/view/View;IIILcom/miui/video/framework/base/ui/BaseUIEntity;)Lcom/miui/video/framework/base/ui/BaseUIEntity;
    .locals 2

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    if-lez v0, :cond_4

    if-lez p2, :cond_4

    if-eqz p5, :cond_4

    const/16 v0, 0x64

    if-eqz p3, :cond_3

    const/4 v1, 0x1

    if-ne p3, v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, p4, -0x1

    if-eq p3, v1, :cond_2

    add-int/lit8 p4, p4, -0x2

    if-ne p3, p4, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p5, v0}, Lcom/miui/video/framework/base/ui/BaseUIEntity;->setShowPercent(I)V

    goto :goto_2

    :cond_2
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p3

    sub-int/2addr p3, p2

    mul-int/lit8 p3, p3, 0x64

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    div-int/2addr p3, p1

    sub-int/2addr v0, p3

    invoke-virtual {p5, v0}, Lcom/miui/video/framework/base/ui/BaseUIEntity;->setShowPercent(I)V

    goto :goto_2

    :cond_3
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p2

    mul-int/lit8 p2, p2, 0x64

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    div-int/2addr p2, p1

    invoke-virtual {p5, p2}, Lcom/miui/video/framework/base/ui/BaseUIEntity;->setShowPercent(I)V

    :cond_4
    :goto_2
    return-object p5
.end method

.method private getShowViewPercent(Landroid/view/View;IIILcom/miui/video/framework/base/ui/BaseUIEntity;)Lcom/miui/video/framework/base/ui/BaseUIEntity;
    .locals 1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    if-lez v0, :cond_2

    if-lez p2, :cond_2

    if-eqz p5, :cond_2

    const/16 v0, 0x64

    if-nez p3, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p2

    mul-int/lit8 p2, p2, 0x64

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    div-int/2addr p2, p1

    invoke-virtual {p5, p2}, Lcom/miui/video/framework/base/ui/BaseUIEntity;->setShowPercent(I)V

    goto :goto_0

    :cond_0
    add-int/lit8 p4, p4, -0x1

    if-ne p3, p4, :cond_1

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

    :cond_1
    invoke-virtual {p5, v0}, Lcom/miui/video/framework/base/ui/BaseUIEntity;->setShowPercent(I)V

    :cond_2
    :goto_0
    return-object p5
.end method

.method private getShowViewWidthPercent(Landroid/view/View;IIILcom/miui/video/framework/base/ui/BaseUIEntity;)Lcom/miui/video/framework/base/ui/BaseUIEntity;
    .locals 1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    if-lez v0, :cond_2

    if-lez p2, :cond_2

    if-eqz p5, :cond_2

    const/16 v0, 0x64

    if-nez p3, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result p2

    mul-int/lit8 p2, p2, 0x64

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    div-int/2addr p2, p1

    invoke-virtual {p5, p2}, Lcom/miui/video/framework/base/ui/BaseUIEntity;->setShowPercent(I)V

    goto :goto_0

    :cond_0
    add-int/lit8 p4, p4, -0x1

    if-ne p3, p4, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result p3

    sub-int/2addr p3, p2

    mul-int/lit8 p3, p3, 0x64

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    div-int/2addr p3, p1

    sub-int/2addr v0, p3

    invoke-virtual {p5, v0}, Lcom/miui/video/framework/base/ui/BaseUIEntity;->setShowPercent(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p5, v0}, Lcom/miui/video/framework/base/ui/BaseUIEntity;->setShowPercent(I)V

    :cond_2
    :goto_0
    return-object p5
.end method

.method private preLoad()V
    .locals 9

    invoke-virtual {p0}, Lcom/miui/video/common/feed/UIRecyclerView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/miui/video/common/feed/UIRecyclerView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    instance-of v0, v0, Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter;

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/miui/video/common/feed/UIRecyclerView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter;

    iget v1, p0, Lcom/miui/video/common/feed/UIRecyclerView;->mPreloadContentNum:I

    if-lez v1, :cond_2

    invoke-virtual {p0}, Lcom/miui/video/common/feed/UIRecyclerView;->getLastVisiblePosition()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    iget v3, p0, Lcom/miui/video/common/feed/UIRecyclerView;->mPreloadContentNum:I

    if-ge v2, v3, :cond_2

    add-int v3, v1, v2

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v0}, Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter;->getItemCount()I

    move-result v4

    if-ge v3, v4, :cond_1

    invoke-virtual {v0, v3}, Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter;->getItem(I)Lcom/miui/video/framework/base/ui/BaseUIEntity;

    move-result-object v3

    instance-of v4, v3, Lcom/miui/video/common/feed/entity/FeedRowEntity;

    if-eqz v4, :cond_1

    if-eqz v3, :cond_1

    check-cast v3, Lcom/miui/video/common/feed/entity/FeedRowEntity;

    invoke-virtual {v3}, Lcom/miui/video/common/feed/entity/FeedRowEntity;->getList()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/video/common/feed/entity/TinyCardEntity;

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getImageUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/miui/video/common/feed/UIRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v5}, Lcom/miui/video/common/library/widget/glide/ImgUtils;->preload(Landroid/content/Context;Ljava/lang/String;)V

    const-string v6, "PreLoad Image"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " preload title : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "; img: "

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/miui/video/common/feed/UIRecyclerView;->mStartToPreLoadMoreOffset:I

    if-lez v1, :cond_4

    invoke-virtual {p0}, Lcom/miui/video/common/feed/UIRecyclerView;->getLastVisiblePosition()I

    move-result v1

    iget v2, p0, Lcom/miui/video/common/feed/UIRecyclerView;->mStartToPreLoadMoreOffset:I

    add-int/2addr v1, v2

    invoke-virtual {v0}, Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter;->getItemCount()I

    move-result v0

    if-le v1, v0, :cond_4

    iget-object v0, p0, Lcom/miui/video/common/feed/UIRecyclerView;->mOnPreLoadMoreListener:Lcom/miui/video/common/feed/UIRecyclerView$OnPreLoadMoreListener;

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/miui/video/common/feed/UIRecyclerView;->getPullMode()Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    move-result-object v0

    sget-object v1, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->PULL_FROM_END:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    if-eq v0, v1, :cond_3

    invoke-virtual {p0}, Lcom/miui/video/common/feed/UIRecyclerView;->getPullMode()Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    move-result-object v0

    sget-object v1, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->BOTH:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    if-ne v0, v1, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/miui/video/common/feed/UIRecyclerView;->mOnPreLoadMoreListener:Lcom/miui/video/common/feed/UIRecyclerView$OnPreLoadMoreListener;

    invoke-interface {v0}, Lcom/miui/video/common/feed/UIRecyclerView$OnPreLoadMoreListener;->onPreLoadMore()V

    :cond_4
    return-void
.end method

.method private runSmoothScrollToPosition(I)V
    .locals 4

    invoke-virtual {p0}, Lcom/miui/video/common/feed/UIRecyclerView;->getFirstVisiblePosition()I

    move-result v0

    invoke-virtual {p0}, Lcom/miui/video/common/feed/UIRecyclerView;->getLastVisiblePosition()I

    move-result v1

    if-gt p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/video/common/feed/UIRecyclerView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    new-instance v1, Lcom/miui/video/common/feed/recyclerview/BaseSmoothScroller;

    invoke-virtual {p0}, Lcom/miui/video/common/feed/UIRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/miui/video/common/feed/recyclerview/BaseSmoothScroller$ScrollerSpeed;->SLOW:Lcom/miui/video/common/feed/recyclerview/BaseSmoothScroller$ScrollerSpeed;

    invoke-direct {v1, v2, v3, p1}, Lcom/miui/video/common/feed/recyclerview/BaseSmoothScroller;-><init>(Landroid/content/Context;Lcom/miui/video/common/feed/recyclerview/BaseSmoothScroller$ScrollerSpeed;I)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->startSmoothScroll(Landroid/support/v7/widget/RecyclerView$SmoothScroller;)V

    goto :goto_0

    :cond_0
    if-gt p1, v1, :cond_1

    invoke-virtual {p0}, Lcom/miui/video/common/feed/UIRecyclerView;->getRefreshableView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView;

    sub-int/2addr p1, v0

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/miui/video/common/feed/UIRecyclerView;->smoothScrollBy(II)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/miui/video/common/feed/UIRecyclerView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->scrollToPosition(I)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/miui/video/common/feed/UIRecyclerView;->isGoOnScroll:Z

    :goto_0
    return-void
.end method


# virtual methods
.method public correctInitMode(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
    .locals 1

    sget-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->PULL_FROM_END:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    if-ne p1, v0, :cond_0

    sget-object p1, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->DISABLED:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    return-object p1

    :cond_0
    sget-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->BOTH:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    if-ne p1, v0, :cond_1

    sget-object p1, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->PULL_FROM_START:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    return-object p1

    :cond_1
    return-object p1
.end method

.method protected createRefreshableView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/support/v7/widget/RecyclerView;
    .locals 1

    new-instance v0, Landroid/support/v7/widget/RecyclerView;

    invoke-direct {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget p1, Lcom/miui/video/common/feed/R$id;->recyclerview:I

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->setId(I)V

    return-object v0
.end method

.method protected bridge synthetic createRefreshableView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/miui/video/common/feed/UIRecyclerView;->createRefreshableView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/support/v7/widget/RecyclerView;

    move-result-object p1

    return-object p1
.end method

.method public enableOnScrollListener(Z)V
    .locals 1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/miui/video/common/feed/UIRecyclerView;->getRefreshableView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/RecyclerView;

    iget-object v0, p0, Lcom/miui/video/common/feed/UIRecyclerView;->eventOnScroll:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->removeOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/miui/video/common/feed/UIRecyclerView;->getRefreshableView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/RecyclerView;

    iget-object v0, p0, Lcom/miui/video/common/feed/UIRecyclerView;->eventOnScroll:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    :goto_0
    return-void
.end method

.method public getFirstVisiblePosition()I
    .locals 2

    invoke-virtual {p0}, Lcom/miui/video/common/feed/UIRecyclerView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/video/common/feed/UIRecyclerView;->getRefreshableView()Landroid/view/View;

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

    invoke-virtual {p0}, Lcom/miui/video/common/feed/UIRecyclerView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p0}, Lcom/miui/video/common/feed/UIRecyclerView;->getRefreshableView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/video/common/feed/UIRecyclerView;->getRefreshableView()Landroid/view/View;

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

.method public getPullMode()Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/feed/UIRecyclerView;->mPullMode:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    return-object v0
.end method

.method public getPullToRefreshScrollDirection()Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;
    .locals 1

    sget-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;->VERTICAL:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;

    return-object v0
.end method

.method public isFirstItemVisible()Z
    .locals 4

    invoke-virtual {p0}, Lcom/miui/video/common/feed/UIRecyclerView;->getRefreshableView()Landroid/view/View;

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
    invoke-virtual {p0}, Lcom/miui/video/common/feed/UIRecyclerView;->getFirstVisiblePosition()I

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/miui/video/common/feed/UIRecyclerView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-virtual {p0}, Lcom/miui/video/common/feed/UIRecyclerView;->getRefreshableView()Landroid/view/View;

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

    invoke-virtual {p0}, Lcom/miui/video/common/feed/UIRecyclerView;->getRefreshableView()Landroid/view/View;

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
    invoke-virtual {p0}, Lcom/miui/video/common/feed/UIRecyclerView;->getLastVisiblePosition()I

    move-result v0

    invoke-virtual {p0}, Lcom/miui/video/common/feed/UIRecyclerView;->getRefreshableView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v2

    sub-int/2addr v2, v1

    const/4 v3, 0x0

    if-lt v0, v2, :cond_2

    invoke-virtual {p0}, Lcom/miui/video/common/feed/UIRecyclerView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p0}, Lcom/miui/video/common/feed/UIRecyclerView;->getRefreshableView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-virtual {p0}, Lcom/miui/video/common/feed/UIRecyclerView;->getRefreshableView()Landroid/view/View;

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

    invoke-virtual {p0}, Lcom/miui/video/common/feed/UIRecyclerView;->isLastItemVisible()Z

    move-result v0

    return v0
.end method

.method protected isReadyForPullStart()Z
    .locals 1

    invoke-virtual {p0}, Lcom/miui/video/common/feed/UIRecyclerView;->isFirstItemVisible()Z

    move-result v0

    return v0
.end method

.method public onDestory()V
    .locals 2

    invoke-virtual {p0}, Lcom/miui/video/common/feed/UIRecyclerView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public onFastToTop()V
    .locals 3

    new-instance v0, Lcom/miui/video/common/feed/UIRecyclerView$2;

    invoke-direct {v0, p0}, Lcom/miui/video/common/feed/UIRecyclerView$2;-><init>(Lcom/miui/video/common/feed/UIRecyclerView;)V

    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1, v2}, Lcom/miui/video/common/feed/UIRecyclerView;->postDelayed(Ljava/lang/Runnable;J)Z

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

    invoke-virtual {p0}, Lcom/miui/video/common/feed/UIRecyclerView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/miui/video/common/feed/UIRecyclerView;->getRefreshableView()Landroid/view/View;

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
    .locals 13

    invoke-virtual {p0}, Lcom/miui/video/common/feed/UIRecyclerView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/miui/video/common/feed/UIRecyclerView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    instance-of v0, v0, Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter;

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/miui/video/common/feed/UIRecyclerView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v1

    check-cast v1, Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter;

    invoke-virtual {p0}, Lcom/miui/video/common/feed/UIRecyclerView;->getFirstVisiblePosition()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v10

    :goto_0
    if-ge v3, v10, :cond_7

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v0, v11}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v4

    instance-of v5, v4, Lcom/miui/video/common/feed/recyclerview/IUIShowOrHideListener;

    if-eqz v5, :cond_0

    check-cast v4, Lcom/miui/video/common/feed/recyclerview/IUIShowOrHideListener;

    invoke-interface {v4}, Lcom/miui/video/common/feed/recyclerview/IUIShowOrHideListener;->onUIShow()V

    :cond_0
    invoke-static {}, Lcom/miui/video/framework/utils/statistics/StatisticsUtils;->getInstance()Lcom/miui/video/framework/utils/statistics/StatisticsUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/miui/video/framework/utils/statistics/StatisticsUtils;->isStatistics()Z

    move-result v4

    if-eqz v4, :cond_6

    add-int v12, v2, v3

    invoke-virtual {v1, v12}, Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter;->getItem(I)Lcom/miui/video/framework/base/ui/BaseUIEntity;

    move-result-object v9

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v6

    move-object v4, p0

    move-object v5, v11

    move v7, v3

    move v8, v10

    invoke-direct/range {v4 .. v9}, Lcom/miui/video/common/feed/UIRecyclerView;->getShowViewPercent(Landroid/view/View;IIILcom/miui/video/framework/base/ui/BaseUIEntity;)Lcom/miui/video/framework/base/ui/BaseUIEntity;

    move-result-object v9

    if-eqz v9, :cond_3

    invoke-virtual {v9}, Lcom/miui/video/framework/base/ui/BaseUIEntity;->getShowPercent()I

    move-result v4

    const/16 v5, 0x1e

    if-le v4, v5, :cond_3

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v6

    move-object v4, p0

    move-object v5, v11

    move v7, v3

    move v8, v10

    invoke-direct/range {v4 .. v9}, Lcom/miui/video/common/feed/UIRecyclerView;->getShowViewWidthPercent(Landroid/view/View;IIILcom/miui/video/framework/base/ui/BaseUIEntity;)Lcom/miui/video/framework/base/ui/BaseUIEntity;

    move-result-object v9

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v4

    instance-of v4, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager;

    if-eqz v4, :cond_2

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v4

    check-cast v4, Landroid/support/v7/widget/StaggeredGridLayoutManager;

    invoke-virtual {v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getSpanCount()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_2

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v6

    move-object v4, p0

    move-object v5, v11

    move v7, v3

    move v8, v10

    invoke-direct/range {v4 .. v9}, Lcom/miui/video/common/feed/UIRecyclerView;->getShowGridViewPercent(Landroid/view/View;IIILcom/miui/video/framework/base/ui/BaseUIEntity;)Lcom/miui/video/framework/base/ui/BaseUIEntity;

    move-result-object v9

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v6

    move-object v4, p0

    move-object v5, v11

    move v7, v3

    move v8, v10

    invoke-direct/range {v4 .. v9}, Lcom/miui/video/common/feed/UIRecyclerView;->getShowViewPercent(Landroid/view/View;IIILcom/miui/video/framework/base/ui/BaseUIEntity;)Lcom/miui/video/framework/base/ui/BaseUIEntity;

    move-result-object v9

    :cond_3
    :goto_1
    if-eqz v9, :cond_4

    iget-object v4, p0, Lcom/miui/video/common/feed/UIRecyclerView;->channel:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/miui/video/common/feed/UIRecyclerView;->channel:Ljava/lang/String;

    invoke-virtual {v9, v4}, Lcom/miui/video/framework/base/ui/BaseUIEntity;->setChannel(Ljava/lang/String;)V

    :cond_4
    invoke-static {}, Lcom/miui/video/framework/utils/statistics/StatisticsUtils;->getInstance()Lcom/miui/video/framework/utils/statistics/StatisticsUtils;

    move-result-object v4

    sget-object v5, Lcom/miui/video/framework/utils/statistics/StatisticsUtils$STATISTICS_ACTION;->ACTION_SHOW:Lcom/miui/video/framework/utils/statistics/StatisticsUtils$STATISTICS_ACTION;

    const/4 v6, 0x0

    invoke-virtual {v1}, Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter;->getPageFlag()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/miui/video/framework/utils/TxtUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_5

    const-string v7, ""

    goto :goto_2

    :cond_5
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter;->getPageFlag()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_2
    invoke-virtual {v4, v5, v9, v6, v7}, Lcom/miui/video/framework/utils/statistics/StatisticsUtils;->addStatistics(Lcom/miui/video/framework/utils/statistics/StatisticsUtils$STATISTICS_ACTION;Ljava/lang/Object;Ljava/util/List;Ljava/lang/String;)V

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_7
    invoke-direct {p0}, Lcom/miui/video/common/feed/UIRecyclerView;->preLoad()V

    return-void
.end method

.method public scrollToPosition(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/miui/video/common/feed/UIRecyclerView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->scrollToPosition(I)V

    return-void
.end method

.method public setChannel(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/common/feed/UIRecyclerView;->channel:Ljava/lang/String;

    return-void
.end method

.method public final setOnLastItemVisibleListener(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnLastItemVisibleListener;)V
    .locals 1

    iput-object p1, p0, Lcom/miui/video/common/feed/UIRecyclerView;->mOnLastItemVisibleListener:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnLastItemVisibleListener;

    iget-object p1, p0, Lcom/miui/video/common/feed/UIRecyclerView;->mOnLastItemVisibleListener:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnLastItemVisibleListener;

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/miui/video/common/feed/UIRecyclerView;->getRefreshableView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/RecyclerView;

    iget-object v0, p0, Lcom/miui/video/common/feed/UIRecyclerView;->eventOnScroll:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->removeOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/miui/video/common/feed/UIRecyclerView;->getRefreshableView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/RecyclerView;

    iget-object v0, p0, Lcom/miui/video/common/feed/UIRecyclerView;->eventOnScroll:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    :goto_0
    return-void
.end method

.method public setOnScrollEventListener(Lcom/miui/video/common/feed/UIRecyclerView$OnScrollEventListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/common/feed/UIRecyclerView;->mOnScrollEventListener:Lcom/miui/video/common/feed/UIRecyclerView$OnScrollEventListener;

    return-void
.end method

.method public setPreLoadContentNum(I)V
    .locals 0

    iput p1, p0, Lcom/miui/video/common/feed/UIRecyclerView;->mPreloadContentNum:I

    return-void
.end method

.method public setPreLoadMoreListener(Lcom/miui/video/common/feed/UIRecyclerView$OnPreLoadMoreListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/common/feed/UIRecyclerView;->mOnPreLoadMoreListener:Lcom/miui/video/common/feed/UIRecyclerView$OnPreLoadMoreListener;

    return-void
.end method

.method public setPullMode(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/common/feed/UIRecyclerView;->mPullMode:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {p0, p1}, Lcom/miui/video/common/feed/UIRecyclerView;->correctInitMode(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/miui/video/common/feed/UIRecyclerView;->setMode(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V

    return-void
.end method

.method public showHeaderLoading()V
    .locals 0

    invoke-virtual {p0}, Lcom/miui/video/common/feed/UIRecyclerView;->updateUIForMode()V

    invoke-virtual {p0}, Lcom/miui/video/common/feed/UIRecyclerView;->setRefreshing()V

    return-void
.end method

.method public smoothScrollBy(II)V
    .locals 1

    invoke-virtual {p0}, Lcom/miui/video/common/feed/UIRecyclerView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView;->smoothScrollBy(II)V

    return-void
.end method

.method public smoothScrollToPosition(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/miui/video/common/feed/UIRecyclerView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->stopScroll()V

    iput p1, p0, Lcom/miui/video/common/feed/UIRecyclerView;->mScrollPosition:I

    invoke-direct {p0, p1}, Lcom/miui/video/common/feed/UIRecyclerView;->runSmoothScrollToPosition(I)V

    return-void
.end method

.method public smoothScrollToTop()V
    .locals 2

    invoke-virtual {p0}, Lcom/miui/video/common/feed/UIRecyclerView;->getFirstVisiblePosition()I

    move-result v0

    const/16 v1, 0x1e

    if-le v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/miui/video/common/feed/UIRecyclerView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->scrollToPosition(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/miui/video/common/feed/UIRecyclerView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->smoothScrollToPosition(I)V

    return-void
.end method

.method public smoothScrollToTopPosition(I)V
    .locals 5

    invoke-virtual {p0}, Lcom/miui/video/common/feed/UIRecyclerView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    new-instance v1, Lcom/miui/video/common/feed/recyclerview/BaseSmoothScroller;

    invoke-virtual {p0}, Lcom/miui/video/common/feed/UIRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/miui/video/common/feed/recyclerview/BaseSmoothScroller$ScrollerSpeed;->SLOW:Lcom/miui/video/common/feed/recyclerview/BaseSmoothScroller$ScrollerSpeed;

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, p1, v4}, Lcom/miui/video/common/feed/recyclerview/BaseSmoothScroller;-><init>(Landroid/content/Context;Lcom/miui/video/common/feed/recyclerview/BaseSmoothScroller$ScrollerSpeed;IZ)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->startSmoothScroll(Landroid/support/v7/widget/RecyclerView$SmoothScroller;)V

    return-void
.end method

.method public startToLoadMoreOffset(I)V
    .locals 0

    iput p1, p0, Lcom/miui/video/common/feed/UIRecyclerView;->mStartToPreLoadMoreOffset:I

    return-void
.end method
