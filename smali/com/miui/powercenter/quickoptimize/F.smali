.class final Lcom/miui/powercenter/quickoptimize/F;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field final synthetic aEY:Lcom/miui/powercenter/quickoptimize/MainContentFrame;

.field final synthetic aEZ:Z

.field final synthetic aFa:I


# direct methods
.method constructor <init>(Lcom/miui/powercenter/quickoptimize/MainContentFrame;ZI)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/quickoptimize/F;->aEY:Lcom/miui/powercenter/quickoptimize/MainContentFrame;

    iput-boolean p2, p0, Lcom/miui/powercenter/quickoptimize/F;->aEZ:Z

    iput p3, p0, Lcom/miui/powercenter/quickoptimize/F;->aFa:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    const/16 v2, 0x8

    iget-object v0, p0, Lcom/miui/powercenter/quickoptimize/F;->aEY:Lcom/miui/powercenter/quickoptimize/MainContentFrame;

    invoke-static {v0}, Lcom/miui/powercenter/quickoptimize/MainContentFrame;->aPQ(Lcom/miui/powercenter/quickoptimize/MainContentFrame;)Lcom/miui/common/customview/ScoreTextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/miui/common/customview/ScoreTextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/powercenter/quickoptimize/F;->aEY:Lcom/miui/powercenter/quickoptimize/MainContentFrame;

    invoke-static {v0}, Lcom/miui/powercenter/quickoptimize/MainContentFrame;->aPT(Lcom/miui/powercenter/quickoptimize/MainContentFrame;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/powercenter/quickoptimize/F;->aEY:Lcom/miui/powercenter/quickoptimize/MainContentFrame;

    invoke-static {v0}, Lcom/miui/powercenter/quickoptimize/MainContentFrame;->aPS(Lcom/miui/powercenter/quickoptimize/MainContentFrame;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/powercenter/quickoptimize/F;->aEY:Lcom/miui/powercenter/quickoptimize/MainContentFrame;

    invoke-static {v0}, Lcom/miui/powercenter/quickoptimize/MainContentFrame;->aPR(Lcom/miui/powercenter/quickoptimize/MainContentFrame;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const v1, 0x7f0a030c

    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v1, p0, Lcom/miui/powercenter/quickoptimize/F;->aEY:Lcom/miui/powercenter/quickoptimize/MainContentFrame;

    invoke-static {v1}, Lcom/miui/powercenter/quickoptimize/MainContentFrame;->aPR(Lcom/miui/powercenter/quickoptimize/MainContentFrame;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/miui/powercenter/quickoptimize/F;->aEY:Lcom/miui/powercenter/quickoptimize/MainContentFrame;

    iget-boolean v1, p0, Lcom/miui/powercenter/quickoptimize/F;->aEZ:Z

    iget v2, p0, Lcom/miui/powercenter/quickoptimize/F;->aFa:I

    invoke-static {v0, v1, v2}, Lcom/miui/powercenter/quickoptimize/MainContentFrame;->aPU(Lcom/miui/powercenter/quickoptimize/MainContentFrame;ZI)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
