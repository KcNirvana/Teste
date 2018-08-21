.class Lcom/miui/home/launcher/assistant/ui/widget/GadgetClearView$2$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "GadgetClearView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/assistant/ui/widget/GadgetClearView$2;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/home/launcher/assistant/ui/widget/GadgetClearView$2;

.field final synthetic val$currUsedMemory:I

.field final synthetic val$freeMemory:I


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/assistant/ui/widget/GadgetClearView$2;II)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/ui/widget/GadgetClearView$2$1;->this$1:Lcom/miui/home/launcher/assistant/ui/widget/GadgetClearView$2;

    iput p2, p0, Lcom/miui/home/launcher/assistant/ui/widget/GadgetClearView$2$1;->val$currUsedMemory:I

    iput p3, p0, Lcom/miui/home/launcher/assistant/ui/widget/GadgetClearView$2$1;->val$freeMemory:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/widget/GadgetClearView$2$1;->this$1:Lcom/miui/home/launcher/assistant/ui/widget/GadgetClearView$2;

    iget v1, v1, Lcom/miui/home/launcher/assistant/ui/widget/GadgetClearView$2;->val$preUsedMemory:I

    iget v2, p0, Lcom/miui/home/launcher/assistant/ui/widget/GadgetClearView$2$1;->val$currUsedMemory:I

    sub-int v0, v1, v2

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/widget/GadgetClearView$2$1;->this$1:Lcom/miui/home/launcher/assistant/ui/widget/GadgetClearView$2;

    iget-object v1, v1, Lcom/miui/home/launcher/assistant/ui/widget/GadgetClearView$2;->this$0:Lcom/miui/home/launcher/assistant/ui/widget/GadgetClearView;

    iget v2, p0, Lcom/miui/home/launcher/assistant/ui/widget/GadgetClearView$2$1;->val$freeMemory:I

    invoke-static {v1, v0, v2}, Lcom/miui/home/launcher/assistant/ui/widget/GadgetClearView;->access$300(Lcom/miui/home/launcher/assistant/ui/widget/GadgetClearView;II)V

    return-void
.end method
