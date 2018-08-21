.class Lcom/ali/user/mobile/common/ui/d;
.super Ljava/lang/Object;
.source "AbsVerifySmsActivity.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field final synthetic a:Lcom/ali/user/mobile/common/ui/AbsVerifySmsActivity;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/common/ui/AbsVerifySmsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/ali/user/mobile/common/ui/d;->a:Lcom/ali/user/mobile/common/ui/AbsVerifySmsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/ali/user/mobile/common/ui/d;->a:Lcom/ali/user/mobile/common/ui/AbsVerifySmsActivity;

    invoke-static {v0}, Lcom/ali/user/mobile/common/ui/AbsVerifySmsActivity;->access$000(Lcom/ali/user/mobile/common/ui/AbsVerifySmsActivity;)Landroid/widget/TextView;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "Reg_absSms"

    const-string/jumbo v1, "end, null count down tv"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/ali/user/mobile/common/ui/d;->a:Lcom/ali/user/mobile/common/ui/AbsVerifySmsActivity;

    invoke-static {v0}, Lcom/ali/user/mobile/common/ui/AbsVerifySmsActivity;->access$000(Lcom/ali/user/mobile/common/ui/AbsVerifySmsActivity;)Landroid/widget/TextView;

    move-result-object v0

    sget v1, Lcom/ali/user/mobile/security/ui/R$string;->alipay_reg_manual_sms_missed:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    invoke-static {}, Lcom/ali/user/mobile/common/a/d;->h()I

    move-result v0

    const v1, 0x7fffffff

    if-ne v1, v0, :cond_1

    const-string/jumbo v0, "Reg_absSms"

    const-string/jumbo v1, "end, default color"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ali/user/mobile/common/ui/d;->a:Lcom/ali/user/mobile/common/ui/AbsVerifySmsActivity;

    invoke-virtual {v0}, Lcom/ali/user/mobile/common/ui/AbsVerifySmsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/ali/user/mobile/security/ui/R$color;->alipay_antBlue:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    :cond_1
    iget-object v1, p0, Lcom/ali/user/mobile/common/ui/d;->a:Lcom/ali/user/mobile/common/ui/AbsVerifySmsActivity;

    invoke-static {v1}, Lcom/ali/user/mobile/common/ui/AbsVerifySmsActivity;->access$000(Lcom/ali/user/mobile/common/ui/AbsVerifySmsActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/ali/user/mobile/common/ui/d;->a:Lcom/ali/user/mobile/common/ui/AbsVerifySmsActivity;

    invoke-static {v0}, Lcom/ali/user/mobile/common/ui/AbsVerifySmsActivity;->access$000(Lcom/ali/user/mobile/common/ui/AbsVerifySmsActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/ali/user/mobile/common/ui/d;->a:Lcom/ali/user/mobile/common/ui/AbsVerifySmsActivity;

    invoke-static {v1}, Lcom/ali/user/mobile/common/ui/AbsVerifySmsActivity;->access$200(Lcom/ali/user/mobile/common/ui/AbsVerifySmsActivity;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/ali/user/mobile/common/ui/d;->a:Lcom/ali/user/mobile/common/ui/AbsVerifySmsActivity;

    invoke-static {v0}, Lcom/ali/user/mobile/common/ui/AbsVerifySmsActivity;->access$000(Lcom/ali/user/mobile/common/ui/AbsVerifySmsActivity;)Landroid/widget/TextView;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "Reg_absSms"

    const-string/jumbo v1, "start, null count down tv"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/ali/user/mobile/common/ui/d;->a:Lcom/ali/user/mobile/common/ui/AbsVerifySmsActivity;

    invoke-static {v0}, Lcom/ali/user/mobile/common/ui/AbsVerifySmsActivity;->access$000(Lcom/ali/user/mobile/common/ui/AbsVerifySmsActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/ali/user/mobile/common/ui/d;->a:Lcom/ali/user/mobile/common/ui/AbsVerifySmsActivity;

    invoke-virtual {v1}, Lcom/ali/user/mobile/common/ui/AbsVerifySmsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/ali/user/mobile/security/ui/R$string;->alipay_reg_manual_sms_time:I

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/ali/user/mobile/common/ui/d;->a:Lcom/ali/user/mobile/common/ui/AbsVerifySmsActivity;

    invoke-static {v4}, Lcom/ali/user/mobile/common/ui/AbsVerifySmsActivity;->access$100(Lcom/ali/user/mobile/common/ui/AbsVerifySmsActivity;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ali/user/mobile/common/ui/d;->a:Lcom/ali/user/mobile/common/ui/AbsVerifySmsActivity;

    invoke-static {v0}, Lcom/ali/user/mobile/common/ui/AbsVerifySmsActivity;->access$000(Lcom/ali/user/mobile/common/ui/AbsVerifySmsActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/ali/user/mobile/common/ui/d;->a:Lcom/ali/user/mobile/common/ui/AbsVerifySmsActivity;

    invoke-virtual {v1}, Lcom/ali/user/mobile/common/ui/AbsVerifySmsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/ali/user/mobile/security/ui/R$color;->alipay_reg_tip:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/ali/user/mobile/common/ui/d;->a:Lcom/ali/user/mobile/common/ui/AbsVerifySmsActivity;

    invoke-static {v0}, Lcom/ali/user/mobile/common/ui/AbsVerifySmsActivity;->access$000(Lcom/ali/user/mobile/common/ui/AbsVerifySmsActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/ali/user/mobile/common/ui/d;->a:Lcom/ali/user/mobile/common/ui/AbsVerifySmsActivity;

    invoke-static {v0}, Lcom/ali/user/mobile/common/ui/AbsVerifySmsActivity;->access$000(Lcom/ali/user/mobile/common/ui/AbsVerifySmsActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v6, v5, v6, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_0
.end method
