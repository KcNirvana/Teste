.class public Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/util/FingerprintDataUtil;
.super Ljava/lang/Object;
.source "FingerprintDataUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildResult([B)Lcom/alipay/security/mobile/alipayauthenticatorservice/message/Result;
    .locals 4

    if-nez p0, :cond_0

    new-instance v0, Lcom/alipay/security/mobile/alipayauthenticatorservice/message/Result;

    const/16 v1, 0x65

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/alipay/security/mobile/alipayauthenticatorservice/message/Result;-><init>(I[B)V

    :goto_0
    return-object v0

    :cond_0
    array-length v0, p0

    add-int/lit8 v0, v0, -0x8

    new-array v1, v0, [B

    const/16 v0, 0x8

    array-length v2, p0

    add-int/lit8 v2, v2, -0x8

    const/4 v3, 0x0

    invoke-static {p0, v0, v2, v1, v3}, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/util/ByteUtils;->copy([BII[BI)V

    new-instance v0, Lcom/alipay/security/mobile/alipayauthenticatorservice/message/Result;

    invoke-direct {v0}, Lcom/alipay/security/mobile/alipayauthenticatorservice/message/Result;-><init>()V

    invoke-static {p0}, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/util/ByteUtils;->toInt([B)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/alipay/security/mobile/alipayauthenticatorservice/message/Result;->setStatus(I)V

    invoke-virtual {v0, v1}, Lcom/alipay/security/mobile/alipayauthenticatorservice/message/Result;->setData([B)V

    goto :goto_0
.end method

.method public static constructResultBundle(II)Landroid/os/Bundle;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/util/FingerprintDataUtil;->constructResultBundle(IILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public static constructResultBundle(IILjava/lang/String;)Landroid/os/Bundle;
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "KEY_OPERATIONT_TYPE"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "KEY_RESULT"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "KEY_MESSAGE"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public static makeAuthResponse(Ljava/lang/String;Lorg/ifaa/ifaf/OperationHeader;Lcom/alipay/security/mobile/alipayauthenticatorservice/message/Result;)Ljava/lang/String;
    .locals 5

    const/4 v4, 0x0

    sget-object v0, Lorg/ifaa/ifaf/enums/EnumIfaaOperationType;->RESPONSE:Lorg/ifaa/ifaf/enums/EnumIfaaOperationType;

    invoke-virtual {v0}, Lorg/ifaa/ifaf/enums/EnumIfaaOperationType;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/ifaa/ifaf/OperationHeader;->setOpType(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Lorg/ifaa/ifaf/OperationHeader;->setDeviceModel(Ljava/lang/String;)V

    new-instance v0, Lorg/ifaa/ifaf/message/IFAFMessage;

    invoke-direct {v0}, Lorg/ifaa/ifaf/message/IFAFMessage;-><init>()V

    invoke-virtual {v0, p1}, Lorg/ifaa/ifaf/message/IFAFMessage;->setHeader(Lorg/ifaa/ifaf/OperationHeader;)V

    invoke-virtual {p2}, Lcom/alipay/security/mobile/alipayauthenticatorservice/message/Result;->getData()[B

    move-result-object v1

    array-length v1, v1

    new-array v1, v1, [B

    invoke-virtual {p2}, Lcom/alipay/security/mobile/alipayauthenticatorservice/message/Result;->getData()[B

    move-result-object v2

    invoke-virtual {p2}, Lcom/alipay/security/mobile/alipayauthenticatorservice/message/Result;->getData()[B

    move-result-object v3

    array-length v3, v3

    invoke-static {v2, v4, v3, v1, v4}, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/util/ByteUtils;->copy([BII[BI)V

    new-instance v2, Lorg/ifaa/ifaf/message/IFAFSignedData;

    invoke-direct {v2}, Lorg/ifaa/ifaf/message/IFAFSignedData;-><init>()V

    const-string/jumbo v3, "IFAFV1TLV"

    invoke-virtual {v2, v3}, Lorg/ifaa/ifaf/message/IFAFSignedData;->setScheme(Ljava/lang/String;)V

    const/16 v3, 0x8

    invoke-static {v1, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/ifaa/ifaf/message/IFAFSignedData;->setIdentifyData(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lorg/ifaa/ifaf/message/IFAFMessage;->setSignedData(Lorg/ifaa/ifaf/message/IFAFSignedData;)V

    invoke-virtual {v0}, Lorg/ifaa/ifaf/message/IFAFMessage;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static makeRegResponse(Ljava/lang/String;Lorg/ifaa/ifaf/OperationHeader;Lcom/alipay/security/mobile/alipayauthenticatorservice/message/Result;)Ljava/lang/String;
    .locals 5

    const/4 v4, 0x0

    sget-object v0, Lorg/ifaa/ifaf/enums/EnumIfaaOperationType;->RESPONSE:Lorg/ifaa/ifaf/enums/EnumIfaaOperationType;

    invoke-virtual {v0}, Lorg/ifaa/ifaf/enums/EnumIfaaOperationType;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/ifaa/ifaf/OperationHeader;->setOpType(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Lorg/ifaa/ifaf/OperationHeader;->setDeviceModel(Ljava/lang/String;)V

    new-instance v0, Lorg/ifaa/ifaf/message/IFAFMessage;

    invoke-direct {v0}, Lorg/ifaa/ifaf/message/IFAFMessage;-><init>()V

    invoke-virtual {v0, p1}, Lorg/ifaa/ifaf/message/IFAFMessage;->setHeader(Lorg/ifaa/ifaf/OperationHeader;)V

    invoke-virtual {p2}, Lcom/alipay/security/mobile/alipayauthenticatorservice/message/Result;->getData()[B

    move-result-object v1

    array-length v1, v1

    new-array v1, v1, [B

    invoke-virtual {p2}, Lcom/alipay/security/mobile/alipayauthenticatorservice/message/Result;->getData()[B

    move-result-object v2

    invoke-virtual {p2}, Lcom/alipay/security/mobile/alipayauthenticatorservice/message/Result;->getData()[B

    move-result-object v3

    array-length v3, v3

    invoke-static {v2, v4, v3, v1, v4}, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/util/ByteUtils;->copy([BII[BI)V

    new-instance v2, Lorg/ifaa/ifaf/message/IFAFSignedData;

    invoke-direct {v2}, Lorg/ifaa/ifaf/message/IFAFSignedData;-><init>()V

    const-string/jumbo v3, "IFAFV1TLV"

    invoke-virtual {v2, v3}, Lorg/ifaa/ifaf/message/IFAFSignedData;->setScheme(Ljava/lang/String;)V

    const/16 v3, 0x8

    invoke-static {v1, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/ifaa/ifaf/message/IFAFSignedData;->setIdentifyData(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lorg/ifaa/ifaf/message/IFAFMessage;->setSignedData(Lorg/ifaa/ifaf/message/IFAFSignedData;)V

    invoke-virtual {v0}, Lorg/ifaa/ifaf/message/IFAFMessage;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
