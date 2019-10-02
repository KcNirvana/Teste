.class public Lcom/scwang/smartrefresh/layout/impl/RefreshContentWrapper;
.super Ljava/lang/Object;
.source "RefreshContentWrapper.java"

# interfaces
.implements Lcom/scwang/smartrefresh/layout/api/RefreshContent;
.implements Lcom/scwang/smartrefresh/layout/listener/CoordinatorLayoutListener;
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field protected mBoundaryAdapter:Lcom/scwang/smartrefresh/layout/impl/ScrollBoundaryDeciderAdapter;

.field protected mContentView:Landroid/view/View;

.field protected mEnableLoadMore:Z

.field protected mEnableRefresh:Z

.field protected mFixedFooter:Landroid/view/View;

.field protected mFixedHeader:Landroid/view/View;

.field protected mLastSpinner:I

.field protected mOriginalContentView:Landroid/view/View;

.field protected mScrollableView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/scwang/smartrefresh/layout/impl/RefreshContentWrapper;->mLastSpinner:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/scwang/smartrefresh/layout/impl/RefreshContentWrapper;->mEnableRefresh:Z

    iput-boolean v0, p0, Lcom/scwang/smartrefresh/layout/impl/RefreshContentWrapper;->mEnableLoadMore:Z

    new-instance v0, Lcom/scwang/smartrefresh/layout/impl/ScrollBoundaryDeciderAdapter;

    invoke-direct {v0}, Lcom/scwang/smartrefresh/layout/impl/ScrollBoundaryDeciderAdapter;-><init>()V

    iput-object v0, p0, Lcom/scwang/smartrefresh/layout/impl/RefreshContentWrapper;->mBoundaryAdapter:Lcom/scwang/smartrefresh/layout/impl/ScrollBoundaryDeciderAdapter;

    iput-object p1, p0, Lcom/scwang/smartrefresh/layout/impl/RefreshContentWrapper;->mScrollableView:Landroid/view/View;

    iput-object p1, p0, Lcom/scwang/smartrefresh/layout/impl/RefreshContentWrapper;->mOriginalContentView:Landroid/view/View;

    iput-object p1, p0, Lcom/scwang/smartrefresh/layout/impl/RefreshContentWrapper;->mContentView:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public canLoadMore()Z
    .locals 2

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/impl/RefreshContentWrapper;->mEnableLoadMore:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/impl/RefreshContentWrapper;->mBoundaryAdapter:Lcom/scwang/smartrefresh/layout/impl/ScrollBoundaryDeciderAdapter;

    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/impl/RefreshContentWrapper;->mContentView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/scwang/smartrefresh/layout/impl/ScrollBoundaryDeciderAdapter;->canLoadMore(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public canRefresh()Z
    .locals 2

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/impl/RefreshContentWrapper;->mEnableRefresh:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/impl/RefreshContentWrapper;->mBoundaryAdapter:Lcom/scwang/smartrefresh/layout/impl/ScrollBoundaryDeciderAdapter;

    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/impl/RefreshContentWrapper;->mContentView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/scwang/smartrefresh/layout/impl/ScrollBoundaryDeciderAdapter;->canRefresh(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected findScrollableView(Landroid/view/View;Lcom/scwang/smartrefresh/layout/api/RefreshKernel;)V
    .locals 3

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/impl/RefreshContentWrapper;->mContentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_0

    instance-of v2, v1, Landroid/support/v4/view/NestedScrollingParent;

    if-eqz v2, :cond_2

    instance-of v2, v1, Landroid/support/v4/view/NestedScrollingChild;

    if-nez v2, :cond_2

    :cond_0
    if-nez v1, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {p0, p1, v2}, Lcom/scwang/smartrefresh/layout/impl/RefreshContentWrapper;->findScrollableViewInternal(Landroid/view/View;Z)Landroid/view/View;

    move-result-object p1

    if-ne p1, v1, :cond_4

    :cond_2
    if-eqz v1, :cond_3

    iput-object v1, p0, Lcom/scwang/smartrefresh/layout/impl/RefreshContentWrapper;->mScrollableView:Landroid/view/View;

    :cond_3
    return-void

    :cond_4
    if-nez v0, :cond_5

    invoke-static {p1, p2, p0}, Lcom/scwang/smartrefresh/layout/util/DesignUtil;->checkCoordinatorLayout(Landroid/view/View;Lcom/scwang/smartrefresh/layout/api/RefreshKernel;Lcom/scwang/smartrefresh/layout/listener/CoordinatorLayoutListener;)V

    :cond_5
    move-object v1, p1

    goto :goto_0
.end method

.method protected findScrollableViewByPoint(Landroid/view/View;Landroid/graphics/PointF;Landroid/view/View;)Landroid/view/View;
    .locals 5

    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    if-eqz p2, :cond_3

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    :goto_0
    if-lez v0, :cond_3

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget v3, p2, Landroid/graphics/PointF;->x:F

    iget v4, p2, Landroid/graphics/PointF;->y:F

    invoke-static {p1, v2, v3, v4, v1}, Lcom/scwang/smartrefresh/layout/util/SmartUtil;->isTransformedTouchPointInView(Landroid/view/View;Landroid/view/View;FFLandroid/graphics/PointF;)Z

    move-result v3

    if-eqz v3, :cond_2

    instance-of p1, v2, Landroid/support/v4/view/ViewPager;

    if-nez p1, :cond_0

    invoke-static {v2}, Lcom/scwang/smartrefresh/layout/util/SmartUtil;->isContentView(Landroid/view/View;)Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    iget p1, v1, Landroid/graphics/PointF;->x:F

    iget v0, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p2, p1, v0}, Landroid/graphics/PointF;->offset(FF)V

    invoke-virtual {p0, v2, p2, p3}, Lcom/scwang/smartrefresh/layout/impl/RefreshContentWrapper;->findScrollableViewByPoint(Landroid/view/View;Landroid/graphics/PointF;Landroid/view/View;)Landroid/view/View;

    move-result-object v2

    iget p1, v1, Landroid/graphics/PointF;->x:F

    neg-float p1, p1

    iget p3, v1, Landroid/graphics/PointF;->y:F

    neg-float p3, p3

    invoke-virtual {p2, p1, p3}, Landroid/graphics/PointF;->offset(FF)V

    :cond_1
    return-object v2

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    return-object p3
.end method

.method protected findScrollableViewInternal(Landroid/view/View;Z)Landroid/view/View;
    .locals 6

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    move-object v1, v0

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_3

    if-nez v2, :cond_3

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    if-eqz v3, :cond_0

    if-nez p2, :cond_1

    if-eq v3, p1, :cond_2

    :cond_1
    invoke-static {v3}, Lcom/scwang/smartrefresh/layout/util/SmartUtil;->isContentView(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v2, v3

    goto :goto_0

    :cond_2
    instance-of v4, v3, Landroid/view/ViewGroup;

    if-eqz v4, :cond_0

    check-cast v3, Landroid/view/ViewGroup;

    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-ge v4, v5, :cond_0

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    if-nez v2, :cond_4

    goto :goto_2

    :cond_4
    move-object p1, v2

    :goto_2
    return-object p1
.end method

.method public getScrollableView()Landroid/view/View;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/impl/RefreshContentWrapper;->mScrollableView:Landroid/view/View;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/impl/RefreshContentWrapper;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method public moveSpinner(III)V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eq p2, v1, :cond_1

    iget-object v4, p0, Lcom/scwang/smartrefresh/layout/impl/RefreshContentWrapper;->mOriginalContentView:Landroid/view/View;

    invoke-virtual {v4, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_1

    if-lez p1, :cond_0

    int-to-float v4, p1

    invoke-virtual {p2, v4}, Landroid/view/View;->setTranslationY(F)V

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTranslationY()F

    move-result v4

    cmpl-float v4, v4, v3

    if-lez v4, :cond_1

    invoke-virtual {p2, v3}, Landroid/view/View;->setTranslationY(F)V

    :cond_1
    const/4 p2, 0x0

    :goto_0
    if-eq p3, v1, :cond_3

    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/impl/RefreshContentWrapper;->mOriginalContentView:Landroid/view/View;

    invoke-virtual {v1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    if-eqz p3, :cond_3

    if-gez p1, :cond_2

    int-to-float p2, p1

    invoke-virtual {p3, p2}, Landroid/view/View;->setTranslationY(F)V

    const/4 p2, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p3}, Landroid/view/View;->getTranslationY()F

    move-result v0

    cmpg-float v0, v0, v3

    if-gez v0, :cond_3

    invoke-virtual {p3, v3}, Landroid/view/View;->setTranslationY(F)V

    :cond_3
    :goto_1
    if-nez p2, :cond_4

    iget-object p2, p0, Lcom/scwang/smartrefresh/layout/impl/RefreshContentWrapper;->mOriginalContentView:Landroid/view/View;

    int-to-float p3, p1

    invoke-virtual {p2, p3}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_2

    :cond_4
    iget-object p2, p0, Lcom/scwang/smartrefresh/layout/impl/RefreshContentWrapper;->mOriginalContentView:Landroid/view/View;

    invoke-virtual {p2, v3}, Landroid/view/View;->setTranslationY(F)V

    :goto_2
    iget-object p2, p0, Lcom/scwang/smartrefresh/layout/impl/RefreshContentWrapper;->mFixedHeader:Landroid/view/View;

    if-eqz p2, :cond_5

    iget-object p2, p0, Lcom/scwang/smartrefresh/layout/impl/RefreshContentWrapper;->mFixedHeader:Landroid/view/View;

    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result p3

    int-to-float p3, p3

    invoke-virtual {p2, p3}, Landroid/view/View;->setTranslationY(F)V

    :cond_5
    iget-object p2, p0, Lcom/scwang/smartrefresh/layout/impl/RefreshContentWrapper;->mFixedFooter:Landroid/view/View;

    if-eqz p2, :cond_6

    iget-object p2, p0, Lcom/scwang/smartrefresh/layout/impl/RefreshContentWrapper;->mFixedFooter:Landroid/view/View;

    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setTranslationY(F)V

    :cond_6
    return-void
.end method

.method public onActionDown(Landroid/view/MotionEvent;)V
    .locals 2

    new-instance v0, Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-direct {v0, v1, p1}, Landroid/graphics/PointF;-><init>(FF)V

    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/impl/RefreshContentWrapper;->mContentView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p1

    neg-int p1, p1

    int-to-float p1, p1

    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/impl/RefreshContentWrapper;->mContentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, p1, v1}, Landroid/graphics/PointF;->offset(FF)V

    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/impl/RefreshContentWrapper;->mScrollableView:Landroid/view/View;

    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/impl/RefreshContentWrapper;->mContentView:Landroid/view/View;

    if-eq p1, v1, :cond_0

    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/impl/RefreshContentWrapper;->mContentView:Landroid/view/View;

    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/impl/RefreshContentWrapper;->mScrollableView:Landroid/view/View;

    invoke-virtual {p0, p1, v0, v1}, Lcom/scwang/smartrefresh/layout/impl/RefreshContentWrapper;->findScrollableViewByPoint(Landroid/view/View;Landroid/graphics/PointF;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/scwang/smartrefresh/layout/impl/RefreshContentWrapper;->mScrollableView:Landroid/view/View;

    :cond_0
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/impl/RefreshContentWrapper;->mScrollableView:Landroid/view/View;

    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/impl/RefreshContentWrapper;->mContentView:Landroid/view/View;

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/impl/RefreshContentWrapper;->mBoundaryAdapter:Lcom/scwang/smartrefresh/layout/impl/ScrollBoundaryDeciderAdapter;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/scwang/smartrefresh/layout/impl/ScrollBoundaryDeciderAdapter;->mActionEvent:Landroid/graphics/PointF;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/impl/RefreshContentWrapper;->mBoundaryAdapter:Lcom/scwang/smartrefresh/layout/impl/ScrollBoundaryDeciderAdapter;

    iput-object v0, p1, Lcom/scwang/smartrefresh/layout/impl/ScrollBoundaryDeciderAdapter;->mActionEvent:Landroid/graphics/PointF;

    :goto_0
    return-void
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :try_start_0
    iget v0, p0, Lcom/scwang/smartrefresh/layout/impl/RefreshContentWrapper;->mLastSpinner:I

    sub-int v0, p1, v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/impl/RefreshContentWrapper;->mScrollableView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getScaleY()F

    move-result v1

    mul-float v0, v0, v1

    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/impl/RefreshContentWrapper;->mScrollableView:Landroid/view/View;

    instance-of v1, v1, Landroid/widget/AbsListView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/impl/RefreshContentWrapper;->mScrollableView:Landroid/view/View;

    check-cast v1, Landroid/widget/AbsListView;

    float-to-int v0, v0

    invoke-static {v1, v0}, Lcom/scwang/smartrefresh/layout/util/SmartUtil;->scrollListBy(Landroid/widget/AbsListView;I)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/impl/RefreshContentWrapper;->mScrollableView:Landroid/view/View;

    const/4 v2, 0x0

    float-to-int v0, v0

    invoke-virtual {v1, v2, v0}, Landroid/view/View;->scrollBy(II)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    iput p1, p0, Lcom/scwang/smartrefresh/layout/impl/RefreshContentWrapper;->mLastSpinner:I

    return-void
.end method

.method public onCoordinatorUpdate(ZZ)V
    .locals 0

    iput-boolean p1, p0, Lcom/scwang/smartrefresh/layout/impl/RefreshContentWrapper;->mEnableRefresh:Z

    iput-boolean p2, p0, Lcom/scwang/smartrefresh/layout/impl/RefreshContentWrapper;->mEnableLoadMore:Z

    return-void
.end method

.method public scrollContentWhenFinished(I)Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    .locals 2

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/impl/RefreshContentWrapper;->mScrollableView:Landroid/view/View;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    if-gez p1, :cond_0

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/impl/RefreshContentWrapper;->mScrollableView:Landroid/view/View;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/scwang/smartrefresh/layout/util/SmartUtil;->canScrollVertically(Landroid/view/View;I)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    if-lez p1, :cond_2

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/impl/RefreshContentWrapper;->mScrollableView:Landroid/view/View;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/scwang/smartrefresh/layout/util/SmartUtil;->canScrollVertically(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iput p1, p0, Lcom/scwang/smartrefresh/layout/impl/RefreshContentWrapper;->mLastSpinner:I

    return-object p0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public setEnableLoadMoreWhenContentNotFull(Z)V
    .locals 1

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/impl/RefreshContentWrapper;->mBoundaryAdapter:Lcom/scwang/smartrefresh/layout/impl/ScrollBoundaryDeciderAdapter;

    iput-boolean p1, v0, Lcom/scwang/smartrefresh/layout/impl/ScrollBoundaryDeciderAdapter;->mEnableLoadMoreWhenContentNotFull:Z

    return-void
.end method

.method public setScrollBoundaryDecider(Lcom/scwang/smartrefresh/layout/api/ScrollBoundaryDecider;)V
    .locals 1

    instance-of v0, p1, Lcom/scwang/smartrefresh/layout/impl/ScrollBoundaryDeciderAdapter;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/scwang/smartrefresh/layout/impl/ScrollBoundaryDeciderAdapter;

    iput-object p1, p0, Lcom/scwang/smartrefresh/layout/impl/RefreshContentWrapper;->mBoundaryAdapter:Lcom/scwang/smartrefresh/layout/impl/ScrollBoundaryDeciderAdapter;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/impl/RefreshContentWrapper;->mBoundaryAdapter:Lcom/scwang/smartrefresh/layout/impl/ScrollBoundaryDeciderAdapter;

    iput-object p1, v0, Lcom/scwang/smartrefresh/layout/impl/ScrollBoundaryDeciderAdapter;->boundary:Lcom/scwang/smartrefresh/layout/api/ScrollBoundaryDecider;

    :goto_0
    return-void
.end method

.method public setUpComponent(Lcom/scwang/smartrefresh/layout/api/RefreshKernel;Landroid/view/View;Landroid/view/View;)V
    .locals 5

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/impl/RefreshContentWrapper;->mContentView:Landroid/view/View;

    invoke-virtual {p0, v0, p1}, Lcom/scwang/smartrefresh/layout/impl/RefreshContentWrapper;->findScrollableView(Landroid/view/View;Lcom/scwang/smartrefresh/layout/api/RefreshKernel;)V

    if-nez p2, :cond_0

    if-eqz p3, :cond_2

    :cond_0
    iput-object p2, p0, Lcom/scwang/smartrefresh/layout/impl/RefreshContentWrapper;->mFixedHeader:Landroid/view/View;

    iput-object p3, p0, Lcom/scwang/smartrefresh/layout/impl/RefreshContentWrapper;->mFixedFooter:Landroid/view/View;

    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/impl/RefreshContentWrapper;->mContentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-interface {p1}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->getRefreshLayout()Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    move-result-object v1

    invoke-interface {v1}, Lcom/scwang/smartrefresh/layout/api/RefreshLayout;->getLayout()Landroid/view/ViewGroup;

    move-result-object v1

    iget-object v2, p0, Lcom/scwang/smartrefresh/layout/impl/RefreshContentWrapper;->mContentView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/impl/RefreshContentWrapper;->mContentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget-object v2, p0, Lcom/scwang/smartrefresh/layout/impl/RefreshContentWrapper;->mContentView:Landroid/view/View;

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    invoke-interface {p1}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->getRefreshLayout()Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    move-result-object p1

    invoke-interface {p1}, Lcom/scwang/smartrefresh/layout/api/RefreshLayout;->getLayout()Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iput-object v0, p0, Lcom/scwang/smartrefresh/layout/impl/RefreshContentWrapper;->mContentView:Landroid/view/View;

    if-eqz p2, :cond_1

    const-string p1, "fixed-top"

    invoke-virtual {p2, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, p2}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v2

    invoke-virtual {v1, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    invoke-static {p2}, Lcom/scwang/smartrefresh/layout/util/SmartUtil;->measureViewHeight(Landroid/view/View;)I

    move-result v3

    iput v3, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    new-instance v3, Landroid/support/v4/widget/Space;

    iget-object v4, p0, Lcom/scwang/smartrefresh/layout/impl/RefreshContentWrapper;->mContentView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/support/v4/widget/Space;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v3, v2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_1
    if-eqz p3, :cond_2

    const-string p1, "fixed-bottom"

    invoke-virtual {p3, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    invoke-virtual {p3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {p3}, Lcom/scwang/smartrefresh/layout/util/SmartUtil;->measureViewHeight(Landroid/view/View;)I

    move-result v3

    iput v3, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    new-instance v3, Landroid/support/v4/widget/Space;

    iget-object v4, p0, Lcom/scwang/smartrefresh/layout/impl/RefreshContentWrapper;->mContentView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/support/v4/widget/Space;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, v3, v1, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    const/16 p1, 0x50

    iput p1, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {v0, p3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    return-void
.end method
