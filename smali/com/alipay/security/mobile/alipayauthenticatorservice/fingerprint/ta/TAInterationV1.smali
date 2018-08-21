.class public Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/ta/TAInterationV1;
.super Ljava/lang/Object;
.source "TAInterationV1.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static buildResult([B)Lcom/alipay/security/mobile/alipayauthenticatorservice/message/Result;
    .locals 4

    const/16 v3, 0x8

    if-eqz p0, :cond_0

    array-length v0, p0

    if-ge v0, v3, :cond_1

    :cond_0
    new-instance v0, Lcom/alipay/security/mobile/alipayauthenticatorservice/message/Result;

    const/16 v1, 0x65

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/alipay/security/mobile/alipayauthenticatorservice/message/Result;-><init>(I[B)V

    :goto_0
    return-object v0

    :cond_1
    array-length v0, p0

    add-int/lit8 v0, v0, -0x8

    new-array v1, v0, [B

    array-length v0, p0

    add-int/lit8 v0, v0, -0x8

    const/4 v2, 0x0

    invoke-static {p0, v3, v0, v1, v2}, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/util/ByteUtils;->copy([BII[BI)V

    new-instance v0, Lcom/alipay/security/mobile/alipayauthenticatorservice/message/Result;

    invoke-direct {v0}, Lcom/alipay/security/mobile/alipayauthenticatorservice/message/Result;-><init>()V

    invoke-static {p0}, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/util/ByteUtils;->toInt([B)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/alipay/security/mobile/alipayauthenticatorservice/message/Result;->setStatus(I)V

    invoke-virtual {v0, v1}, Lcom/alipay/security/mobile/alipayauthenticatorservice/message/Result;->setData([B)V

    goto :goto_0
.end method

.method private static doSendData(Landroid/content/Context;[B)[B
    .locals 1

    invoke-static {p0}, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/manager/IFAAFingerprintManagerAdapter;->getInstance(Landroid/content/Context;)Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/manager/IFAAFingerprintManagerAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/manager/IFAAFingerprintManagerAdapter;->invokeCmd([B)[B

    move-result-object v0

    return-object v0
.end method

.method public static getHeader(Landroid/content/Context;)[B
    .locals 9

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/util/PackageUtils;->getApkKeyHashBytes(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v3, v1

    array-length v4, v2

    add-int/lit8 v0, v3, 0x8

    add-int/lit8 v0, v0, 0x4

    add-int/2addr v0, v4

    new-array v0, v0, [B

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {v6}, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/util/ByteUtils;->toBytes(I)[B

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x4

    invoke-static {v6, v7, v0, v5, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v5, 0x4

    invoke-static {v3}, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/util/ByteUtils;->toBytes(I)[B

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x4

    invoke-static {v6, v7, v0, v5, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v5, 0x8

    const/4 v6, 0x0

    invoke-static {v1, v6, v0, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v1, v3, 0x8

    invoke-static {v4}, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/util/ByteUtils;->toBytes(I)[B

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x4

    invoke-static {v3, v5, v0, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v1, v1, 0x4

    const/4 v3, 0x0

    invoke-static {v2, v3, v0, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/security/mobile/auth/AuthenticatorLOG;->error(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static sendCommand(Landroid/content/Context;I)Lcom/alipay/security/mobile/alipayauthenticatorservice/message/Result;
    .locals 5

    const/4 v4, 0x0

    invoke-static {p0}, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/ta/TAInterationV1;->getHeader(Landroid/content/Context;)[B

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v1, v0

    if-nez v1, :cond_1

    :cond_0
    new-instance v0, Lcom/alipay/security/mobile/alipayauthenticatorservice/message/Result;

    const/16 v1, 0x65

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/alipay/security/mobile/alipayauthenticatorservice/message/Result;-><init>(I[B)V

    :goto_0
    return-object v0

    :cond_1
    array-length v1, v0

    add-int/lit8 v2, v1, 0x4

    new-array v2, v2, [B

    invoke-static {v0, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int v0, v4, v1

    invoke-static {p1}, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/util/ByteUtils;->toBytes(I)[B

    move-result-object v1

    const/4 v3, 0x4

    invoke-static {v1, v4, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {p0, v2}, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/ta/TAInterationV1;->doSendData(Landroid/content/Context;[B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/ta/TAInterationV1;->buildResult([B)Lcom/alipay/security/mobile/alipayauthenticatorservice/message/Result;

    move-result-object v0

    goto :goto_0
.end method

.method public static sendCommandAndData(Landroid/content/Context;I[B)Lcom/alipay/security/mobile/alipayauthenticatorservice/message/Result;
    .locals 6

    const/4 v5, 0x4

    const/4 v4, 0x0

    if-eqz p2, :cond_0

    array-length v0, p2

    if-nez v0, :cond_1

    :cond_0
    invoke-static {p0, p1}, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/ta/TAInterationV1;->sendCommand(Landroid/content/Context;I)Lcom/alipay/security/mobile/alipayauthenticatorservice/message/Result;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0}, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/ta/TAInterationV1;->getHeader(Landroid/content/Context;)[B

    move-result-object v0

    if-eqz v0, :cond_2

    array-length v1, v0

    if-nez v1, :cond_3

    :cond_2
    new-instance v0, Lcom/alipay/security/mobile/alipayauthenticatorservice/message/Result;

    const/16 v1, 0x65

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/alipay/security/mobile/alipayauthenticatorservice/message/Result;-><init>(I[B)V

    goto :goto_0

    :cond_3
    array-length v1, v0

    array-length v2, p2

    add-int/lit8 v3, v1, 0x4

    add-int/lit8 v3, v3, 0x4

    add-int/2addr v3, v2

    new-array v3, v3, [B

    invoke-static {v0, v4, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int v0, v4, v1

    invoke-static {p1}, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/util/ByteUtils;->toBytes(I)[B

    move-result-object v1

    invoke-static {v1, v4, v3, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v0, v0, 0x4

    invoke-static {v2}, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/util/ByteUtils;->toBytes(I)[B

    move-result-object v1

    invoke-static {v1, v4, v3, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v0, v0, 0x4

    invoke-static {p2, v4, v3, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {p0, v3}, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/ta/TAInterationV1;->doSendData(Landroid/content/Context;[B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/ta/TAInterationV1;->buildResult([B)Lcom/alipay/security/mobile/alipayauthenticatorservice/message/Result;

    move-result-object v0

    goto :goto_0
.end method
