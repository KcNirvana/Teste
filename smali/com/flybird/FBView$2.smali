.class Lcom/flybird/FBView$2;
.super Ljava/lang/Object;
.source "FBView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field final synthetic this$0:Lcom/flybird/FBView;


# direct methods
.method constructor <init>(Lcom/flybird/FBView;)V
    .locals 0

    iput-object p1, p0, Lcom/flybird/FBView$2;->this$0:Lcom/flybird/FBView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/flybird/FBView$2;->this$0:Lcom/flybird/FBView;

    iget-object v1, v1, Lcom/flybird/FBView;->mParams:Landroid/widget/FrameLayout$LayoutParams;

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget-object v0, p0, Lcom/flybird/FBView$2;->this$0:Lcom/flybird/FBView;

    iget-object v0, v0, Lcom/flybird/FBView;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flybird/FBView$2;->this$0:Lcom/flybird/FBView;

    iget-object v0, v0, Lcom/flybird/FBView;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/flybird/FBView$2;->this$0:Lcom/flybird/FBView;

    iget-object v1, v1, Lcom/flybird/FBView;->mParams:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method
