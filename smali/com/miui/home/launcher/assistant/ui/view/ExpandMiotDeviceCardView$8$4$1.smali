.class Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView$8$4$1;
.super Ljava/lang/Object;
.source "ExpandMiotDeviceCardView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView$8$4;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView$8$4;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView$8$4;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView$8$4$1;->this$2:Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView$8$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView$8$4$1;->this$2:Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView$8$4;

    iget-object v0, v0, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView$8$4;->val$upAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method
