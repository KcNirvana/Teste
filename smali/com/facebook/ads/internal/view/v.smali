.class public Lcom/facebook/ads/internal/view/v;
.super Landroid/widget/TextView;


# instance fields
.field private a:I

.field private b:F

.field private c:F


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/high16 p1, 0x41000000    # 8.0f

    iput p1, p0, Lcom/facebook/ads/internal/view/v;->c:F

    invoke-virtual {p0, p2}, Lcom/facebook/ads/internal/view/v;->setMaxLines(I)V

    sget-object p1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p0, p1}, Lcom/facebook/ads/internal/view/v;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 7

    iget v0, p0, Lcom/facebook/ads/internal/view/v;->a:I

    add-int/lit8 v0, v0, 0x1

    invoke-super {p0, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    iget v0, p0, Lcom/facebook/ads/internal/view/v;->b:F

    invoke-super {p0, v0}, Landroid/widget/TextView;->setTextSize(F)V

    sub-int v0, p4, p2

    sub-int v1, p5, p3

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {p0, v3, v5}, Lcom/facebook/ads/internal/view/v;->measure(II)V

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/v;->getMeasuredHeight()I

    move-result v3

    if-le v3, v1, :cond_1

    iget v3, p0, Lcom/facebook/ads/internal/view/v;->b:F

    :cond_0
    iget v5, p0, Lcom/facebook/ads/internal/view/v;->c:F

    cmpl-float v5, v3, v5

    if-lez v5, :cond_1

    const/high16 v5, 0x3f000000    # 0.5f

    sub-float/2addr v3, v5

    invoke-super {p0, v3}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {p0, v5, v4}, Lcom/facebook/ads/internal/view/v;->measure(II)V

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/v;->getMeasuredHeight()I

    move-result v5

    if-gt v5, v1, :cond_0

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/v;->getLineCount()I

    move-result v5

    iget v6, p0, Lcom/facebook/ads/internal/view/v;->a:I

    if-gt v5, v6, :cond_0

    :cond_1
    iget v2, p0, Lcom/facebook/ads/internal/view/v;->a:I

    invoke-super {p0, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    invoke-virtual {p0, v0, v1}, Lcom/facebook/ads/internal/view/v;->setMeasuredDimension(II)V

    invoke-super/range {p0 .. p5}, Landroid/widget/TextView;->onLayout(ZIIII)V

    return-void
.end method

.method public setMaxLines(I)V
    .locals 0

    iput p1, p0, Lcom/facebook/ads/internal/view/v;->a:I

    invoke-super {p0, p1}, Landroid/widget/TextView;->setMaxLines(I)V

    return-void
.end method

.method public setMinTextSize(F)V
    .locals 0

    iput p1, p0, Lcom/facebook/ads/internal/view/v;->c:F

    return-void
.end method

.method public setTextSize(F)V
    .locals 0

    iput p1, p0, Lcom/facebook/ads/internal/view/v;->b:F

    invoke-super {p0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    return-void
.end method
