.class public Lcom/xiaomi/accountsdk/request/PassportCARequest;
.super Lcom/xiaomi/accountsdk/request/PassportRequest;
.source "PassportCARequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/accountsdk/request/PassportCARequest$CookiesEncryptRule;,
        Lcom/xiaomi/accountsdk/request/PassportCARequest$ParamEncryptRule;,
        Lcom/xiaomi/accountsdk/request/PassportCARequest$EncryptRule;
    }
.end annotation


# static fields
.field private static final KEY_PASSPORT_CA_TOKEN:Ljava/lang/String; = "passport_ca_token"

.field private static final TAG:Ljava/lang/String; = "com.xiaomi.accountsdk.request.PassportCARequest"


# instance fields
.field private final caTokenManager:Lcom/xiaomi/accountsdk/account/PassportCATokenManager;

.field private handled401Already:Z

.field private final originalRequest:Lcom/xiaomi/accountsdk/request/PassportSimpleRequest;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/xiaomi/accountsdk/request/PassportSimpleRequest;Lcom/xiaomi/accountsdk/account/PassportCATokenManager;)V
    .locals 1

    invoke-direct {p0}, Lcom/xiaomi/accountsdk/request/PassportRequest;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/accountsdk/request/PassportCARequest;->handled401Already:Z

    iput-object p1, p0, Lcom/xiaomi/accountsdk/request/PassportCARequest;->originalRequest:Lcom/xiaomi/accountsdk/request/PassportSimpleRequest;

    iput-object p2, p0, Lcom/xiaomi/accountsdk/request/PassportCARequest;->caTokenManager:Lcom/xiaomi/accountsdk/account/PassportCATokenManager;

    return-void
.end method

