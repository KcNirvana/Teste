.class Lcom/facebook/ads/internal/view/u$b;
.super Landroid/support/v4/widget/ViewDragHelper$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/internal/view/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/view/u;


# direct methods
.method private constructor <init>(Lcom/facebook/ads/internal/view/u;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/view/u$b;->a:Lcom/facebook/ads/internal/view/u;

    invoke-direct {p0}, Landroid/support/v4/widget/ViewDragHelper$Callback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/ads/internal/view/u;Lcom/facebook/ads/internal/view/u$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/facebook/ads/internal/view/u$b;-><init>(Lcom/facebook/ads/internal/view/u;)V

    return-void
.end method


# virtual methods
.method public clampViewPositionVertical(Landroid/view/View;II)I
    .locals 0

    iget-object p1, p0, Lcom/facebook/ads/internal/view/u$b;->a:Lcom/facebook/ads/internal/view/u;

    invoke-virtual {p1}, Lcom/facebook/ads/internal/view/u;->getPaddingTop()I

    move-result p1

    iget-object p3, p0, Lcom/facebook/ads/internal/view/u$b;->a:Lcom/facebook/ads/internal/view/u;

    invoke-static {p3}, Lcom/facebook/ads/internal/view/u;->e(Lcom/facebook/ads/internal/view/u;)I

    move-result p3

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p1, p3}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1
.end method

.method public getViewVerticalDragRange(Landroid/view/View;)I
    .locals 0

    iget-object p1, p0, Lcom/facebook/ads/internal/view/u$b;->a:Lcom/facebook/ads/internal/view/u;

    invoke-static {p1}, Lcom/facebook/ads/internal/view/u;->e(Lcom/facebook/ads/internal/view/u;)I

    move-result p1

    return p1
.end method

