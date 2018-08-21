.class Lcom/ali/user/mobile/register/ui/l;
.super Ljava/lang/Object;
.source "RegReadSmsActivity.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field final synthetic a:Lcom/ali/user/mobile/register/ui/RegReadSmsActivity;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/register/ui/RegReadSmsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/ali/user/mobile/register/ui/l;->a:Lcom/ali/user/mobile/register/ui/RegReadSmsActivity;

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

    const-string/jumbo v0, "Reg_AutoSms"

    const-string/jumbo v1, "animation end"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/l;->a:Lcom/ali/user/mobile/register/ui/RegReadSmsActivity;

    invoke-virtual {v0}, Lcom/ali/user/mobile/register/ui/RegReadSmsActivity;->stopRead()V

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/l;->a:Lcom/ali/user/mobile/register/ui/RegReadSmsActivity;

    invoke-static {v0}, Lcom/ali/user/mobile/register/ui/RegReadSmsActivity;->access$100(Lcom/ali/user/mobile/register/ui/RegReadSmsActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "Reg_AutoSms"

    const-string/jumbo v1, "animation ends with rpc on the way"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/l;->a:Lcom/ali/user/mobile/register/ui/RegReadSmsActivity;

    invoke-static {v0}, Lcom/ali/user/mobile/register/ui/RegReadSmsActivity;->access$200(Lcom/ali/user/mobile/register/ui/RegReadSmsActivity;)V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    const-string/jumbo v0, "Reg_AutoSms"

    const-string/jumbo v1, "animation start"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
