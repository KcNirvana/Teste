.class Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView$7$2;
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


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView$7;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView$7$2;->this$1:Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView$7;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView$7$2;->this$1:Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView$7;

    iget-object v0, v0, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView$7;->this$0:Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;

    invoke-static {v0, v1}, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;->access$1602(Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;Z)Z

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView$7$2;->this$1:Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView$7;

    iget-boolean v0, v0, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView$7;->val$isExpand:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView$7$2;->this$1:Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView$7;

    iget-object v0, v0, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView$7;->this$0:Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;->access$1702(Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;Z)Z

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView$7$2;->this$1:Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView$7;

    iget-object v0, v0, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView$7;->this$0:Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;

    invoke-static {v0}, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;->access$1800(Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;)V

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView$7$2;->this$1:Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView$7;

    iget-object v0, v0, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView$7;->this$0:Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;

    const/16 v1, 0x23

    invoke-static {v0, v1}, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;->access$1900(Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView$7$2;->this$1:Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView$7;

    iget-object v0, v0, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView$7;->this$0:Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;

    invoke-static {v0, v1}, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;->access$1702(Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;Z)Z

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView$7$2;->this$1:Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView$7;

    iget-object v0, v0, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView$7;->this$0:Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;->setVisibility(I)V

    goto :goto_0
.end method
