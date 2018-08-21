.class Lcom/ali/user/mobile/login/ui/k;
.super Ljava/lang/Object;
.source "BaseLoginActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/ali/user/mobile/login/LoginParam;

.field final synthetic b:Lcom/ali/user/mobile/login/ui/BaseLoginActivity;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/login/ui/BaseLoginActivity;Lcom/ali/user/mobile/login/LoginParam;)V
    .locals 0

    iput-object p1, p0, Lcom/ali/user/mobile/login/ui/k;->b:Lcom/ali/user/mobile/login/ui/BaseLoginActivity;

    iput-object p2, p0, Lcom/ali/user/mobile/login/ui/k;->a:Lcom/ali/user/mobile/login/LoginParam;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-string/jumbo v0, "BaseLoginActivity"

    const-string/jumbo v1, "login ing..."

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/k;->b:Lcom/ali/user/mobile/login/ui/BaseLoginActivity;

    invoke-static {v0}, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->access$000(Lcom/ali/user/mobile/login/ui/BaseLoginActivity;)V

    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/k;->b:Lcom/ali/user/mobile/login/ui/BaseLoginActivity;

    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/k;->a:Lcom/ali/user/mobile/login/LoginParam;

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->addAccountMonitors(Lcom/ali/user/mobile/login/LoginParam;)V

    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/k;->a:Lcom/ali/user/mobile/login/LoginParam;

    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/k;->b:Lcom/ali/user/mobile/login/ui/BaseLoginActivity;

    iget-object v1, v1, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->mRdsWraper:Lcom/ali/user/mobile/login/rds/RDSWraper;

    iget-object v2, p0, Lcom/ali/user/mobile/login/ui/k;->b:Lcom/ali/user/mobile/login/ui/BaseLoginActivity;

    iget-object v2, v2, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->mApplicationContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/ali/user/mobile/login/ui/k;->a:Lcom/ali/user/mobile/login/LoginParam;

    iget-object v3, v3, Lcom/ali/user/mobile/login/LoginParam;->loginAccount:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/ali/user/mobile/login/rds/RDSWraper;->getRdsData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ali/user/mobile/login/LoginParam;->alipayEnvJson:Ljava/lang/String;

    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/k;->b:Lcom/ali/user/mobile/login/ui/BaseLoginActivity;

    iget-object v0, v0, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->mUserLoginService:Lcom/ali/user/mobile/h/b;

    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/k;->a:Lcom/ali/user/mobile/login/LoginParam;

    invoke-interface {v0, v1}, Lcom/ali/user/mobile/h/b;->a(Lcom/ali/user/mobile/login/LoginParam;)Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginRes;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/k;->b:Lcom/ali/user/mobile/login/ui/BaseLoginActivity;

    iget-object v2, p0, Lcom/ali/user/mobile/login/ui/k;->a:Lcom/ali/user/mobile/login/LoginParam;

    invoke-virtual {v1, v2, v0}, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->afterLogin(Lcom/ali/user/mobile/login/LoginParam;Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginRes;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/k;->b:Lcom/ali/user/mobile/login/ui/BaseLoginActivity;

    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/k;->b:Lcom/ali/user/mobile/login/ui/BaseLoginActivity;

    sget v2, Lcom/ali/user/mobile/security/ui/R$string;->alipay_system_error_try_later:I

    invoke-virtual {v1, v2}, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->toast(Ljava/lang/String;I)V
    :try_end_0
    .catch Lcom/alipay/android/phone/mrpc/core/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/k;->b:Lcom/ali/user/mobile/login/ui/BaseLoginActivity;

    invoke-static {v1, v0}, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->access$100(Lcom/ali/user/mobile/login/ui/BaseLoginActivity;Lcom/alipay/android/phone/mrpc/core/RpcException;)V

    goto :goto_0
.end method
