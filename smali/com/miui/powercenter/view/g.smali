.class final Lcom/miui/powercenter/view/g;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field final synthetic aKk:Lcom/miui/powercenter/view/GradientBall;


# direct methods
.method constructor <init>(Lcom/miui/powercenter/view/GradientBall;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/view/g;->aKk:Lcom/miui/powercenter/view/GradientBall;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/powercenter/view/g;->aKk:Lcom/miui/powercenter/view/GradientBall;

    invoke-static {v0}, Lcom/miui/powercenter/view/GradientBall;->aUq(Lcom/miui/powercenter/view/GradientBall;)Lcom/miui/powercenter/view/a;

    move-result-object v1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {v1, v0}, Lcom/miui/powercenter/view/a;->aUI(F)V

    return-void
.end method
