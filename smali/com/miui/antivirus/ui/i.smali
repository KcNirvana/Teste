.class final Lcom/miui/antivirus/ui/i;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field final synthetic aqK:Lcom/miui/antivirus/ui/MainContentFrame;

.field final synthetic aqL:Ljava/lang/Boolean;

.field final synthetic aqM:Z

.field final synthetic aqN:I


# direct methods
.method constructor <init>(Lcom/miui/antivirus/ui/MainContentFrame;Ljava/lang/Boolean;ZI)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antivirus/ui/i;->aqK:Lcom/miui/antivirus/ui/MainContentFrame;

    iput-object p2, p0, Lcom/miui/antivirus/ui/i;->aqL:Ljava/lang/Boolean;

    iput-boolean p3, p0, Lcom/miui/antivirus/ui/i;->aqM:Z

    iput p4, p0, Lcom/miui/antivirus/ui/i;->aqN:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    const/4 v0, 0x0

    const/16 v1, 0x8

    iget-object v2, p0, Lcom/miui/antivirus/ui/i;->aqK:Lcom/miui/antivirus/ui/MainContentFrame;

    invoke-static {v2}, Lcom/miui/antivirus/ui/MainContentFrame;->avy(Lcom/miui/antivirus/ui/MainContentFrame;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, p0, Lcom/miui/antivirus/ui/i;->aqK:Lcom/miui/antivirus/ui/MainContentFrame;

    invoke-static {v2}, Lcom/miui/antivirus/ui/MainContentFrame;->avz(Lcom/miui/antivirus/ui/MainContentFrame;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, p0, Lcom/miui/antivirus/ui/i;->aqK:Lcom/miui/antivirus/ui/MainContentFrame;

    invoke-static {v2}, Lcom/miui/antivirus/ui/MainContentFrame;->avx(Lcom/miui/antivirus/ui/MainContentFrame;)Lcom/miui/common/customview/ScoreTextView;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/miui/common/customview/ScoreTextView;->setVisibility(I)V

    iget-object v2, p0, Lcom/miui/antivirus/ui/i;->aqK:Lcom/miui/antivirus/ui/MainContentFrame;

    invoke-static {v2}, Lcom/miui/antivirus/ui/MainContentFrame;->avD(Lcom/miui/antivirus/ui/MainContentFrame;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, p0, Lcom/miui/antivirus/ui/i;->aqK:Lcom/miui/antivirus/ui/MainContentFrame;

    invoke-static {v2}, Lcom/miui/antivirus/ui/MainContentFrame;->avB(Lcom/miui/antivirus/ui/MainContentFrame;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, p0, Lcom/miui/antivirus/ui/i;->aqK:Lcom/miui/antivirus/ui/MainContentFrame;

    invoke-static {v2}, Lcom/miui/antivirus/ui/MainContentFrame;->avC(Lcom/miui/antivirus/ui/MainContentFrame;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/antivirus/ui/i;->aqL:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setClickable(Z)V

    iget-object v2, p0, Lcom/miui/antivirus/ui/i;->aqK:Lcom/miui/antivirus/ui/MainContentFrame;

    invoke-static {v2}, Lcom/miui/antivirus/ui/MainContentFrame;->avw(Lcom/miui/antivirus/ui/MainContentFrame;)Landroid/widget/ImageView;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/antivirus/ui/i;->aqL:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/antivirus/ui/i;->aqK:Lcom/miui/antivirus/ui/MainContentFrame;

    invoke-static {v0}, Lcom/miui/antivirus/ui/MainContentFrame;->avA(Lcom/miui/antivirus/ui/MainContentFrame;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const v2, 0x7f0a030c

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v1, p0, Lcom/miui/antivirus/ui/i;->aqK:Lcom/miui/antivirus/ui/MainContentFrame;

    invoke-static {v1}, Lcom/miui/antivirus/ui/MainContentFrame;->avA(Lcom/miui/antivirus/ui/MainContentFrame;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/miui/antivirus/ui/i;->aqK:Lcom/miui/antivirus/ui/MainContentFrame;

    iget-boolean v1, p0, Lcom/miui/antivirus/ui/i;->aqM:Z

    iget v2, p0, Lcom/miui/antivirus/ui/i;->aqN:I

    iget-object v3, p0, Lcom/miui/antivirus/ui/i;->aqL:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/miui/antivirus/ui/MainContentFrame;->avE(Lcom/miui/antivirus/ui/MainContentFrame;ZIZ)V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
