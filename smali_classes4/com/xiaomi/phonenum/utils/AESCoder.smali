.class public Lcom/xiaomi/phonenum/utils/AESCoder;
.super Ljava/lang/Object;
.source "AESCoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/phonenum/utils/AESCoder$CipherException;
    }
.end annotation


# static fields
.field public static final AES_ALGORITHM:Ljava/lang/String; = "AES/CBC/PKCS5Padding"

.field public static final TAG:Ljava/lang/String; = "AESCoder"

.field private static final UTF8:Ljava/lang/String; = "UTF-8"

.field private static logger:Lcom/xiaomi/phonenum/utils/Logger;


# instance fields
.field private keySpec:Ljavax/crypto/spec/SecretKeySpec;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/xiaomi/phonenum/utils/LoggerManager;->getLogger()Lcom/xiaomi/phonenum/utils/Logger;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/phonenum/utils/AESCoder;->logger:Lcom/xiaomi/phonenum/utils/Logger;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    array-length v0, p1

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/xiaomi/phonenum/utils/AESCoder;->logger:Lcom/xiaomi/phonenum/utils/Logger;

    const-string v1, "AESCoder"

    const-string v2, "aesKey is invalid"

    invoke-interface {v0, v1, v2}, Lcom/xiaomi/phonenum/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "AES"

    invoke-direct {v0, p1, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    iput-object v0, p0, Lcom/xiaomi/phonenum/utils/AESCoder;->keySpec:Ljavax/crypto/spec/SecretKeySpec;

    return-void

    :cond_1
    new-instance p1, Ljava/lang/SecurityException;

    const-string v0, "aes key is null"

    invoke-direct {p1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private decrypt([B)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/phonenum/utils/AESCoder$CipherException;
        }
    .end annotation

    :try_start_0
    const-string v0, "AES/CBC/PKCS5Padding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {p0}, Lcom/xiaomi/phonenum/utils/AESCoder;->getInitalVector()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/xiaomi/phonenum/utils/AESCoder;->keySpec:Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v0, v2, v3, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljavax/crypto/IllegalBlockSizeException;

    const-string v0, "no block data"

    invoke-direct {p1, v0}, Ljavax/crypto/IllegalBlockSizeException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    new-instance v0, Lcom/xiaomi/phonenum/utils/AESCoder$CipherException;

    const-string v1, "fail to decrypt by aescoder"

    invoke-direct {v0, p0, v1, p1}, Lcom/xiaomi/phonenum/utils/AESCoder$CipherException;-><init>(Lcom/xiaomi/phonenum/utils/AESCoder;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private encrypt([B)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/phonenum/utils/AESCoder$CipherException;
        }
    .end annotation

    :try_start_0
    const-string v0, "AES/CBC/PKCS5Padding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {p0}, Lcom/xiaomi/phonenum/utils/AESCoder;->getInitalVector()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/xiaomi/phonenum/utils/AESCoder;->keySpec:Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v0, v2, v3, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Lcom/xiaomi/phonenum/utils/AESCoder$CipherException;

    const-string v1, "fail to encrypt by aescoder"

    invoke-direct {v0, p0, v1, p1}, Lcom/xiaomi/phonenum/utils/AESCoder$CipherException;-><init>(Lcom/xiaomi/phonenum/utils/AESCoder;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private getInitalVector()[B
    .locals 1

    const-string v0, "0102030405060708"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public decrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/phonenum/utils/AESCoder$CipherException;
        }
    .end annotation

    if-nez p1, :cond_0

    sget-object p1, Lcom/xiaomi/phonenum/utils/AESCoder;->logger:Lcom/xiaomi/phonenum/utils/Logger;

    const-string v0, "AESCoder"

    const-string v1, "decrypt failed for empty data"

    invoke-interface {p1, v0, v1}, Lcom/xiaomi/phonenum/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/4 v0, 0x2

    :try_start_0
    invoke-static {p1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/xiaomi/phonenum/utils/AESCoder;->decrypt([B)[B

    move-result-object p1

    new-instance v0, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    new-instance v0, Lcom/xiaomi/phonenum/utils/AESCoder$CipherException;

    const-string v1, "fail to decrypt by aescoder"

    invoke-direct {v0, p0, v1, p1}, Lcom/xiaomi/phonenum/utils/AESCoder$CipherException;-><init>(Lcom/xiaomi/phonenum/utils/AESCoder;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public encrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/phonenum/utils/AESCoder$CipherException;
        }
    .end annotation

    :try_start_0
    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/xiaomi/phonenum/utils/AESCoder;->encrypt([B)[B

    move-result-object p1

    const/16 v0, 0xa

    invoke-static {p1, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Lcom/xiaomi/phonenum/utils/AESCoder$CipherException;

    const-string v1, "fail to encrypt by aescoder"

    invoke-direct {v0, p0, v1, p1}, Lcom/xiaomi/phonenum/utils/AESCoder$CipherException;-><init>(Lcom/xiaomi/phonenum/utils/AESCoder;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
