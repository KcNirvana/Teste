.class public Lcom/miui/powercenter/quickoptimize/OptimizeItemLayout;
.super Landroid/view/ViewGroup;
.source ""


# instance fields
.field private aDb:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/powercenter/quickoptimize/OptimizeItemLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/powercenter/quickoptimize/OptimizeItemLayout;->aDb:I

    return-void
.end method

.method private aOm()I
    .locals 1

    invoke-virtual {p0}, Lcom/miui/powercenter/quickoptimize/OptimizeItemLayout;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/miui/powercenter/quickoptimize/OptimizeItemLayout;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method


# virtual methods
.method public isLayoutRtl()Z
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/miui/powercenter/quickoptimize/OptimizeItemLayout;->getLayoutDirection()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 14

    invoke-virtual {p0}, Lcom/miui/powercenter/quickoptimize/OptimizeItemLayout;->isLayoutRtl()Z

    move-result v2

    invoke-virtual {p0}, Lcom/miui/powercenter/quickoptimize/OptimizeItemLayout;->getChildCount()I

    move-result v6

    invoke-virtual {p0}, Lcom/miui/powercenter/quickoptimize/OptimizeItemLayout;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/miui/powercenter/quickoptimize/OptimizeItemLayout;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Lcom/miui/powercenter/quickoptimize/OptimizeItemLayout;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/miui/powercenter/quickoptimize/OptimizeItemLayout;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/miui/powercenter/quickoptimize/OptimizeItemLayout;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {p0}, Lcom/miui/powercenter/quickoptimize/OptimizeItemLayout;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    sub-int v7, v3, v0

    sub-int v8, v4, v1

    const/4 v4, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x1

    if-eqz v2, :cond_0

    add-int/lit8 v1, v6, -0x1

    const/4 v0, -0x1

    :cond_0
    const/4 v2, 0x0

    move v5, v2

    :goto_0
    if-ge v5, v6, :cond_6

    mul-int v2, v0, v5

    add-int/2addr v2, v1

    invoke-virtual {p0, v2}, Lcom/miui/powercenter/quickoptimize/OptimizeItemLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v10

    const/16 v11, 0x8

    if-ne v10, v11, :cond_1

    move v2, v4

    :goto_1
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    move v4, v2

    goto :goto_0

    :cond_1
    if-nez v2, :cond_2

    iget v10, p0, Lcom/miui/powercenter/quickoptimize/OptimizeItemLayout;->aDb:I

    sub-int v10, v7, v10

    const/high16 v11, -0x80000000

    invoke-static {v10, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    const/high16 v11, -0x80000000

    invoke-static {v8, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    invoke-virtual {v9, v10, v11}, Landroid/view/View;->measure(II)V

    :cond_2
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    sub-int v12, v8, v11

    div-int/lit8 v12, v12, 0x2

    invoke-direct {p0}, Lcom/miui/powercenter/quickoptimize/OptimizeItemLayout;->aOm()I

    move-result v13

    if-ne v2, v13, :cond_4

    sub-int v2, v3, v10

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/2addr v11, v12

    invoke-virtual {v9, v2, v12, v3, v11}, Landroid/view/View;->layout(IIII)V

    :cond_3
    add-int v2, v4, v10

    goto :goto_1

    :cond_4
    add-int v2, v4, v10

    if-le v2, v3, :cond_5

    move v2, v3

    :cond_5
    add-int/2addr v11, v12

    invoke-virtual {v9, v4, v12, v2, v11}, Landroid/view/View;->layout(IIII)V

    if-ne v2, v3, :cond_3

    :cond_6
    return-void
.end method

.method protected onMeasure(II)V
    .locals 7

    const/high16 v6, -0x80000000

    const/4 v1, 0x0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    invoke-virtual {p0}, Lcom/miui/powercenter/quickoptimize/OptimizeItemLayout;->getChildCount()I

    move-result v0

    iput v1, p0, Lcom/miui/powercenter/quickoptimize/OptimizeItemLayout;->aDb:I

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    move v0, v1

    :goto_0
    if-ltz v2, :cond_3

    invoke-virtual {p0, v2}, Lcom/miui/powercenter/quickoptimize/OptimizeItemLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v1, v2, -0x1

    move v2, v1

    goto :goto_0

    :cond_1
    if-nez v2, :cond_2

    iget v4, p0, Lcom/miui/powercenter/quickoptimize/OptimizeItemLayout;->aDb:I

    sub-int v4, v3, v4

    invoke-static {v4, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {p0, v1, v4, p2}, Lcom/miui/powercenter/quickoptimize/OptimizeItemLayout;->measureChild(Landroid/view/View;II)V

    :goto_2
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    if-le v1, v0, :cond_0

    move v0, v1

    goto :goto_1

    :cond_2
    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {p0, v1, v4, p2}, Lcom/miui/powercenter/quickoptimize/OptimizeItemLayout;->measureChild(Landroid/view/View;II)V

    iget v4, p0, Lcom/miui/powercenter/quickoptimize/OptimizeItemLayout;->aDb:I

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, p0, Lcom/miui/powercenter/quickoptimize/OptimizeItemLayout;->aDb:I

    goto :goto_2

    :cond_3
    invoke-virtual {p0, v3, v0}, Lcom/miui/powercenter/quickoptimize/OptimizeItemLayout;->setMeasuredDimension(II)V

    return-void
.end method
