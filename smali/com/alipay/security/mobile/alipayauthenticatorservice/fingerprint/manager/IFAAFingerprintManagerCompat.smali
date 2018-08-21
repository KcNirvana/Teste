.class Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/manager/IFAAFingerprintManagerCompat;
.super Ljava/lang/Object;
.source "IFAAFingerprintManagerCompat.java"

# interfaces
.implements Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/manager/IFAAFingerprintManagerFacade;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x17
.end annotation


# static fields
.field private static sInstance:Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/manager/IFAAFingerprintManagerCompat;


# instance fields
.field private mCallback:Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;

.field private mCancellationSignal:Landroid/os/CancellationSignal;

.field private mContext:Landroid/content/Context;

.field private mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/manager/IFAAFingerprintManagerCompat;->mContext:Landroid/content/Context;

    :try_start_0
    iget-object v0, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/manager/IFAAFingerprintManagerCompat;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "fingerprint"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/FingerprintManager;

    iput-object v0, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/manager/IFAAFingerprintManagerCompat;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static declared-synchronized getInstance(Landroid/content/Context;)Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/manager/IFAAFingerprintManagerCompat;
    .locals 2

    const-class v1, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/manager/IFAAFingerprintManagerCompat;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/manager/IFAAFingerprintManagerCompat;->sInstance:Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/manager/IFAAFingerprintManagerCompat;

    if-nez v0, :cond_0

    new-instance v0, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/manager/IFAAFingerprintManagerCompat;

    invoke-direct {v0, p0}, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/manager/IFAAFingerprintManagerCompat;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/manager/IFAAFingerprintManagerCompat;->sInstance:Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/manager/IFAAFingerprintManagerCompat;

    :cond_0
    sget-object v0, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/manager/IFAAFingerprintManagerCompat;->sInstance:Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/manager/IFAAFingerprintManagerCompat;

    iget-object v0, v0, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/manager/IFAAFingerprintManagerCompat;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    monitor-exit v1

    return-object v0

    :cond_1
    :try_start_1
    sget-object v0, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/manager/IFAAFingerprintManagerCompat;->sInstance:Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/manager/IFAAFingerprintManagerCompat;
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
    .locals 6

    new-instance v0, Landroid/os/CancellationSignal;

    invoke-direct {v0}, Landroid/os/CancellationSignal;-><init>()V

    iput-object v0, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/manager/IFAAFingerprintManagerCompat;->mCancellationSignal:Landroid/os/CancellationSignal;

    new-instance v0, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/manager/IFAAFingerprintManagerCompat$1;

    invoke-direct {v0, p0, p1}, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/manager/IFAAFingerprintManagerCompat$1;-><init>(Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/manager/IFAAFingerprintManagerCompat;Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/manager/IFAAFingerprintCallback;)V

    iput-object v0, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/manager/IFAAFingerprintManagerCompat;->mCallback:Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;

    :try_start_0
    iget-object v0, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/manager/IFAAFingerprintManagerCompat;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/manager/IFAAFingerprintManagerCompat;->mCancellationSignal:Landroid/os/CancellationSignal;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/manager/IFAAFingerprintManagerCompat;->mCallback:Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/fingerprint/FingerprintManager;->authenticate(Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;Landroid/os/CancellationSignal;ILandroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;Landroid/os/Handler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/security/mobile/auth/AuthenticatorLOG;->error(Ljava/lang/Throwable;)V

    if-eqz p1, :cond_0

    const/4 v0, -0x1

    const-string/jumbo v1, "exception when authing"

    invoke-interface {p1, v0, v1}, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/manager/IFAAFingerprintCallback;->onAuthenticationError(ILjava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public cancel()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/manager/IFAAFingerprintManagerCompat;->mCancellationSignal:Landroid/os/CancellationSignal;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/manager/IFAAFingerprintManagerCompat;->mCancellationSignal:Landroid/os/CancellationSignal;

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/manager/IFAAFingerprintManagerCompat;->mCancellationSignal:Landroid/os/CancellationSignal;

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
    iget-object v1, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/manager/IFAAFingerprintManagerCompat;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/manager/IFAAFingerprintManagerCompat;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v1}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints()Z
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
    iget-object v1, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/manager/IFAAFingerprintManagerCompat;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/manager/IFAAFingerprintManagerCompat;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v1}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/alipay/security/mobile/auth/AuthenticatorLOG;->error(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
