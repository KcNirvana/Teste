.class Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView$7$1;
.super Ljava/lang/Object;
.source "ExpandNoteBoardCardView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


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

.field final synthetic val$originBodyHeight:I

.field final synthetic val$tranY:I


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView$7;II)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView$7$1;->this$1:Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView$7;

    iput p2, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView$7$1;->val$originBodyHeight:I

    iput p3, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView$7$1;->val$tranY:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView$7$1;->this$1:Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView$7;

    iget-object v2, v2, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView$7;->this$0:Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;

    invoke-static {v2}, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;->access$1300(Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v2, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView$7$1;->val$originBodyHeight:I

    iget-object v3, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView$7$1;->this$1:Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView$7;

    iget-object v3, v3, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView$7;->this$0:Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;

    invoke-static {v3}, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;->access$1400(Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;)I

    move-result v3

    iget v4, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView$7$1;->val$originBodyHeight:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v3, v1

    float-to-int v3, v3

    add-int/2addr v2, v3

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView$7$1;->this$1:Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView$7;

    iget-object v2, v2, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView$7;->this$0:Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;

    invoke-static {v2}, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;->access$1300(Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView$7$1;->this$1:Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView$7;

    iget-object v2, v2, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView$7;->this$0:Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;

    invoke-static {v2}, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;->access$1500(Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;)Landroid/widget/LinearLayout;

    move-result-object v2

    iget v3, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView$7$1;->val$tranY:I

    int-to-float v3, v3

    sub-float v4, v5, v1

    mul-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView$7$1;->this$1:Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView$7;

    iget-object v2, v2, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView$7;->this$0:Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;

    invoke-static {v2}, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;->access$1300(Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;)Landroid/widget/LinearLayout;

    move-result-object v2

    iget v3, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView$7$1;->val$tranY:I

    int-to-float v3, v3

    sub-float v4, v5, v1

    mul-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    return-void
.end method
