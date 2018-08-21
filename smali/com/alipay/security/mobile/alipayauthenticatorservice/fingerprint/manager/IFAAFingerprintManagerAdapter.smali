.class public Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/manager/IFAAFingerprintManagerAdapter;
.super Ljava/lang/Object;
.source "IFAAFingerprintManagerAdapter.java"


# static fields
.field private static mInstanceLock:Ljava/lang/Object;

.field private static sInstance:Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/manager/IFAAFingerprintManagerAdapter;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFingerprintManagerFacade:Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/manager/IFAAFingerprintManagerFacade;

.field private mIFAAManager:Lorg/ifaa/android/manager/IFAAManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/manager/IFAAFingerprintManagerAdapter;->mInstanceLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/manager/IFAAFingerprintManagerAdapter;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/manager/IFAAFingerprintManagerFactory;->getIFAAManager(Landroid/content/Context;)Lorg/ifaa/android/manager/IFAAManager;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/manager/IFAAFingerprintManagerAdapter;->mIFAAManager:Lorg/ifaa/android/manager/IFAAManager;

    :try_start_0
    invoke-static {p1}, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/manager/IFAAFingerprintManagerCompat;->getInstance(Landroid/content/Context;)Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/manager/IFAAFingerprintManagerCompat;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/manager/IFAAFingerprintManagerAdapter;->mFingerprintManagerFacade:Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/manager/IFAAFingerprintManagerFacade;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    iget-object v0, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/manager/IFAAFingerprintManagerAdapter;->mFingerprintManagerFacade:Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/manager/IFAAFingerprintManagerFacade;

    if-nez v0, :cond_0

    :try_start_1
    invoke-static {p1}, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/manager/IFAAClientFingerprintManager;->getInstance(Landroid/content/Context;)Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/manager/IFAAClientFingerprintManager;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/manager/IFAAFingerprintManagerAdapter;->mFingerprintManagerFacade:Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/manager/IFAAFingerprintManagerFacade;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/manager/IFAAFingerprintManagerAdapter;
    .locals 2

    sget-object v1, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/manager/IFAAFingerprintManagerAdapter;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/manager/IFAAFingerprintManagerAdapter;->sInstance:Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/manager/IFAAFingerprintManagerAdapter;

    if-nez v0, :cond_0

    new-instance v0, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/manager/IFAAFingerprintManagerAdapter;

    invoke-direct {v0, p0}, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/manager/IFAAFingerprintManagerAdapter;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/manager/IFAAFingerprintManagerAdapter;->sInstance:Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/manager/IFAAFingerprintManagerAdapter;

    :cond_0
    sget-object v0, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/manager/IFAAFingerprintManagerAdapter;->sInstance:Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/manager/IFAAFingerprintManagerAdapter;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public authenticate(Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/manager/IFAAFingerprintCallback;)V
    .locals 2

    const/4 v1, -0x1

    iget-object v0, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/manager/IFAAFingerprintManagerAdapter;->mContext:Landroid/content/Context;

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    const-string/jumbo v0, "context is null"

    invoke-interface {p1, v1, v0}, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/manager/IFAAFingerprintCallback;->onAuthenticationError(ILjava/lang/CharSequence;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/manager/IFAAFingerprintManagerAdapter;->mFingerprintManagerFacade:Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/manager/IFAAFingerprintManagerFacade;

    if-nez v0, :cond_2

    if-eqz p1, :cond_0

    const-string/jumbo v0, "fingerprint service is null"

    invoke-interface {p1, v1, v0}, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/manager/IFAAFingerprintCallback;->onAuthenticationError(ILjava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/manager/IFAAFingerprintManagerAdapter;->mFingerprintManagerFacade:Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/manager/IFAAFingerprintManagerFacade;

    invoke-interface {v0}, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/manager/IFAAFingerprintManagerFacade;->isHardwareDetected()Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz p1, :cond_0

    const-string/jumbo v0, "hardware is not support"

    invoke-interface {p1, v1, v0}, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/manager/IFAAFingerprintCallback;->onAuthenticationError(ILjava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    :try_start_0
    iget-object v0, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/manager/IFAAFingerprintManagerAdapter;->mFingerprintManagerFacade:Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/manager/IFAAFingerprintManagerFacade;

    invoke-interface {v0, p1}, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/manager/IFAAFingerprintManagerFacade;->authenticate(Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/manager/IFAAFingerprintCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    if-eqz p1, :cond_0

    const-string/jumbo v0, "fingerprint authenticate error"

    invoke-interface {p1, v1, v0}, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/manager/IFAAFingerprintCallback;->onAuthenticationError(ILjava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public cancel()V
    .locals 1

    iget-object v0, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/manager/IFAAFingerprintManagerAdapter;->mFingerprintManagerFacade:Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/manager/IFAAFingerprintManagerFacade;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/manager/IFAAFingerprintManagerAdapter;->mFingerprintManagerFacade:Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/manager/IFAAFingerprintManagerFacade;

    invoke-interface {v0}, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/manager/IFAAFingerprintManagerFacade;->cancel()V

    :cond_0
    return-void
.end method

.method public getDeviceID()Ljava/lang/String;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/manager/IFAAFingerprintManagerAdapter;->mContext:Landroid/content/Context;

    sget v1, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/ta/TACommands;->COMMAND_GETDEVICEID:I

    invoke-static {v0, v1}, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/ta/TAInterationV1;->sendCommand(Landroid/content/Context;I)Lcom/alipay/security/mobile/alipayauthenticatorservice/message/Result;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/security/mobile/alipayauthenticatorservice/message/Result;->getStatus()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/alipay/security/mobile/alipayauthenticatorservice/message/Result;->getData()[B

    move-result-object v0

    const/16 v1, 0x8

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "\n"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/security/mobile/auth/AuthenticatorLOG;->error(Ljava/lang/Throwable;)V

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized getDeviceModel()Ljava/lang/String;
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/manager/IFAAFingerprintManagerAdapter;->mIFAAManager:Lorg/ifaa/android/manager/IFAAManager;

    invoke-virtual {v0}, Lorg/ifaa/android/manager/IFAAManager;->getDeviceModel()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/security/mobile/util/CommonUtils;->isBlank(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, " "

    const-string/jumbo v2, "_"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getTaVersion()I
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/manager/IFAAFingerprintManagerAdapter;->mContext:Landroid/content/Context;

    sget v1, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/ta/TACommands;->COMMAND_GET_TA_VERSION:I

    invoke-static {v0, v1}, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/ta/TAInterationV1;->sendCommand(Landroid/content/Context;I)Lcom/alipay/security/mobile/alipayauthenticatorservice/message/Result;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/security/mobile/alipayauthenticatorservice/message/Result;->getStatus()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/alipay/security/mobile/alipayauthenticatorservice/message/Result;->getData()[B

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/util/ByteUtils;->toInt([B)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/security/mobile/auth/AuthenticatorLOG;->error(Ljava/lang/Throwable;)V

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getUserStatus(Ljava/lang/String;)I
    .locals 4

    const/4 v0, -0x1

    invoke-static {p1}, Lcom/alipay/security/mobile/util/CommonUtils;->isBlank(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/manager/IFAAFingerprintManagerAdapter;->mContext:Landroid/content/Context;

    sget v2, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/ta/TACommands;->COMMAND_GET_USERSTATUS:I

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/ta/TAInterationV1;->sendCommandAndData(Landroid/content/Context;I[B)Lcom/alipay/security/mobile/alipayauthenticatorservice/message/Result;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/security/mobile/alipayauthenticatorservice/message/Result;->getStatus()I

    move-result v2

    if-nez v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ifaa original user status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/alipay/security/mobile/alipayauthenticatorservice/message/Result;->getData()[B

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/util/ByteUtils;->toInt([B)I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/security/mobile/auth/AuthenticatorLOG;->fpInfo(Ljava/lang/String;)V

    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lcom/alipay/security/mobile/alipayauthenticatorservice/message/Result;->getStatus()I

    move-result v2

    const v3, 0x7a00000f

    if-ne v2, v3, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Lcom/alipay/security/mobile/alipayauthenticatorservice/message/Result;->getStatus()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    const v2, 0x7a00000c

    if-ne v1, v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/alipay/security/mobile/auth/AuthenticatorLOG;->error(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public hasEnrolledFingerprints()Z
    .locals 1

    iget-object v0, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/manager/IFAAFingerprintManagerAdapter;->mFingerprintManagerFacade:Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/manager/IFAAFingerprintManagerFacade;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/manager/IFAAFingerprintManagerAdapter;->mFingerprintManagerFacade:Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/manager/IFAAFingerprintManagerFacade;

    invoke-interface {v0}, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/manager/IFAAFingerprintManagerFacade;->hasEnrolledFingerprints()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized invokeCmd([B)[B
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/manager/IFAAFingerprintManagerAdapter;->mIFAAManager:Lorg/ifaa/android/manager/IFAAManager;

    invoke-virtual {v0}, Lorg/ifaa/android/manager/IFAAManager;->getVersion()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    :try_start_1
    iget-object v0, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/manager/IFAAFingerprintManagerAdapter;->mIFAAManager:Lorg/ifaa/android/manager/IFAAManager;

    check-cast v0, Lorg/ifaa/android/manager/IFAAManagerV2;

    iget-object v1, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/manager/IFAAFingerprintManagerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lorg/ifaa/android/manager/IFAAManagerV2;->processCmdV2(Landroid/content/Context;[B)[B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    :goto_0
    monitor-exit p0

    return-object v0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {v0}, Lcom/alipay/security/mobile/auth/AuthenticatorLOG;->error(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/manager/IFAAFingerprintManagerAdapter;->mIFAAManager:Lorg/ifaa/android/manager/IFAAManager;

    iget-object v1, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/manager/IFAAFingerprintManagerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lorg/ifaa/android/manager/IFAAManager;->processCmd(Landroid/content/Context;[B)[B
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isHardwareDetected()Z
    .locals 1

    iget-object v0, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/manager/IFAAFingerprintManagerAdapter;->mFingerprintManagerFacade:Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/manager/IFAAFingerprintManagerFacade;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/manager/IFAAFingerprintManagerAdapter;->mFingerprintManagerFacade:Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/manager/IFAAFingerprintManagerFacade;

    invoke-interface {v0}, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/manager/IFAAFingerprintManagerFacade;->isHardwareDetected()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized startFingerprintManager()Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/manager/IFAAFingerprintManagerAdapter;->mIFAAManager:Lorg/ifaa/android/manager/IFAAManager;

    iget-object v3, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/manager/IFAAFingerprintManagerAdapter;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lorg/ifaa/android/manager/IFAAManager;->startBIOManager(Landroid/content/Context;I)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    invoke-static {v0}, Lcom/alipay/security/mobile/auth/AuthenticatorLOG;->error(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
