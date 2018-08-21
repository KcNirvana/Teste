.class Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView$8$2;
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


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView$8;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView$8$2;->this$1:Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView$8;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView$8$2;->this$1:Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView$8;

    iget-object v0, v0, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView$8;->this$0:Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;

    invoke-static {v0, v1}, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;->access$902(Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;Z)Z

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView$8$2;->this$1:Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView$8;

    iget-boolean v0, v0, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView$8;->val$isExpand:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView$8$2;->this$1:Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView$8;

    iget-object v0, v0, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView$8;->this$0:Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;->access$002(Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;Z)Z

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView$8$2;->this$1:Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView$8;

    iget-object v0, v0, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView$8;->this$0:Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;->requestFocus()Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView$8$2;->this$1:Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView$8;

    iget-object v0, v0, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView$8;->this$0:Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;

    invoke-static {v0, v1}, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;->access$002(Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;Z)Z

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView$8$2;->this$1:Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView$8;

    iget-object v0, v0, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView$8;->this$0:Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;->setVisibility(I)V

    goto :goto_0
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView$8$2;->this$1:Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView$8;

    iget-object v1, v1, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView$8;->this$0:Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;

    invoke-static {v1}, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;->access$800(Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView$8$2;->this$1:Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView$8;

    iget-object v1, v1, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView$8;->this$0:Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;

    invoke-static {v1}, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;->access$1000(Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView$8$2;->this$1:Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView$8;

    iget-object v1, v1, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView$8;->this$0:Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;

    invoke-static {v1}, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;->access$800(Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
