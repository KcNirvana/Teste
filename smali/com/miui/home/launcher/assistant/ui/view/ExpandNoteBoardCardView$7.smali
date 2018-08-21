.class Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView$7;
.super Ljava/lang/Object;
.source "ExpandNoteBoardCardView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;->startExpandAnim(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;

.field final synthetic val$isExpand:Z


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;Z)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView$7;->this$0:Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;

    iput-boolean p2, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView$7;->val$isExpand:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 14

    const-wide/16 v12, 0xfa

    const-wide/16 v10, 0x32

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x1

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView$7;->this$0:Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;

    invoke-virtual {v6}, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v6

    invoke-virtual {v6, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iget-object v6, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView$7;->this$0:Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;

    invoke-static {v6}, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;->access$1100(Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;)I

    move-result v3

    iget-boolean v6, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView$7;->val$isExpand:Z

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView$7;->this$0:Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;

    invoke-static {v6}, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;->access$900(Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v1, v5

    :goto_0
    new-array v6, v8, [F

    aput v7, v6, v5

    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v4

    new-array v6, v8, [F

    aput v7, v6, v5

    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-array v6, v8, [F

    aput v7, v6, v5

    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    new-instance v5, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView$7$1;

    invoke-direct {v5, p0, v1, v3}, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView$7$1;-><init>(Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView$7;II)V

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v5, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView$7$2;

    invoke-direct {v5, p0}, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView$7$2;-><init>(Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView$7;)V

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v5, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView$7$3;

    invoke-direct {v5, p0, v1, v3}, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView$7$3;-><init>(Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView$7;II)V

    invoke-virtual {v0, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v5, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView$7$4;

    invoke-direct {v5, p0, v4, v2}, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView$7$4;-><init>(Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView$7;Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator;)V

    invoke-virtual {v0, v5}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v5, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView$7$5;

    invoke-direct {v5, p0}, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView$7$5;-><init>(Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView$7;)V

    invoke-virtual {v2, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v5, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView$7$6;

    invoke-direct {v5, p0, v4}, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView$7$6;-><init>(Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView$7;Landroid/animation/ValueAnimator;)V

    invoke-virtual {v2, v5}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v2, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v6, 0x1f4

    invoke-virtual {v2, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-boolean v5, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView$7;->val$isExpand:Z

    if-eqz v5, :cond_1

    invoke-virtual {v4, v12, v13}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v10, v11}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    :goto_1
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return v8

    :cond_0
    iget-object v6, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView$7;->this$0:Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;

    invoke-static {v6}, Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;->access$1200(Lcom/miui/home/launcher/assistant/ui/view/ExpandNoteBoardCardView;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TextView;->getHeight()I

    move-result v1

    goto :goto_0

    :cond_1
    invoke-virtual {v4, v10, v11}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v12, v13}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    goto :goto_1
.end method
