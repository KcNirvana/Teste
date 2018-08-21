.class Lcom/ali/user/mobile/login/app/a;
.super Ljava/lang/Object;
.source "LoginAppService.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/ali/user/mobile/login/app/LoginAppService;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/login/app/LoginAppService;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/ali/user/mobile/login/app/a;->b:Lcom/ali/user/mobile/login/app/LoginAppService;

    iput-object p2, p0, Lcom/ali/user/mobile/login/app/a;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-string/jumbo v0, "LoginApp"

    const-string/jumbo v1, "checkTaobaoAuthStatus in urgent thread"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ali/user/mobile/login/app/a;->b:Lcom/ali/user/mobile/login/app/LoginAppService;

    invoke-static {v0}, Lcom/ali/user/mobile/login/app/LoginAppService;->access$000(Lcom/ali/user/mobile/login/app/LoginAppService;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ali/user/mobile/login/app/a;->b:Lcom/ali/user/mobile/login/app/LoginAppService;

    invoke-static {v0}, Lcom/ali/user/mobile/login/app/LoginAppService;->access$000(Lcom/ali/user/mobile/login/app/LoginAppService;)Landroid/os/Bundle;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/ali/user/mobile/login/app/a;->b:Lcom/ali/user/mobile/login/app/LoginAppService;

    invoke-static {v1}, Lcom/ali/user/mobile/login/app/LoginAppService;->access$100(Lcom/ali/user/mobile/login/app/LoginAppService;)Lcom/ali/user/mobile/biz/a;

    move-result-object v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "LoginApp"

    const-string/jumbo v2, "try to create instance of AliUserSdkLoginBiz in loginApp"

    invoke-static {v1, v2}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ali/user/mobile/login/app/a;->b:Lcom/ali/user/mobile/login/app/LoginAppService;

    iget-object v2, p0, Lcom/ali/user/mobile/login/app/a;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/ali/user/mobile/biz/a;->a(Landroid/content/Context;)Lcom/ali/user/mobile/biz/a;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ali/user/mobile/login/app/LoginAppService;->access$102(Lcom/ali/user/mobile/login/app/LoginAppService;Lcom/ali/user/mobile/biz/a;)Lcom/ali/user/mobile/biz/a;

    :cond_0
    iget-object v1, p0, Lcom/ali/user/mobile/login/app/a;->b:Lcom/ali/user/mobile/login/app/LoginAppService;

    invoke-static {v1}, Lcom/ali/user/mobile/login/app/LoginAppService;->access$100(Lcom/ali/user/mobile/login/app/LoginAppService;)Lcom/ali/user/mobile/biz/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ali/user/mobile/biz/a;->a(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/ali/user/mobile/login/app/a;->b:Lcom/ali/user/mobile/login/app/LoginAppService;

    invoke-static {v0}, Lcom/ali/user/mobile/login/app/LoginAppService;->access$100(Lcom/ali/user/mobile/login/app/LoginAppService;)Lcom/ali/user/mobile/biz/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ali/user/mobile/biz/a;->b()V

    const-string/jumbo v0, "LoginApp"

    const-string/jumbo v1, "start aliuser sdk login 12345678 - end"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ali/user/mobile/login/app/a;->b:Lcom/ali/user/mobile/login/app/LoginAppService;

    const-string/jumbo v1, "com.alipay.security.startlogin"

    const-string/jumbo v2, "state=startLoginApp"

    invoke-static {v0, v1, v2}, Lcom/ali/user/mobile/login/app/LoginAppService;->access$200(Lcom/ali/user/mobile/login/app/LoginAppService;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ali/user/mobile/login/app/a;->b:Lcom/ali/user/mobile/login/app/LoginAppService;

    invoke-static {v0}, Lcom/ali/user/mobile/login/app/LoginAppService;->access$300(Lcom/ali/user/mobile/login/app/LoginAppService;)V

    const-string/jumbo v0, "LoginApp"

    const-string/jumbo v1, "init: sendBroadcast action=com.alipay.security.startlogin"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    goto :goto_0
.end method