.method private static encrypt(Lcom/xiaomi/accountsdk/utils/EasyMap;Lcom/xiaomi/accountsdk/utils/CryptCoder;Lcom/xiaomi/accountsdk/request/PassportCARequest$EncryptRule;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/accountsdk/utils/EasyMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/xiaomi/accountsdk/utils/CryptCoder;",
            "Lcom/xiaomi/accountsdk/request/PassportCARequest$EncryptRule;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/account/exception/PassportCAException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/utils/EasyMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    invoke-interface {p2, v2}, Lcom/xiaomi/accountsdk/request/PassportCARequest$EncryptRule;->shouldEncrypt(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p1, v1}, Lcom/xiaomi/accountsdk/utils/CryptCoder;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Lcom/xiaomi/accountsdk/utils/EasyMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/xiaomi/accountsdk/request/CipherException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_1
    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lcom/xiaomi/account/exception/PassportCAException;

    invoke-direct {p1, p0}, Lcom/xiaomi/account/exception/PassportCAException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method private static getPassportCAToken(Ljava/lang/String;Lcom/xiaomi/accountsdk/account/PassportCATokenManager;)Lcom/xiaomi/account/data/PassportCAToken;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/account/exception/PassportCAException;,
            Lcom/xiaomi/accountsdk/request/AuthenticationFailureException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p1, p0}, Lcom/xiaomi/accountsdk/account/PassportCATokenManager;->getPassportCAToken(Ljava/lang/String;)Lcom/xiaomi/account/data/PassportCAToken;

    move-result-object p0
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lcom/xiaomi/accountsdk/request/AccessDeniedException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/xiaomi/accountsdk/request/InvalidResponseException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/xiaomi/accountsdk/request/CipherException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lcom/xiaomi/account/exception/PassportCAException;

    invoke-direct {p1, p0}, Lcom/xiaomi/account/exception/PassportCAException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    new-instance p1, Lcom/xiaomi/account/exception/PassportCAException;

    invoke-direct {p1, p0}, Lcom/xiaomi/account/exception/PassportCAException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_2
    move-exception p0

    new-instance p1, Lcom/xiaomi/account/exception/PassportCAException;

    invoke-direct {p1, p0}, Lcom/xiaomi/account/exception/PassportCAException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_3
    move-exception p0

    new-instance p1, Lcom/xiaomi/account/exception/PassportCAException;

    invoke-direct {p1, p0}, Lcom/xiaomi/account/exception/PassportCAException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_4
    move-exception p0

    new-instance p1, Lcom/xiaomi/account/exception/PassportCAException;

    invoke-direct {p1, p0}, Lcom/xiaomi/account/exception/PassportCAException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_5
    move-exception p0

    new-instance p1, Lcom/xiaomi/account/exception/PassportCAException;

    invoke-direct {p1, p0}, Lcom/xiaomi/account/exception/PassportCAException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_6
    move-exception p0

    new-instance p1, Lcom/xiaomi/account/exception/PassportCAException;

    invoke-direct {p1, p0}, Lcom/xiaomi/account/exception/PassportCAException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_7
    move-exception p0

    new-instance p1, Lcom/xiaomi/account/exception/PassportCAException;

    invoke-direct {p1, p0}, Lcom/xiaomi/account/exception/PassportCAException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_8
    move-exception p0

    new-instance p1, Lcom/xiaomi/account/exception/PassportCAException;

    invoke-direct {p1, p0}, Lcom/xiaomi/account/exception/PassportCAException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_9
    move-exception p0

    new-instance p1, Lcom/xiaomi/account/exception/PassportCAException;

    invoke-direct {p1, p0}, Lcom/xiaomi/account/exception/PassportCAException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_a
    move-exception p0

    new-instance p1, Lcom/xiaomi/account/exception/PassportCAException;

    invoke-direct {p1, p0}, Lcom/xiaomi/account/exception/PassportCAException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method static isHtml(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_1

    const-string v0, "html"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "http"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static parseResponse(Lcom/xiaomi/accountsdk/utils/CryptCoder;Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;)Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/accountsdk/request/InvalidResponseException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;->getBody()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;->getHttpCode()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x12e

    if-ne v1, v4, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    :try_start_0
    invoke-interface {p0, v0}, Lcom/xiaomi/accountsdk/utils/CryptCoder;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Lcom/xiaomi/accountsdk/request/CipherException; {:try_start_0 .. :try_end_0} :catch_1

    new-instance v0, Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;

    invoke-direct {v0, v4}, Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;->getHttpCode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;->setHttpCode(I)V

    invoke-virtual {p1}, Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;->getHeaders()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p1}, Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;->getCookieKeys()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :catch_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    :try_start_1
    invoke-virtual {p1, v3}, Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p0, v4}, Lcom/xiaomi/accountsdk/utils/CryptCoder;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lcom/xiaomi/accountsdk/request/CipherException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;->putHeaders(Ljava/util/Map;)V

    return-object v0

    :catch_1
    move-exception p0

    invoke-static {v0}, Lcom/xiaomi/accountsdk/request/PassportCARequest;->isHtml(Ljava/lang/String;)Z

    move-result p1

    new-instance v0, Lcom/xiaomi/accountsdk/request/InvalidResponseException;

    if-nez v1, :cond_2

    if-eqz p1, :cond_3

    :cond_2
    const/4 v2, 0x1

    :cond_3
    const-string p1, "failed to decrypt response"

    invoke-direct {v0, p1, p0, v2}, Lcom/xiaomi/accountsdk/request/InvalidResponseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Z)V

    throw v0

    :cond_4
    new-instance p0, Lcom/xiaomi/accountsdk/request/InvalidResponseException;

    const/4 p1, 0x0

    const-string v0, "invalid response from server"

    invoke-direct {p0, v0, p1, v1}, Lcom/xiaomi/accountsdk/request/InvalidResponseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Z)V

    throw p0
.end method


