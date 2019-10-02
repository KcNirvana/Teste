.class public Lcom/xiaomi/accountsdk/account/PassportCATokenManager;
.super Ljava/lang/Object;
.source "PassportCATokenManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/accountsdk/account/PassportCATokenManager$getTokenStatHelper;
    }
.end annotation


# static fields
.field private static final DEFAULT_CA_DISABLED_DURATION_IN_SECONDS:J = 0x15180L

.field private static final MAX_CA_DISABLED_DURATION_IN_SECONDS:J = 0x93a80L

.field private static final TAG:Ljava/lang/String; = "PassportCATokenManager"

.field private static sInstance:Lcom/xiaomi/accountsdk/account/PassportCATokenManager;


# instance fields
.field private passportCAExternal:Lcom/xiaomi/accountsdk/account/PassportCAExternal;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/xiaomi/accountsdk/account/PassportCATokenManager;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/account/PassportCATokenManager;-><init>()V

    sput-object v0, Lcom/xiaomi/accountsdk/account/PassportCATokenManager;->sInstance:Lcom/xiaomi/accountsdk/account/PassportCATokenManager;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/PassportCATokenManager;->passportCAExternal:Lcom/xiaomi/accountsdk/account/PassportCAExternal;

    return-void
.end method

.method public static getInstance()Lcom/xiaomi/accountsdk/account/PassportCATokenManager;
    .locals 1

    sget-object v0, Lcom/xiaomi/accountsdk/account/PassportCATokenManager;->sInstance:Lcom/xiaomi/accountsdk/account/PassportCATokenManager;

    return-object v0
.end method


