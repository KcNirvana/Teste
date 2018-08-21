.class Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView$7$6;
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

.field final synthetic val$upAnim:Landroid/animation/ValueAnimator;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView$7;Landroid/animation/ValueAnimator;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView$7$6;->this$1:Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView$7;

    iput-object p2, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView$7$6;->val$upAnim:Landroid/animation/ValueAnimator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView$7$6;->this$1:Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView$7;

    iget-object v0, v0, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView$7;->this$0:Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView$7$6;->val$upAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method
