.class public Lcom/facebook/ads/internal/view/j;
.super Lcom/facebook/ads/internal/view/d/c;

# interfaces
.implements Lcom/facebook/ads/internal/view/d/c$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/internal/view/j$a;
    }
.end annotation


# instance fields
.field private final c:Lcom/facebook/ads/internal/view/HScrollLinearLayoutManager;

.field private d:Lcom/facebook/ads/internal/view/j$a;

.field private e:I

.field private f:I

.field private g:I

.field private h:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/facebook/ads/internal/view/d/c;-><init>(Landroid/content/Context;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/internal/view/j;->e:I

    iput v0, p0, Lcom/facebook/ads/internal/view/j;->f:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/internal/view/j;->g:I

    iput v0, p0, Lcom/facebook/ads/internal/view/j;->h:I

    new-instance v0, Lcom/facebook/ads/internal/view/HScrollLinearLayoutManager;

    new-instance v1, Lcom/facebook/ads/internal/view/d/b;

    invoke-direct {v1}, Lcom/facebook/ads/internal/view/d/b;-><init>()V

    new-instance v2, Lcom/facebook/ads/internal/view/d/a;

    invoke-direct {v2}, Lcom/facebook/ads/internal/view/d/a;-><init>()V

    invoke-direct {v0, p1, v1, v2}, Lcom/facebook/ads/internal/view/HScrollLinearLayoutManager;-><init>(Landroid/content/Context;Lcom/facebook/ads/internal/view/d/b;Lcom/facebook/ads/internal/view/d/a;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/j;->c:Lcom/facebook/ads/internal/view/HScrollLinearLayoutManager;

    invoke-direct {p0}, Lcom/facebook/ads/internal/view/j;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/internal/view/d/c;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, -0x1

    iput p2, p0, Lcom/facebook/ads/internal/view/j;->e:I

    iput p2, p0, Lcom/facebook/ads/internal/view/j;->f:I

    const/4 p2, 0x0

    iput p2, p0, Lcom/facebook/ads/internal/view/j;->g:I

    iput p2, p0, Lcom/facebook/ads/internal/view/j;->h:I

    new-instance p2, Lcom/facebook/ads/internal/view/HScrollLinearLayoutManager;

    new-instance v0, Lcom/facebook/ads/internal/view/d/b;

    invoke-direct {v0}, Lcom/facebook/ads/internal/view/d/b;-><init>()V

    new-instance v1, Lcom/facebook/ads/internal/view/d/a;

    invoke-direct {v1}, Lcom/facebook/ads/internal/view/d/a;-><init>()V

    invoke-direct {p2, p1, v0, v1}, Lcom/facebook/ads/internal/view/HScrollLinearLayoutManager;-><init>(Landroid/content/Context;Lcom/facebook/ads/internal/view/d/b;Lcom/facebook/ads/internal/view/d/a;)V

    iput-object p2, p0, Lcom/facebook/ads/internal/view/j;->c:Lcom/facebook/ads/internal/view/HScrollLinearLayoutManager;

    invoke-direct {p0}, Lcom/facebook/ads/internal/view/j;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/internal/view/d/c;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, -0x1

    iput p2, p0, Lcom/facebook/ads/internal/view/j;->e:I

    iput p2, p0, Lcom/facebook/ads/internal/view/j;->f:I

    const/4 p2, 0x0

    iput p2, p0, Lcom/facebook/ads/internal/view/j;->g:I

    iput p2, p0, Lcom/facebook/ads/internal/view/j;->h:I

    new-instance p2, Lcom/facebook/ads/internal/view/HScrollLinearLayoutManager;

    new-instance p3, Lcom/facebook/ads/internal/view/d/b;

    invoke-direct {p3}, Lcom/facebook/ads/internal/view/d/b;-><init>()V

    new-instance v0, Lcom/facebook/ads/internal/view/d/a;

    invoke-direct {v0}, Lcom/facebook/ads/internal/view/d/a;-><init>()V

    invoke-direct {p2, p1, p3, v0}, Lcom/facebook/ads/internal/view/HScrollLinearLayoutManager;-><init>(Landroid/content/Context;Lcom/facebook/ads/internal/view/d/b;Lcom/facebook/ads/internal/view/d/a;)V

    iput-object p2, p0, Lcom/facebook/ads/internal/view/j;->c:Lcom/facebook/ads/internal/view/HScrollLinearLayoutManager;

    invoke-direct {p0}, Lcom/facebook/ads/internal/view/j;->a()V

    return-void
.end method

.method private a()V
    .locals 2

    iget-object v0, p0, Lcom/facebook/ads/internal/view/j;->c:Lcom/facebook/ads/internal/view/HScrollLinearLayoutManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/view/HScrollLinearLayoutManager;->setOrientation(I)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/j;->c:Lcom/facebook/ads/internal/view/HScrollLinearLayoutManager;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/internal/view/j;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    invoke-virtual {p0, v1}, Lcom/facebook/ads/internal/view/j;->setSaveEnabled(Z)V

    invoke-virtual {p0, p0}, Lcom/facebook/ads/internal/view/j;->setSnapDelegate(Lcom/facebook/ads/internal/view/d/c$a;)V

    return-void
.end method


# virtual methods
.method public a(I)I
    .locals 2

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iget v0, p0, Lcom/facebook/ads/internal/view/j;->a:I

    if-gt p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget v0, p0, Lcom/facebook/ads/internal/view/j;->g:I

    const/4 v1, 0x1

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/facebook/ads/internal/view/j;->g:I

    div-int/2addr p1, v0

    add-int/2addr v1, p1

    :goto_0
    return v1
.end method

.method protected a(IZ)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/facebook/ads/internal/view/d/c;->a(IZ)V

    iget p2, p0, Lcom/facebook/ads/internal/view/j;->e:I

    if-ne p1, p2, :cond_0

    iget p2, p0, Lcom/facebook/ads/internal/view/j;->f:I

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iput p1, p0, Lcom/facebook/ads/internal/view/j;->e:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/facebook/ads/internal/view/j;->f:I

    iget-object p1, p0, Lcom/facebook/ads/internal/view/j;->d:Lcom/facebook/ads/internal/view/j$a;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/facebook/ads/internal/view/j;->d:Lcom/facebook/ads/internal/view/j$a;

    iget p2, p0, Lcom/facebook/ads/internal/view/j;->e:I

    iget v0, p0, Lcom/facebook/ads/internal/view/j;->f:I

    invoke-interface {p1, p2, v0}, Lcom/facebook/ads/internal/view/j$a;->a(II)V

    :cond_1
    :goto_0
    return-void
.end method

.method public getChildSpacing()I
    .locals 1

    iget v0, p0, Lcom/facebook/ads/internal/view/j;->h:I

    return v0
.end method

.method protected onMeasure(II)V
    .locals 7

    invoke-super {p0, p1, p2}, Lcom/facebook/ads/internal/view/d/c;->onMeasure(II)V

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/j;->getPaddingTop()I

    move-result p1

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/j;->getPaddingBottom()I

    move-result v0

    add-int/2addr p1, v0

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/j;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/internal/r/a;->q(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/facebook/ads/internal/w/b/x;->b:F

    float-to-int v0, v0

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/j;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/ads/internal/r/a;->r(Landroid/content/Context;)I

    move-result v1

    mul-int v0, v0, v1

    add-int/2addr v0, p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/j;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3ff47ae1    # 1.91f

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    :goto_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_2

    const/high16 v2, 0x40000000    # 2.0f

    if-eq v1, v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    goto :goto_1

    :cond_2
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_1
    sub-int/2addr v0, p1

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/j;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/facebook/ads/internal/r/a;->q(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_3

    sget p2, Lcom/facebook/ads/internal/view/c;->a:I

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    goto :goto_3

    :cond_3
    iget p2, p0, Lcom/facebook/ads/internal/view/j;->h:I

    mul-int/lit8 p2, p2, 0x2

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/j;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/j;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    sub-int/2addr v1, p2

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/j;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v2

    const/4 v3, 0x0

    const v4, 0x7fffffff

    :goto_2
    if-le v4, v0, :cond_5

    add-int/lit8 v3, v3, 0x1

    if-lt v3, v2, :cond_4

    move p2, v0

    goto :goto_3

    :cond_4
    mul-int v4, v3, p2

    sub-int v4, v1, v4

    int-to-float v4, v4

    int-to-float v5, v3

    const v6, 0x3eaa7efa    # 0.333f

    add-float/2addr v5, v6

    div-float/2addr v4, v5

    float-to-int v4, v4

    goto :goto_2

    :cond_5
    move p2, v4

    :goto_3
    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/j;->getMeasuredWidth()I

    move-result v0

    add-int/2addr p1, p2

    invoke-virtual {p0, v0, p1}, Lcom/facebook/ads/internal/view/j;->setMeasuredDimension(II)V

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/j;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/facebook/ads/internal/r/a;->q(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_6

    iget p1, p0, Lcom/facebook/ads/internal/view/j;->h:I

    mul-int/lit8 p1, p1, 0x2

    add-int/2addr p2, p1

    invoke-virtual {p0, p2}, Lcom/facebook/ads/internal/view/j;->setChildWidth(I)V

    :cond_6
    return-void
.end method

.method public setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V
    .locals 2
    .param p1    # Landroid/support/v7/widget/RecyclerView$Adapter;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/facebook/ads/internal/view/j;->c:Lcom/facebook/ads/internal/view/HScrollLinearLayoutManager;

    if-nez p1, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/view/HScrollLinearLayoutManager;->a(I)V

    invoke-super {p0, p1}, Lcom/facebook/ads/internal/view/d/c;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public setChildSpacing(I)V
    .locals 0

    iput p1, p0, Lcom/facebook/ads/internal/view/j;->h:I

    return-void
.end method

.method public setChildWidth(I)V
    .locals 5

    iput p1, p0, Lcom/facebook/ads/internal/view/j;->g:I

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/j;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/j;->getPaddingLeft()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/j;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/facebook/ads/internal/view/j;->c:Lcom/facebook/ads/internal/view/HScrollLinearLayoutManager;

    iget v2, p0, Lcom/facebook/ads/internal/view/j;->g:I

    sub-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {v1, v0}, Lcom/facebook/ads/internal/view/HScrollLinearLayoutManager;->b(I)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/j;->c:Lcom/facebook/ads/internal/view/HScrollLinearLayoutManager;

    iget v1, p0, Lcom/facebook/ads/internal/view/j;->g:I

    int-to-double v1, v1

    int-to-double v3, p1

    div-double/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/facebook/ads/internal/view/HScrollLinearLayoutManager;->a(D)V

    return-void
.end method

.method public setCurrentPosition(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/facebook/ads/internal/view/j;->a(IZ)V

    return-void
.end method

.method public setOnPageChangedListener(Lcom/facebook/ads/internal/view/j$a;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/view/j;->d:Lcom/facebook/ads/internal/view/j$a;

    return-void
.end method
