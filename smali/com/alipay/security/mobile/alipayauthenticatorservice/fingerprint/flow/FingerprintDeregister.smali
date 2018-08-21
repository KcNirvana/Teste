.class public Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/flow/FingerprintDeregister;
.super Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/flow/FingerprintAuth;
.source "FingerprintDeregister.java"


# static fields
.field protected static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/flow/FingerprintAuthenticate;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/flow/FingerprintDeregister;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/flow/FingerprintAuth;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method protected doTransaction()Landroid/os/Bundle;
    .locals 5

    const/16 v4, 0x65

    :try_start_0
    iget-object v0, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/flow/FingerprintDeregister;->mMessage:Landroid/os/Bundle;

    const-string/jumbo v1, "KEY_MESSAGE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/ifaa/ifaf/message/IFAFMessage;->parse(Ljava/lang/String;)Lorg/ifaa/ifaf/message/IFAFMessage;

    move-result-object v0

    invoke-virtual {v0}, Lorg/ifaa/ifaf/message/IFAFMessage;->getSignedData()Lorg/ifaa/ifaf/message/IFAFSignedData;

    move-result-object v0

    invoke-virtual {v0}, Lorg/ifaa/ifaf/message/IFAFSignedData;->getIdentifyData()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x8

    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/flow/FingerprintDeregister;->mContext:Landroid/content/Context;

    sget v2, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/ta/TACommands;->COMMAND_FINGERPRINT_DEREG:I

    invoke-static {v1, v2, v0}, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/ta/TAInterationV1;->sendCommandAndData(Landroid/content/Context;I[B)Lcom/alipay/security/mobile/alipayauthenticatorservice/message/Result;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/security/mobile/alipayauthenticatorservice/message/Result;->getStatus()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/flow/FingerprintDeregister;->getReponseType()I

    move-result v0

    const/16 v1, 0x64

    invoke-static {v0, v1}, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/util/FingerprintDataUtil;->constructResultBundle(II)Landroid/os/Bundle;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v1, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/flow/FingerprintDeregister;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "fingerprint auth TA onResult not 0, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/alipay/security/mobile/alipayauthenticatorservice/message/Result;->getStatusString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/security/mobile/auth/AuthenticatorLOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/flow/FingerprintDeregister;->getReponseType()I

    move-result v0

    const/16 v1, 0x65

    invoke-static {v0, v1}, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/util/FingerprintDataUtil;->constructResultBundle(II)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/flow/FingerprintDeregister;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/alipay/security/mobile/auth/AuthenticatorLOG;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/flow/FingerprintDeregister;->getReponseType()I

    move-result v0

    invoke-static {v0, v4}, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/util/FingerprintDataUtil;->constructResultBundle(II)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0
.end method

.method protected getReponseType()I
    .locals 1

    const/16 v0, 0xa

    return v0
.end method
