.class Lcom/ali/user/mobile/register/ui/e;
.super Ljava/lang/Object;
.source "AliuserRegisterSuccessActivity.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field final synthetic a:Lcom/ali/user/mobile/register/ui/AliuserRegisterSuccessActivity;

.field private b:Ljava/lang/Integer;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/register/ui/AliuserRegisterSuccessActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/ali/user/mobile/register/ui/e;->a:Lcom/ali/user/mobile/register/ui/AliuserRegisterSuccessActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/e;->a:Lcom/ali/user/mobile/register/ui/AliuserRegisterSuccessActivity;

    invoke-static {v0}, Lcom/ali/user/mobile/register/ui/AliuserRegisterSuccessActivity;->access$000(Lcom/ali/user/mobile/register/ui/AliuserRegisterSuccessActivity;)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/e;->a:Lcom/ali/user/mobile/register/ui/AliuserRegisterSuccessActivity;

    iget-object v0, v0, Lcom/ali/user/mobile/register/ui/AliuserRegisterSuccessActivity;->mAppName:Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/ali/user/mobile/register/ui/e;->b:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iput-object v0, p0, Lcom/ali/user/mobile/register/ui/e;->b:Ljava/lang/Integer;

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/e;->a:Lcom/ali/user/mobile/register/ui/AliuserRegisterSuccessActivity;

    invoke-static {v0}, Lcom/ali/user/mobile/register/ui/AliuserRegisterSuccessActivity;->access$000(Lcom/ali/user/mobile/register/ui/AliuserRegisterSuccessActivity;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/ali/user/mobile/register/ui/e;->a:Lcom/ali/user/mobile/register/ui/AliuserRegisterSuccessActivity;

    invoke-virtual {v1}, Lcom/ali/user/mobile/register/ui/AliuserRegisterSuccessActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/ali/user/mobile/security/ui/R$string;->alipay_enter:I

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/ali/user/mobile/register/ui/e;->a:Lcom/ali/user/mobile/register/ui/AliuserRegisterSuccessActivity;

    iget-object v5, v5, Lcom/ali/user/mobile/register/ui/AliuserRegisterSuccessActivity;->mAppName:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/ali/user/mobile/register/ui/e;->b:Ljava/lang/Integer;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
