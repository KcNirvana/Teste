.class Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView$8$5;
.super Ljava/lang/Object;
.source "ExpandMiotDeviceCardView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView$8;->onPreDraw()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView$8;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView$8;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView$8$5;->this$1:Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView$8$5;->this$1:Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView$8;

    iget-object v1, v1, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView$8;->this$0:Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, v0

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;->setAlpha(F)V

    return-void
.end method
