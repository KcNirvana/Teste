.class Lcom/miui/common/customview/d;
.super Landroid/support/v4/widget/ViewDragHelper$Callback;
.source ""


# instance fields
.field final synthetic ayU:Lcom/miui/common/customview/MovableLayout;


# direct methods
.method private constructor <init>(Lcom/miui/common/customview/MovableLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/common/customview/d;->ayU:Lcom/miui/common/customview/MovableLayout;

    invoke-direct {p0}, Landroid/support/v4/widget/ViewDragHelper$Callback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/common/customview/MovableLayout;Lcom/miui/common/customview/d;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/common/customview/d;-><init>(Lcom/miui/common/customview/MovableLayout;)V

    return-void
.end method

.method private aGl(I)I
    .locals 2

    if-lez p1, :cond_0

    iget-object v0, p0, Lcom/miui/common/customview/d;->ayU:Lcom/miui/common/customview/MovableLayout;

    invoke-static {v0}, Lcom/miui/common/customview/MovableLayout;->aGi(Lcom/miui/common/customview/MovableLayout;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    if-gez p1, :cond_1

    iget-object v0, p0, Lcom/miui/common/customview/d;->ayU:Lcom/miui/common/customview/MovableLayout;

    invoke-static {v0}, Lcom/miui/common/customview/MovableLayout;->aGj(Lcom/miui/common/customview/MovableLayout;)I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/common/customview/d;->ayU:Lcom/miui/common/customview/MovableLayout;

    invoke-static {v0}, Lcom/miui/common/customview/MovableLayout;->aGd(Lcom/miui/common/customview/MovableLayout;)I

    move-result v0

    iget-object v1, p0, Lcom/miui/common/customview/d;->ayU:Lcom/miui/common/customview/MovableLayout;

    invoke-static {v1}, Lcom/miui/common/customview/MovableLayout;->aGc(Lcom/miui/common/customview/MovableLayout;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/miui/common/customview/d;->ayU:Lcom/miui/common/customview/MovableLayout;

    invoke-static {v1}, Lcom/miui/common/customview/MovableLayout;->aGe(Lcom/miui/common/customview/MovableLayout;)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-le v0, v1, :cond_2

    iget-object v0, p0, Lcom/miui/common/customview/d;->ayU:Lcom/miui/common/customview/MovableLayout;

    invoke-static {v0}, Lcom/miui/common/customview/MovableLayout;->aGj(Lcom/miui/common/customview/MovableLayout;)I

    move-result v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/miui/common/customview/d;->ayU:Lcom/miui/common/customview/MovableLayout;

    invoke-static {v0}, Lcom/miui/common/customview/MovableLayout;->aGi(Lcom/miui/common/customview/MovableLayout;)I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public clampViewPositionVertical(Landroid/view/View;II)I
    .locals 2

    iget-object v0, p0, Lcom/miui/common/customview/d;->ayU:Lcom/miui/common/customview/MovableLayout;

    invoke-static {v0}, Lcom/miui/common/customview/MovableLayout;->aGj(Lcom/miui/common/customview/MovableLayout;)I

    move-result v0

    iget-object v1, p0, Lcom/miui/common/customview/d;->ayU:Lcom/miui/common/customview/MovableLayout;

    invoke-static {v1}, Lcom/miui/common/customview/MovableLayout;->aGd(Lcom/miui/common/customview/MovableLayout;)I

    move-result v1

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public getViewVerticalDragRange(Landroid/view/View;)I
    .locals 1

    iget-object v0, p0, Lcom/miui/common/customview/d;->ayU:Lcom/miui/common/customview/MovableLayout;

    invoke-static {v0}, Lcom/miui/common/customview/MovableLayout;->aGe(Lcom/miui/common/customview/MovableLayout;)I

    move-result v0

    return v0
.end method

.method public onViewDragStateChanged(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/common/customview/d;->ayU:Lcom/miui/common/customview/MovableLayout;

    invoke-static {v0}, Lcom/miui/common/customview/MovableLayout;->aGg(Lcom/miui/common/customview/MovableLayout;)I

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/miui/common/customview/d;->ayU:Lcom/miui/common/customview/MovableLayout;

    invoke-virtual {v0}, Lcom/miui/common/customview/MovableLayout;->aFX()V

    iget-object v0, p0, Lcom/miui/common/customview/d;->ayU:Lcom/miui/common/customview/MovableLayout;

    invoke-static {v0, p1}, Lcom/miui/common/customview/MovableLayout;->aGh(Lcom/miui/common/customview/MovableLayout;I)I

    return-void

    :cond_1
    const/4 v0, 0x1

    if-eq v0, p1, :cond_2

    const/4 v0, 0x2

    if-ne v0, p1, :cond_4

    :cond_2
    iget-object v0, p0, Lcom/miui/common/customview/d;->ayU:Lcom/miui/common/customview/MovableLayout;

    invoke-static {v0}, Lcom/miui/common/customview/MovableLayout;->aGg(Lcom/miui/common/customview/MovableLayout;)I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/miui/common/customview/d;->ayU:Lcom/miui/common/customview/MovableLayout;

    invoke-virtual {v0}, Lcom/miui/common/customview/MovableLayout;->aFW()V

    :cond_3
    iget-object v0, p0, Lcom/miui/common/customview/d;->ayU:Lcom/miui/common/customview/MovableLayout;

    invoke-static {v0, p1}, Lcom/miui/common/customview/MovableLayout;->aGh(Lcom/miui/common/customview/MovableLayout;I)I

    :cond_4
    return-void
.end method

.method public onViewPositionChanged(Landroid/view/View;IIII)V
    .locals 1

    iget-object v0, p0, Lcom/miui/common/customview/d;->ayU:Lcom/miui/common/customview/MovableLayout;

    invoke-static {v0, p3}, Lcom/miui/common/customview/MovableLayout;->aGk(Lcom/miui/common/customview/MovableLayout;I)V

    iget-object v0, p0, Lcom/miui/common/customview/d;->ayU:Lcom/miui/common/customview/MovableLayout;

    invoke-virtual {v0}, Lcom/miui/common/customview/MovableLayout;->postInvalidate()V

    return-void
.end method

.method public onViewReleased(Landroid/view/View;FF)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    float-to-int v1, p3

    invoke-direct {p0, v1}, Lcom/miui/common/customview/d;->aGl(I)I

    move-result v1

    iget-object v2, p0, Lcom/miui/common/customview/d;->ayU:Lcom/miui/common/customview/MovableLayout;

    invoke-static {v2}, Lcom/miui/common/customview/MovableLayout;->aGf(Lcom/miui/common/customview/MovableLayout;)Landroid/support/v4/widget/ViewDragHelper;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/common/customview/d;->ayU:Lcom/miui/common/customview/MovableLayout;

    invoke-static {v3}, Lcom/miui/common/customview/MovableLayout;->aGc(Lcom/miui/common/customview/MovableLayout;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3, v0, v1}, Landroid/support/v4/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    iget-object v0, p0, Lcom/miui/common/customview/d;->ayU:Lcom/miui/common/customview/MovableLayout;

    invoke-virtual {v0}, Lcom/miui/common/customview/MovableLayout;->postInvalidate()V

    return-void
.end method

.method public tryCaptureView(Landroid/view/View;I)Z
    .locals 1

    iget-object v0, p0, Lcom/miui/common/customview/d;->ayU:Lcom/miui/common/customview/MovableLayout;

    invoke-static {v0}, Lcom/miui/common/customview/MovableLayout;->aGc(Lcom/miui/common/customview/MovableLayout;)Landroid/view/View;

    move-result-object v0

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
