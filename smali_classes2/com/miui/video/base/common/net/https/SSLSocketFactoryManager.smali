.class public Lcom/miui/video/base/common/net/https/SSLSocketFactoryManager;
.super Ljava/lang/Object;
.source "SSLSocketFactoryManager.java"


# static fields
.field private static final VIDEO_CA:Ljava/lang/String; = "-----BEGIN CERTIFICATE-----\nMIICYzCCAcwCAQIwDQYJKoZIhvcNAQEEBQAwfTELMAkGA1UEBhMCQ04xDDAKBgNV\nBAgMA0JFSjEQMA4GA1UEBwwHQmVpSmluZzEPMA0GA1UECgwGRHVva2FuMQwwCgYD\nVQQLDANSJkQxDDAKBgNVBAMMA2JveDEhMB8GCSqGSIb3DQEJARYSc2VydmljZUBk\ndW9rYW4uY29tMB4XDTEyMDgzMDA1MTcxM1oXDTIyMDgyODA1MTcxM1owdzELMAkG\nA1UEBhMCQ04xCzAJBgNVBAgMAkJKMQswCQYDVQQHDAJCSjEPMA0GA1UECgwGRHVv\nS2FuMQwwCgYDVQQLDANSJkQxDDAKBgNVBAMMA2JveDEhMB8GCSqGSIb3DQEJARYS\nc2VydmljZUBkdW9rYW4uY29tMIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCy\n8ar3VkLi2iT23ixPbAjdjzsxShHptKdebDF5l7So/qBsdGQl0IGW0001Qi4RQ2+7\n7PynLsLuqPcJFEKf0kHf4h5VAxDrM4EUT2ESus8yAIZwtHRZ+41eKRjz8dleExhM\nnr96OnU850UvoHT0NHmVpW9eiD6NeJxTd1WJJ0zSQQIDAQABMA0GCSqGSIb3DQEB\nBAUAA4GBAMc6rs1l3UfVjg9FfkovEyY4ECgxpFqQaROSbKJcQtfLdwchRHiWAURp\nvT4yJaffD+6YRedutXi6O3OhH6VI8SPcmHvtc5SUUCTlAHeGrI8s7l8Z792CKVMQ\nPfiK+naluxB+KgRH1AT/TUvk5XBtlmsrWfwU9h1pKOBOlUnh1g/A\n-----END CERTIFICATE-----"

.field private static volatile videoSSLFactory:Ljavax/net/ssl/SSLSocketFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createTrustAllFactory()Ljavax/net/ssl/SSLSocketFactory;
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "TLS"

    invoke-static {v1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljavax/net/ssl/TrustManager;

    const/4 v3, 0x0

    new-instance v4, Lcom/miui/video/base/common/net/https/TrustAllCerts;

    invoke-direct {v4}, Lcom/miui/video/base/common/net/https/TrustAllCerts;-><init>()V

    aput-object v4, v2, v3

    new-instance v3, Ljava/security/SecureRandom;

    invoke-direct {v3}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v1, v0, v2, v3}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-object v0
.end method

.method public static getVideoCAFactory()Ljavax/net/ssl/SSLSocketFactory;
    .locals 2

    sget-object v0, Lcom/miui/video/base/common/net/https/SSLSocketFactoryManager;->videoSSLFactory:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v0, :cond_1

    const-class v0, Lcom/miui/video/base/common/net/https/SSLSocketFactoryManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/miui/video/base/common/net/https/SSLSocketFactoryManager;->videoSSLFactory:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v1, :cond_0

    invoke-static {}, Lcom/miui/video/base/common/net/https/SSLSocketFactoryManager;->initSSLFactory()V

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/miui/video/base/common/net/https/SSLSocketFactoryManager;->videoSSLFactory:Ljavax/net/ssl/SSLSocketFactory;

    return-object v0
.end method

.method private static initSSLFactory()V
    .locals 4

    :try_start_0
    const-string v0, "X.509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    const-string v3, "-----BEGIN CERTIFICATE-----\nMIICYzCCAcwCAQIwDQYJKoZIhvcNAQEEBQAwfTELMAkGA1UEBhMCQ04xDDAKBgNV\nBAgMA0JFSjEQMA4GA1UEBwwHQmVpSmluZzEPMA0GA1UECgwGRHVva2FuMQwwCgYD\nVQQLDANSJkQxDDAKBgNVBAMMA2JveDEhMB8GCSqGSIb3DQEJARYSc2VydmljZUBk\ndW9rYW4uY29tMB4XDTEyMDgzMDA1MTcxM1oXDTIyMDgyODA1MTcxM1owdzELMAkG\nA1UEBhMCQ04xCzAJBgNVBAgMAkJKMQswCQYDVQQHDAJCSjEPMA0GA1UECgwGRHVv\nS2FuMQwwCgYDVQQLDANSJkQxDDAKBgNVBAMMA2JveDEhMB8GCSqGSIb3DQEJARYS\nc2VydmljZUBkdW9rYW4uY29tMIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCy\n8ar3VkLi2iT23ixPbAjdjzsxShHptKdebDF5l7So/qBsdGQl0IGW0001Qi4RQ2+7\n7PynLsLuqPcJFEKf0kHf4h5VAxDrM4EUT2ESus8yAIZwtHRZ+41eKRjz8dleExhM\nnr96OnU850UvoHT0NHmVpW9eiD6NeJxTd1WJJ0zSQQIDAQABMA0GCSqGSIb3DQEB\nBAUAA4GBAMc6rs1l3UfVjg9FfkovEyY4ECgxpFqQaROSbKJcQtfLdwchRHiWAURp\nvT4yJaffD+6YRedutXi6O3OhH6VI8SPcmHvtc5SUUCTlAHeGrI8s7l8Z792CKVMQ\nPfiK+naluxB+KgRH1AT/TUvk5XBtlmsrWfwU9h1pKOBOlUnh1g/A\n-----END CERTIFICATE-----"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0, v1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    const-string v3, "ca"

    invoke-virtual {v1, v3, v0}, Ljava/security/KeyStore;->setCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V

    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    const-string v1, "TLS"

    invoke-static {v1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v1

    invoke-virtual {v0}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v0

    new-instance v3, Ljava/security/SecureRandom;

    invoke-direct {v3}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v1, v2, v0, v3}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    sput-object v0, Lcom/miui/video/base/common/net/https/SSLSocketFactoryManager;->videoSSLFactory:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, "init video ssl factory error"

    invoke-static {v0}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;)V

    invoke-static {}, Lcom/miui/video/base/common/net/https/SSLSocketFactoryManager;->createTrustAllFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    sput-object v0, Lcom/miui/video/base/common/net/https/SSLSocketFactoryManager;->videoSSLFactory:Ljavax/net/ssl/SSLSocketFactory;

    :goto_0
    return-void
.end method
