.class public Lcom/ali/user/mobile/g/a;
.super Ljava/lang/Object;
.source "AliuserRSAHandler.java"

# interfaces
.implements Lcom/ali/user/mobile/g/b;


# instance fields
.field private final a:Lcom/ali/user/mobile/rpc/facade/RSAService;

.field private b:Lcom/ali/user/mobile/rpc/vo/mobilegw/RSAPKeyResult;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/alipay/android/phone/inside/d/a;->a()Lcom/alipay/android/phone/inside/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/inside/d/a;->b()Lcom/alipay/android/phone/inside/d/c;

    move-result-object v0

    const-class v1, Lcom/ali/user/mobile/rpc/facade/RSAService;

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/inside/d/c;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/user/mobile/rpc/facade/RSAService;

    iput-object v0, p0, Lcom/ali/user/mobile/g/a;->a:Lcom/ali/user/mobile/rpc/facade/RSAService;

    return-void
.end method


# virtual methods
.method public a()Lcom/ali/user/mobile/rpc/vo/mobilegw/RSAPKeyResult;
    .locals 2

    const-string/jumbo v0, "AliuserRSAHandler"

    const-string/jumbo v1, "getRSAKey"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ali/user/mobile/g/a;->b:Lcom/ali/user/mobile/rpc/vo/mobilegw/RSAPKeyResult;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ali/user/mobile/g/a;->b:Lcom/ali/user/mobile/rpc/vo/mobilegw/RSAPKeyResult;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ali/user/mobile/g/a;->a:Lcom/ali/user/mobile/rpc/facade/RSAService;

    invoke-interface {v0}, Lcom/ali/user/mobile/rpc/facade/RSAService;->getRSAKey()Lcom/ali/user/mobile/rpc/vo/mobilegw/RSAPKeyResult;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/g/a;->b:Lcom/ali/user/mobile/rpc/vo/mobilegw/RSAPKeyResult;

    iget-object v0, p0, Lcom/ali/user/mobile/g/a;->b:Lcom/ali/user/mobile/rpc/vo/mobilegw/RSAPKeyResult;

    goto :goto_0
.end method
