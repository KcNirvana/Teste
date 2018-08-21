.class Lcom/ali/user/mobile/login/sso/b;
.super Ljava/lang/Object;
.source "SsoServiceImpl.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Lcom/ali/user/mobile/login/sso/SsoLoginInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/ali/user/mobile/login/sso/a;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/login/sso/a;)V
    .locals 0

    iput-object p1, p0, Lcom/ali/user/mobile/login/sso/b;->a:Lcom/ali/user/mobile/login/sso/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/ali/user/mobile/login/sso/SsoLoginInfo;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/ali/user/mobile/login/sso/b;->a:Lcom/ali/user/mobile/login/sso/a;

    invoke-static {v0}, Lcom/ali/user/mobile/login/sso/a;->a(Lcom/ali/user/mobile/login/sso/a;)Lcom/ali/user/mobile/login/sso/SsoLoginInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v0

    const-string/jumbo v1, "SSOManager.login"

    const-string/jumbo v2, "acquire exception"

    invoke-interface {v0, v1, v2}, Lcom/alipay/android/phone/inside/log/api/c/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/ali/user/mobile/login/sso/b;->a()Lcom/ali/user/mobile/login/sso/SsoLoginInfo;

    move-result-object v0

    return-object v0
.end method
