.class Lcom/ali/user/mobile/base/j;
.super Ljava/lang/Object;
.source "BaseSixPasswordActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/ali/user/mobile/base/BaseSixPasswordActivity;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/base/BaseSixPasswordActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/ali/user/mobile/base/j;->a:Lcom/ali/user/mobile/base/BaseSixPasswordActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/ali/user/mobile/base/j;->a:Lcom/ali/user/mobile/base/BaseSixPasswordActivity;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/base/BaseSixPasswordActivity;->showProgress(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ali/user/mobile/base/j;->a:Lcom/ali/user/mobile/base/BaseSixPasswordActivity;

    invoke-virtual {v0}, Lcom/ali/user/mobile/base/BaseSixPasswordActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ali/user/mobile/g/c;->a(Landroid/content/Context;)Lcom/ali/user/mobile/rpc/vo/mobilegw/RSAPKeyResult;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ali/user/mobile/base/j;->a:Lcom/ali/user/mobile/base/BaseSixPasswordActivity;

    invoke-virtual {v0}, Lcom/ali/user/mobile/base/BaseSixPasswordActivity;->dismissProgress()V

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "get rsa from server failed!!!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lcom/alipay/android/phone/mrpc/core/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/ali/user/mobile/base/j;->a:Lcom/ali/user/mobile/base/BaseSixPasswordActivity;

    invoke-virtual {v1}, Lcom/ali/user/mobile/base/BaseSixPasswordActivity;->dismissProgress()V

    throw v0

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/ali/user/mobile/base/j;->a:Lcom/ali/user/mobile/base/BaseSixPasswordActivity;

    invoke-virtual {v1}, Lcom/ali/user/mobile/base/BaseSixPasswordActivity;->getOriginalKey()Ljava/lang/String;

    move-result-object v1

    iget-object v0, v0, Lcom/ali/user/mobile/rpc/vo/mobilegw/RSAPKeyResult;->rsaPK:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/ali/user/mobile/g/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ali/user/mobile/base/j;->a:Lcom/ali/user/mobile/base/BaseSixPasswordActivity;

    invoke-virtual {v1, v0}, Lcom/ali/user/mobile/base/BaseSixPasswordActivity;->onSupplement(Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/alipay/android/phone/mrpc/core/RpcException; {:try_start_1 .. :try_end_1} :catch_0

    return-void
.end method