.method public onViewDragStateChanged(I)V
    .locals 2

    iget-object v0, p0, Lcom/facebook/ads/internal/view/u$b;->a:Lcom/facebook/ads/internal/view/u;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/u;->a(Lcom/facebook/ads/internal/view/u;)I

    move-result v0

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_3

    iget-object v0, p0, Lcom/facebook/ads/internal/view/u$b;->a:Lcom/facebook/ads/internal/view/u;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/u;->a(Lcom/facebook/ads/internal/view/u;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/u$b;->a:Lcom/facebook/ads/internal/view/u;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/u;->a(Lcom/facebook/ads/internal/view/u;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/internal/view/u$b;->a:Lcom/facebook/ads/internal/view/u;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/u;->b(Lcom/facebook/ads/internal/view/u;)I

    move-result v0

    iget-object v1, p0, Lcom/facebook/ads/internal/view/u$b;->a:Lcom/facebook/ads/internal/view/u;

    invoke-static {v1}, Lcom/facebook/ads/internal/view/u;->c(Lcom/facebook/ads/internal/view/u;)I

    move-result v1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/internal/view/u$b;->a:Lcom/facebook/ads/internal/view/u;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/u;->d(Lcom/facebook/ads/internal/view/u;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/internal/view/u$b;->a:Lcom/facebook/ads/internal/view/u;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/u;->b(Lcom/facebook/ads/internal/view/u;)I

    move-result v0

    iget-object v1, p0, Lcom/facebook/ads/internal/view/u$b;->a:Lcom/facebook/ads/internal/view/u;

    invoke-static {v1}, Lcom/facebook/ads/internal/view/u;->e(Lcom/facebook/ads/internal/view/u;)I

    move-result v1

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/facebook/ads/internal/view/u$b;->a:Lcom/facebook/ads/internal/view/u;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/u;->f(Lcom/facebook/ads/internal/view/u;)V

    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/internal/view/u$b;->a:Lcom/facebook/ads/internal/view/u;

    invoke-static {v0, p1}, Lcom/facebook/ads/internal/view/u;->a(Lcom/facebook/ads/internal/view/u;I)I

    return-void
.end method

.method public onViewPositionChanged(Landroid/view/View;IIII)V
    .locals 0

    iget-object p1, p0, Lcom/facebook/ads/internal/view/u$b;->a:Lcom/facebook/ads/internal/view/u;

    invoke-static {p1, p3}, Lcom/facebook/ads/internal/view/u;->b(Lcom/facebook/ads/internal/view/u;I)I

    return-void
.end method

.method public onViewReleased(Landroid/view/View;FF)V
    .locals 4

    iget-object p1, p0, Lcom/facebook/ads/internal/view/u$b;->a:Lcom/facebook/ads/internal/view/u;

    invoke-static {p1}, Lcom/facebook/ads/internal/view/u;->b(Lcom/facebook/ads/internal/view/u;)I

    move-result p1

    iget-object p2, p0, Lcom/facebook/ads/internal/view/u$b;->a:Lcom/facebook/ads/internal/view/u;

    invoke-static {p2}, Lcom/facebook/ads/internal/view/u;->c(Lcom/facebook/ads/internal/view/u;)I

    move-result p2

    const/4 v0, 0x0

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lcom/facebook/ads/internal/view/u$b;->a:Lcom/facebook/ads/internal/view/u;

    invoke-static {p1, v0}, Lcom/facebook/ads/internal/view/u;->a(Lcom/facebook/ads/internal/view/u;Z)Z

    return-void

    :cond_0
    iget-object p1, p0, Lcom/facebook/ads/internal/view/u$b;->a:Lcom/facebook/ads/internal/view/u;

    invoke-static {p1}, Lcom/facebook/ads/internal/view/u;->b(Lcom/facebook/ads/internal/view/u;)I

    move-result p1

    iget-object p2, p0, Lcom/facebook/ads/internal/view/u$b;->a:Lcom/facebook/ads/internal/view/u;

    invoke-static {p2}, Lcom/facebook/ads/internal/view/u;->e(Lcom/facebook/ads/internal/view/u;)I

    move-result p2

    const/4 v1, 0x1

    if-ne p1, p2, :cond_1

    iget-object p1, p0, Lcom/facebook/ads/internal/view/u$b;->a:Lcom/facebook/ads/internal/view/u;

    invoke-static {p1, v1}, Lcom/facebook/ads/internal/view/u;->a(Lcom/facebook/ads/internal/view/u;Z)Z

    return-void

    :cond_1
    float-to-double p1, p3

    const-wide/high16 v2, 0x4089000000000000L    # 800.0

    cmpl-double p3, p1, v2

    if-lez p3, :cond_2

    goto :goto_1

    :cond_2
    const-wide/high16 v2, -0x3f77000000000000L    # -800.0

    cmpg-double p1, p1, v2

    if-gez p1, :cond_3

    :goto_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/facebook/ads/internal/view/u$b;->a:Lcom/facebook/ads/internal/view/u;

    invoke-static {p1}, Lcom/facebook/ads/internal/view/u;->b(Lcom/facebook/ads/internal/view/u;)I

    move-result p1

    iget-object p2, p0, Lcom/facebook/ads/internal/view/u$b;->a:Lcom/facebook/ads/internal/view/u;

    invoke-static {p2}, Lcom/facebook/ads/internal/view/u;->e(Lcom/facebook/ads/internal/view/u;)I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    if-le p1, p2, :cond_4

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lcom/facebook/ads/internal/view/u$b;->a:Lcom/facebook/ads/internal/view/u;

    invoke-static {p1}, Lcom/facebook/ads/internal/view/u;->b(Lcom/facebook/ads/internal/view/u;)I

    move-result p1

    iget-object p2, p0, Lcom/facebook/ads/internal/view/u$b;->a:Lcom/facebook/ads/internal/view/u;

    invoke-static {p2}, Lcom/facebook/ads/internal/view/u;->e(Lcom/facebook/ads/internal/view/u;)I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    goto :goto_0

    :goto_1
    if-eqz v1, :cond_5

    iget-object p1, p0, Lcom/facebook/ads/internal/view/u$b;->a:Lcom/facebook/ads/internal/view/u;

    invoke-static {p1}, Lcom/facebook/ads/internal/view/u;->e(Lcom/facebook/ads/internal/view/u;)I

    move-result p1

    goto :goto_2

    :cond_5
    iget-object p1, p0, Lcom/facebook/ads/internal/view/u$b;->a:Lcom/facebook/ads/internal/view/u;

    invoke-static {p1}, Lcom/facebook/ads/internal/view/u;->c(Lcom/facebook/ads/internal/view/u;)I

    move-result p1

    :goto_2
    iget-object p2, p0, Lcom/facebook/ads/internal/view/u$b;->a:Lcom/facebook/ads/internal/view/u;

    invoke-static {p2}, Lcom/facebook/ads/internal/view/u;->h(Lcom/facebook/ads/internal/view/u;)Landroid/support/v4/widget/ViewDragHelper;

    move-result-object p2

    invoke-virtual {p2, v0, p1}, Landroid/support/v4/widget/ViewDragHelper;->settleCapturedViewAt(II)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/facebook/ads/internal/view/u$b;->a:Lcom/facebook/ads/internal/view/u;

    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_6
    return-void
.end method

.method public tryCaptureView(Landroid/view/View;I)Z
    .locals 0

    iget-object p2, p0, Lcom/facebook/ads/internal/view/u$b;->a:Lcom/facebook/ads/internal/view/u;

    invoke-static {p2}, Lcom/facebook/ads/internal/view/u;->g(Lcom/facebook/ads/internal/view/u;)Lcom/facebook/ads/internal/view/component/a/l;

    move-result-object p2

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
