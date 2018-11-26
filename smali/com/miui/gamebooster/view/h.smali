.class final Lcom/miui/gamebooster/view/h;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field final synthetic oo:Lcom/miui/gamebooster/view/IncomingCallFloatBall;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/view/IncomingCallFloatBall;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/view/h;->oo:Lcom/miui/gamebooster/view/IncomingCallFloatBall;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Point;

    iget-object v1, p0, Lcom/miui/gamebooster/view/h;->oo:Lcom/miui/gamebooster/view/IncomingCallFloatBall;

    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v2, v0}, Lcom/miui/gamebooster/view/IncomingCallFloatBall;->qQ(II)V

    return-void
.end method
