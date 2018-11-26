.class final Lcom/miui/networkassistant/ui/view/BackgroundView$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/ui/view/BackgroundView;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/ui/view/BackgroundView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/view/BackgroundView$1;->this$0:Lcom/miui/networkassistant/ui/view/BackgroundView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    iget-object v1, p0, Lcom/miui/networkassistant/ui/view/BackgroundView$1;->this$0:Lcom/miui/networkassistant/ui/view/BackgroundView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const v2, 0x40c90fdb

    rem-float/2addr v0, v2

    invoke-static {v1, v0}, Lcom/miui/networkassistant/ui/view/BackgroundView;->-set0(Lcom/miui/networkassistant/ui/view/BackgroundView;F)F

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/BackgroundView$1;->this$0:Lcom/miui/networkassistant/ui/view/BackgroundView;

    invoke-virtual {v0}, Lcom/miui/networkassistant/ui/view/BackgroundView;->invalidate()V

    return-void
.end method
