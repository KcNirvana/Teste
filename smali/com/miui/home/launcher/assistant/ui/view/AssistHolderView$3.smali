.class Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView$3;
.super Ljava/lang/Object;
.source "AssistHolderView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->startSearchBoxMoveUpAni(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;

.field final synthetic val$dis:I


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;I)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView$3;->this$0:Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;

    iput p2, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView$3;->val$dis:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView$3;->this$0:Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;

    invoke-static {v1}, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->access$400(Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;)Landroid/graphics/Paint;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView$3;->this$0:Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;

    invoke-static {v1}, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->access$400(Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;)Landroid/graphics/Paint;

    move-result-object v1

    rsub-int v2, v0, 0xff

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    :cond_0
    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView$3;->this$0:Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;

    iget-object v1, v1, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->mAssistListView:Lcom/miui/home/launcher/assistant/ui/view/AssistListView;

    rsub-int v2, v0, 0xff

    int-to-float v2, v2

    const/high16 v3, 0x437f0000    # 255.0f

    div-float/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/assistant/ui/view/AssistListView;->setAlpha(F)V

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView$3;->this$0:Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;

    iget v2, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView$3;->val$dis:I

    mul-int/2addr v2, v0

    div-int/lit16 v2, v2, 0xff

    iget-object v3, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView$3;->this$0:Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;

    invoke-static {v3}, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->access$600(Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;)Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;->getTop()I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {v1, v2}, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->access$502(Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;I)I

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView$3;->this$0:Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;

    invoke-static {v1}, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->access$600(Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;)Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;->setVisibility(I)V

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView$3;->this$0:Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;

    invoke-virtual {v1}, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->invalidate()V

    return-void
.end method