# virtual methods
.method protected getCATokenOnline(Ljava/lang/String;)Lcom/xiaomi/account/data/PassportCAToken;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/cert/CertificateException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/BadPaddingException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljava/security/InvalidKeyException;,
            Lcom/xiaomi/accountsdk/request/AccessDeniedException;,
            Lcom/xiaomi/accountsdk/request/AuthenticationFailureException;,
            Lorg/json/JSONException;,
            Lcom/xiaomi/accountsdk/request/InvalidResponseException;,
            Lcom/xiaomi/accountsdk/request/CipherException;,
            Lcom/xiaomi/account/exception/PassportCAException;
        }
    .end annotation

    const-string v0, "https://%s/ca/getTokenCA"

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/xiaomi/accountsdk/utils/EasyMap;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/utils/EasyMap;-><init>()V

    const-string v2, "deviceId"

    invoke-static {}, Lcom/xiaomi/accountsdk/account/XMPassportSettings;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/xiaomi/accountsdk/utils/EasyMap;->easyPut(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/EasyMap;

    new-instance v2, Lcom/xiaomi/accountsdk/utils/EasyMap;

    invoke-direct {v2}, Lcom/xiaomi/accountsdk/utils/EasyMap;-><init>()V

    const-string v3, "_ver"

    sget-object v4, Lcom/xiaomi/accountsdk/account/PassportCAConstants;->IMPL_VERSION:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/xiaomi/accountsdk/utils/EasyMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/xiaomi/accountsdk/request/PassportRequestArguments;

    invoke-direct {v3}, Lcom/xiaomi/accountsdk/request/PassportRequestArguments;-><init>()V

    invoke-virtual {v3, p1}, Lcom/xiaomi/accountsdk/request/PassportRequestArguments;->setUrl(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Lcom/xiaomi/accountsdk/request/PassportRequestArguments;->putAllParams(Ljava/util/Map;)V

    invoke-virtual {v3, v0}, Lcom/xiaomi/accountsdk/request/PassportRequestArguments;->putAllCookies(Ljava/util/Map;)V

    invoke-virtual {v3, v1}, Lcom/xiaomi/accountsdk/request/PassportRequestArguments;->setReadBody(Z)V

    new-instance p1, Lcom/xiaomi/accountsdk/request/PassportSimpleRequest$GetAsString;

    invoke-direct {p1, v3}, Lcom/xiaomi/accountsdk/request/PassportSimpleRequest$GetAsString;-><init>(Lcom/xiaomi/accountsdk/request/PassportRequestArguments;)V

    :try_start_0
    invoke-virtual {p1}, Lcom/xiaomi/accountsdk/request/PassportSimpleRequest;->executeEx()Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;

    move-result-object p1
    :try_end_0
    .catch Lcom/xiaomi/accountsdk/account/exception/InvalidCredentialException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lcom/xiaomi/accountsdk/account/exception/InvalidUserNameException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/xiaomi/accountsdk/account/exception/NeedVerificationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/xiaomi/accountsdk/account/exception/NeedCaptchaException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/xiaomi/accountsdk/account/exception/NeedNotificationException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/XMPassport;->removeSafePrefixAndGetRealBody(Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "code"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "data"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "passport_ca_token"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "casecurity"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lcom/xiaomi/account/data/PassportCAToken;

    invoke-direct {v1, v0, p1}, Lcom/xiaomi/account/data/PassportCAToken;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_0
    const/16 v0, 0x2718

    if-ne p1, v0, :cond_1

    new-instance v0, Lcom/xiaomi/account/exception/PassportCAException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "when getting Token server returns code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/xiaomi/account/exception/PassportCAException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance p1, Lcom/xiaomi/accountsdk/request/InvalidResponseException;

    const-string v0, "error result"

    invoke-direct {p1, v0}, Lcom/xiaomi/accountsdk/request/InvalidResponseException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_2
    move-exception p1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_3
    move-exception p1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_4
    move-exception p1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public getCaUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/URLs;->getCaUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getPassportCAToken()Lcom/xiaomi/account/data/PassportCAToken;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/cert/CertificateException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/BadPaddingException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljava/security/InvalidKeyException;,
            Lcom/xiaomi/accountsdk/request/AccessDeniedException;,
            Lcom/xiaomi/accountsdk/request/AuthenticationFailureException;,
            Lorg/json/JSONException;,
            Lcom/xiaomi/accountsdk/request/InvalidResponseException;,
            Lcom/xiaomi/accountsdk/request/CipherException;,
            Lcom/xiaomi/account/exception/PassportCAException;
        }
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/PassportCATokenManager;->passportCAExternal:Lcom/xiaomi/accountsdk/account/PassportCAExternal;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/PassportCATokenManager;->passportCAExternal:Lcom/xiaomi/accountsdk/account/PassportCAExternal;

    invoke-interface {v0}, Lcom/xiaomi/accountsdk/account/PassportCAExternal;->loadCAToken()Lcom/xiaomi/account/data/PassportCAToken;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v1, Ljava/net/URL;

    sget-object v2, Lcom/xiaomi/accountsdk/account/URLs;->URL_PASSPORT_CA_ACCOUNT_BASE:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/xiaomi/accountsdk/account/PassportCATokenManager$getTokenStatHelper;

    invoke-direct {v2}, Lcom/xiaomi/accountsdk/account/PassportCATokenManager$getTokenStatHelper;-><init>()V

    invoke-virtual {v2}, Lcom/xiaomi/accountsdk/account/PassportCATokenManager$getTokenStatHelper;->onGetTokenOnlineStart()V

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/xiaomi/accountsdk/account/PassportCATokenManager;->getCATokenOnline(Ljava/lang/String;)Lcom/xiaomi/account/data/PassportCAToken;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v2, v1}, Lcom/xiaomi/accountsdk/account/PassportCATokenManager$getTokenStatHelper;->onGetTokenOnlineEnd(Lcom/xiaomi/account/data/PassportCAToken;)V

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/PassportCATokenManager;->passportCAExternal:Lcom/xiaomi/accountsdk/account/PassportCAExternal;

    invoke-interface {v0, v1}, Lcom/xiaomi/accountsdk/account/PassportCAExternal;->saveCAToken(Lcom/xiaomi/account/data/PassportCAToken;)V

    :cond_0
    move-object v0, v1

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-virtual {v2, v0}, Lcom/xiaomi/accountsdk/account/PassportCATokenManager$getTokenStatHelper;->onGetTokenOnlineEnd(Lcom/xiaomi/account/data/PassportCAToken;)V

    throw v1

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "passportCATokenExternal is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getPassportCAToken(Ljava/lang/String;)Lcom/xiaomi/account/data/PassportCAToken;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/cert/CertificateException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/BadPaddingException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljava/security/InvalidKeyException;,
            Lcom/xiaomi/accountsdk/request/AccessDeniedException;,
            Lcom/xiaomi/accountsdk/request/AuthenticationFailureException;,
            Lorg/json/JSONException;,
            Lcom/xiaomi/accountsdk/request/InvalidResponseException;,
            Lcom/xiaomi/accountsdk/request/CipherException;,
            Lcom/xiaomi/account/exception/PassportCAException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/account/PassportCATokenManager;->getPassportCAToken()Lcom/xiaomi/account/data/PassportCAToken;

    move-result-object p1

    return-object p1
.end method

.method public invalidateAllCAToken()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/PassportCATokenManager;->passportCAExternal:Lcom/xiaomi/accountsdk/account/PassportCAExternal;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/PassportCATokenManager;->passportCAExternal:Lcom/xiaomi/accountsdk/account/PassportCAExternal;

    sget-object v1, Lcom/xiaomi/account/data/PassportCAToken;->INVALID_INSTANCE:Lcom/xiaomi/account/data/PassportCAToken;

    invoke-interface {v0, v1}, Lcom/xiaomi/accountsdk/account/PassportCAExternal;->saveCAToken(Lcom/xiaomi/account/data/PassportCAToken;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "passportCATokenExternal is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isReady()Z
    .locals 6

    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/PassportCATokenManager;->passportCAExternal:Lcom/xiaomi/accountsdk/account/PassportCAExternal;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/xiaomi/accountsdk/account/XMPassport;->USE_PREVIEW:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/PassportCATokenManager;->passportCAExternal:Lcom/xiaomi/accountsdk/account/PassportCAExternal;

    const-wide/16 v2, 0x0

    invoke-interface {v0, v2, v3}, Lcom/xiaomi/accountsdk/account/PassportCAExternal;->loadNextCAEnabledTime(J)J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v0, v4, v2

    if-ltz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    :cond_2
    :goto_0
    return v1
.end method

.method public onCADisabledForSeconds(Ljava/lang/Long;)V
    .locals 6

    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/PassportCATokenManager;->passportCAExternal:Lcom/xiaomi/accountsdk/account/PassportCAExternal;

    if-eqz v0, :cond_2

    if-nez p1, :cond_0

    const-wide/32 v0, 0x15180

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/32 v2, 0x93a80

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long v2, v2, v4

    add-long/2addr v0, v2

    iget-object p1, p0, Lcom/xiaomi/accountsdk/account/PassportCATokenManager;->passportCAExternal:Lcom/xiaomi/accountsdk/account/PassportCAExternal;

    invoke-interface {p1, v0, v1}, Lcom/xiaomi/accountsdk/account/PassportCAExternal;->saveNextCAEnabledTime(J)V

    :cond_2
    return-void
.end method

.method public setPassportCAExternal(Lcom/xiaomi/accountsdk/account/PassportCAExternal;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/PassportCATokenManager;->passportCAExternal:Lcom/xiaomi/accountsdk/account/PassportCAExternal;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "passportCAExternal should not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
