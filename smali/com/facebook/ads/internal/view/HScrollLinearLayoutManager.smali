.class public Lcom/facebook/ads/internal/view/HScrollLinearLayoutManager;
.super Landroid/support/v7/widget/LinearLayoutManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/internal/view/HScrollLinearLayoutManager$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/facebook/ads/internal/view/d/b;

.field private final b:Lcom/facebook/ads/internal/view/d/a;

.field private final c:Landroid/content/Context;

.field private d:[I

.field private e:I

.field private f:F

.field private g:Lcom/facebook/ads/internal/view/HScrollLinearLayoutManager$a;

.field private h:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/facebook/ads/internal/view/d/b;Lcom/facebook/ads/internal/view/d/a;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/internal/view/HScrollLinearLayoutManager;->e:I

    const/high16 v0, 0x42480000    # 50.0f

    iput v0, p0, Lcom/facebook/ads/internal/view/HScrollLinearLayoutManager;->f:F

    iput-object p1, p0, Lcom/facebook/ads/internal/view/HScrollLinearLayoutManager;->c:Landroid/content/Context;

    iput-object p2, p0, Lcom/facebook/ads/internal/view/HScrollLinearLayoutManager;->a:Lcom/facebook/ads/internal/view/d/b;

    iput-object p3, p0, Lcom/facebook/ads/internal/view/HScrollLinearLayoutManager;->b:Lcom/facebook/ads/internal/view/d/a;

    const/4 p1, -0x1

    iput p1, p0, Lcom/facebook/ads/internal/view/HScrollLinearLayoutManager;->h:I

    new-instance p1, Lcom/facebook/ads/internal/view/HScrollLinearLayoutManager$a;

    iget-object p2, p0, Lcom/facebook/ads/internal/view/HScrollLinearLayoutManager;->c:Landroid/content/Context;

    invoke-direct {p1, p0, p2}, Lcom/facebook/ads/internal/view/HScrollLinearLayoutManager$a;-><init>(Lcom/facebook/ads/internal/view/HScrollLinearLayoutManager;Landroid/content/Context;)V

    iput-object p1, p0, Lcom/facebook/ads/internal/view/HScrollLinearLayoutManager;->g:Lcom/facebook/ads/internal/view/HScrollLinearLayoutManager$a;

    return-void
.end method

.method static synthetic a(Lcom/facebook/ads/internal/view/HScrollLinearLayoutManager;)F
    .locals 0

    iget p0, p0, Lcom/facebook/ads/internal/view/HScrollLinearLayoutManager;->f:F

    return p0
.end method

.method static synthetic b(Lcom/facebook/ads/internal/view/HScrollLinearLayoutManager;)I
    .locals 0

    iget p0, p0, Lcom/facebook/ads/internal/view/HScrollLinearLayoutManager;->e:I

    return p0
.end method


# virtual methods
.method public a(D)V
    .locals 2

    const-wide/16 v0, 0x0

    cmpg-double v0, p1, v0

    if-gtz v0, :cond_0

    const-wide/high16 p1, 0x3ff0000000000000L    # 1.0

    :cond_0
    const-wide/high16 v0, 0x4049000000000000L    # 50.0

    div-double/2addr v0, p1

    double-to-float p1, v0

    iput p1, p0, Lcom/facebook/ads/internal/view/HScrollLinearLayoutManager;->f:F

    new-instance p1, Lcom/facebook/ads/internal/view/HScrollLinearLayoutManager$a;

    iget-object p2, p0, Lcom/facebook/ads/internal/view/HScrollLinearLayoutManager;->c:Landroid/content/Context;

    invoke-direct {p1, p0, p2}, Lcom/facebook/ads/internal/view/HScrollLinearLayoutManager$a;-><init>(Lcom/facebook/ads/internal/view/HScrollLinearLayoutManager;Landroid/content/Context;)V

    iput-object p1, p0, Lcom/facebook/ads/internal/view/HScrollLinearLayoutManager;->g:Lcom/facebook/ads/internal/view/HScrollLinearLayoutManager$a;

    return-void
.end method

.method a(I)V
    .locals 0

    iput p1, p0, Lcom/facebook/ads/internal/view/HScrollLinearLayoutManager;->h:I

    return-void
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Lcom/facebook/ads/internal/view/HScrollLinearLayoutManager;->e:I

    return-void
.end method

.method public onMeasure(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;II)V
    .locals 10

    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p4}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    const/4 v3, 0x1

    if-ne v0, v2, :cond_0

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/HScrollLinearLayoutManager;->getOrientation()I

    move-result v4

    if-eq v4, v3, :cond_1

    :cond_0
    if-ne v1, v2, :cond_2

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/HScrollLinearLayoutManager;->getOrientation()I

    move-result v4

    if-nez v4, :cond_2

    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/LinearLayoutManager;->onMeasure(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;II)V

    return-void

    :cond_2
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p4}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p3

    iget-object p4, p0, Lcom/facebook/ads/internal/view/HScrollLinearLayoutManager;->b:Lcom/facebook/ads/internal/view/d/a;

    iget v4, p0, Lcom/facebook/ads/internal/view/HScrollLinearLayoutManager;->h:I

    invoke-virtual {p4, v4}, Lcom/facebook/ads/internal/view/d/a;->b(I)Z

    move-result p4

    const/4 v4, 0x0

    if-eqz p4, :cond_3

    iget-object p2, p0, Lcom/facebook/ads/internal/view/HScrollLinearLayoutManager;->b:Lcom/facebook/ads/internal/view/d/a;

    iget p4, p0, Lcom/facebook/ads/internal/view/HScrollLinearLayoutManager;->h:I

    invoke-virtual {p2, p4}, Lcom/facebook/ads/internal/view/d/a;->a(I)[I

    move-result-object p2

    goto/16 :goto_3

    :cond_3
    const/4 p4, 0x2

    new-array p4, p4, [I

    fill-array-data p4, :array_0

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result p2

    if-lt p2, v3, :cond_8

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/HScrollLinearLayoutManager;->getChildCount()I

    move-result p2

    if-lez p2, :cond_4

    const/4 p2, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/HScrollLinearLayoutManager;->getChildCount()I

    move-result p2

    :goto_0
    const/4 v5, 0x0

    :goto_1
    if-ge v5, p2, :cond_7

    invoke-virtual {p0, v5}, Lcom/facebook/ads/internal/view/HScrollLinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v6

    iget-object v7, p0, Lcom/facebook/ads/internal/view/HScrollLinearLayoutManager;->a:Lcom/facebook/ads/internal/view/d/b;

    invoke-static {v4, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    invoke-static {v4, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    invoke-virtual {v7, v6, v8, v9}, Lcom/facebook/ads/internal/view/d/b;->a(Landroid/view/View;II)[I

    move-result-object v6

    iput-object v6, p0, Lcom/facebook/ads/internal/view/HScrollLinearLayoutManager;->d:[I

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/HScrollLinearLayoutManager;->getOrientation()I

    move-result v6

    if-nez v6, :cond_5

    aget v6, p4, v4

    iget-object v7, p0, Lcom/facebook/ads/internal/view/HScrollLinearLayoutManager;->d:[I

    aget v7, v7, v4

    add-int/2addr v6, v7

    aput v6, p4, v4

    if-nez v5, :cond_6

    iget-object v6, p0, Lcom/facebook/ads/internal/view/HScrollLinearLayoutManager;->d:[I

    aget v6, v6, v3

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/HScrollLinearLayoutManager;->getPaddingTop()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/HScrollLinearLayoutManager;->getPaddingBottom()I

    move-result v7

    add-int/2addr v6, v7

    aput v6, p4, v3

    goto :goto_2

    :cond_5
    aget v6, p4, v3

    iget-object v7, p0, Lcom/facebook/ads/internal/view/HScrollLinearLayoutManager;->d:[I

    aget v7, v7, v3

    add-int/2addr v6, v7

    aput v6, p4, v3

    if-nez v5, :cond_6

    iget-object v6, p0, Lcom/facebook/ads/internal/view/HScrollLinearLayoutManager;->d:[I

    aget v6, v6, v4

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/HScrollLinearLayoutManager;->getPaddingLeft()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/HScrollLinearLayoutManager;->getPaddingRight()I

    move-result v7

    add-int/2addr v6, v7

    aput v6, p4, v4

    :cond_6
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_7
    iget p2, p0, Lcom/facebook/ads/internal/view/HScrollLinearLayoutManager;->h:I

    const/4 v5, -0x1

    if-eq p2, v5, :cond_8

    iget-object p2, p0, Lcom/facebook/ads/internal/view/HScrollLinearLayoutManager;->b:Lcom/facebook/ads/internal/view/d/a;

    iget v5, p0, Lcom/facebook/ads/internal/view/HScrollLinearLayoutManager;->h:I

    invoke-virtual {p2, v5, p4}, Lcom/facebook/ads/internal/view/d/a;->a(I[I)V

    :cond_8
    move-object p2, p4

    :goto_3
    if-ne v0, v2, :cond_9

    aput p1, p2, v4

    :cond_9
    if-ne v1, v2, :cond_a

    aput p3, p2, v3

    :cond_a
    aget p1, p2, v4

    aget p2, p2, v3

    invoke-virtual {p0, p1, p2}, Lcom/facebook/ads/internal/view/HScrollLinearLayoutManager;->setMeasuredDimension(II)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public scrollToPosition(I)V
    .locals 1

    iget v0, p0, Lcom/facebook/ads/internal/view/HScrollLinearLayoutManager;->e:I

    invoke-super {p0, p1, v0}, Landroid/support/v7/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    return-void
.end method

.method public smoothScrollToPosition(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;I)V
    .locals 0

    iget-object p1, p0, Lcom/facebook/ads/internal/view/HScrollLinearLayoutManager;->g:Lcom/facebook/ads/internal/view/HScrollLinearLayoutManager$a;

    invoke-virtual {p1, p3}, Lcom/facebook/ads/internal/view/HScrollLinearLayoutManager$a;->setTargetPosition(I)V

    iget-object p1, p0, Lcom/facebook/ads/internal/view/HScrollLinearLayoutManager;->g:Lcom/facebook/ads/internal/view/HScrollLinearLayoutManager$a;

    invoke-virtual {p0, p1}, Lcom/facebook/ads/internal/view/HScrollLinearLayoutManager;->startSmoothScroll(Landroid/support/v7/widget/RecyclerView$SmoothScroller;)V

    return-void
.end method
