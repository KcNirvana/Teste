.class Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/manager/IFAAClientFingerprintManager;
.super Ljava/lang/Object;
.source "IFAAClientFingerprintManager.java"

# interfaces
.implements Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/manager/IFAAFingerprintManagerFacade;


# static fields
.field private static sInstance:Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/manager/IFAAClientFingerprintManager;


# instance fields
.field private mCallback:Lorg/ifaa/android/manager/fingerprint/IFAAFingerprintManager$IFAAAuthenticationCallback;

.field private mCancellationSignal:Landroid/os/CancellationSignal;

.field private mContext:Landroid/content/Context;

.field private mFingerprintManager:Lorg/ifaa/android/manager/fingerprint/IFAAFingerprintManager;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/manager/IFAAClientFingerprintManager;->mContext:Landroid/content/Context;

    :try_start_0
    iget-object v0, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/manager/IFAAClientFingerprintManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/manager/IFAAFingerprintManagerFactory;->getIFAAFingerprintManager(Landroid/content/Context;)Lorg/ifaa/android/manager/fingerprint/IFAAFingerprintManager;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/manager/IFAAClientFingerprintManager;->mFingerprintManager:Lorg/ifaa/android/manager/fingerprint/IFAAFingerprintManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static declared-synchronized getInstance(Landroid/content/Context;)Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/manager/IFAAClientFingerprintManager;
    .locals 2

    const-class v1, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/manager/IFAAClientFingerprintManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/manager/IFAAClientFingerprintManager;->sInstance:Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/manager/IFAAClientFingerprintManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/manager/IFAAClientFingerprintManager;

    invoke-direct {v0, p0}, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/manager/IFAAClientFingerprintManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/manager/IFAAClientFingerprintManager;->sInstance:Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/manager/IFAAClientFingerprintManager;

    :cond_0
    sget-object v0, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/manager/IFAAClientFingerprintManager;->sInstance:Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/manager/IFAAClientFingerprintManager;

    iget-object v0, v0, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/manager/IFAAClientFingerprintManager;->mFingerprintManager:Lorg/ifaa/android/manager/fingerprint/IFAAFingerprintManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    monitor-exit v1

    return-object v0

    :cond_1
    :try_start_1
    sget-object v0, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/manager/IFAAClientFingerprintManager;->sInstance:Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/manager/IFAAClientFingerprintManager;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public authenticate(Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/manager/IFAAFingerprintCallback;)V
    .locals 7

    const/4 v6, -0x1

    iget-object v0, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/manager/IFAAClientFingerprintManager;->mFingerprintManager:Lorg/ifaa/android/manager/fingerprint/IFAAFingerprintManager;

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    const-string/jumbo v0, "fingerprintManager is null"

    invoke-interface {p1, v6, v0}, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/manager/IFAAFingerprintCallback;->onAuthenticationError(ILjava/lang/CharSequence;)V

    :cond_0
    new-instance v0, Landroid/os/CancellationSignal;

    invoke-direct {v0}, Landroid/os/CancellationSignal;-><init>()V

    iput-object v0, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/manager/IFAAClientFingerprintManager;->mCancellationSignal:Landroid/os/CancellationSignal;

    new-instance v0, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/manager/IFAAClientFingerprintManager$1;

    invoke-direct {v0, p0, p1}, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/manager/IFAAClientFingerprintManager$1;-><init>(Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/manager/IFAAClientFingerprintManager;Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/manager/IFAAFingerprintCallback;)V

    iput-object v0, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/manager/IFAAClientFingerprintManager;->mCallback:Lorg/ifaa/android/manager/fingerprint/IFAAFingerprintManager$IFAAAuthenticationCallback;

    :try_start_0
    iget-object v0, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/manager/IFAAClientFingerprintManager;->mFingerprintManager:Lorg/ifaa/android/manager/fingerprint/IFAAFingerprintManager;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/manager/IFAAClientFingerprintManager;->mCancellationSignal:Landroid/os/CancellationSignal;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/manager/IFAAClientFingerprintManager;->mCallback:Lorg/ifaa/android/manager/fingerprint/IFAAFingerprintManager$IFAAAuthenticationCallback;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lorg/ifaa/android/manager/fingerprint/IFAAFingerprintManager;->authenticate(Lorg/ifaa/android/manager/fingerprint/IFAAFingerprintManager$IFAACryptoObject;Landroid/os/CancellationSignal;ILorg/ifaa/android/manager/fingerprint/IFAAFingerprintManager$IFAAAuthenticationCallback;Landroid/os/Handler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/security/mobile/auth/AuthenticatorLOG;->error(Ljava/lang/Throwable;)V

    if-eqz p1, :cond_1

    const-string/jumbo v0, "exception when authing"

    invoke-interface {p1, v6, v0}, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/manager/IFAAFingerprintCallback;->onAuthenticationError(ILjava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public cancel()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/manager/IFAAClientFingerprintManager;->mCancellationSignal:Landroid/os/CancellationSignal;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/manager/IFAAClientFingerprintManager;->mCancellationSignal:Landroid/os/CancellationSignal;

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/manager/IFAAClientFingerprintManager;->mCancellationSignal:Landroid/os/CancellationSignal;

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/security/mobile/auth/AuthenticatorLOG;->error(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public hasEnrolledFingerprints()Z
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/manager/IFAAClientFingerprintManager;->mFingerprintManager:Lorg/ifaa/android/manager/fingerprint/IFAAFingerprintManager;

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/manager/IFAAClientFingerprintManager;->mFingerprintManager:Lorg/ifaa/android/manager/fingerprint/IFAAFingerprintManager;

    invoke-virtual {v1}, Lorg/ifaa/android/manager/fingerprint/IFAAFingerprintManager;->hasEnrolledFingerprints()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/alipay/security/mobile/auth/AuthenticatorLOG;->error(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public isHardwareDetected()Z
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/manager/IFAAClientFingerprintManager;->mFingerprintManager:Lorg/ifaa/android/manager/fingerprint/IFAAFingerprintManager;

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/manager/IFAAClientFingerprintManager;->mFingerprintManager:Lorg/ifaa/android/manager/fingerprint/IFAAFingerprintManager;

    invoke-virtual {v1}, Lorg/ifaa/android/manager/fingerprint/IFAAFingerprintManager;->isHardwareDetected()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/alipay/security/mobile/auth/AuthenticatorLOG;->error(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
