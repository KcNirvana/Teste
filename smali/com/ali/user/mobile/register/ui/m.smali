.class Lcom/ali/user/mobile/register/ui/m;
.super Ljava/lang/Object;
.source "RegReadSmsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/ali/user/mobile/register/ui/RegReadSmsActivity;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/register/ui/RegReadSmsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/ali/user/mobile/register/ui/m;->a:Lcom/ali/user/mobile/register/ui/RegReadSmsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/m;->a:Lcom/ali/user/mobile/register/ui/RegReadSmsActivity;

    invoke-static {v0}, Lcom/ali/user/mobile/register/ui/RegReadSmsActivity;->access$300(Lcom/ali/user/mobile/register/ui/RegReadSmsActivity;)Landroid/animation/ValueAnimator;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/m;->a:Lcom/ali/user/mobile/register/ui/RegReadSmsActivity;

    invoke-static {v0}, Lcom/ali/user/mobile/register/ui/RegReadSmsActivity;->access$300(Lcom/ali/user/mobile/register/ui/RegReadSmsActivity;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    return-void
.end method
