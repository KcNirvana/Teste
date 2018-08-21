.class Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView$9;
.super Ljava/lang/Object;
.source "AssistHolderView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->setAiVisible(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;

.field final synthetic val$visibility:I


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;I)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView$9;->this$0:Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;

    iput p2, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView$9;->val$visibility:I

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

    iget v1, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView$9;->val$visibility:I

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView$9;->this$0:Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;

    invoke-static {v1}, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->access$1300(Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView$9;->this$0:Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;

    invoke-static {v1}, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->access$1300(Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;)Landroid/view/View;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, v0

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0
.end method
