.class final Lcom/ali/user/mobile/e/d;
.super Ljava/lang/Object;
.source "LogAgent.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/inside/log/api/behavior/a;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/inside/log/api/behavior/a;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ali/user/mobile/e/d;->a:Lcom/alipay/android/phone/inside/log/api/behavior/a;

    iput-object p2, p0, Lcom/ali/user/mobile/e/d;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/ali/user/mobile/e/d;->a:Lcom/alipay/android/phone/inside/log/api/behavior/a;

    iget-object v1, p0, Lcom/ali/user/mobile/e/d;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/i;->a(Lcom/alipay/android/phone/inside/log/api/behavior/a;Ljava/lang/String;)Lcom/alipay/mobileapp/biz/rpc/mdap/vo/pb/UnifyCustomMdapReqPb;

    move-result-object v1

    invoke-static {}, Lcom/alipay/android/phone/inside/d/a;->a()Lcom/alipay/android/phone/inside/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/inside/d/a;->b()Lcom/alipay/android/phone/inside/d/c;

    move-result-object v0

    const-class v2, Lcom/alipay/mobileapp/biz/rpc/mdap/UnifyCustomMdapFacade;

    invoke-virtual {v0, v2}, Lcom/alipay/android/phone/inside/d/c;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobileapp/biz/rpc/mdap/UnifyCustomMdapFacade;

    invoke-interface {v0, v1}, Lcom/alipay/mobileapp/biz/rpc/mdap/UnifyCustomMdapFacade;->mobileUnifyRegister(Lcom/alipay/mobileapp/biz/rpc/mdap/vo/pb/UnifyCustomMdapReqPb;)Lcom/alipay/mobileapp/biz/rpc/mdap/vo/pb/UnifyCustomMdapResPb;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "LogAgent"

    invoke-static {v1, v0}, Lcom/ali/user/mobile/e/a;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