# virtual methods
.method public execute()Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/xiaomi/accountsdk/request/PassportRequestException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/request/PassportCARequest;->getCaTokenManager()Lcom/xiaomi/accountsdk/account/PassportCATokenManager;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/request/PassportCARequest;->getCaTokenManager()Lcom/xiaomi/accountsdk/account/PassportCATokenManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/account/PassportCATokenManager;->isReady()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/request/PassportCARequest;->executeInternal()Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;

    move-result-object v1
    :try_end_0
    .catch Lcom/xiaomi/accountsdk/request/PassportRequestException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lcom/xiaomi/accountsdk/request/AuthenticationFailureException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/xiaomi/accountsdk/request/AccessDeniedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/xiaomi/account/exception/PassportCAException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/xiaomi/accountsdk/request/InvalidResponseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    new-instance v1, Lcom/xiaomi/accountsdk/request/PassportRequestException;

    invoke-direct {v1, v0}, Lcom/xiaomi/accountsdk/request/PassportRequestException;-><init>(Lcom/xiaomi/accountsdk/request/InvalidResponseException;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Lcom/xiaomi/accountsdk/request/PassportRequestException;

    invoke-direct {v1, v0}, Lcom/xiaomi/accountsdk/request/PassportRequestException;-><init>(Lcom/xiaomi/account/exception/PassportCAException;)V

    throw v1

    :catch_2
    move-exception v0

    new-instance v1, Lcom/xiaomi/accountsdk/request/PassportRequestException;

    invoke-direct {v1, v0}, Lcom/xiaomi/accountsdk/request/PassportRequestException;-><init>(Lcom/xiaomi/accountsdk/request/AccessDeniedException;)V

    throw v1

    :catch_3
    move-exception v1

    iget-boolean v2, p0, Lcom/xiaomi/accountsdk/request/PassportCARequest;->handled401Already:Z

    if-nez v2, :cond_0

    iput-boolean v0, p0, Lcom/xiaomi/accountsdk/request/PassportCARequest;->handled401Already:Z

    invoke-virtual {p0, v1}, Lcom/xiaomi/accountsdk/request/PassportCARequest;->handle401Error(Lcom/xiaomi/accountsdk/request/AuthenticationFailureException;)Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Lcom/xiaomi/accountsdk/request/PassportRequestException;

    invoke-direct {v0, v1}, Lcom/xiaomi/accountsdk/request/PassportRequestException;-><init>(Lcom/xiaomi/accountsdk/request/AuthenticationFailureException;)V

    throw v0

    :catch_4
    move-exception v1

    invoke-virtual {v1}, Lcom/xiaomi/accountsdk/request/PassportRequestException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    instance-of v2, v2, Lcom/xiaomi/accountsdk/request/AuthenticationFailureException;

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/xiaomi/accountsdk/request/PassportCARequest;->handled401Already:Z

    if-nez v2, :cond_1

    iput-boolean v0, p0, Lcom/xiaomi/accountsdk/request/PassportCARequest;->handled401Already:Z

    invoke-virtual {v1}, Lcom/xiaomi/accountsdk/request/PassportRequestException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/accountsdk/request/AuthenticationFailureException;

    invoke-virtual {p0, v0}, Lcom/xiaomi/accountsdk/request/PassportCARequest;->handle401Error(Lcom/xiaomi/accountsdk/request/AuthenticationFailureException;)Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;

    move-result-object v0

    return-object v0

    :cond_1
    throw v1

    :cond_2
    new-instance v0, Lcom/xiaomi/accountsdk/request/PassportRequestException;

    new-instance v1, Lcom/xiaomi/account/exception/PassportCAException;

    const-string v2, "null CA Manager"

    invoke-direct {v1, v2}, Lcom/xiaomi/account/exception/PassportCAException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/xiaomi/accountsdk/request/PassportRequestException;-><init>(Lcom/xiaomi/account/exception/PassportCAException;)V

    throw v0
.end method

.method executeInternal()Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/account/exception/PassportCAException;,
            Ljava/io/IOException;,
            Lcom/xiaomi/accountsdk/request/InvalidResponseException;,
            Lcom/xiaomi/accountsdk/request/AccessDeniedException;,
            Lcom/xiaomi/accountsdk/request/AuthenticationFailureException;,
            Lcom/xiaomi/accountsdk/request/PassportRequestException;
        }
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/PassportCARequest;->originalRequest:Lcom/xiaomi/accountsdk/request/PassportSimpleRequest;

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/request/PassportSimpleRequest;->isHTTPS()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/PassportCARequest;->originalRequest:Lcom/xiaomi/accountsdk/request/PassportSimpleRequest;

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/request/PassportSimpleRequest;->copy()Lcom/xiaomi/accountsdk/request/PassportSimpleRequest;

    move-result-object v0

    iget-object v1, v0, Lcom/xiaomi/accountsdk/request/PassportSimpleRequest;->arguments:Lcom/xiaomi/accountsdk/request/PassportRequestArguments;

    iget-object v2, v1, Lcom/xiaomi/accountsdk/request/PassportRequestArguments;->url:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/request/PassportCARequest;->getCaTokenManager()Lcom/xiaomi/accountsdk/account/PassportCATokenManager;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaomi/accountsdk/request/PassportCARequest;->getPassportCAToken(Ljava/lang/String;Lcom/xiaomi/accountsdk/account/PassportCATokenManager;)Lcom/xiaomi/account/data/PassportCAToken;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/xiaomi/account/data/PassportCAToken;->isLegal()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, v1, Lcom/xiaomi/accountsdk/request/PassportRequestArguments;->params:Lcom/xiaomi/accountsdk/utils/EasyMap;

    const-string v4, "_nonce"

    invoke-static {}, Lcom/xiaomi/accountsdk/utils/CloudCoder;->generateNonce()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/xiaomi/accountsdk/utils/EasyMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v1, Lcom/xiaomi/accountsdk/request/PassportRequestArguments;->cookies:Lcom/xiaomi/accountsdk/utils/EasyMap;

    const-string v4, "passport_ca_token"

    iget-object v5, v2, Lcom/xiaomi/account/data/PassportCAToken;->token:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/xiaomi/accountsdk/utils/EasyMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v1, Lcom/xiaomi/accountsdk/request/PassportRequestArguments;->headers:Lcom/xiaomi/accountsdk/utils/EasyMap;

    const-string v4, "caTag"

    const-string v5, "noSafe"

    invoke-virtual {v3, v4, v5}, Lcom/xiaomi/accountsdk/utils/EasyMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/xiaomi/accountsdk/utils/AESWithIVCoder;

    iget-object v4, v2, Lcom/xiaomi/account/data/PassportCAToken;->security:Ljava/lang/String;

    invoke-direct {v3, v4}, Lcom/xiaomi/accountsdk/utils/AESWithIVCoder;-><init>(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/xiaomi/accountsdk/request/PassportRequestArguments;->params:Lcom/xiaomi/accountsdk/utils/EasyMap;

    new-instance v5, Lcom/xiaomi/accountsdk/request/PassportCARequest$ParamEncryptRule;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Lcom/xiaomi/accountsdk/request/PassportCARequest$ParamEncryptRule;-><init>(Lcom/xiaomi/accountsdk/request/PassportCARequest$1;)V

    invoke-static {v4, v3, v5}, Lcom/xiaomi/accountsdk/request/PassportCARequest;->encrypt(Lcom/xiaomi/accountsdk/utils/EasyMap;Lcom/xiaomi/accountsdk/utils/CryptCoder;Lcom/xiaomi/accountsdk/request/PassportCARequest$EncryptRule;)V

    iget-object v4, v1, Lcom/xiaomi/accountsdk/request/PassportRequestArguments;->cookies:Lcom/xiaomi/accountsdk/utils/EasyMap;

    new-instance v5, Lcom/xiaomi/accountsdk/request/PassportCARequest$CookiesEncryptRule;

    invoke-direct {v5, v6}, Lcom/xiaomi/accountsdk/request/PassportCARequest$CookiesEncryptRule;-><init>(Lcom/xiaomi/accountsdk/request/PassportCARequest$1;)V

    invoke-static {v4, v3, v5}, Lcom/xiaomi/accountsdk/request/PassportCARequest;->encrypt(Lcom/xiaomi/accountsdk/utils/EasyMap;Lcom/xiaomi/accountsdk/utils/CryptCoder;Lcom/xiaomi/accountsdk/request/PassportCARequest$EncryptRule;)V

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/request/PassportSimpleRequest;->getMethod()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v1, Lcom/xiaomi/accountsdk/request/PassportRequestArguments;->url:Ljava/lang/String;

    iget-object v6, v1, Lcom/xiaomi/accountsdk/request/PassportRequestArguments;->params:Lcom/xiaomi/accountsdk/utils/EasyMap;

    iget-object v2, v2, Lcom/xiaomi/account/data/PassportCAToken;->security:Ljava/lang/String;

    invoke-static {v4, v5, v6, v2}, Lcom/xiaomi/accountsdk/utils/CloudCoder;->generateSignature(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v1, v1, Lcom/xiaomi/accountsdk/request/PassportRequestArguments;->params:Lcom/xiaomi/accountsdk/utils/EasyMap;

    const-string v4, "_caSign"

    invoke-virtual {v1, v4, v2}, Lcom/xiaomi/accountsdk/utils/EasyMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/xiaomi/accountsdk/request/RequestWithIP;

    new-instance v2, Lcom/xiaomi/accountsdk/request/IPStrategy;

    invoke-direct {v2}, Lcom/xiaomi/accountsdk/request/IPStrategy;-><init>()V

    new-instance v4, Lcom/xiaomi/accountsdk/request/CALoginStatHelper;

    invoke-direct {v4}, Lcom/xiaomi/accountsdk/request/CALoginStatHelper;-><init>()V

    invoke-direct {v1, v0, v2, v4}, Lcom/xiaomi/accountsdk/request/RequestWithIP;-><init>(Lcom/xiaomi/accountsdk/request/PassportSimpleRequest;Lcom/xiaomi/accountsdk/request/IPStrategy;Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper;)V

    invoke-virtual {v1}, Lcom/xiaomi/accountsdk/request/PassportRequest;->execute()Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v3, v0}, Lcom/xiaomi/accountsdk/request/PassportCARequest;->parseResponse(Lcom/xiaomi/accountsdk/utils/CryptCoder;Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;)Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "no response from server"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Lcom/xiaomi/account/exception/PassportCAException;

    const-string v1, "null CA token"

    invoke-direct {v0, v1}, Lcom/xiaomi/account/exception/PassportCAException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "https request should not use PassportCA"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method getCaTokenManager()Lcom/xiaomi/accountsdk/account/PassportCATokenManager;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/PassportCARequest;->caTokenManager:Lcom/xiaomi/accountsdk/account/PassportCATokenManager;

    return-object v0
.end method

.method handle401Error(Lcom/xiaomi/accountsdk/request/AuthenticationFailureException;)Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/xiaomi/accountsdk/request/PassportRequestException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/xiaomi/accountsdk/request/AuthenticationFailureException;->getWwwAuthenticateHeader()Ljava/lang/String;

    move-result-object v0

    const-string v1, "passportCA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/request/PassportCARequest;->getCaTokenManager()Lcom/xiaomi/accountsdk/account/PassportCATokenManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaomi/accountsdk/account/PassportCATokenManager;->invalidateAllCAToken()V

    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/request/PassportCARequest;->execute()Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;

    move-result-object p1

    return-object p1

    :cond_0
    const-string v1, "passportCA-Disabled"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    invoke-virtual {p1}, Lcom/xiaomi/accountsdk/request/AuthenticationFailureException;->getCaDisableSecondsHeader()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    sget-object v0, Lcom/xiaomi/accountsdk/request/PassportCARequest;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/xiaomi/accountsdk/utils/AccountLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/request/PassportCARequest;->getCaTokenManager()Lcom/xiaomi/accountsdk/account/PassportCATokenManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaomi/accountsdk/account/PassportCATokenManager;->onCADisabledForSeconds(Ljava/lang/Long;)V

    new-instance p1, Lcom/xiaomi/accountsdk/request/PassportRequestException;

    new-instance v0, Lcom/xiaomi/account/exception/PassportCAException;

    const-string v1, "PassportCA Disabled"

    invoke-direct {v0, v1}, Lcom/xiaomi/account/exception/PassportCAException;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v0}, Lcom/xiaomi/accountsdk/request/PassportRequestException;-><init>(Lcom/xiaomi/account/exception/PassportCAException;)V

    throw p1

    :cond_1
    new-instance v0, Lcom/xiaomi/accountsdk/request/PassportRequestException;

    invoke-direct {v0, p1}, Lcom/xiaomi/accountsdk/request/PassportRequestException;-><init>(Lcom/xiaomi/accountsdk/request/AuthenticationFailureException;)V

    throw v0
.end method
