.class Lcom/miui/home/launcher/assistant/ui/widget/GadgetClearView$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "GadgetClearView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/assistant/ui/widget/GadgetClearView;->playBarAnim(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/assistant/ui/widget/GadgetClearView;

.field final synthetic val$preUsedMemory:I


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/assistant/ui/widget/GadgetClearView;I)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/ui/widget/GadgetClearView$2;->this$0:Lcom/miui/home/launcher/assistant/ui/widget/GadgetClearView;

    iput p2, p0, Lcom/miui/home/launcher/assistant/ui/widget/GadgetClearView$2;->val$preUsedMemory:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    const-string/jumbo v2, "GadgetClearView"

    const-string/jumbo v3, "onAnimationEnd"

    invoke-static {v2, v3}, Lcom/miui/home/launcher/assistant/config/PALog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/ui/widget/GadgetClearView$2;->this$0:Lcom/miui/home/launcher/assistant/ui/widget/GadgetClearView;

    invoke-static {v2}, Lcom/miui/home/launcher/assistant/ui/widget/GadgetClearView;->access$100(Lcom/miui/home/launcher/assistant/ui/widget/GadgetClearView;)I

    move-result v1

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/ui/widget/GadgetClearView$2;->this$0:Lcom/miui/home/launcher/assistant/ui/widget/GadgetClearView;

    invoke-static {v2}, Lcom/miui/home/launcher/assistant/ui/widget/GadgetClearView;->access$200(Lcom/miui/home/launcher/assistant/ui/widget/GadgetClearView;)I

    move-result v2

    sub-int v0, v2, v1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v2, v3, :cond_0

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/ui/widget/GadgetClearView$2;->this$0:Lcom/miui/home/launcher/assistant/ui/widget/GadgetClearView;

    invoke-static {v2}, Lcom/miui/home/launcher/assistant/ui/widget/GadgetClearView;->access$400(Lcom/miui/home/launcher/assistant/ui/widget/GadgetClearView;)Lcom/miui/home/launcher/assistant/ui/widget/CircleProgressBar;

    move-result-object v2

    new-instance v3, Lcom/miui/home/launcher/assistant/ui/widget/GadgetClearView$2$1;

    invoke-direct {v3, p0, v0, v1}, Lcom/miui/home/launcher/assistant/ui/widget/GadgetClearView$2$1;-><init>(Lcom/miui/home/launcher/assistant/ui/widget/GadgetClearView$2;II)V

    invoke-virtual {v2, v0, v3}, Lcom/miui/home/launcher/assistant/ui/widget/CircleProgressBar;->setProgressByAnimator(ILandroid/animation/Animator$AnimatorListener;)V

    :cond_0
    return-void
.end method
