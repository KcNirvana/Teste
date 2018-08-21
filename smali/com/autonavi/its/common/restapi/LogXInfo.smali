.class public Lcom/autonavi/its/common/restapi/LogXInfo;
.super Ljava/lang/Object;
.source "LogXInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/autonavi/its/common/restapi/LogXInfo$XInfoEntity;
    }
.end annotation


# static fields
.field public static final DEFAULT_CHARACTER:Ljava/lang/String; = "UTF-8"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static encrptXInfo(Landroid/content/Context;Ljava/io/ByteArrayOutputStream;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/io/IOException;,
            Ljavax/crypto/BadPaddingException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-static {v1}, Lcom/autonavi/its/common/restapi/Utils;->gZip([B)[B

    move-result-object v2

    invoke-static {p0, v2}, Lcom/autonavi/its/common/restapi/LogXInfo;->rsaPartData(Landroid/content/Context;[B)[B

    move-result-object v3

    invoke-static {v3}, Lcom/autonavi/its/common/restapi/Encrypt;->encodeBase64([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getXInfo(Landroid/content/Context;)Ljava/lang/String;
    .locals 7

    const/4 v4, 0x0

    :try_start_0
    new-instance v1, Lcom/autonavi/its/common/restapi/LogXInfo$XInfoEntity;

    const/4 v5, 0x0

    invoke-direct {v1, v5}, Lcom/autonavi/its/common/restapi/LogXInfo$XInfoEntity;-><init>(Lcom/autonavi/its/common/restapi/LogXInfo$1;)V

    invoke-static {p0}, Lcom/autonavi/its/common/restapi/DeviceInfo;->getDeviceID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/autonavi/its/common/restapi/LogXInfo$XInfoEntity;->mImei:Ljava/lang/String;

    invoke-static {p0}, Lcom/autonavi/its/common/restapi/DeviceInfo;->getDeviceMac(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/autonavi/its/common/restapi/LogXInfo$XInfoEntity;->mMac:Ljava/lang/String;

    invoke-static {p0}, Lcom/autonavi/its/common/restapi/DeviceInfo;->getUTDID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    const-string/jumbo v3, ""

    :cond_0
    iput-object v3, v1, Lcom/autonavi/its/common/restapi/LogXInfo$XInfoEntity;->mUtd:Ljava/lang/String;

    invoke-static {p0}, Lcom/autonavi/its/common/restapi/AppInfo;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/autonavi/its/common/restapi/LogXInfo$XInfoEntity;->mPackageName:Ljava/lang/String;

    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v5, v1, Lcom/autonavi/its/common/restapi/LogXInfo$XInfoEntity;->mModel:Ljava/lang/String;

    sget-object v5, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    iput-object v5, v1, Lcom/autonavi/its/common/restapi/LogXInfo$XInfoEntity;->mManufacturer:Ljava/lang/String;

    sget-object v5, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    iput-object v5, v1, Lcom/autonavi/its/common/restapi/LogXInfo$XInfoEntity;->mDevice:Ljava/lang/String;

    invoke-static {p0}, Lcom/autonavi/its/common/restapi/AppInfo;->getApplicationName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/autonavi/its/common/restapi/LogXInfo$XInfoEntity;->mAppname:Ljava/lang/String;

    invoke-static {p0}, Lcom/autonavi/its/common/restapi/AppInfo;->getApplicationVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/autonavi/its/common/restapi/LogXInfo$XInfoEntity;->mAppversion:Ljava/lang/String;

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/autonavi/its/common/restapi/LogXInfo$XInfoEntity;->mSysversion:Ljava/lang/String;

    invoke-static {p0}, Lcom/autonavi/its/common/restapi/DeviceInfo;->getSubscriberId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/autonavi/its/common/restapi/LogXInfo$XInfoEntity;->mSim:Ljava/lang/String;

    invoke-static {p0}, Lcom/autonavi/its/common/restapi/DeviceInfo;->getReslution(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/autonavi/its/common/restapi/LogXInfo$XInfoEntity;->mResolution:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/autonavi/its/common/restapi/DeviceInfo;->getActiveNetWorkType(Landroid/content/Context;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/autonavi/its/common/restapi/LogXInfo$XInfoEntity;->mAnt:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/autonavi/its/common/restapi/DeviceInfo;->getNetWorkType(Landroid/content/Context;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/autonavi/its/common/restapi/LogXInfo$XInfoEntity;->mNt:Ljava/lang/String;

    invoke-static {p0}, Lcom/autonavi/its/common/restapi/DeviceInfo;->getNetworkOperatorName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/autonavi/its/common/restapi/LogXInfo$XInfoEntity;->mNp:Ljava/lang/String;

    invoke-static {p0}, Lcom/autonavi/its/common/restapi/DeviceInfo;->getMNC(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/autonavi/its/common/restapi/LogXInfo$XInfoEntity;->mMnc:Ljava/lang/String;

    invoke-static {p0}, Lcom/autonavi/its/common/restapi/DeviceInfo;->getWifiMacs(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/autonavi/its/common/restapi/LogXInfo$XInfoEntity;->mWifis:Ljava/lang/String;

    invoke-static {p0}, Lcom/autonavi/its/common/restapi/DeviceInfo;->getConnectWifi(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/autonavi/its/common/restapi/LogXInfo$XInfoEntity;->mWifi:Ljava/lang/String;

    invoke-static {p0}, Lcom/autonavi/its/common/restapi/DeviceInfo;->getCellInfo(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x0

    aget-object v5, v0, v5

    iput-object v5, v1, Lcom/autonavi/its/common/restapi/LogXInfo$XInfoEntity;->mBts:Ljava/lang/String;

    const/4 v5, 0x1

    aget-object v5, v0, v5

    iput-object v5, v1, Lcom/autonavi/its/common/restapi/LogXInfo$XInfoEntity;->mBttype:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/autonavi/its/common/restapi/LogXInfo;->getXInfo(Landroid/content/Context;Lcom/autonavi/its/common/restapi/LogXInfo$XInfoEntity;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    :goto_0
    return-object v4

    :catch_0
    move-exception v5

    goto :goto_0
.end method

.method private static getXInfo(Landroid/content/Context;Lcom/autonavi/its/common/restapi/LogXInfo$XInfoEntity;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v2, p1, Lcom/autonavi/its/common/restapi/LogXInfo$XInfoEntity;->mImei:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/autonavi/its/common/restapi/LogXInfo;->writeField(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    iget-object v2, p1, Lcom/autonavi/its/common/restapi/LogXInfo$XInfoEntity;->mMac:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/autonavi/its/common/restapi/LogXInfo;->writeField(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    iget-object v2, p1, Lcom/autonavi/its/common/restapi/LogXInfo$XInfoEntity;->mUtd:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/autonavi/its/common/restapi/LogXInfo;->writeField(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    iget-object v2, p1, Lcom/autonavi/its/common/restapi/LogXInfo$XInfoEntity;->mPackageName:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/autonavi/its/common/restapi/LogXInfo;->writeField(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    iget-object v2, p1, Lcom/autonavi/its/common/restapi/LogXInfo$XInfoEntity;->mModel:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/autonavi/its/common/restapi/LogXInfo;->writeField(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    iget-object v2, p1, Lcom/autonavi/its/common/restapi/LogXInfo$XInfoEntity;->mManufacturer:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/autonavi/its/common/restapi/LogXInfo;->writeField(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    iget-object v2, p1, Lcom/autonavi/its/common/restapi/LogXInfo$XInfoEntity;->mDevice:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/autonavi/its/common/restapi/LogXInfo;->writeField(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    iget-object v2, p1, Lcom/autonavi/its/common/restapi/LogXInfo$XInfoEntity;->mAppname:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/autonavi/its/common/restapi/LogXInfo;->writeField(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    iget-object v2, p1, Lcom/autonavi/its/common/restapi/LogXInfo$XInfoEntity;->mAppversion:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/autonavi/its/common/restapi/LogXInfo;->writeField(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    iget-object v2, p1, Lcom/autonavi/its/common/restapi/LogXInfo$XInfoEntity;->mSysversion:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/autonavi/its/common/restapi/LogXInfo;->writeField(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    iget-object v2, p1, Lcom/autonavi/its/common/restapi/LogXInfo$XInfoEntity;->mSim:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/autonavi/its/common/restapi/LogXInfo;->writeField(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    iget-object v2, p1, Lcom/autonavi/its/common/restapi/LogXInfo$XInfoEntity;->mResolution:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/autonavi/its/common/restapi/LogXInfo;->writeField(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    iget-object v2, p1, Lcom/autonavi/its/common/restapi/LogXInfo$XInfoEntity;->mAnt:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/autonavi/its/common/restapi/LogXInfo;->writeField(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    iget-object v2, p1, Lcom/autonavi/its/common/restapi/LogXInfo$XInfoEntity;->mNt:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/autonavi/its/common/restapi/LogXInfo;->writeField(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    iget-object v2, p1, Lcom/autonavi/its/common/restapi/LogXInfo$XInfoEntity;->mNp:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/autonavi/its/common/restapi/LogXInfo;->writeField(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    iget-object v2, p1, Lcom/autonavi/its/common/restapi/LogXInfo$XInfoEntity;->mMnc:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/autonavi/its/common/restapi/LogXInfo;->writeField(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    iget-object v2, p1, Lcom/autonavi/its/common/restapi/LogXInfo$XInfoEntity;->mWifis:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/autonavi/its/common/restapi/LogXInfo;->writeField(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    iget-object v2, p1, Lcom/autonavi/its/common/restapi/LogXInfo$XInfoEntity;->mWifi:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/autonavi/its/common/restapi/LogXInfo;->writeField(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    iget-object v2, p1, Lcom/autonavi/its/common/restapi/LogXInfo$XInfoEntity;->mBts:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/autonavi/its/common/restapi/LogXInfo;->writeField(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    iget-object v2, p1, Lcom/autonavi/its/common/restapi/LogXInfo$XInfoEntity;->mBttype:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/autonavi/its/common/restapi/LogXInfo;->writeField(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    invoke-static {p0, v1}, Lcom/autonavi/its/common/restapi/LogXInfo;->encrptXInfo(Landroid/content/Context;Ljava/io/ByteArrayOutputStream;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v2

    if-eqz v1, :cond_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    :cond_0
    :goto_0
    move-object v0, v1

    :goto_1
    return-object v2

    :catch_0
    move-exception v2

    :goto_2
    if-eqz v0, :cond_1

    :try_start_3
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    :cond_1
    :goto_3
    const/4 v2, 0x0

    goto :goto_1

    :catchall_0
    move-exception v2

    :goto_4
    if-eqz v0, :cond_2

    :try_start_4
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3

    :cond_2
    :goto_5
    throw v2

    :catch_1
    move-exception v3

    goto :goto_0

    :catch_2
    move-exception v2

    goto :goto_3

    :catch_3
    move-exception v3

    goto :goto_5

    :catchall_1
    move-exception v2

    move-object v0, v1

    goto :goto_4

    :catch_4
    move-exception v2

    move-object v0, v1

    goto :goto_2
.end method

.method private static rsaPartData(Landroid/content/Context;[B)[B
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/security/spec/InvalidKeySpecException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/lang/NullPointerException;,
            Ljava/io/IOException;,
            Ljava/security/InvalidKeyException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    const/16 v7, 0x80

    const/16 v6, 0x75

    const/4 v5, 0x0

    const/4 v1, 0x0

    invoke-static {p0}, Lcom/autonavi/its/common/restapi/Utils;->getPublicKey(Landroid/content/Context;)Ljava/security/PublicKey;

    move-result-object v1

    const/4 v2, 0x0

    array-length v4, p1

    if-le v4, v6, :cond_0

    new-array v0, v6, [B

    invoke-static {p1, v5, v0, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v0, v1}, Lcom/autonavi/its/common/restapi/Encrypt;->rsaEncrypt([BLjava/security/Key;)[B

    move-result-object v3

    array-length v4, p1

    add-int/lit16 v4, v4, 0x80

    add-int/lit8 v4, v4, -0x75

    new-array v2, v4, [B

    invoke-static {v3, v5, v2, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v4, p1

    add-int/lit8 v4, v4, -0x75

    invoke-static {p1, v6, v2, v7, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    return-object v2

    :cond_0
    invoke-static {p1, v1}, Lcom/autonavi/its/common/restapi/Encrypt;->rsaEncrypt([BLjava/security/Key;)[B

    move-result-object v2

    goto :goto_0
.end method

.method private static writeField(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    :try_start_0
    const-string/jumbo v2, "UTF-8"

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    array-length v1, v2

    const/4 v0, 0x0

    const/16 v2, 0xff

    if-le v1, v2, :cond_0

    const/4 v0, -0x1

    :goto_0
    invoke-static {p1}, Lcom/autonavi/its/common/restapi/Utils;->stringToBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {p0, v0, v2}, Lcom/autonavi/its/common/restapi/Utils;->writeField(Ljava/io/ByteArrayOutputStream;B[B)V

    :goto_1
    return-void

    :cond_0
    const-string/jumbo v2, "UTF-8"

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    array-length v2, v2
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    int-to-byte v0, v2

    goto :goto_0

    :cond_1
    new-array v2, v3, [B

    invoke-static {p0, v3, v2}, Lcom/autonavi/its/common/restapi/Utils;->writeField(Ljava/io/ByteArrayOutputStream;B[B)V

    goto :goto_1

    :catch_0
    move-exception v2

    goto :goto_1
.end method
