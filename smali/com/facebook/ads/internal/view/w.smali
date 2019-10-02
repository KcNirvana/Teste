.class public Lcom/facebook/ads/internal/view/w;
.super Landroid/widget/TextView;


# instance fields
.field private a:F

.field private b:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/high16 p1, 0x41000000    # 8.0f

    iput p1, p0, Lcom/facebook/ads/internal/view/w;->b:F

    invoke-super {p0}, Landroid/widget/TextView;->setSingleLine()V

    const/4 p1, 0x1

    invoke-super {p0, p1}, Landroid/widget/TextView;->setMaxLines(I)V

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/w;->getTextSize()F

    move-result p1

    sget v0, Lcom/facebook/ads/internal/w/b/x;->b:F

    div-float/2addr p1, v0

    iput p1, p0, Lcom/facebook/ads/internal/view/w;->a:F

    sget-object p1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p0, p1}, Lcom/facebook/ads/internal/view/w;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 5

    sub-int v0, p4, p2

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/w;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/w;->getMeasuredWidth()I

    move-result v2

    iget v3, p0, Lcom/facebook/ads/internal/view/w;->a:F

    :goto_0
    iget v4, p0, Lcom/facebook/ads/internal/view/w;->b:F

    cmpl-float v4, v3, v4

    if-ltz v4, :cond_1

    invoke-super {p0, v3}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 v4, 0x0

    invoke-virtual {p0, v4, v4}, Lcom/facebook/ads/internal/view/w;->measure(II)V

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/w;->getMeasuredWidth()I

    move-result v4

    if-gt v4, v0, :cond_0

    goto :goto_1

    :cond_0
    const/high16 v4, 0x3f000000    # 0.5f

    sub-float/2addr v3, v4

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/w;->getMeasuredWidth()I

    move-result v3

    if-le v3, v0, :cond_2

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p0, v3, v0}, Lcom/facebook/ads/internal/view/w;->measure(II)V

    :cond_2
    invoke-virtual {p0, v2, v1}, Lcom/facebook/ads/internal/view/w;->setMeasuredDimension(II)V

    invoke-super/range {p0 .. p5}, Landroid/widget/TextView;->onLayout(ZIIII)V

    return-void
.end method

.method public setMaxLines(I)V
    .locals 0

    return-void
.end method

.method public setMinTextSize(F)V
    .locals 1

    iget v0, p0, Lcom/facebook/ads/internal/view/w;->a:F

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    iput p1, p0, Lcom/facebook/ads/internal/view/w;->b:F

    :cond_0
    return-void
.end method

.method public setSingleLine(Z)V
    .locals 0

    return-void
.end method

.method public setTextSize(F)V
    .locals 0

    iput p1, p0, Lcom/facebook/ads/internal/view/w;->a:F

    invoke-super {p0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    return-void
.end method
