.class Lcom/ali/user/mobile/biz/f;
.super Ljava/lang/Object;
.source "AliUserSdkLoginBiz.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginRes;

.field final synthetic b:Lcom/ali/user/mobile/login/a;

.field final synthetic c:Lcom/ali/user/mobile/biz/e;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/biz/e;Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginRes;Lcom/ali/user/mobile/login/a;)V
    .locals 0

    iput-object p1, p0, Lcom/ali/user/mobile/biz/f;->c:Lcom/ali/user/mobile/biz/e;

    iput-object p2, p0, Lcom/ali/user/mobile/biz/f;->a:Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginRes;

    iput-object p3, p0, Lcom/ali/user/mobile/biz/f;->b:Lcom/ali/user/mobile/login/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/ali/user/mobile/biz/f;->c:Lcom/ali/user/mobile/biz/e;

    iget-object v0, v0, Lcom/ali/user/mobile/biz/e;->a:Lcom/ali/user/mobile/biz/a;

    iget-object v1, p0, Lcom/ali/user/mobile/biz/f;->a:Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginRes;

    iget-object v2, p0, Lcom/ali/user/mobile/biz/f;->b:Lcom/ali/user/mobile/login/a;

    invoke-static {v0, v1, v2}, Lcom/ali/user/mobile/biz/a;->a(Lcom/ali/user/mobile/biz/a;Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginRes;Lcom/ali/user/mobile/login/a;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "AliUserSdkLoginBiz"

    const-string/jumbo v2, "\u5904\u7406\u767b\u5f55\u6210\u529f\u5f02\u5e38"

    invoke-static {v1, v2, v0}, Lcom/ali/user/mobile/e/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v0}, Lcom/ali/user/mobile/e/c;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
