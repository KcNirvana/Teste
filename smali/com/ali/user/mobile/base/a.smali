.class Lcom/ali/user/mobile/base/a;
.super Ljava/lang/Object;
.source "BackgroundLoginActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/ali/user/mobile/base/BackgroundLoginActivity;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/base/BackgroundLoginActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/ali/user/mobile/base/a;->a:Lcom/ali/user/mobile/base/BackgroundLoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string/jumbo v0, "BaseLoginActivity"

    const-string/jumbo v1, "doBackgroundLogin"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/ali/user/mobile/base/a;->a:Lcom/ali/user/mobile/base/BackgroundLoginActivity;

    iget-object v0, v0, Lcom/ali/user/mobile/base/BackgroundLoginActivity;->mUserLoginService:Lcom/ali/user/mobile/h/b;

    iget-object v1, p0, Lcom/ali/user/mobile/base/a;->a:Lcom/ali/user/mobile/base/BackgroundLoginActivity;

    invoke-virtual {v1}, Lcom/ali/user/mobile/base/BackgroundLoginActivity;->prepareLoginParam()Lcom/ali/user/mobile/login/LoginParam;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ali/user/mobile/h/b;->a(Lcom/ali/user/mobile/login/LoginParam;)Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginRes;

    move-result-object v0

    iget-object v1, p0, Lcom/ali/user/mobile/base/a;->a:Lcom/ali/user/mobile/base/BackgroundLoginActivity;

    invoke-virtual {v1, v0}, Lcom/ali/user/mobile/base/BackgroundLoginActivity;->afterBackgroundLogin(Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginRes;)V
    :try_end_0
    .catch Lcom/alipay/android/phone/mrpc/core/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/ali/user/mobile/base/a;->a:Lcom/ali/user/mobile/base/BackgroundLoginActivity;

    invoke-virtual {v1, v0}, Lcom/ali/user/mobile/base/BackgroundLoginActivity;->handleException(Ljava/lang/Exception;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/ali/user/mobile/base/a;->a:Lcom/ali/user/mobile/base/BackgroundLoginActivity;

    invoke-virtual {v1}, Lcom/ali/user/mobile/base/BackgroundLoginActivity;->dismissProgress()V

    throw v0
.end method
