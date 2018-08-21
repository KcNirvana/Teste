.class Lcom/alipay/android/app/hardwarepay/bracelet/impl/b;
.super Ljava/lang/Object;
.source "BraceletPayHelperImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;

.field final synthetic c:Lcom/alipay/security/mobile/auth/AuthenticatorCallback;

.field final synthetic d:Lcom/alipay/android/app/hardwarepay/bracelet/impl/BraceletPayHelperImpl;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/hardwarepay/bracelet/impl/BraceletPayHelperImpl;Landroid/content/Context;Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;Lcom/alipay/security/mobile/auth/AuthenticatorCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/hardwarepay/bracelet/impl/b;->d:Lcom/alipay/android/app/hardwarepay/bracelet/impl/BraceletPayHelperImpl;

    iput-object p2, p0, Lcom/alipay/android/app/hardwarepay/bracelet/impl/b;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/alipay/android/app/hardwarepay/bracelet/impl/b;->b:Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;

    iput-object p4, p0, Lcom/alipay/android/app/hardwarepay/bracelet/impl/b;->c:Lcom/alipay/security/mobile/auth/AuthenticatorCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/bracelet/impl/b;->d:Lcom/alipay/android/app/hardwarepay/bracelet/impl/BraceletPayHelperImpl;

    invoke-static {v0}, Lcom/alipay/android/app/hardwarepay/bracelet/impl/BraceletPayHelperImpl;->a(Lcom/alipay/android/app/hardwarepay/bracelet/impl/BraceletPayHelperImpl;)Lcom/alipay/security/mobile/auth/IAuthenticator;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/hardwarepay/bracelet/impl/b;->a:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {}, Lcom/alipay/android/app/b/e/b;->b()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/alipay/security/mobile/auth/IAuthenticator;->init(Landroid/content/Context;Lcom/alipay/security/mobile/auth/AuthenticatorCallback;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/bracelet/impl/b;->d:Lcom/alipay/android/app/hardwarepay/bracelet/impl/BraceletPayHelperImpl;

    invoke-static {v0}, Lcom/alipay/android/app/hardwarepay/bracelet/impl/BraceletPayHelperImpl;->a(Lcom/alipay/android/app/hardwarepay/bracelet/impl/BraceletPayHelperImpl;)Lcom/alipay/security/mobile/auth/IAuthenticator;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/hardwarepay/bracelet/impl/b;->b:Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;

    iget-object v2, p0, Lcom/alipay/android/app/hardwarepay/bracelet/impl/b;->c:Lcom/alipay/security/mobile/auth/AuthenticatorCallback;

    invoke-interface {v0, v1, v2}, Lcom/alipay/security/mobile/auth/IAuthenticator;->process(Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;Lcom/alipay/security/mobile/auth/AuthenticatorCallback;)V

    return-void
.end method
