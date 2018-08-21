.class Lcom/ali/user/mobile/register/ui/k;
.super Ljava/lang/Object;
.source "RegReadSmsActivity.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field final synthetic a:Lcom/ali/user/mobile/register/ui/RegReadSmsActivity;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/register/ui/RegReadSmsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/ali/user/mobile/register/ui/k;->a:Lcom/ali/user/mobile/register/ui/RegReadSmsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/k;->a:Lcom/ali/user/mobile/register/ui/RegReadSmsActivity;

    invoke-static {v0}, Lcom/ali/user/mobile/register/ui/RegReadSmsActivity;->access$000(Lcom/ali/user/mobile/register/ui/RegReadSmsActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "Reg_AutoSms"

    const-string/jumbo v1, "update progress, null progress bar"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/ali/user/mobile/register/ui/k;->a:Lcom/ali/user/mobile/register/ui/RegReadSmsActivity;

    invoke-static {v1}, Lcom/ali/user/mobile/register/ui/RegReadSmsActivity;->access$000(Lcom/ali/user/mobile/register/ui/RegReadSmsActivity;)Landroid/widget/ProgressBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/ali/user/mobile/register/ui/k;->a:Lcom/ali/user/mobile/register/ui/RegReadSmsActivity;

    invoke-static {v1}, Lcom/ali/user/mobile/register/ui/RegReadSmsActivity;->access$000(Lcom/ali/user/mobile/register/ui/RegReadSmsActivity;)Landroid/widget/ProgressBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_0
.end method
