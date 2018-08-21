.class Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView$8;
.super Ljava/lang/Object;
.source "ExpandMiotDeviceCardView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;->startExpandAnim(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;

.field final synthetic val$isExpand:Z


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;Z)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView$8;->this$0:Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;

    iput-boolean p2, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView$8;->val$isExpand:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 14

    const-wide/16 v12, 0xfa

    const-wide/16 v10, 0x32

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v9, 0x1

    const/4 v8, 0x0

    iget-object v5, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView$8;->this$0:Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;

    invoke-virtual {v5}, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v5

    invoke-virtual {v5, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iget-object v5, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView$8;->this$0:Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;

    invoke-static {v5}, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;->access$500(Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;)I

    move-result v3

    iget-object v5, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView$8;->this$0:Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;

    invoke-static {v5}, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;->access$600(Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;)Landroid/widget/GridView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/GridView;->getHeight()I

    move-result v1

    new-array v5, v9, [F

    aput v6, v5, v8

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v4

    new-array v5, v9, [F

    aput v6, v5, v8

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-array v5, v9, [F

    aput v6, v5, v8

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    new-instance v5, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView$8$1;

    invoke-direct {v5, p0, v1, v3}, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView$8$1;-><init>(Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView$8;II)V

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v5, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView$8$2;

    invoke-direct {v5, p0}, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView$8$2;-><init>(Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView$8;)V

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v5, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView$8$3;

    invoke-direct {v5, p0, v1, v3}, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView$8$3;-><init>(Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView$8;II)V

    invoke-virtual {v0, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v5, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView$8$4;

    invoke-direct {v5, p0, v4, v2}, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView$8$4;-><init>(Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView$8;Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator;)V

    invoke-virtual {v0, v5}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v5, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView$8$5;

    invoke-direct {v5, p0}, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView$8$5;-><init>(Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView$8;)V

    invoke-virtual {v2, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v5, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView$8$6;

    invoke-direct {v5, p0, v4}, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView$8$6;-><init>(Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView$8;Landroid/animation/ValueAnimator;)V

    invoke-virtual {v2, v5}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    const/high16 v6, 0x40000000    # 2.0f

    invoke-direct {v5, v6}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    invoke-virtual {v2, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v6, 0x1f4

    invoke-virtual {v2, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-boolean v5, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView$8;->val$isExpand:Z

    if-eqz v5, :cond_0

    invoke-virtual {v4, v12, v13}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v10, v11}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v5, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView$8;->this$0:Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;

    invoke-static {v5}, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;->access$800(Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;)Landroid/widget/LinearLayout;

    move-result-object v5

    int-to-float v6, v3

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    iget-object v5, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView$8;->this$0:Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;

    invoke-static {v5}, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;->access$1100(Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return v9

    :cond_0
    invoke-virtual {v4, v10, v11}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v12, v13}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v5, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView$8;->this$0:Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;

    invoke-static {v5}, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;->access$1100(Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;)Landroid/view/View;

    move-result-object v5

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
