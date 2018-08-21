.class Lcom/ali/user/mobile/base/b;
.super Ljava/lang/Object;
.source "BackgroundLoginActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginRes;

.field final synthetic b:Lcom/ali/user/mobile/base/BackgroundLoginActivity;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/base/BackgroundLoginActivity;Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginRes;)V
    .locals 0

    iput-object p1, p0, Lcom/ali/user/mobile/base/b;->b:Lcom/ali/user/mobile/base/BackgroundLoginActivity;

    iput-object p2, p0, Lcom/ali/user/mobile/base/b;->a:Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginRes;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/16 v3, 0xbb8

    iget-object v0, p0, Lcom/ali/user/mobile/base/b;->a:Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginRes;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ali/user/mobile/base/b;->b:Lcom/ali/user/mobile/base/BackgroundLoginActivity;

    invoke-virtual {v0}, Lcom/ali/user/mobile/base/BackgroundLoginActivity;->dismissProgress()V

    iget-object v0, p0, Lcom/ali/user/mobile/base/b;->b:Lcom/ali/user/mobile/base/BackgroundLoginActivity;

    iget-object v1, p0, Lcom/ali/user/mobile/base/b;->b:Lcom/ali/user/mobile/base/BackgroundLoginActivity;

    invoke-virtual {v1}, Lcom/ali/user/mobile/base/BackgroundLoginActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/ali/user/mobile/security/ui/R$string;->alipay_login_error:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/ali/user/mobile/base/BackgroundLoginActivity;->toast(Ljava/lang/String;I)V

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "loginRes == null after setDoublePassword"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/ali/user/mobile/e/c;->a(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "BaseLoginActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "doBackgroundLogin result,code:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ali/user/mobile/base/b;->a:Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginRes;

    iget-object v2, v2, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginRes;->code:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",msg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ali/user/mobile/base/b;->a:Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginRes;

    iget-object v2, v2, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginRes;->msg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ali/user/mobile/base/b;->b:Lcom/ali/user/mobile/base/BackgroundLoginActivity;

    iget-object v1, p0, Lcom/ali/user/mobile/base/b;->a:Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginRes;

    iget-object v1, v1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginRes;->token:Ljava/lang/String;

    iput-object v1, v0, Lcom/ali/user/mobile/base/BackgroundLoginActivity;->mToken:Ljava/lang/String;

    const-string/jumbo v0, "200"

    iget-object v1, p0, Lcom/ali/user/mobile/base/b;->a:Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginRes;

    iget-object v1, v1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginRes;->code:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "1000"

    iget-object v1, p0, Lcom/ali/user/mobile/base/b;->a:Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginRes;

    iget-object v1, v1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginRes;->code:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/ali/user/mobile/base/b;->b:Lcom/ali/user/mobile/base/BackgroundLoginActivity;

    iget-object v1, p0, Lcom/ali/user/mobile/base/b;->a:Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginRes;

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/base/BackgroundLoginActivity;->onLoginSuccess(Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginRes;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/ali/user/mobile/a/a;->h()Lcom/ali/user/mobile/a/b;

    move-result-object v0

    iget-object v1, p0, Lcom/ali/user/mobile/base/b;->a:Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginRes;

    invoke-interface {v0, v1}, Lcom/ali/user/mobile/a/b;->onLoginPreFinish(Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginRes;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/ali/user/mobile/base/b;->b:Lcom/ali/user/mobile/base/BackgroundLoginActivity;

    invoke-virtual {v0}, Lcom/ali/user/mobile/base/BackgroundLoginActivity;->dismissProgress()V

    iget-object v0, p0, Lcom/ali/user/mobile/base/b;->b:Lcom/ali/user/mobile/base/BackgroundLoginActivity;

    iget-object v1, p0, Lcom/ali/user/mobile/base/b;->a:Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginRes;

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/base/BackgroundLoginActivity;->onLoginFail(Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginRes;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "6213"

    iget-object v1, p0, Lcom/ali/user/mobile/base/b;->a:Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginRes;

    iget-object v1, v1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginRes;->code:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string/jumbo v0, "BaseLoginActivity"

    const-string/jumbo v1, "session timeout"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ali/user/mobile/base/b;->b:Lcom/ali/user/mobile/base/BackgroundLoginActivity;

    iget-object v1, p0, Lcom/ali/user/mobile/base/b;->a:Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginRes;

    iget-object v1, v1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginRes;->msg:Ljava/lang/String;

    const/16 v2, 0x7cf

    invoke-virtual {v0, v1, v2}, Lcom/ali/user/mobile/base/BackgroundLoginActivity;->alertResult(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_4
    const-string/jumbo v0, "BaseLoginActivity"

    const-string/jumbo v1, "doBackgroundLogin other error"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ali/user/mobile/base/b;->b:Lcom/ali/user/mobile/base/BackgroundLoginActivity;

    iget-object v1, p0, Lcom/ali/user/mobile/base/b;->a:Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginRes;

    iget-object v1, v1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginRes;->msg:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lcom/ali/user/mobile/base/BackgroundLoginActivity;->toast(Ljava/lang/String;I)V

    goto/16 :goto_0
.end method
