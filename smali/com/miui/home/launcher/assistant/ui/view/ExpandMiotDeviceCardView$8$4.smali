.class Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView$8$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ExpandMiotDeviceCardView.java"


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

.field final synthetic val$outAnim:Landroid/animation/ValueAnimator;

.field final synthetic val$upAnim:Landroid/animation/ValueAnimator;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView$8;Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView$8$4;->this$1:Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView$8;

    iput-object p2, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView$8$4;->val$upAnim:Landroid/animation/ValueAnimator;

    iput-object p3, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView$8$4;->val$outAnim:Landroid/animation/ValueAnimator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView$8$4;->this$1:Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView$8;

    iget-boolean v0, v0, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView$8;->val$isExpand:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView$8$4;->this$1:Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView$8;

    iget-object v0, v0, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView$8;->this$0:Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;->setAlpha(F)V

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView$8$4;->this$1:Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView$8;

    iget-object v0, v0, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView$8;->this$0:Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;

    invoke-virtual {v0, v2}, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;->setVisibility(I)V

    invoke-static {}, Lcom/miui/home/launcher/assistant/ui/AssistHolderController;->getInstance()Lcom/miui/home/launcher/assistant/ui/AssistHolderController;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v3}, Lcom/miui/home/launcher/assistant/ui/AssistHolderController;->playAnimation(ZLandroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView$8$4;->this$1:Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView$8;

    iget-object v0, v0, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView$8;->this$0:Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;

    new-instance v1, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView$8$4$1;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView$8$4$1;-><init>(Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView$8$4;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView$8$4;->val$outAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    invoke-static {}, Lcom/miui/home/launcher/assistant/ui/AssistHolderController;->getInstance()Lcom/miui/home/launcher/assistant/ui/AssistHolderController;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Lcom/miui/home/launcher/assistant/ui/AssistHolderController;->playAnimation(ZLandroid/animation/Animator$AnimatorListener;)V

    goto :goto_0
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView$8$4;->this$1:Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView$8;

    iget-object v0, v0, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView$8;->this$0:Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;->access$902(Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;Z)Z

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView$8$4;->this$1:Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView$8;

    iget-boolean v0, v0, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView$8;->val$isExpand:Z

    if-eqz v0, :cond_0

    :cond_0
    return-void
.end method
