.class public Lcom/miui/personalassistant/ui/widget/PinnedHeaderListView;
.super Landroid/widget/ListView;
.source "PinnedHeaderListView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/personalassistant/ui/widget/PinnedHeaderListView$OnItemClickListener;,
        Lcom/miui/personalassistant/ui/widget/PinnedHeaderListView$PinnedSectionedHeaderAdapter;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/miui/personalassistant/ui/widget/PinnedHeaderListView$PinnedSectionedHeaderAdapter;

.field private mCurrentHeader:Landroid/view/View;

.field private mCurrentHeaderViewType:I

.field private mCurrentSection:I

.field private mHeaderOffset:F

.field private mHeightMode:I

.field private mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field private mShouldPin:Z

.field private mWidthMode:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput v1, p0, Lcom/miui/personalassistant/ui/widget/PinnedHeaderListView;->mCurrentHeaderViewType:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/personalassistant/ui/widget/PinnedHeaderListView;->mShouldPin:Z

    iput v1, p0, Lcom/miui/personalassistant/ui/widget/PinnedHeaderListView;->mCurrentSection:I

    invoke-super {p0, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v1, p0, Lcom/miui/personalassistant/ui/widget/PinnedHeaderListView;->mCurrentHeaderViewType:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/personalassistant/ui/widget/PinnedHeaderListView;->mShouldPin:Z

    iput v1, p0, Lcom/miui/personalassistant/ui/widget/PinnedHeaderListView;->mCurrentSection:I

    invoke-super {p0, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput v1, p0, Lcom/miui/personalassistant/ui/widget/PinnedHeaderListView;->mCurrentHeaderViewType:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/personalassistant/ui/widget/PinnedHeaderListView;->mShouldPin:Z

    iput v1, p0, Lcom/miui/personalassistant/ui/widget/PinnedHeaderListView;->mCurrentSection:I

    invoke-super {p0, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    return-void
.end method

.method private ensurePinnedHeaderLayout(Landroid/view/View;)V
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p1}, Landroid/view/View;->isLayoutRequested()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/widget/PinnedHeaderListView;->getMeasuredWidth()I

    move-result v3

    iget v4, p0, Lcom/miui/personalassistant/ui/widget/PinnedHeaderListView;->mWidthMode:I

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_1

    iget v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v3, :cond_1

    iget v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    :goto_0
    invoke-virtual {p1, v2, v0}, Landroid/view/View;->measure(II)V

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {p1, v5, v5, v3, v4}, Landroid/view/View;->layout(IIII)V

    :cond_0
    return-void

    :cond_1
    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    goto :goto_0
.end method

.method private getSectionHeaderView(ILandroid/view/View;)Landroid/view/View;
    .locals 3

    iget v2, p0, Lcom/miui/personalassistant/ui/widget/PinnedHeaderListView;->mCurrentSection:I

    if-ne p1, v2, :cond_0

    if-nez p2, :cond_2

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iget-object v2, p0, Lcom/miui/personalassistant/ui/widget/PinnedHeaderListView;->mAdapter:Lcom/miui/personalassistant/ui/widget/PinnedHeaderListView$PinnedSectionedHeaderAdapter;

    invoke-interface {v2, p1, p2, p0}, Lcom/miui/personalassistant/ui/widget/PinnedHeaderListView$PinnedSectionedHeaderAdapter;->getSectionHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    if-eqz v0, :cond_1

    invoke-direct {p0, v1}, Lcom/miui/personalassistant/ui/widget/PinnedHeaderListView;->ensurePinnedHeaderLayout(Landroid/view/View;)V

    iput p1, p0, Lcom/miui/personalassistant/ui/widget/PinnedHeaderListView;->mCurrentSection:I

    :cond_1
    return-object v1

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    iget-object v1, p0, Lcom/miui/personalassistant/ui/widget/PinnedHeaderListView;->mAdapter:Lcom/miui/personalassistant/ui/widget/PinnedHeaderListView$PinnedSectionedHeaderAdapter;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/miui/personalassistant/ui/widget/PinnedHeaderListView;->mShouldPin:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/personalassistant/ui/widget/PinnedHeaderListView;->mCurrentHeader:Landroid/view/View;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    const/4 v1, 0x0

    iget v2, p0, Lcom/miui/personalassistant/ui/widget/PinnedHeaderListView;->mHeaderOffset:F

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/widget/PinnedHeaderListView;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/miui/personalassistant/ui/widget/PinnedHeaderListView;->mCurrentHeader:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p1, v3, v3, v1, v2}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    iget-object v1, p0, Lcom/miui/personalassistant/ui/widget/PinnedHeaderListView;->mCurrentHeader:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->onMeasure(II)V

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    iput v0, p0, Lcom/miui/personalassistant/ui/widget/PinnedHeaderListView;->mWidthMode:I

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    iput v0, p0, Lcom/miui/personalassistant/ui/widget/PinnedHeaderListView;->mHeightMode:I

    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 10

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x0

    iget-object v7, p0, Lcom/miui/personalassistant/ui/widget/PinnedHeaderListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/miui/personalassistant/ui/widget/PinnedHeaderListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v7, p1, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    :cond_0
    iget-object v7, p0, Lcom/miui/personalassistant/ui/widget/PinnedHeaderListView;->mAdapter:Lcom/miui/personalassistant/ui/widget/PinnedHeaderListView$PinnedSectionedHeaderAdapter;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/miui/personalassistant/ui/widget/PinnedHeaderListView;->mAdapter:Lcom/miui/personalassistant/ui/widget/PinnedHeaderListView$PinnedSectionedHeaderAdapter;

    invoke-interface {v7}, Lcom/miui/personalassistant/ui/widget/PinnedHeaderListView$PinnedSectionedHeaderAdapter;->getCount()I

    move-result v7

    if-eqz v7, :cond_1

    iget-boolean v7, p0, Lcom/miui/personalassistant/ui/widget/PinnedHeaderListView;->mShouldPin:Z

    if-eqz v7, :cond_1

    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/widget/PinnedHeaderListView;->getHeaderViewsCount()I

    move-result v7

    if-ge p2, v7, :cond_3

    :cond_1
    iput-object v6, p0, Lcom/miui/personalassistant/ui/widget/PinnedHeaderListView;->mCurrentHeader:Landroid/view/View;

    iput v8, p0, Lcom/miui/personalassistant/ui/widget/PinnedHeaderListView;->mHeaderOffset:F

    move v2, p2

    :goto_0
    add-int v6, p2, p3

    if-ge v2, v6, :cond_8

    invoke-virtual {p0, v2}, Lcom/miui/personalassistant/ui/widget/PinnedHeaderListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/widget/PinnedHeaderListView;->getHeaderViewsCount()I

    move-result v7

    sub-int/2addr p2, v7

    iget-object v7, p0, Lcom/miui/personalassistant/ui/widget/PinnedHeaderListView;->mAdapter:Lcom/miui/personalassistant/ui/widget/PinnedHeaderListView$PinnedSectionedHeaderAdapter;

    invoke-interface {v7, p2}, Lcom/miui/personalassistant/ui/widget/PinnedHeaderListView$PinnedSectionedHeaderAdapter;->getSectionForPosition(I)I

    move-result v4

    iget-object v7, p0, Lcom/miui/personalassistant/ui/widget/PinnedHeaderListView;->mAdapter:Lcom/miui/personalassistant/ui/widget/PinnedHeaderListView$PinnedSectionedHeaderAdapter;

    invoke-interface {v7, v4}, Lcom/miui/personalassistant/ui/widget/PinnedHeaderListView$PinnedSectionedHeaderAdapter;->getSectionHeaderViewType(I)I

    move-result v5

    iget v7, p0, Lcom/miui/personalassistant/ui/widget/PinnedHeaderListView;->mCurrentHeaderViewType:I

    if-eq v7, v5, :cond_5

    :goto_1
    invoke-direct {p0, v4, v6}, Lcom/miui/personalassistant/ui/widget/PinnedHeaderListView;->getSectionHeaderView(ILandroid/view/View;)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/miui/personalassistant/ui/widget/PinnedHeaderListView;->mCurrentHeader:Landroid/view/View;

    iget-object v6, p0, Lcom/miui/personalassistant/ui/widget/PinnedHeaderListView;->mCurrentHeader:Landroid/view/View;

    invoke-direct {p0, v6}, Lcom/miui/personalassistant/ui/widget/PinnedHeaderListView;->ensurePinnedHeaderLayout(Landroid/view/View;)V

    iput v5, p0, Lcom/miui/personalassistant/ui/widget/PinnedHeaderListView;->mCurrentHeaderViewType:I

    iput v8, p0, Lcom/miui/personalassistant/ui/widget/PinnedHeaderListView;->mHeaderOffset:F

    move v2, p2

    :goto_2
    add-int v6, p2, p3

    if-ge v2, v6, :cond_7

    iget-object v6, p0, Lcom/miui/personalassistant/ui/widget/PinnedHeaderListView;->mAdapter:Lcom/miui/personalassistant/ui/widget/PinnedHeaderListView$PinnedSectionedHeaderAdapter;

    invoke-interface {v6, v2}, Lcom/miui/personalassistant/ui/widget/PinnedHeaderListView$PinnedSectionedHeaderAdapter;->isSectionHeader(I)Z

    move-result v6

    if-eqz v6, :cond_4

    sub-int v6, v2, p2

    invoke-virtual {p0, v6}, Lcom/miui/personalassistant/ui/widget/PinnedHeaderListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v6

    int-to-float v1, v6

    iget-object v6, p0, Lcom/miui/personalassistant/ui/widget/PinnedHeaderListView;->mCurrentHeader:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    int-to-float v3, v6

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    cmpl-float v6, v3, v1

    if-ltz v6, :cond_6

    cmpl-float v6, v1, v8

    if-lez v6, :cond_6

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v6

    int-to-float v6, v6

    sub-float v6, v1, v6

    iput v6, p0, Lcom/miui/personalassistant/ui/widget/PinnedHeaderListView;->mHeaderOffset:F

    :cond_4
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    iget-object v6, p0, Lcom/miui/personalassistant/ui/widget/PinnedHeaderListView;->mCurrentHeader:Landroid/view/View;

    goto :goto_1

    :cond_6
    cmpg-float v6, v1, v8

    if-gtz v6, :cond_4

    const/4 v6, 0x4

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    :cond_7
    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/widget/PinnedHeaderListView;->invalidate()V

    :cond_8
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/ui/widget/PinnedHeaderListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/ui/widget/PinnedHeaderListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p1, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    :cond_0
    return-void
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lcom/miui/personalassistant/ui/widget/PinnedHeaderListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/personalassistant/ui/widget/PinnedHeaderListView;->mCurrentHeader:Landroid/view/View;

    move-object v0, p1

    check-cast v0, Lcom/miui/personalassistant/ui/widget/PinnedHeaderListView$PinnedSectionedHeaderAdapter;

    iput-object v0, p0, Lcom/miui/personalassistant/ui/widget/PinnedHeaderListView;->mAdapter:Lcom/miui/personalassistant/ui/widget/PinnedHeaderListView$PinnedSectionedHeaderAdapter;

    invoke-super {p0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setOnItemClickListener(Lcom/miui/personalassistant/ui/widget/PinnedHeaderListView$OnItemClickListener;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method public setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/ui/widget/PinnedHeaderListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    return-void
.end method

.method public setPinHeaders(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/personalassistant/ui/widget/PinnedHeaderListView;->mShouldPin:Z

    return-void
.end method
