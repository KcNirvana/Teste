.class public Lcom/alipay/android/app/hardwarepay/fingerprint/impl/FingerprintPayHelperImpl;
.super Lcom/alipay/android/app/hardwarepay/fingerprint/n;
.source "FingerprintPayHelperImpl.java"


# instance fields
.field private a:Lcom/alipay/security/mobile/auth/IAuthenticator;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/android/app/hardwarepay/fingerprint/n;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;ILjava/lang/String;)I
    .locals 4

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/impl/FingerprintPayHelperImpl;->a:Lcom/alipay/security/mobile/auth/IAuthenticator;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/alipay/security/mobile/auth/AuthenticatorFactory;->create(Landroid/content/Context;I)Lcom/alipay/security/mobile/auth/IAuthenticator;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/impl/FingerprintPayHelperImpl;->a:Lcom/alipay/security/mobile/auth/IAuthenticator;

    :cond_0
    new-instance v0, Lcom/alipay/android/app/hardwarepay/fingerprint/impl/a;

    invoke-direct {v0, p0}, Lcom/alipay/android/app/hardwarepay/fingerprint/impl/a;-><init>(Lcom/alipay/android/app/hardwarepay/fingerprint/impl/FingerprintPayHelperImpl;)V

    iget-object v1, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/impl/FingerprintPayHelperImpl;->a:Lcom/alipay/security/mobile/auth/IAuthenticator;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Lcom/alipay/android/app/b/e/b;->b()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v0, v3}, Lcom/alipay/security/mobile/auth/IAuthenticator;->init(Landroid/content/Context;Lcom/alipay/security/mobile/auth/AuthenticatorCallback;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/impl/FingerprintPayHelperImpl;->a:Lcom/alipay/security/mobile/auth/IAuthenticator;

    invoke-interface {v0, p1}, Lcom/alipay/security/mobile/auth/IAuthenticator;->checkUserStatus(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public a(ILjava/lang/String;I)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x4

    const-string/jumbo v1, "phonecashiermsp#fingerprint"

    const-string/jumbo v2, "FingerprintPayHelperImpl.process"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "finger process no callback:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/impl/FingerprintPayHelperImpl;->a:Lcom/alipay/security/mobile/auth/IAuthenticator;

    new-instance v1, Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;

    invoke-direct {v1, p3, p1, p2}, Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;-><init>(IILjava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/alipay/security/mobile/auth/IAuthenticator;->process(Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(IILjava/lang/String;ILjava/lang/Object;Landroid/content/Context;)V
    .locals 5

    new-instance v0, Lcom/alipay/android/app/hardwarepay/fingerprint/impl/b;

    invoke-direct {v0, p0, p6, p5, p4}, Lcom/alipay/android/app/hardwarepay/fingerprint/impl/b;-><init>(Lcom/alipay/android/app/hardwarepay/fingerprint/impl/FingerprintPayHelperImpl;Landroid/content/Context;Ljava/lang/Object;I)V

    iget-object v1, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/impl/FingerprintPayHelperImpl;->a:Lcom/alipay/security/mobile/auth/IAuthenticator;

    new-instance v2, Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;

    invoke-direct {v2, p1, p2, p3}, Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;-><init>(IILjava/lang/String;)V

    invoke-interface {v1, v2, v0}, Lcom/alipay/security/mobile/auth/IAuthenticator;->process(Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;Lcom/alipay/security/mobile/auth/AuthenticatorCallback;)V

    const/4 v0, 0x4

    const-string/jumbo v1, "phonecashiermsp#fingerprint"

    const-string/jumbo v2, "FingerprintPayHelperImpl.process"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "finger process no callback:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/Object;ILjava/lang/String;)V
    .locals 6

    const/4 v5, 0x1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v1, "callBack"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p3, v1, v2

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v0, "phonecashiermsp#fingerprint"

    const-string/jumbo v1, "FingerprintPayHelperImpl.reflectCallBack"

    const-string/jumbo v2, "\u5feb\u6377\u56de\u8c03\u94b1\u5305\uff0ccallBack\u65b9\u6cd5\u627e\u4e0d\u5230"

    invoke-static {v5, v0, v1, v2}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v0

    const-string/jumbo v0, "phonecashiermsp#fingerprint"

    const-string/jumbo v1, "FingerprintPayHelperImpl.reflectCallBack"

    const-string/jumbo v2, "\u5feb\u6377\u56de\u8c03\u94b1\u5305\uff0ccallBack\u65b9\u6cd5\u53c2\u6570\u4e0d\u5339\u914d"

    invoke-static {v5, v0, v1, v2}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_2
    move-exception v0

    const-string/jumbo v0, "phonecashiermsp#fingerprint"

    const-string/jumbo v1, "FingerprintPayHelperImpl.reflectCallBack"

    const-string/jumbo v2, "\u5feb\u6377\u56de\u8c03\u94b1\u5305\uff0ccallBack\u65b9\u6cd5\u4e0d\u53ef\u8bbf\u95ee"

    invoke-static {v5, v0, v1, v2}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_3
    move-exception v0

    const-string/jumbo v0, "phonecashiermsp#fingerprint"

    const-string/jumbo v1, "FingerprintPayHelperImpl.reflectCallBack"

    const-string/jumbo v2, "\u5feb\u6377\u56de\u8c03\u94b1\u5305\uff0ccallBack\u65b9\u6cd5\u8c03\u7528target\u4e0d\u6b63\u786e"

    invoke-static {v5, v0, v1, v2}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public b()[Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/impl/FingerprintPayHelperImpl;->a:Lcom/alipay/security/mobile/auth/IAuthenticator;

    invoke-interface {v0}, Lcom/alipay/security/mobile/auth/IAuthenticator;->getAuthInfo()Lcom/alipay/security/mobile/auth/AuthInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1}, Lcom/alipay/security/mobile/auth/AuthInfo;->getType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x1

    invoke-virtual {v1}, Lcom/alipay/security/mobile/auth/AuthInfo;->getVendor()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x2

    invoke-virtual {v1}, Lcom/alipay/security/mobile/auth/AuthInfo;->getPhoneModle()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x3

    invoke-virtual {v1}, Lcom/alipay/security/mobile/auth/AuthInfo;->getProtocolVersion()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x4

    invoke-virtual {v1}, Lcom/alipay/security/mobile/auth/AuthInfo;->getProtocolType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x5

    invoke-virtual {v1}, Lcom/alipay/security/mobile/auth/AuthInfo;->getDownloadUrl()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()I
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/impl/FingerprintPayHelperImpl;->a:Lcom/alipay/security/mobile/auth/IAuthenticator;

    invoke-interface {v0}, Lcom/alipay/security/mobile/auth/IAuthenticator;->registedFingerPrintNumber()I

    move-result v0

    return v0
.end method

.method public d()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/impl/FingerprintPayHelperImpl;->a:Lcom/alipay/security/mobile/auth/IAuthenticator;

    invoke-interface {v0}, Lcom/alipay/security/mobile/auth/IAuthenticator;->cancel()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/g/g;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
