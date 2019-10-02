.class Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView$SFixedIndicatorView;
.super Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;
.source "ScrollIndicatorView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SFixedIndicatorView"
.end annotation


# instance fields
.field private isAutoSplit:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private measureChildWidth(Landroid/view/View;II)I
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView$SFixedIndicatorView;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView$SFixedIndicatorView;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    const/4 v2, -0x2

    invoke-static {p2, v1, v2}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result p2

    invoke-virtual {p0}, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView$SFixedIndicatorView;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView$SFixedIndicatorView;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    invoke-static {p3, v1, v2}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result p3

    invoke-virtual {p1, p2, p3}, Landroid/view/View;->measure(II)V

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    iget p2, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr p1, p2

    iget p2, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr p1, p2

    return p1
.end method


# virtual methods
.method public isSplitAuto()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView$SFixedIndicatorView;->isAutoSplit:Z

    return v0
.end method

.method protected onMeasure(II)V
    .locals 8

    iget-boolean v0, p0, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView$SFixedIndicatorView;->isAutoSplit:Z

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView$SFixedIndicatorView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView;

    invoke-virtual {v0}, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView;->getMeasuredWidth()I

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView$SFixedIndicatorView;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    invoke-virtual {p0, v4}, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView$SFixedIndicatorView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-direct {p0, v7, p1, p2}, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView$SFixedIndicatorView;->measureChildWidth(Landroid/view/View;II)I

    move-result v7

    if-ge v5, v7, :cond_0

    move v5, v7

    :cond_0
    add-int/2addr v6, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    if-le v6, v1, :cond_2

    invoke-virtual {v0, v3}, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView;->setFillViewport(Z)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView$SFixedIndicatorView;->setSplitMethod(I)V

    goto :goto_1

    :cond_2
    mul-int v5, v5, v2

    const/4 v2, 0x1

    if-le v5, v1, :cond_3

    invoke-virtual {v0, v2}, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView;->setFillViewport(Z)V

    invoke-virtual {p0, v2}, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView$SFixedIndicatorView;->setSplitMethod(I)V

    goto :goto_1

    :cond_3
    invoke-virtual {v0, v2}, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView;->setFillViewport(Z)V

    invoke-virtual {p0, v3}, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView$SFixedIndicatorView;->setSplitMethod(I)V

    :cond_4
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->onMeasure(II)V

    return-void
.end method

.method public setSplitAuto(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView$SFixedIndicatorView;->isAutoSplit:Z

    if-eq v0, p1, :cond_1

    iput-boolean p1, p0, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView$SFixedIndicatorView;->isAutoSplit:Z

    if-nez p1, :cond_0

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView$SFixedIndicatorView;->setSplitMethod(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView$SFixedIndicatorView;->requestLayout()V

    invoke-virtual {p0}, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView$SFixedIndicatorView;->invalidate()V

    :cond_1
    return-void
.end method
