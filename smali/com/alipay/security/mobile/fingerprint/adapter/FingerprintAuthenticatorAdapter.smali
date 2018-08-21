.class public Lcom/alipay/security/mobile/fingerprint/adapter/FingerprintAuthenticatorAdapter;
.super Lcom/alipay/security/mobile/auth/AbstractAuthenticator;
.source "FingerprintAuthenticatorAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/security/mobile/fingerprint/adapter/FingerprintAuthenticatorAdapter$InitCallback;
    }
.end annotation


# static fields
.field private static final TYPE:I


# instance fields
.field private mFingerprintManagerAdapter:Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/manager/IFAAFingerprintManagerAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, Lcom/alipay/security/mobile/auth/Constants;->TYPE_FINGERPRINT:I

    sput v0, Lcom/alipay/security/mobile/fingerprint/adapter/FingerprintAuthenticatorAdapter;->TYPE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/security/mobile/auth/AbstractAuthenticator;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/alipay/security/mobile/fingerprint/adapter/FingerprintAuthenticatorAdapter;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/alipay/security/mobile/fingerprint/adapter/FingerprintAuthenticatorAdapter;->context:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public cancel()V
    .locals 1

    iget-object v0, p0, Lcom/alipay/security/mobile/fingerprint/adapter/FingerprintAuthenticatorAdapter;->mFingerprintManagerAdapter:Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/manager/IFAAFingerprintManagerAdapter;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/security/mobile/fingerprint/adapter/FingerprintAuthenticatorAdapter;->mFingerprintManagerAdapter:Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/manager/IFAAFingerprintManagerAdapter;

    invoke-virtual {v0}, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/manager/IFAAFingerprintManagerAdapter;->cancel()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public checkUserStatus(Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lcom/alipay/security/mobile/fingerprint/adapter/FingerprintAuthenticatorAdapter;->mFingerprintManagerAdapter:Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/manager/IFAAFingerprintManagerAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/security/mobile/fingerprint/adapter/FingerprintAuthenticatorAdapter;->mFingerprintManagerAdapter:Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/manager/IFAAFingerprintManagerAdapter;

    invoke-virtual {v0, p1}, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/manager/IFAAFingerprintManagerAdapter;->getUserStatus(Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method protected doAuthenticate(Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;Lcom/alipay/security/mobile/auth/AuthenticatorCallback;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method protected doDeregister(Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;Lcom/alipay/security/mobile/auth/AuthenticatorCallback;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method protected doRegister(Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;Lcom/alipay/security/mobile/auth/AuthenticatorCallback;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public getAuthInfo()Lcom/alipay/security/mobile/auth/AuthInfo;
    .locals 7

    new-instance v0, Lcom/alipay/security/mobile/auth/AuthInfo;

    sget v1, Lcom/alipay/security/mobile/auth/Constants;->TYPE_FINGERPRINT:I

    const/16 v2, 0x64

    const/4 v3, 0x2

    const/16 v4, 0x14

    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string/jumbo v6, ""

    invoke-direct/range {v0 .. v6}, Lcom/alipay/security/mobile/auth/AuthInfo;-><init>(IIIILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/security/mobile/fingerprint/adapter/FingerprintAuthenticatorAdapter;->mFingerprintManagerAdapter:Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/manager/IFAAFingerprintManagerAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/security/mobile/fingerprint/adapter/FingerprintAuthenticatorAdapter;->mFingerprintManagerAdapter:Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/manager/IFAAFingerprintManagerAdapter;

    invoke-virtual {v0}, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/manager/IFAAFingerprintManagerAdapter;->getDeviceID()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public init(Landroid/content/Context;Lcom/alipay/security/mobile/auth/AuthenticatorCallback;Ljava/lang/String;)I
    .locals 2

    const/16 v0, 0x6f

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/security/mobile/fingerprint/adapter/FingerprintAuthenticatorAdapter;->context:Landroid/content/Context;

    :try_start_0
    invoke-static {p1}, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/manager/IFAAFingerprintManagerAdapter;->getInstance(Landroid/content/Context;)Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/manager/IFAAFingerprintManagerAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/security/mobile/fingerprint/adapter/FingerprintAuthenticatorAdapter;->mFingerprintManagerAdapter:Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/manager/IFAAFingerprintManagerAdapter;

    iget-object v1, p0, Lcom/alipay/security/mobile/fingerprint/adapter/FingerprintAuthenticatorAdapter;->mFingerprintManagerAdapter:Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/manager/IFAAFingerprintManagerAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/security/mobile/fingerprint/adapter/FingerprintAuthenticatorAdapter;->mFingerprintManagerAdapter:Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/manager/IFAAFingerprintManagerAdapter;

    invoke-virtual {v1}, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/manager/IFAAFingerprintManagerAdapter;->isHardwareDetected()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/16 v0, 0x64

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public prapareKeyPair()V
    .locals 0

    return-void
.end method

.method public process(Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    :pswitch_0
    return-object v0

    :cond_1
    invoke-virtual {p1}, Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;->getType()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :pswitch_1
    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/alipay/security/mobile/fingerprint/adapter/FingerprintAuthenticatorAdapter;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    invoke-virtual {p1}, Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;->getData()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/security/mobile/util/CommonUtils;->isBlank(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;->getData()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/alipay/security/mobile/fingerprint/adapter/FingerprintAuthenticatorAdapter;->checkUserStatus(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_4
    iget-object v1, p0, Lcom/alipay/security/mobile/fingerprint/adapter/FingerprintAuthenticatorAdapter;->mFingerprintManagerAdapter:Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/manager/IFAAFingerprintManagerAdapter;

    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/security/mobile/fingerprint/adapter/FingerprintAuthenticatorAdapter;->mFingerprintManagerAdapter:Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/manager/IFAAFingerprintManagerAdapter;

    invoke-virtual {v1}, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/manager/IFAAFingerprintManagerAdapter;->startFingerprintManager()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_5
    iget-object v1, p0, Lcom/alipay/security/mobile/fingerprint/adapter/FingerprintAuthenticatorAdapter;->mFingerprintManagerAdapter:Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/manager/IFAAFingerprintManagerAdapter;

    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/security/mobile/fingerprint/adapter/FingerprintAuthenticatorAdapter;->registedFingerPrintNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_2
        :pswitch_5
        :pswitch_3
        :pswitch_1
        :pswitch_4
        :pswitch_0
    .end packed-switch
.end method

.method public process(Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;Lcom/alipay/security/mobile/auth/AuthenticatorCallback;)V
    .locals 3

    const-string/jumbo v0, "process new wallet path"

    invoke-static {v0}, Lcom/alipay/security/mobile/auth/AuthenticatorLOG;->debug(Ljava/lang/String;)V

    sget v0, Lcom/alipay/security/mobile/fingerprint/adapter/FingerprintAuthenticatorAdapter;->TYPE:I

    invoke-virtual {p1, v0}, Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;->setAuthenticatorType(I)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "KEY_OPERATIONT_TYPE"

    invoke-virtual {p1}, Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;->getType()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "KEY_MESSAGE"

    invoke-virtual {p1}, Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;->getData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "KEY_AUTHENTICATOR_TYPE"

    invoke-virtual {p1}, Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;->getAuthenticatorType()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "KEY_EXTRA_PARAMS"

    invoke-virtual {p1}, Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;->getExtraParams()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "KEY_VERSION"

    invoke-virtual {p1}, Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;->getVersion()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/alipay/security/mobile/fingerprint/adapter/FingerprintAuthenticatorAdapter$1;

    invoke-direct {v2, p0, v0, p2}, Lcom/alipay/security/mobile/fingerprint/adapter/FingerprintAuthenticatorAdapter$1;-><init>(Lcom/alipay/security/mobile/fingerprint/adapter/FingerprintAuthenticatorAdapter;Landroid/os/Bundle;Lcom/alipay/security/mobile/auth/AuthenticatorCallback;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public registedFingerPrintNumber()I
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/alipay/security/mobile/fingerprint/adapter/FingerprintAuthenticatorAdapter;->mFingerprintManagerAdapter:Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/manager/IFAAFingerprintManagerAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/security/mobile/fingerprint/adapter/FingerprintAuthenticatorAdapter;->mFingerprintManagerAdapter:Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/manager/IFAAFingerprintManagerAdapter;

    invoke-virtual {v1}, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/manager/IFAAFingerprintManagerAdapter;->hasEnrolledFingerprints()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    :cond_0
    return v0
.end method

.method public release()V
    .locals 0

    return-void
.end method
