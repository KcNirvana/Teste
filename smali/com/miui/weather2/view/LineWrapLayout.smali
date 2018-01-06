.class public Lcom/miui/weather2/view/LineWrapLayout;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/weather2/view/LineWrapLayout$a;
    }
.end annotation


# instance fields
.field private a:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/weather2/view/LineWrapLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/weather2/view/LineWrapLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    sget-object v0, Lcom/miui/weather2/bg$a;->LineWrapLayout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/miui/weather2/view/LineWrapLayout;->setGap(I)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method protected a()Lcom/miui/weather2/view/LineWrapLayout$a;
    .locals 1

    new-instance v0, Lcom/miui/weather2/view/LineWrapLayout$a;

    invoke-direct {v0}, Lcom/miui/weather2/view/LineWrapLayout$a;-><init>()V

    return-object v0
.end method

.method public a(Landroid/util/AttributeSet;)Lcom/miui/weather2/view/LineWrapLayout$a;
    .locals 2

    new-instance v0, Lcom/miui/weather2/view/LineWrapLayout$a;

    invoke-virtual {p0}, Lcom/miui/weather2/view/LineWrapLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/miui/weather2/view/LineWrapLayout$a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected a(Landroid/view/ViewGroup$LayoutParams;)Lcom/miui/weather2/view/LineWrapLayout$a;
    .locals 2

    invoke-virtual {p0}, Lcom/miui/weather2/view/LineWrapLayout;->a()Lcom/miui/weather2/view/LineWrapLayout$a;

    move-result-object v0

    iget v1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v1, v0, Lcom/miui/weather2/view/LineWrapLayout$a;->width:I

    iget v1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v1, v0, Lcom/miui/weather2/view/LineWrapLayout$a;->height:I

    return-object v0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    instance-of v0, p1, Lcom/miui/weather2/view/LineWrapLayout$a;

    return v0
.end method

.method protected synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/weather2/view/LineWrapLayout;->a()Lcom/miui/weather2/view/LineWrapLayout$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/miui/weather2/view/LineWrapLayout;->a(Landroid/util/AttributeSet;)Lcom/miui/weather2/view/LineWrapLayout$a;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/miui/weather2/view/LineWrapLayout;->a(Landroid/view/ViewGroup$LayoutParams;)Lcom/miui/weather2/view/LineWrapLayout$a;

    move-result-object v0

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 9

    invoke-virtual {p0}, Lcom/miui/weather2/view/LineWrapLayout;->getChildCount()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Lcom/miui/weather2/view/LineWrapLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/view/LineWrapLayout$a;

    invoke-virtual {p0}, Lcom/miui/weather2/view/LineWrapLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/miui/weather2/tools/bi;->U(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/miui/weather2/view/LineWrapLayout;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/miui/weather2/view/LineWrapLayout;->getPaddingLeft()I

    move-result v5

    iget v6, v0, Lcom/miui/weather2/view/LineWrapLayout$a;->c:I

    add-int/2addr v5, v6

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/miui/weather2/view/LineWrapLayout;->getPaddingTop()I

    move-result v5

    iget v6, v0, Lcom/miui/weather2/view/LineWrapLayout$a;->b:I

    add-int/2addr v5, v6

    invoke-virtual {p0}, Lcom/miui/weather2/view/LineWrapLayout;->getMeasuredWidth()I

    move-result v6

    invoke-virtual {p0}, Lcom/miui/weather2/view/LineWrapLayout;->getPaddingLeft()I

    move-result v7

    iget v8, v0, Lcom/miui/weather2/view/LineWrapLayout$a;->a:I

    add-int/2addr v7, v8

    sub-int/2addr v6, v7

    invoke-virtual {p0}, Lcom/miui/weather2/view/LineWrapLayout;->getPaddingTop()I

    move-result v7

    iget v0, v0, Lcom/miui/weather2/view/LineWrapLayout$a;->d:I

    add-int/2addr v0, v7

    invoke-virtual {v3, v4, v5, v6, v0}, Landroid/view/View;->layout(IIII)V

    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/miui/weather2/view/LineWrapLayout;->getPaddingLeft()I

    move-result v4

    iget v5, v0, Lcom/miui/weather2/view/LineWrapLayout$a;->a:I

    add-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/miui/weather2/view/LineWrapLayout;->getPaddingTop()I

    move-result v5

    iget v6, v0, Lcom/miui/weather2/view/LineWrapLayout$a;->b:I

    add-int/2addr v5, v6

    invoke-virtual {p0}, Lcom/miui/weather2/view/LineWrapLayout;->getPaddingLeft()I

    move-result v6

    iget v7, v0, Lcom/miui/weather2/view/LineWrapLayout$a;->c:I

    add-int/2addr v6, v7

    invoke-virtual {p0}, Lcom/miui/weather2/view/LineWrapLayout;->getPaddingTop()I

    move-result v7

    iget v0, v0, Lcom/miui/weather2/view/LineWrapLayout$a;->d:I

    add-int/2addr v0, v7

    invoke-virtual {v3, v4, v5, v6, v0}, Landroid/view/View;->layout(IIII)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 12

    const/4 v1, 0x0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/miui/weather2/view/LineWrapLayout;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/miui/weather2/view/LineWrapLayout;->getPaddingRight()I

    move-result v2

    sub-int v6, v0, v2

    invoke-virtual {p0, v1, v1}, Lcom/miui/weather2/view/LineWrapLayout;->measureChildren(II)V

    move v0, v1

    move v2, v1

    move v3, v1

    move v4, v1

    move v5, v1

    :goto_0
    invoke-virtual {p0}, Lcom/miui/weather2/view/LineWrapLayout;->getChildCount()I

    move-result v7

    if-ge v0, v7, :cond_1

    invoke-virtual {p0, v0}, Lcom/miui/weather2/view/LineWrapLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    invoke-static {v8, v6}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    add-int v10, v4, v8

    if-le v10, v6, :cond_0

    iget v4, p0, Lcom/miui/weather2/view/LineWrapLayout;->a:I

    add-int/2addr v2, v4

    add-int/2addr v3, v2

    move v2, v1

    move v4, v1

    :cond_0
    add-int v10, v3, v9

    invoke-static {v5, v10}, Ljava/lang/Math;->max(II)I

    move-result v5

    add-int v10, v4, v8

    add-int v11, v3, v9

    invoke-static {v4, v3, v10, v11}, Lcom/miui/weather2/view/LineWrapLayout$a;->a(IIII)Lcom/miui/weather2/view/LineWrapLayout$a;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget v7, p0, Lcom/miui/weather2/view/LineWrapLayout;->a:I

    add-int/2addr v7, v8

    add-int/2addr v4, v7

    invoke-static {v2, v9}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/miui/weather2/view/LineWrapLayout;->getPaddingTop()I

    move-result v1

    add-int/2addr v1, v5

    invoke-virtual {p0}, Lcom/miui/weather2/view/LineWrapLayout;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/miui/weather2/view/LineWrapLayout;->setMeasuredDimension(II)V

    return-void
.end method

.method public setGap(I)V
    .locals 1

    iget v0, p0, Lcom/miui/weather2/view/LineWrapLayout;->a:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/miui/weather2/view/LineWrapLayout;->a:I

    invoke-virtual {p0}, Lcom/miui/weather2/view/LineWrapLayout;->requestLayout()V

    :cond_0
    return-void
.end method
