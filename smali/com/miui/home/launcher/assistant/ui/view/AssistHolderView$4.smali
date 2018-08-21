.class Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView$4;
.super Ljava/lang/Object;
.source "AssistHolderView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->startSearchBoxMoveDownAni()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;

.field final synthetic val$dis:I

.field final synthetic val$ss:I


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;II)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView$4;->this$0:Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;

    iput p2, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView$4;->val$dis:I

    iput p3, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView$4;->val$ss:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView$4;->this$0:Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;

    iget v2, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView$4;->val$dis:I

    mul-int/2addr v2, v0

    div-int/lit16 v2, v2, 0xff

    iget v3, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView$4;->val$ss:I

    add-int/2addr v2, v3

    invoke-static {v1, v2}, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->access$502(Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;I)I

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView$4;->this$0:Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;

    invoke-static {v1}, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->access$400(Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;)Landroid/graphics/Paint;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView$4;->this$0:Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;

    invoke-static {v1}, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->access$400(Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;)Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    :cond_0
    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView$4;->this$0:Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;

    iget-object v1, v1, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->mAssistListView:Lcom/miui/home/launcher/assistant/ui/view/AssistListView;

    int-to-float v2, v0

    const/high16 v3, 0x437f0000    # 255.0f

    div-float/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/assistant/ui/view/AssistListView;->setAlpha(F)V

    const/16 v1, 0xff

    if-ne v0, v1, :cond_2

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView$4;->this$0:Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;

    invoke-static {v1}, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->access$700(Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView$4;->this$0:Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;

    invoke-static {v1}, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->access$700(Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView$4;->this$0:Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;

    invoke-static {v1, v4}, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->access$702(Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView$4;->this$0:Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;

    invoke-static {v1, v4}, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->access$402(Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;Landroid/graphics/Paint;)Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView$4;->this$0:Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;

    invoke-static {v1}, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->access$600(Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;)Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/assistant/ui/view/SearchCardView;->setVisibility(I)V

    :cond_2
    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView$4;->this$0:Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;

    invoke-virtual {v1}, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->invalidate()V

    return-void
.end method
