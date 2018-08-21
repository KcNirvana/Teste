.class public Lcom/alipay/android/app/hardwarepay/bracelet/impl/BraceletPayHelperImpl;
.super Lcom/alipay/android/app/hardwarepay/bracelet/f;
.source "BraceletPayHelperImpl.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# instance fields
.field private a:Lcom/alipay/security/mobile/auth/IAuthenticator;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/android/app/hardwarepay/bracelet/f;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/app/hardwarepay/bracelet/impl/BraceletPayHelperImpl;)Lcom/alipay/security/mobile/auth/IAuthenticator;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/bracelet/impl/BraceletPayHelperImpl;->a:Lcom/alipay/security/mobile/auth/IAuthenticator;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;ILjava/lang/String;)I
    .locals 3

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/bracelet/impl/BraceletPayHelperImpl;->a:Lcom/alipay/security/mobile/auth/IAuthenticator;

    if-nez v0, :cond_0

    invoke-static {p1, p2}, Lcom/alipay/security/mobile/auth/AuthenticatorFactory;->create(Landroid/content/Context;I)Lcom/alipay/security/mobile/auth/IAuthenticator;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/hardwarepay/bracelet/impl/BraceletPayHelperImpl;->a:Lcom/alipay/security/mobile/auth/IAuthenticator;

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/bracelet/impl/BraceletPayHelperImpl;->a:Lcom/alipay/security/mobile/auth/IAuthenticator;

    const/4 v1, 0x0

    invoke-static {}, Lcom/alipay/android/app/b/e/b;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, p1, v1, v2}, Lcom/alipay/security/mobile/auth/IAuthenticator;->init(Landroid/content/Context;Lcom/alipay/security/mobile/auth/AuthenticatorCallback;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public a(IILjava/lang/String;ILjava/lang/Object;Landroid/content/Context;)V
    .locals 8

    new-instance v1, Lcom/alipay/android/app/hardwarepay/bracelet/impl/a;

    invoke-direct {v1, p0, p6, p5}, Lcom/alipay/android/app/hardwarepay/bracelet/impl/a;-><init>(Lcom/alipay/android/app/hardwarepay/bracelet/impl/BraceletPayHelperImpl;Landroid/content/Context;Ljava/lang/Object;)V

    const/4 v0, 0x0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "[extraPara:"

    invoke-virtual {p3, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    const-string/jumbo v0, "[extraPara:"

    invoke-virtual {p3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0xb

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p3, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    const-string/jumbo v3, "[extraPara:"

    invoke-virtual {p3, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p3, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    :cond_0
    new-instance v2, Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;

    invoke-direct {v2, p1, p2, p3}, Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;-><init>(IILjava/lang/String;)V

    invoke-virtual {v2, v0}, Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;->setExtraParams(Ljava/lang/String;)V

    const/4 v3, 0x1

    const-string/jumbo v4, "phonecashiermsp#bracelet"

    const-string/jumbo v5, "BraceletPayHelper.process"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "[BraceletPayHelperImpl]\u624b\u73af\u652f\u4ed8\u8fde\u63a5type:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "   \u6570\u636e:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " extraPara:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v4, v5, v0}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v3, Lcom/alipay/android/app/hardwarepay/bracelet/impl/b;

    invoke-direct {v3, p0, p6, v2, v1}, Lcom/alipay/android/app/hardwarepay/bracelet/impl/b;-><init>(Lcom/alipay/android/app/hardwarepay/bracelet/impl/BraceletPayHelperImpl;Landroid/content/Context;Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;Lcom/alipay/security/mobile/auth/AuthenticatorCallback;)V

    invoke-direct {v0, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public a(Ljava/lang/Object;ILjava/lang/String;)V
    .locals 0

    return-void
.end method
