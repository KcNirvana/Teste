.class final Lcom/miui/powercenter/view/d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field final synthetic aKh:Lcom/miui/powercenter/view/GradientBall;


# direct methods
.method constructor <init>(Lcom/miui/powercenter/view/GradientBall;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/view/d;->aKh:Lcom/miui/powercenter/view/GradientBall;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget-object v1, p0, Lcom/miui/powercenter/view/d;->aKh:Lcom/miui/powercenter/view/GradientBall;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v1, v0}, Lcom/miui/powercenter/view/GradientBall;->aUy(Lcom/miui/powercenter/view/GradientBall;F)F

    iget-object v0, p0, Lcom/miui/powercenter/view/d;->aKh:Lcom/miui/powercenter/view/GradientBall;

    invoke-static {v0}, Lcom/miui/powercenter/view/GradientBall;->aUp(Lcom/miui/powercenter/view/GradientBall;)Lcom/miui/powercenter/view/a;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/powercenter/view/d;->aKh:Lcom/miui/powercenter/view/GradientBall;

    invoke-static {v1}, Lcom/miui/powercenter/view/GradientBall;->aUt(Lcom/miui/powercenter/view/GradientBall;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/powercenter/view/a;->aUH(F)V

    iget-object v0, p0, Lcom/miui/powercenter/view/d;->aKh:Lcom/miui/powercenter/view/GradientBall;

    invoke-static {v0}, Lcom/miui/powercenter/view/GradientBall;->aUq(Lcom/miui/powercenter/view/GradientBall;)Lcom/miui/powercenter/view/a;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/powercenter/view/d;->aKh:Lcom/miui/powercenter/view/GradientBall;

    invoke-static {v1}, Lcom/miui/powercenter/view/GradientBall;->aUt(Lcom/miui/powercenter/view/GradientBall;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/powercenter/view/a;->aUH(F)V

    iget-object v0, p0, Lcom/miui/powercenter/view/d;->aKh:Lcom/miui/powercenter/view/GradientBall;

    invoke-static {v0}, Lcom/miui/powercenter/view/GradientBall;->aUw(Lcom/miui/powercenter/view/GradientBall;)Lcom/miui/powercenter/view/a;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/powercenter/view/d;->aKh:Lcom/miui/powercenter/view/GradientBall;

    invoke-static {v1}, Lcom/miui/powercenter/view/GradientBall;->aUt(Lcom/miui/powercenter/view/GradientBall;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/powercenter/view/a;->aUH(F)V

    return-void
.end method
