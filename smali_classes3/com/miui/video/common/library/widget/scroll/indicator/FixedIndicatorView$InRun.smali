.class Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView$InRun;
.super Ljava/lang/Object;
.source "FixedIndicatorView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InRun"
.end annotation


# instance fields
.field private final sInterpolator:Landroid/view/animation/Interpolator;

.field private scroller:Landroid/widget/Scroller;

.field final synthetic this$0:Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;

.field private updateTime:I


# direct methods
.method public constructor <init>(Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;)V
    .locals 2

    iput-object p1, p0, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView$InRun;->this$0:Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x14

    iput v0, p0, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView$InRun;->updateTime:I

    new-instance v0, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView$InRun$1;

    invoke-direct {v0, p0}, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView$InRun$1;-><init>(Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView$InRun;)V

    iput-object v0, p0, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView$InRun;->sInterpolator:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p1}, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView$InRun;->sInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {v0, p1, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView$InRun;->scroller:Landroid/widget/Scroller;

    return-void
.end method


# virtual methods
.method public computeScrollOffset()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView$InRun;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    return v0
.end method

.method public getCurrentX()I
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView$InRun;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    return v0
.end method

.method public isFinished()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView$InRun;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    return v0
.end method

.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView$InRun;->this$0:Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    iget-object v0, p0, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView$InRun;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView$InRun;->this$0:Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;

    iget v1, p0, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView$InRun;->updateTime:I

    int-to-long v1, v1

    invoke-virtual {v0, p0, v1, v2}, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public startScroll(III)V
    .locals 6

    iget-object v0, p0, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView$InRun;->scroller:Landroid/widget/Scroller;

    sub-int v3, p2, p1

    const/4 v2, 0x0

    const/4 v4, 0x0

    move v1, p1

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    iget-object p1, p0, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView$InRun;->this$0:Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;

    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    iget-object p1, p0, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView$InRun;->this$0:Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;

    invoke-virtual {p1, p0}, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public stop()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView$InRun;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView$InRun;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    :cond_0
    iget-object v0, p0, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView$InRun;->this$0:Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;

    invoke-virtual {v0, p0}, Lcom/miui/video/common/library/widget/scroll/indicator/FixedIndicatorView;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method
