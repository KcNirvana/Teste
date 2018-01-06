.class Lcom/miui/weather2/view/onOnePage/bi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic a:Lcom/miui/weather2/view/onOnePage/VerticalCarousel;


# direct methods
.method constructor <init>(Lcom/miui/weather2/view/onOnePage/VerticalCarousel;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/view/onOnePage/bi;->a:Lcom/miui/weather2/view/onOnePage/VerticalCarousel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 5

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/bi;->a:Lcom/miui/weather2/view/onOnePage/VerticalCarousel;

    invoke-static {v0}, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;->a(Lcom/miui/weather2/view/onOnePage/VerticalCarousel;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/bi;->a:Lcom/miui/weather2/view/onOnePage/VerticalCarousel;

    invoke-static {v0}, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;->d(Lcom/miui/weather2/view/onOnePage/VerticalCarousel;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/bi;->a:Lcom/miui/weather2/view/onOnePage/VerticalCarousel;

    iget-object v1, p0, Lcom/miui/weather2/view/onOnePage/bi;->a:Lcom/miui/weather2/view/onOnePage/VerticalCarousel;

    invoke-static {v1}, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;->e(Lcom/miui/weather2/view/onOnePage/VerticalCarousel;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/miui/weather2/view/onOnePage/bi;->a:Lcom/miui/weather2/view/onOnePage/VerticalCarousel;

    invoke-static {v2}, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;->d(Lcom/miui/weather2/view/onOnePage/VerticalCarousel;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    rem-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;->a(Lcom/miui/weather2/view/onOnePage/VerticalCarousel;I)I

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/bi;->a:Lcom/miui/weather2/view/onOnePage/VerticalCarousel;

    iget-object v1, p0, Lcom/miui/weather2/view/onOnePage/bi;->a:Lcom/miui/weather2/view/onOnePage/VerticalCarousel;

    invoke-static {v1}, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;->k(Lcom/miui/weather2/view/onOnePage/VerticalCarousel;)[I

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;->getLocationOnScreen([I)V

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/bi;->a:Lcom/miui/weather2/view/onOnePage/VerticalCarousel;

    invoke-virtual {v0}, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/bi;->a:Lcom/miui/weather2/view/onOnePage/VerticalCarousel;

    invoke-static {v0}, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;->k(Lcom/miui/weather2/view/onOnePage/VerticalCarousel;)[I

    move-result-object v0

    aget v0, v0, v3

    iget-object v1, p0, Lcom/miui/weather2/view/onOnePage/bi;->a:Lcom/miui/weather2/view/onOnePage/VerticalCarousel;

    invoke-static {v1}, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;->l(Lcom/miui/weather2/view/onOnePage/VerticalCarousel;)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/bi;->a:Lcom/miui/weather2/view/onOnePage/VerticalCarousel;

    invoke-static {v0}, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;->k(Lcom/miui/weather2/view/onOnePage/VerticalCarousel;)[I

    move-result-object v0

    aget v0, v0, v3

    iget-object v1, p0, Lcom/miui/weather2/view/onOnePage/bi;->a:Lcom/miui/weather2/view/onOnePage/VerticalCarousel;

    invoke-static {v1}, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;->l(Lcom/miui/weather2/view/onOnePage/VerticalCarousel;)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/miui/weather2/view/onOnePage/bi;->a:Lcom/miui/weather2/view/onOnePage/VerticalCarousel;

    invoke-static {v1}, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;->m(Lcom/miui/weather2/view/onOnePage/VerticalCarousel;)I

    move-result v1

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/bi;->a:Lcom/miui/weather2/view/onOnePage/VerticalCarousel;

    const-string v1, "alert_show"

    invoke-static {v0, v1}, Lcom/miui/weather2/tools/bi;->a(Lcom/miui/weather2/view/onOnePage/VerticalCarousel;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/bi;->a:Lcom/miui/weather2/view/onOnePage/VerticalCarousel;

    invoke-static {v0}, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;->n(Lcom/miui/weather2/view/onOnePage/VerticalCarousel;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/bi;->a:Lcom/miui/weather2/view/onOnePage/VerticalCarousel;

    invoke-static {v0}, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;->n(Lcom/miui/weather2/view/onOnePage/VerticalCarousel;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x1194

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
