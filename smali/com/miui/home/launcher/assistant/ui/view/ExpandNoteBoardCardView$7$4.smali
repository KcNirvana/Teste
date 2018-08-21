.class Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView$7$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ExpandNoteBoardCardView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView$7;->onPreDraw()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView$7;

.field final synthetic val$outAnim:Landroid/animation/ValueAnimator;

.field final synthetic val$upAnim:Landroid/animation/ValueAnimator;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView$7;Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView$7$4;->this$1:Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView$7;

    iput-object p2, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView$7$4;->val$upAnim:Landroid/animation/ValueAnimator;

    iput-object p3, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView$7$4;->val$outAnim:Landroid/animation/ValueAnimator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView$7$4;->this$1:Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView$7;

    iget-boolean v0, v0, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView$7;->val$isExpand:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView$7$4;->this$1:Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView$7;

    iget-object v0, v0, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView$7;->this$0:Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;->setAlpha(F)V

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView$7$4;->this$1:Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView$7;

    iget-object v0, v0, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView$7;->this$0:Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;

    invoke-virtual {v0, v2}, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView$7$4;->this$1:Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView$7;

    iget-object v0, v0, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView$7;->this$0:Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;

    invoke-static {v0}, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;->access$2000(Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;)V

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView$7$4;->this$1:Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView$7;

    iget-object v0, v0, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView$7;->this$0:Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;->access$2100(Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;Z)V

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView$7$4;->val$upAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView$7$4;->val$outAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    invoke-static {}, Lcom/miui/home/launcher/assistant/ui/AssistHolderController;->getInstance()Lcom/miui/home/launcher/assistant/ui/AssistHolderController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/miui/home/launcher/assistant/ui/AssistHolderController;->playAnimation(ZLandroid/animation/Animator$AnimatorListener;)V

    invoke-static {}, Lcom/miui/home/launcher/assistant/util/NoteUtil;->dismissDialog()V

    goto :goto_0
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView$7$4;->this$1:Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView$7;

    iget-object v0, v0, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView$7;->this$0:Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;

    invoke-static {v0, v3}, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;->access$1602(Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;Z)Z

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView$7$4;->this$1:Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView$7;

    iget-boolean v0, v0, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView$7;->val$isExpand:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/assistant/ui/AssistHolderController;->getInstance()Lcom/miui/home/launcher/assistant/ui/AssistHolderController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v3, v1}, Lcom/miui/home/launcher/assistant/ui/AssistHolderController;->playAnimation(ZLandroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView$7$4;->this$1:Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView$7;

    iget-object v0, v0, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView$7;->this$0:Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;

    invoke-static {v0}, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;->access$2200(Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView$7$4;->this$1:Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView$7;

    iget-object v0, v0, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView$7;->this$0:Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;

    const/16 v1, 0x30

    invoke-static {v0, v1}, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;->access$1900(Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView$7$4;->this$1:Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView$7;

    iget-object v0, v0, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView$7;->this$0:Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;

    invoke-static {v0}, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;->access$2200(Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView$7$4;->this$1:Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView$7;

    iget-object v0, v0, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView$7;->this$0:Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;

    invoke-static {v0}, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;->access$500(Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setSelection(I)V

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView$7$4;->this$1:Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView$7;

    iget-object v0, v0, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView$7;->this$0:Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;

    invoke-static {v0}, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;->access$500(Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setCursorVisible(Z)V

    goto :goto_0
.end method
