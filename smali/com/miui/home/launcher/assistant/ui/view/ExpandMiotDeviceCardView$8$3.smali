.class Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView$8$3;
.super Ljava/lang/Object;
.source "ExpandMiotDeviceCardView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


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

.field final synthetic val$originBodyHeight:I

.field final synthetic val$tranY:I


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView$8;II)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView$8$3;->this$1:Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView$8;

    iput p2, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView$8$3;->val$originBodyHeight:I

    iput p3, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView$8$3;->val$tranY:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView$8$3;->this$1:Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView$8;

    iget-boolean v2, v2, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView$8;->val$isExpand:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView$8$3;->this$1:Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView$8;

    iget-object v2, v2, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView$8;->this$0:Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;

    invoke-virtual {v2, v1}, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;->setAlpha(F)V

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView$8$3;->this$1:Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView$8;

    iget-object v2, v2, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView$8;->this$0:Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;

    invoke-static {v2}, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;->access$400(Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;)Landroid/widget/GridView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/GridView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView$8$3;->this$1:Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView$8;

    iget-object v2, v2, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView$8;->this$0:Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;

    invoke-static {v2}, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;->access$700(Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;)I

    move-result v2

    iget v3, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView$8$3;->val$originBodyHeight:I

    iget-object v4, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView$8$3;->this$1:Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView$8;

    iget-object v4, v4, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView$8;->this$0:Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;

    invoke-static {v4}, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;->access$700(Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;)I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v3, v1

    float-to-int v3, v3

    add-int/2addr v2, v3

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView$8$3;->this$1:Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView$8;

    iget-object v2, v2, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView$8;->this$0:Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;

    invoke-static {v2}, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;->access$400(Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;)Landroid/widget/GridView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/GridView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView$8$3;->this$1:Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView$8;

    iget-object v2, v2, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView$8;->this$0:Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;

    invoke-static {v2}, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;->access$800(Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;)Landroid/widget/LinearLayout;

    move-result-object v2

    iget v3, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView$8$3;->val$tranY:I

    int-to-float v3, v3

    mul-float/2addr v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    goto :goto_0
.end method
