.class Lcom/ali/user/mobile/common/ui/c;
.super Ljava/lang/Object;
.source "AbsVerifySmsActivity.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field final synthetic a:Lcom/ali/user/mobile/common/ui/AbsVerifySmsActivity;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/common/ui/AbsVerifySmsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/ali/user/mobile/common/ui/c;->a:Lcom/ali/user/mobile/common/ui/AbsVerifySmsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 7

    iget-object v0, p0, Lcom/ali/user/mobile/common/ui/c;->a:Lcom/ali/user/mobile/common/ui/AbsVerifySmsActivity;

    invoke-static {v0}, Lcom/ali/user/mobile/common/ui/AbsVerifySmsActivity;->access$000(Lcom/ali/user/mobile/common/ui/AbsVerifySmsActivity;)Landroid/widget/TextView;

    move-result-object v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "Reg_absSms"

    const-string/jumbo v1, "update, null count down tv"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iget-object v1, p0, Lcom/ali/user/mobile/common/ui/c;->a:Lcom/ali/user/mobile/common/ui/AbsVerifySmsActivity;

    invoke-static {v1}, Lcom/ali/user/mobile/common/ui/AbsVerifySmsActivity;->access$000(Lcom/ali/user/mobile/common/ui/AbsVerifySmsActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/ali/user/mobile/common/ui/c;->a:Lcom/ali/user/mobile/common/ui/AbsVerifySmsActivity;

    invoke-static {v1}, Lcom/ali/user/mobile/common/ui/AbsVerifySmsActivity;->access$000(Lcom/ali/user/mobile/common/ui/AbsVerifySmsActivity;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/ali/user/mobile/common/ui/c;->a:Lcom/ali/user/mobile/common/ui/AbsVerifySmsActivity;

    invoke-virtual {v2}, Lcom/ali/user/mobile/common/ui/AbsVerifySmsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/ali/user/mobile/security/ui/R$string;->alipay_reg_manual_sms_time:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string/jumbo v1, "Reg_absSms"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "update "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/ali/user/mobile/common/ui/c;->a:Lcom/ali/user/mobile/common/ui/AbsVerifySmsActivity;

    invoke-static {v3}, Lcom/ali/user/mobile/common/ui/AbsVerifySmsActivity;->access$000(Lcom/ali/user/mobile/common/ui/AbsVerifySmsActivity;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ali/user/mobile/common/ui/c;->a:Lcom/ali/user/mobile/common/ui/AbsVerifySmsActivity;

    invoke-static {v1}, Lcom/ali/user/mobile/common/ui/AbsVerifySmsActivity;->access$000(Lcom/ali/user/mobile/common/ui/AbsVerifySmsActivity;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/ali/user/mobile/common/ui/c;->a:Lcom/ali/user/mobile/common/ui/AbsVerifySmsActivity;

    invoke-virtual {v2}, Lcom/ali/user/mobile/common/ui/AbsVerifySmsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/ali/user/mobile/security/ui/R$color;->alipay_reg_tip:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/ali/user/mobile/common/ui/c;->a:Lcom/ali/user/mobile/common/ui/AbsVerifySmsActivity;

    invoke-static {v1}, Lcom/ali/user/mobile/common/ui/AbsVerifySmsActivity;->access$000(Lcom/ali/user/mobile/common/ui/AbsVerifySmsActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ali/user/mobile/common/ui/c;->a:Lcom/ali/user/mobile/common/ui/AbsVerifySmsActivity;

    invoke-static {v0}, Lcom/ali/user/mobile/common/ui/AbsVerifySmsActivity;->access$000(Lcom/ali/user/mobile/common/ui/AbsVerifySmsActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->invalidate()V

    goto/16 :goto_0
.end method
