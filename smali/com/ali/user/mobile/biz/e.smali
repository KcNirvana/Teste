.class Lcom/ali/user/mobile/biz/e;
.super Lcom/ali/user/mobile/login/d;
.source "AliUserSdkLoginBiz.java"


# instance fields
.field final synthetic a:Lcom/ali/user/mobile/biz/a;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/biz/a;)V
    .locals 0

    iput-object p1, p0, Lcom/ali/user/mobile/biz/e;->a:Lcom/ali/user/mobile/biz/a;

    invoke-direct {p0}, Lcom/ali/user/mobile/login/d;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/ali/user/mobile/login/a;)V
    .locals 2

    const-string/jumbo v0, "AliUserSdkLoginBiz"

    const-string/jumbo v1, "===== call cancelLogin"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/ali/user/mobile/login/d;->a(Lcom/ali/user/mobile/login/a;)V

    return-void
.end method

.method public a(Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginRes;Lcom/ali/user/mobile/login/a;)V
    .locals 2

    const-string/jumbo v0, "AliUserSdkLoginBiz"

    const-string/jumbo v1, "===== call filterLogin"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Lcom/ali/user/mobile/login/d;->a(Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginRes;Lcom/ali/user/mobile/login/a;)V

    return-void
.end method

.method public b(Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginRes;Lcom/ali/user/mobile/login/a;)V
    .locals 2

    const-string/jumbo v0, "AliUserSdkLoginBiz"

    const-string/jumbo v1, "===== call failLogin"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Lcom/ali/user/mobile/login/d;->b(Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginRes;Lcom/ali/user/mobile/login/a;)V

    return-void
.end method

.method public c(Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginRes;Lcom/ali/user/mobile/login/a;)V
    .locals 2

    const-string/jumbo v0, "AliUserSdkLoginBiz"

    const-string/jumbo v1, "===== call postFinishLogin"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/ali/user/mobile/biz/f;

    invoke-direct {v0, p0, p1, p2}, Lcom/ali/user/mobile/biz/f;-><init>(Lcom/ali/user/mobile/biz/e;Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginRes;Lcom/ali/user/mobile/login/a;)V

    invoke-static {v0}, Lcom/ali/user/mobile/accountbiz/c;->a(Ljava/lang/Runnable;)V

    return-void
.end method
