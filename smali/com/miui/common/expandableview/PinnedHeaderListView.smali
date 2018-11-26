.class public Lcom/miui/common/expandableview/PinnedHeaderListView;
.super Landroid/widget/ListView;
.source ""

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field private azA:I

.field private azB:Lcom/miui/common/expandableview/c;

.field private azC:Landroid/widget/AbsListView$OnScrollListener;

.field private azD:Z

.field private azE:I

.field private azv:Lcom/miui/common/expandableview/a;

.field private azw:Landroid/view/View;

.field private azx:I

.field private azy:I

.field private azz:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput v1, p0, Lcom/miui/common/expandableview/PinnedHeaderListView;->azx:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/common/expandableview/PinnedHeaderListView;->azD:Z

    iput v1, p0, Lcom/miui/common/expandableview/PinnedHeaderListView;->azy:I

    invoke-super {p0, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v1, p0, Lcom/miui/common/expandableview/PinnedHeaderListView;->azx:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/common/expandableview/PinnedHeaderListView;->azD:Z

    iput v1, p0, Lcom/miui/common/expandableview/PinnedHeaderListView;->azy:I

    invoke-super {p0, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput v1, p0, Lcom/miui/common/expandableview/PinnedHeaderListView;->azx:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/common/expandableview/PinnedHeaderListView;->azD:Z

    iput v1, p0, Lcom/miui/common/expandableview/PinnedHeaderListView;->azy:I

    invoke-super {p0, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    return-void
.end method

.method private aGB(Landroid/view/View;)V
    .locals 4

    const/4 v2, -0x2

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/view/View;->isLayoutRequested()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/miui/common/expandableview/PinnedHeaderListView;->getMeasuredWidth()I

    move-result v0

    iget v1, p0, Lcom/miui/common/expandableview/PinnedHeaderListView;->azE:I

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v2, :cond_2

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p1, v3, v3, v0, v1}, Landroid/view/View;->layout(IIII)V

    :cond_1
    return-void

    :cond_2
    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    goto :goto_0
.end method

.method private aGC(Landroid/view/View;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/miui/common/expandableview/PinnedHeaderListView;->aGG(Landroid/view/View;)Ljava/util/List;

    move-result-object v2

    const-string/jumbo v1, ""

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    if-nez v0, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    return-object v1
.end method

.method private aGE(ILandroid/view/View;)Landroid/view/View;
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/miui/common/expandableview/PinnedHeaderListView;->azy:I

    if-ne p1, v1, :cond_0

    if-nez p2, :cond_2

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/miui/common/expandableview/PinnedHeaderListView;->azv:Lcom/miui/common/expandableview/a;

    invoke-interface {v1, p1, p2, p0}, Lcom/miui/common/expandableview/a;->getSectionHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    if-eqz v0, :cond_1

    invoke-direct {p0, v1}, Lcom/miui/common/expandableview/PinnedHeaderListView;->aGB(Landroid/view/View;)V

    iput p1, p0, Lcom/miui/common/expandableview/PinnedHeaderListView;->azy:I

    :cond_1
    return-object v1

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private aGG(Landroid/view/View;)Ljava/util/List;
    .locals 3

    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    :try_start_0
    invoke-virtual {p0}, Lcom/miui/common/expandableview/PinnedHeaderListView;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityEvent;->recycle()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityEvent;->recycle()V

    throw v0
.end method


# virtual methods
.method public aGD()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/miui/common/expandableview/PinnedHeaderListView;->azw:Landroid/view/View;

    return-object v0
.end method

.method public aGF(Lcom/miui/common/expandableview/c;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/common/expandableview/PinnedHeaderListView;->azB:Lcom/miui/common/expandableview/c;

    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/miui/common/expandableview/PinnedHeaderListView;->azv:Lcom/miui/common/expandableview/a;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/common/expandableview/PinnedHeaderListView;->azD:Z

    xor-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/common/expandableview/PinnedHeaderListView;->azw:Landroid/view/View;

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    const/4 v1, 0x0

    iget v2, p0, Lcom/miui/common/expandableview/PinnedHeaderListView;->azz:F

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {p0}, Lcom/miui/common/expandableview/PinnedHeaderListView;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/miui/common/expandableview/PinnedHeaderListView;->azw:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p1, v3, v3, v1, v2}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    iget-object v1, p0, Lcom/miui/common/expandableview/PinnedHeaderListView;->azw:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->onMeasure(II)V

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    iput v0, p0, Lcom/miui/common/expandableview/PinnedHeaderListView;->azE:I

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    iput v0, p0, Lcom/miui/common/expandableview/PinnedHeaderListView;->azA:I

    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/miui/common/expandableview/PinnedHeaderListView;->azC:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/common/expandableview/PinnedHeaderListView;->azC:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v1, p1, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    :cond_0
    iget-object v1, p0, Lcom/miui/common/expandableview/PinnedHeaderListView;->azv:Lcom/miui/common/expandableview/a;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/common/expandableview/PinnedHeaderListView;->azv:Lcom/miui/common/expandableview/a;

    invoke-interface {v1}, Lcom/miui/common/expandableview/a;->getCount()I

    move-result v1

    if-nez v1, :cond_3

    :cond_1
    iput-object v0, p0, Lcom/miui/common/expandableview/PinnedHeaderListView;->azw:Landroid/view/View;

    iput v5, p0, Lcom/miui/common/expandableview/PinnedHeaderListView;->azz:F

    move v0, p2

    :goto_0
    add-int v1, p2, p3

    if-ge v0, v1, :cond_6

    invoke-virtual {p0, v0}, Lcom/miui/common/expandableview/PinnedHeaderListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    iget-boolean v1, p0, Lcom/miui/common/expandableview/PinnedHeaderListView;->azD:Z

    xor-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/miui/common/expandableview/PinnedHeaderListView;->getHeaderViewsCount()I

    move-result v1

    if-lt p2, v1, :cond_1

    invoke-virtual {p0}, Lcom/miui/common/expandableview/PinnedHeaderListView;->getHeaderViewsCount()I

    move-result v1

    sub-int v1, p2, v1

    iget-object v2, p0, Lcom/miui/common/expandableview/PinnedHeaderListView;->azv:Lcom/miui/common/expandableview/a;

    invoke-interface {v2, v1}, Lcom/miui/common/expandableview/a;->getSectionForPosition(I)I

    move-result v2

    iget-object v3, p0, Lcom/miui/common/expandableview/PinnedHeaderListView;->azv:Lcom/miui/common/expandableview/a;

    invoke-interface {v3, v2}, Lcom/miui/common/expandableview/a;->getSectionHeaderViewType(I)I

    move-result v3

    iget v4, p0, Lcom/miui/common/expandableview/PinnedHeaderListView;->azx:I

    if-eq v4, v3, :cond_7

    :goto_1
    invoke-direct {p0, v2, v0}, Lcom/miui/common/expandableview/PinnedHeaderListView;->aGE(ILandroid/view/View;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/common/expandableview/PinnedHeaderListView;->azw:Landroid/view/View;

    iget-object v0, p0, Lcom/miui/common/expandableview/PinnedHeaderListView;->azw:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/miui/common/expandableview/PinnedHeaderListView;->aGB(Landroid/view/View;)V

    iput v3, p0, Lcom/miui/common/expandableview/PinnedHeaderListView;->azx:I

    iget-object v0, p0, Lcom/miui/common/expandableview/PinnedHeaderListView;->azB:Lcom/miui/common/expandableview/c;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/miui/common/expandableview/PinnedHeaderListView;->azw:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/miui/common/expandableview/PinnedHeaderListView;->aGC(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/common/expandableview/PinnedHeaderListView;->azB:Lcom/miui/common/expandableview/c;

    iget-object v3, p0, Lcom/miui/common/expandableview/PinnedHeaderListView;->azw:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    const/4 v4, 0x1

    invoke-interface {v2, v0, v3, v4}, Lcom/miui/common/expandableview/c;->aGH(Ljava/lang/String;IZ)V

    :cond_4
    iput v5, p0, Lcom/miui/common/expandableview/PinnedHeaderListView;->azz:F

    move v0, v1

    :goto_2
    add-int v2, v1, p3

    if-ge v0, v2, :cond_9

    iget-object v2, p0, Lcom/miui/common/expandableview/PinnedHeaderListView;->azv:Lcom/miui/common/expandableview/a;

    invoke-interface {v2, v0}, Lcom/miui/common/expandableview/a;->isSectionHeader(I)Z

    move-result v2

    if-eqz v2, :cond_5

    sub-int v2, v0, v1

    invoke-virtual {p0, v2}, Lcom/miui/common/expandableview/PinnedHeaderListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/miui/common/expandableview/PinnedHeaderListView;->azw:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    cmpl-float v4, v4, v3

    if-ltz v4, :cond_8

    cmpl-float v4, v3, v5

    if-lez v4, :cond_8

    iget-object v2, p0, Lcom/miui/common/expandableview/PinnedHeaderListView;->azw:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    sub-float v2, v3, v2

    iput v2, p0, Lcom/miui/common/expandableview/PinnedHeaderListView;->azz:F

    :cond_5
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_6
    return-void

    :cond_7
    iget-object v0, p0, Lcom/miui/common/expandableview/PinnedHeaderListView;->azw:Landroid/view/View;

    goto :goto_1

    :cond_8
    cmpg-float v3, v3, v5

    if-gtz v3, :cond_5

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    :cond_9
    invoke-virtual {p0}, Lcom/miui/common/expandableview/PinnedHeaderListView;->invalidate()V

    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/common/expandableview/PinnedHeaderListView;->azC:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/common/expandableview/PinnedHeaderListView;->azC:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p1, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    :cond_0
    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/common/expandableview/PinnedHeaderListView;->azw:Landroid/view/View;

    move-object v0, p1

    check-cast v0, Lcom/miui/common/expandableview/a;

    iput-object v0, p0, Lcom/miui/common/expandableview/PinnedHeaderListView;->azv:Lcom/miui/common/expandableview/a;

    invoke-super {p0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/common/expandableview/PinnedHeaderListView;->azC:Landroid/widget/AbsListView$OnScrollListener;

    return-void
.end method
