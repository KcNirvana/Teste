.class Lcom/ali/user/mobile/register/c/c;
.super Ljava/lang/Object;
.source "ActionCenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/ali/user/mobile/register/c/f;

.field final synthetic b:Lcom/ali/user/mobile/register/a/a;

.field final synthetic c:Lcom/ali/user/mobile/base/BaseActivity;

.field final synthetic d:Lcom/ali/user/mobile/register/c/a;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/register/c/a;Lcom/ali/user/mobile/register/c/f;Lcom/ali/user/mobile/register/a/a;Lcom/ali/user/mobile/base/BaseActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/ali/user/mobile/register/c/c;->d:Lcom/ali/user/mobile/register/c/a;

    iput-object p2, p0, Lcom/ali/user/mobile/register/c/c;->a:Lcom/ali/user/mobile/register/c/f;

    iput-object p3, p0, Lcom/ali/user/mobile/register/c/c;->b:Lcom/ali/user/mobile/register/a/a;

    iput-object p4, p0, Lcom/ali/user/mobile/register/c/c;->c:Lcom/ali/user/mobile/base/BaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/ali/user/mobile/register/c/c;->d:Lcom/ali/user/mobile/register/c/a;

    invoke-static {v0}, Lcom/ali/user/mobile/register/c/a;->a(Lcom/ali/user/mobile/register/c/a;)Lcom/ali/user/mobile/register/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ali/user/mobile/register/a/b;->c()Lcom/ali/user/mobile/register/a/b;

    move-result-object v1

    const/4 v0, -0x2

    iput v0, v1, Lcom/ali/user/mobile/register/a/b;->b:I

    :try_start_0
    iget-object v0, p0, Lcom/ali/user/mobile/register/c/c;->a:Lcom/ali/user/mobile/register/c/f;

    iget-object v2, p0, Lcom/ali/user/mobile/register/c/c;->b:Lcom/ali/user/mobile/register/a/a;

    iget-object v3, p0, Lcom/ali/user/mobile/register/c/c;->c:Lcom/ali/user/mobile/base/BaseActivity;

    invoke-interface {v0, v2, v1, v3}, Lcom/ali/user/mobile/register/c/f;->a(Lcom/ali/user/mobile/register/a/a;Lcom/ali/user/mobile/register/a/b;Lcom/ali/user/mobile/base/BaseActivity;)Lcom/ali/user/mobile/register/a/b;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    iget-object v1, p0, Lcom/ali/user/mobile/register/c/c;->d:Lcom/ali/user/mobile/register/c/a;

    invoke-static {v1, v0}, Lcom/ali/user/mobile/register/c/a;->a(Lcom/ali/user/mobile/register/c/a;Lcom/ali/user/mobile/register/a/b;)V

    iget-object v1, v0, Lcom/ali/user/mobile/register/a/b;->e:Lcom/alipay/android/phone/mrpc/core/RpcException;

    if-eqz v1, :cond_1

    iget-object v0, v0, Lcom/ali/user/mobile/register/a/b;->e:Lcom/alipay/android/phone/mrpc/core/RpcException;

    throw v0

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/ali/user/mobile/register/c/c;->d:Lcom/ali/user/mobile/register/c/a;

    invoke-static {v0, v1}, Lcom/ali/user/mobile/register/c/a;->a(Lcom/ali/user/mobile/register/c/a;Lcom/ali/user/mobile/register/a/b;)V

    iget-object v0, v1, Lcom/ali/user/mobile/register/a/b;->e:Lcom/alipay/android/phone/mrpc/core/RpcException;

    if-eqz v0, :cond_1

    iget-object v0, v1, Lcom/ali/user/mobile/register/a/b;->e:Lcom/alipay/android/phone/mrpc/core/RpcException;

    throw v0

    :catchall_0
    move-exception v0

    iget-object v2, p0, Lcom/ali/user/mobile/register/c/c;->d:Lcom/ali/user/mobile/register/c/a;

    invoke-static {v2, v1}, Lcom/ali/user/mobile/register/c/a;->a(Lcom/ali/user/mobile/register/c/a;Lcom/ali/user/mobile/register/a/b;)V

    iget-object v2, v1, Lcom/ali/user/mobile/register/a/b;->e:Lcom/alipay/android/phone/mrpc/core/RpcException;

    if-eqz v2, :cond_0

    iget-object v0, v1, Lcom/ali/user/mobile/register/a/b;->e:Lcom/alipay/android/phone/mrpc/core/RpcException;

    throw v0

    :cond_0
    throw v0

    :cond_1
    return-void
.end method
