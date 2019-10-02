.class public Lcom/xiaomi/passport/utils/PassportEnvEncryptUtils;
.super Ljava/lang/Object;
.source "PassportEnvEncryptUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/passport/utils/PassportEnvEncryptUtils$EncryptException;,
        Lcom/xiaomi/passport/utils/PassportEnvEncryptUtils$EncryptResult;
    }
.end annotation


# static fields
.field private static final SYMMETRIC_ALGORITHM:Ljava/lang/String; = "AES"

.field private static volatile mAesKey:Ljavax/crypto/SecretKey;

.field private static volatile mEncryptedKey:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static aesEncrypt(Ljava/lang/String;Ljavax/crypto/SecretKey;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/passport/utils/PassportEnvEncryptUtils$EncryptException;
        }
    .end annotation

    new-instance v0, Lcom/xiaomi/accountsdk/utils/AESCoder;

    invoke-interface {p1}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/xiaomi/accountsdk/utils/AESCoder;-><init>([B)V

    :try_start_0
    invoke-virtual {v0, p0}, Lcom/xiaomi/accountsdk/utils/AESCoder;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Lcom/xiaomi/accountsdk/request/CipherException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lcom/xiaomi/passport/utils/PassportEnvEncryptUtils$EncryptException;

    invoke-direct {p1, p0}, Lcom/xiaomi/passport/utils/PassportEnvEncryptUtils$EncryptException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static encrypt(Ljava/lang/String;)Lcom/xiaomi/passport/utils/PassportEnvEncryptUtils$EncryptResult;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/passport/utils/PassportEnvEncryptUtils$EncryptException;
        }
    .end annotation

    new-instance v0, Lcom/xiaomi/passport/utils/PassportEnvEncryptUtils$EncryptResult;

    invoke-direct {v0}, Lcom/xiaomi/passport/utils/PassportEnvEncryptUtils$EncryptResult;-><init>()V

    const-class v1, Lcom/xiaomi/passport/utils/PassportEnvEncryptUtils;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcom/xiaomi/passport/utils/PassportEnvEncryptUtils;->mAesKey:Ljavax/crypto/SecretKey;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/xiaomi/passport/utils/PassportEnvEncryptUtils;->mEncryptedKey:Ljava/lang/String;

    if-nez v2, :cond_1

    :cond_0
    invoke-static {}, Lcom/xiaomi/passport/utils/PassportEnvEncryptUtils;->generateSymmetricKey()Ljavax/crypto/SecretKey;

    move-result-object v2

    sput-object v2, Lcom/xiaomi/passport/utils/PassportEnvEncryptUtils;->mAesKey:Ljavax/crypto/SecretKey;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v2, "-----BEGIN CERTIFICATE-----\nMIICDzCCAXigAwIBAgIEWBw0IzANBgkqhkiG9w0BAQUFADBMMQswCQYDVQQGEwJD\nTjEPMA0GA1UEChMGeGlhb21pMQ8wDQYDVQQLEwZ4aWFvbWkxGzAZBgNVBAMTEmFj\nY291bnQueGlhb21pLmNvbTAeFw0xNjExMDQwNzA5MjNaFw0xNzExMDQwNzA5MjNa\nMEwxCzAJBgNVBAYTAkNOMQ8wDQYDVQQKEwZ4aWFvbWkxDzANBgNVBAsTBnhpYW9t\naTEbMBkGA1UEAxMSYWNjb3VudC54aWFvbWkuY29tMIGfMA0GCSqGSIb3DQEBAQUA\nA4GNADCBiQKBgQCHcPEm9Wo8/LWHL8mohOV5YalTgZLzng+nWCEkIRP//6GohYlI\nh3dvGpueJvQ3Sany/3dLx0x6MQKA34NxRyoO37R/LgPZUfe6eWzHQeColBBHxTED\nbCqDh46Gv5vogjqHRl4+q2WGCmZOIfmPjNHQWG8sMIZyTqFCLc6gk9vSewIDAQAB\nMA0GCSqGSIb3DQEBBQUAA4GBAHaPnscaxSPh0N0Z5OgQ6PcWr5uYPLMweatYGZRH\nSFxwSqYXpqIowuRxmrBj+oE5rG5rzFCtNjCBoeMVy/7JXZr9Juaw9NCWaTaqrmIV\nP4nK/0kizCvkx3088OOCGextGeZUC9/PCbVUEcRvGLwSrvgqiC1KG4ufeIdQWBaJ\n8ZlG\n-----END CERTIFICATE-----\n"

    invoke-static {v2}, Lcom/xiaomi/accountsdk/utils/RSACoder;->getCertificatePublicKey(Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object v2

    sget-object v3, Lcom/xiaomi/passport/utils/PassportEnvEncryptUtils;->mAesKey:Ljavax/crypto/SecretKey;

    invoke-interface {v3}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v3

    invoke-static {v3, v2}, Lcom/xiaomi/accountsdk/utils/RSACoder;->encrypt([BLjava/security/Key;)[B

    move-result-object v2

    const/16 v3, 0xa

    invoke-static {v2, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/xiaomi/passport/utils/PassportEnvEncryptUtils;->mEncryptedKey:Ljava/lang/String;
    :try_end_1
    .catch Lcom/xiaomi/accountsdk/account/exception/CryptoException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    sget-object v1, Lcom/xiaomi/passport/utils/PassportEnvEncryptUtils;->mAesKey:Ljavax/crypto/SecretKey;

    invoke-static {p0, v1}, Lcom/xiaomi/passport/utils/PassportEnvEncryptUtils;->aesEncrypt(Ljava/lang/String;Ljavax/crypto/SecretKey;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/xiaomi/passport/utils/PassportEnvEncryptUtils$EncryptResult;->content:Ljava/lang/String;

    sget-object p0, Lcom/xiaomi/passport/utils/PassportEnvEncryptUtils;->mEncryptedKey:Ljava/lang/String;

    iput-object p0, v0, Lcom/xiaomi/passport/utils/PassportEnvEncryptUtils$EncryptResult;->encryptedKey:Ljava/lang/String;

    return-object v0

    :catch_0
    move-exception p0

    :try_start_3
    new-instance v0, Lcom/xiaomi/passport/utils/PassportEnvEncryptUtils$EncryptException;

    invoke-direct {v0, p0}, Lcom/xiaomi/passport/utils/PassportEnvEncryptUtils$EncryptException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method public static encrypt([Ljava/lang/String;)Lcom/xiaomi/passport/utils/PassportEnvEncryptUtils$EncryptResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/passport/utils/PassportEnvEncryptUtils$EncryptException;
        }
    .end annotation

    const-string v0, ":"

    invoke-static {v0, p0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/xiaomi/passport/utils/PassportEnvEncryptUtils;->encrypt(Ljava/lang/String;)Lcom/xiaomi/passport/utils/PassportEnvEncryptUtils$EncryptResult;

    move-result-object p0

    return-object p0
.end method

.method private static generateSymmetricKey()Ljavax/crypto/SecretKey;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/passport/utils/PassportEnvEncryptUtils$EncryptException;
        }
    .end annotation

    :try_start_0
    const-string v0, "AES"

    invoke-static {v0}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v0

    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v0, v1}, Ljavax/crypto/KeyGenerator;->init(Ljava/security/SecureRandom;)V

    invoke-virtual {v0}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/xiaomi/passport/utils/PassportEnvEncryptUtils$EncryptException;

    invoke-direct {v1, v0}, Lcom/xiaomi/passport/utils/PassportEnvEncryptUtils$EncryptException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
