.class public Lcom/facebook/ads/NativeAdLayout;
.super Landroid/widget/FrameLayout;


# instance fields
.field private a:Landroid/view/View;

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/facebook/ads/NativeAdLayout;->b:I

    iput p1, p0, Lcom/facebook/ads/NativeAdLayout;->c:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/facebook/ads/NativeAdLayout;->b:I

    iput p1, p0, Lcom/facebook/ads/NativeAdLayout;->c:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/facebook/ads/NativeAdLayout;->b:I

    iput p1, p0, Lcom/facebook/ads/NativeAdLayout;->c:I

    return-void
.end method


# virtual methods
.method public clearAdReportingLayout()V
    .locals 1

    invoke-static {p0}, Lcom/facebook/ads/internal/w/b/x;->a(Landroid/view/ViewGroup;)V

    iget-object v0, p0, Lcom/facebook/ads/NativeAdLayout;->a:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/NativeAdLayout;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/NativeAdLayout;->a:Landroid/view/View;

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    iget p1, p0, Lcom/facebook/ads/NativeAdLayout;->c:I

    if-lez p1, :cond_0

    invoke-virtual {p0}, Lcom/facebook/ads/NativeAdLayout;->getMeasuredWidth()I

    move-result p1

    iget p2, p0, Lcom/facebook/ads/NativeAdLayout;->c:I

    if-le p1, p2, :cond_0

    iget p1, p0, Lcom/facebook/ads/NativeAdLayout;->c:I

    :goto_0
    invoke-virtual {p0}, Lcom/facebook/ads/NativeAdLayout;->getMeasuredHeight()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/facebook/ads/NativeAdLayout;->setMeasuredDimension(II)V

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/NativeAdLayout;->getMeasuredWidth()I

    move-result p1

    iget p2, p0, Lcom/facebook/ads/NativeAdLayout;->b:I

    if-ge p1, p2, :cond_1

    iget p1, p0, Lcom/facebook/ads/NativeAdLayout;->b:I

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public setAdReportingLayout(Lcom/facebook/ads/internal/view/a/c;)V
    .locals 2

    iput-object p1, p0, Lcom/facebook/ads/NativeAdLayout;->a:Landroid/view/View;

    iget-object p1, p0, Lcom/facebook/ads/NativeAdLayout;->a:Landroid/view/View;

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {p0}, Lcom/facebook/ads/internal/w/b/x;->a(Landroid/view/ViewGroup;)V

    iget-object p1, p0, Lcom/facebook/ads/NativeAdLayout;->a:Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/facebook/ads/NativeAdLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public setMaxWidth(I)V
    .locals 0

    iput p1, p0, Lcom/facebook/ads/NativeAdLayout;->c:I

    return-void
.end method

.method public setMinWidth(I)V
    .locals 0

    iput p1, p0, Lcom/facebook/ads/NativeAdLayout;->b:I

    return-void
.end method
