.class public Lcom/xiaomi/passport/utils/AuthenticatorUtil;
.super Ljava/lang/Object;
.source "AuthenticatorUtil.java"


# static fields
.field private static final ACCOUNT_LOCK:Ljava/lang/Object;

.field public static final EXTRA_NEED_RETRY_ON_AUTHENTICATOR_RESPONSE_RESULT:Ljava/lang/String; = "need_retry_on_authenticator_response_result"

.field private static final TAG:Ljava/lang/String; = "AuthenticatorUtil"

.field private static volatile mAMPassTokenUpdateUtil:Lcom/xiaomi/passport/utils/AMPassTokenUpdateUtil;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/xiaomi/passport/utils/AuthenticatorUtil;->ACCOUNT_LOCK:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addOrUpdateAccountManager(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 6

    sget-object v0, Lcom/xiaomi/passport/utils/AuthenticatorUtil;->ACCOUNT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {p0}, Lcom/xiaomi/accounts/AccountManager;->get(Landroid/content/Context;)Lcom/xiaomi/accounts/AccountManager;

    move-result-object v1

    const-string v2, "com.xiaomi"

    invoke-virtual {v1, v2}, Lcom/xiaomi/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    array-length v3, v1

    if-ge v3, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    aget-object v1, v1, v3

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x0

    :goto_1
    invoke-static {p0}, Lcom/xiaomi/accounts/AccountManager;->get(Landroid/content/Context;)Lcom/xiaomi/accounts/AccountManager;

    move-result-object v3

    if-eqz v1, :cond_3

    invoke-virtual {v3, v1}, Lcom/xiaomi/accounts/AccountManager;->getPassword(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object p3

    iget-object v4, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v5, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {p2, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_2

    invoke-virtual {v3, v1, p2}, Lcom/xiaomi/accounts/AccountManager;->setPassword(Landroid/accounts/Account;Ljava/lang/String;)V

    sget-object p2, Lcom/xiaomi/passport/AccountChangedBroadcastHelper$UpdateType;->POST_REFRESH:Lcom/xiaomi/passport/AccountChangedBroadcastHelper$UpdateType;

    invoke-static {p0, p1, p2}, Lcom/xiaomi/passport/AccountChangedBroadcastHelper;->sendBroadcast(Landroid/content/Context;Landroid/accounts/Account;Lcom/xiaomi/passport/AccountChangedBroadcastHelper$UpdateType;)V

    :cond_2
    monitor-exit v0

    return v2

    :cond_3
    sget-object v1, Lcom/xiaomi/passport/AccountChangedBroadcastHelper$UpdateType;->PRE_ADD:Lcom/xiaomi/passport/AccountChangedBroadcastHelper$UpdateType;

    invoke-static {p0, p1, v1}, Lcom/xiaomi/passport/AccountChangedBroadcastHelper;->sendBroadcast(Landroid/content/Context;Landroid/accounts/Account;Lcom/xiaomi/passport/AccountChangedBroadcastHelper$UpdateType;)V

    invoke-virtual {v3, p1, p2, p3}, Lcom/xiaomi/accounts/AccountManager;->addAccountExplicitly(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result p2

    if-eqz p2, :cond_4

    sget-object p3, Lcom/xiaomi/passport/AccountChangedBroadcastHelper$UpdateType;->POST_ADD:Lcom/xiaomi/passport/AccountChangedBroadcastHelper$UpdateType;

    invoke-static {p0, p1, p3}, Lcom/xiaomi/passport/AccountChangedBroadcastHelper;->sendBroadcast(Landroid/content/Context;Landroid/accounts/Account;Lcom/xiaomi/passport/AccountChangedBroadcastHelper$UpdateType;)V

    :cond_4
    monitor-exit v0

    return p2

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static addOrUpdateAccountManager(Landroid/content/Context;Lcom/xiaomi/accountsdk/account/data/AccountInfo;)Z
    .locals 4

    invoke-virtual {p1}, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->getUserId()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/accounts/Account;

    const-string v2, "com.xiaomi"

    invoke-direct {v1, v0, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "authAccount"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "encrypted_user_id"

    invoke-virtual {p1}, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->getEncryptedUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->getPassToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->getPsecurity()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/xiaomi/accountsdk/account/data/ExtendedAuthToken;->build(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/ExtendedAuthToken;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/account/data/ExtendedAuthToken;->toPlain()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v1, v0, v2}, Lcom/xiaomi/passport/utils/AuthenticatorUtil;->addOrUpdateAccountManager(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v0

    invoke-static {p0, v1, p1}, Lcom/xiaomi/passport/utils/AuthenticatorUtil;->saveAccountInfoInAM(Landroid/content/Context;Landroid/accounts/Account;Lcom/xiaomi/accountsdk/account/data/AccountInfo;)V

    return v0
.end method

.method public static clearAllXiaomiAccountCookies(Landroid/content/Context;)V
    .locals 11

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object p0

    :try_start_0
    new-instance v0, Ljava/net/URL;

    sget-object v1, Lcom/xiaomi/accountsdk/account/URLs;->ACCOUNT_DOMAIN:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    aput-object v0, v1, v3

    const/4 v0, 0x2

    const-string v4, "c.id.mi.com"

    aput-object v4, v1, v0

    array-length v0, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_3

    aget-object v5, v1, v4

    invoke-virtual {p0, v5}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_2

    :cond_1
    const-string v7, ";"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    :goto_1
    array-length v8, v6

    if-ge v7, v8, :cond_2

    aget-object v8, v6, v7

    const-string v9, "="

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    aget-object v8, v8, v2

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    const-string v9, "%s=; Expires=Thu, 01 Jan 1970 00:00:00 GMT"

    new-array v10, v3, [Ljava/lang/Object;

    aput-object v8, v10, v2

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v5, v8}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/webkit/CookieSyncManager;->sync()V

    return-void

    :catch_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "never happen"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getPassToken(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {p0}, Lcom/xiaomi/passport/utils/AuthenticatorUtil;->getXiaomiAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/xiaomi/passport/utils/AuthenticatorUtil;->getPassToken(Landroid/content/Context;Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getPassToken(Landroid/content/Context;Landroid/accounts/Account;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/xiaomi/accounts/AccountManager;->get(Landroid/content/Context;)Lcom/xiaomi/accounts/AccountManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/xiaomi/accounts/AccountManager;->getPassword(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-object v0

    :cond_1
    invoke-static {p0}, Lcom/xiaomi/accountsdk/account/data/ExtendedAuthToken;->parse(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/ExtendedAuthToken;

    move-result-object p0

    if-eqz p0, :cond_2

    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/ExtendedAuthToken;->authToken:Ljava/lang/String;

    :cond_2
    return-object v0

    :cond_3
    :goto_0
    return-object v0
.end method

.method public static getXiaomiAccount(Landroid/content/Context;)Landroid/accounts/Account;
    .locals 1

    invoke-static {p0}, Lcom/xiaomi/accounts/AccountManager;->get(Landroid/content/Context;)Lcom/xiaomi/accounts/AccountManager;

    move-result-object p0

    const-string v0, "com.xiaomi"

    invoke-virtual {p0, v0}, Lcom/xiaomi/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object p0

    array-length v0, p0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    aget-object p0, p0, v0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static handleAccountAuthenticatorResponse(Landroid/os/Parcelable;Landroid/os/Bundle;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    :cond_0
    instance-of v0, p0, Lcom/xiaomi/accounts/AccountAuthenticatorResponse;

    const/4 v1, 0x4

    if-eqz v0, :cond_2

    check-cast p0, Lcom/xiaomi/accounts/AccountAuthenticatorResponse;

    if-nez p1, :cond_1

    const-string p1, "canceled"

    invoke-virtual {p0, v1, p1}, Lcom/xiaomi/accounts/AccountAuthenticatorResponse;->onError(ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/xiaomi/accounts/AccountAuthenticatorResponse;->onResult(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_2
    instance-of v0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenUIResponse;

    if-eqz v0, :cond_4

    check-cast p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenUIResponse;

    if-nez p1, :cond_3

    const-string p1, "canceled"

    invoke-virtual {p0, v1, p1}, Lcom/xiaomi/passport/servicetoken/ServiceTokenUIResponse;->onError(ILjava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p1}, Lcom/xiaomi/passport/servicetoken/ServiceTokenUIResponse;->onResult(Landroid/os/Bundle;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public static isSetPassword(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/xiaomi/accountsdk/request/AccessDeniedException;,
            Lcom/xiaomi/accountsdk/request/AuthenticationFailureException;,
            Lcom/xiaomi/accountsdk/request/CipherException;,
            Lcom/xiaomi/accountsdk/request/InvalidResponseException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    new-instance v0, Lcom/xiaomi/accountsdk/hasheddeviceidlib/HashedDeviceIdUtil;

    invoke-direct {v0, p0}, Lcom/xiaomi/accountsdk/hasheddeviceidlib/HashedDeviceIdUtil;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/hasheddeviceidlib/HashedDeviceIdUtil;->getHashedDeviceIdNoThrow()Ljava/lang/String;

    move-result-object v0

    const-string v1, "passportapi"

    invoke-static {p0, v1}, Lcom/xiaomi/passport/data/XMPassportInfo;->build(Landroid/content/Context;Ljava/lang/String;)Lcom/xiaomi/passport/data/XMPassportInfo;

    move-result-object v1

    if-nez v1, :cond_0

    const-string p0, "AuthenticatorUtil"

    const-string p1, "passport info is null"

    invoke-static {p0, p1}, Lcom/xiaomi/accountsdk/utils/AccountLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/16 v4, 0xf

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    :try_start_0
    invoke-static {v1, p1, v0, v2}, Lcom/xiaomi/passport/utils/AccountHelper;->isSetPassword(Lcom/xiaomi/accountsdk/account/data/PassportInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3
    :try_end_0
    .catch Lcom/xiaomi/accountsdk/request/AuthenticationFailureException; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    :catch_0
    invoke-virtual {v1, p0}, Lcom/xiaomi/passport/data/XMPassportInfo;->refreshAuthToken(Landroid/content/Context;)V

    invoke-static {v1, p1, v0, v2}, Lcom/xiaomi/passport/utils/AccountHelper;->isSetPassword(Lcom/xiaomi/accountsdk/account/data/PassportInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isSetPasswordAndUpdateAM(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x1

    :try_start_0
    invoke-static {p0, p2}, Lcom/xiaomi/passport/utils/AuthenticatorUtil;->isSetPassword(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p2
    :try_end_0
    .catch Lcom/xiaomi/accountsdk/request/AccessDeniedException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Lcom/xiaomi/accountsdk/request/AuthenticationFailureException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Lcom/xiaomi/accountsdk/request/InvalidResponseException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Lcom/xiaomi/accountsdk/request/CipherException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5

    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/xiaomi/accounts/AccountManager;->get(Landroid/content/Context;)Lcom/xiaomi/accounts/AccountManager;

    move-result-object p0

    const-string v0, "has_password"

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/xiaomi/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/xiaomi/accountsdk/request/AccessDeniedException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Lcom/xiaomi/accountsdk/request/AuthenticationFailureException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lcom/xiaomi/accountsdk/request/InvalidResponseException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/xiaomi/accountsdk/request/CipherException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_1

    :catch_2
    move-exception p0

    goto :goto_2

    :catch_3
    move-exception p0

    goto :goto_3

    :catch_4
    move-exception p0

    goto :goto_4

    :catch_5
    move-exception p0

    const/4 p2, 0x1

    :goto_0
    const-string p1, "AuthenticatorUtil"

    const-string v0, "handleQueryUserPassword error"

    invoke-static {p1, v0, p0}, Lcom/xiaomi/accountsdk/utils/AccountLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    :catch_6
    move-exception p0

    const/4 p2, 0x1

    :goto_1
    const-string p1, "AuthenticatorUtil"

    const-string v0, "handleQueryUserPassword error"

    invoke-static {p1, v0, p0}, Lcom/xiaomi/accountsdk/utils/AccountLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    :catch_7
    move-exception p0

    const/4 p2, 0x1

    :goto_2
    const-string p1, "AuthenticatorUtil"

    const-string v0, "handleQueryUserPassword error"

    invoke-static {p1, v0, p0}, Lcom/xiaomi/accountsdk/utils/AccountLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    :catch_8
    move-exception p0

    const/4 p2, 0x1

    :goto_3
    const-string p1, "AuthenticatorUtil"

    const-string v0, "handleQueryUserPassword error"

    invoke-static {p1, v0, p0}, Lcom/xiaomi/accountsdk/utils/AccountLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    :catch_9
    move-exception p0

    const/4 p2, 0x1

    :goto_4
    const-string p1, "AuthenticatorUtil"

    const-string v0, "handleQueryUserPassword error"

    invoke-static {p1, v0, p0}, Lcom/xiaomi/accountsdk/utils/AccountLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_5
    return p2
.end method

.method public static newAddAccountIntent(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Parcelable;)Landroid/content/Intent;
    .locals 1

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-static {p0}, Lcom/xiaomi/passport/PassportExternal;->getAuthenticatorComponentNameInterface(Landroid/content/Context;)Lcom/xiaomi/passport/interfaces/AuthenticatorComponentNameInterface;

    move-result-object p0

    invoke-interface {p0}, Lcom/xiaomi/passport/interfaces/AuthenticatorComponentNameInterface;->getAddAccountActivityComponentName()Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string p0, "service_id"

    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const/high16 p0, 0x4000000

    invoke-virtual {v0, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string p0, "accountAuthenticatorResponse"

    invoke-virtual {v0, p0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    return-object v0
.end method

.method public static newNotificationIntent(Landroid/content/Context;Landroid/os/Parcelable;Ljava/lang/String;Ljava/lang/String;ZLandroid/os/Bundle;)Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-static {p0}, Lcom/xiaomi/passport/PassportExternal;->getAuthenticatorComponentNameInterface(Landroid/content/Context;)Lcom/xiaomi/passport/interfaces/AuthenticatorComponentNameInterface;

    move-result-object v1

    invoke-interface {v1}, Lcom/xiaomi/passport/interfaces/AuthenticatorComponentNameInterface;->getNotificationActivityComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    new-instance v1, Lcom/xiaomi/passport/uicontroller/NotificationWebView$ExternalParams;

    invoke-direct {v1, p2, p4}, Lcom/xiaomi/passport/uicontroller/NotificationWebView$ExternalParams;-><init>(Ljava/lang/String;Z)V

    invoke-static {v0, v1}, Lcom/xiaomi/passport/uicontroller/NotificationWebView;->putExtraForNotificationWebView(Landroid/content/Intent;Lcom/xiaomi/passport/uicontroller/NotificationWebView$ExternalParams;)V

    const-string p2, "service_id"

    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "accountAuthenticatorResponse"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    if-eqz p5, :cond_0

    invoke-virtual {v0, p5}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_0
    invoke-static {}, Lcom/xiaomi/accountsdk/utils/ActivityExportSafetyGuardian;->getInstance()Lcom/xiaomi/accountsdk/utils/ActivityExportSafetyGuardian;

    move-result-object p1

    invoke-virtual {p1, p0, v0}, Lcom/xiaomi/accountsdk/utils/ActivityExportSafetyGuardian;->sign(Landroid/content/Context;Landroid/content/Intent;)V

    return-object v0
.end method

.method public static newQuickLoginIntent(Landroid/content/Context;Landroid/os/Parcelable;Landroid/os/Bundle;)Landroid/content/Intent;
    .locals 1

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-static {p0}, Lcom/xiaomi/passport/PassportExternal;->getAuthenticatorComponentNameInterface(Landroid/content/Context;)Lcom/xiaomi/passport/interfaces/AuthenticatorComponentNameInterface;

    move-result-object p0

    invoke-interface {p0}, Lcom/xiaomi/passport/interfaces/AuthenticatorComponentNameInterface;->getConfirmCredentialActivityComponentName()Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string p0, "accountAuthenticatorResponse"

    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    if-eqz p2, :cond_0

    invoke-virtual {v0, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_0
    const/high16 p0, 0x4000000

    invoke-virtual {v0, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    return-object v0
.end method

.method public static removeAccount(Landroid/content/Context;Landroid/accounts/Account;)V
    .locals 4

    sget-object v0, Lcom/xiaomi/passport/AccountChangedBroadcastHelper$UpdateType;->PRE_REMOVE:Lcom/xiaomi/passport/AccountChangedBroadcastHelper$UpdateType;

    invoke-static {p0, p1, v0}, Lcom/xiaomi/passport/AccountChangedBroadcastHelper;->sendBroadcast(Landroid/content/Context;Landroid/accounts/Account;Lcom/xiaomi/passport/AccountChangedBroadcastHelper$UpdateType;)V

    invoke-static {p0}, Lcom/xiaomi/accounts/AccountManager;->get(Landroid/content/Context;)Lcom/xiaomi/accounts/AccountManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, v1}, Lcom/xiaomi/accounts/AccountManager;->removeAccount(Landroid/accounts/Account;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    :try_start_0
    invoke-interface {v0}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "AuthenticatorUtil"

    const-string v3, "error when remove account"

    invoke-static {v2, v3, v0}, Lcom/xiaomi/accountsdk/utils/AccountLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/xiaomi/passport/AccountChangedBroadcastHelper$UpdateType;->POST_REMOVE:Lcom/xiaomi/passport/AccountChangedBroadcastHelper$UpdateType;

    invoke-static {p0, p1, v0}, Lcom/xiaomi/passport/AccountChangedBroadcastHelper;->sendBroadcast(Landroid/content/Context;Landroid/accounts/Account;Lcom/xiaomi/passport/AccountChangedBroadcastHelper$UpdateType;)V

    :cond_0
    return-void
.end method

.method public static saveAccountInfoInAM(Landroid/content/Context;Landroid/accounts/Account;Lcom/xiaomi/accountsdk/account/data/AccountInfo;)V
    .locals 5

    if-eqz p2, :cond_5

    if-eqz p0, :cond_5

    if-nez p1, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-static {p0}, Lcom/xiaomi/accounts/AccountManager;->get(Landroid/content/Context;)Lcom/xiaomi/accounts/AccountManager;

    move-result-object p0

    invoke-virtual {p2}, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->getEncryptedUserId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "encrypted_user_id"

    invoke-virtual {p0, p1, v1, v0}, Lcom/xiaomi/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string v0, "has_password"

    invoke-virtual {p2}, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->getHasPwd()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/xiaomi/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->getServiceId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->getServiceToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {p2}, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->getSecurity()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaomi/accountsdk/account/data/ExtendedAuthToken;->build(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/ExtendedAuthToken;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/accountsdk/account/data/ExtendedAuthToken;->toPlain()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1, v0, v2}, Lcom/xiaomi/accounts/AccountManager;->setAuthToken(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/xiaomi/accountsdk/utils/CloudCoder;->getMd5DigestUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->getSlh()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    move-object v2, v3

    goto :goto_0

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->getSlh()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {p2}, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->getPh()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_1

    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->getPh()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_slh"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2, v2}, Lcom/xiaomi/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_ph"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2, v3}, Lcom/xiaomi/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-void

    :cond_5
    :goto_2
    return-void
.end method

.method public static saveAccountInfoInAM(Landroid/content/Context;Lcom/xiaomi/accountsdk/account/data/AccountInfo;)V
    .locals 1

    if-eqz p1, :cond_1

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/xiaomi/passport/utils/AuthenticatorUtil;->getXiaomiAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/xiaomi/passport/utils/AuthenticatorUtil;->saveAccountInfoInAM(Landroid/content/Context;Landroid/accounts/Account;Lcom/xiaomi/accountsdk/account/data/AccountInfo;)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public static updatePassTokenIfNeed(Landroid/content/Context;Landroid/accounts/Account;Lcom/xiaomi/accountsdk/account/data/AccountInfo;)V
    .locals 2

    if-eqz p0, :cond_3

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/xiaomi/passport/utils/AuthenticatorUtil;->mAMPassTokenUpdateUtil:Lcom/xiaomi/passport/utils/AMPassTokenUpdateUtil;

    if-nez v0, :cond_1

    new-instance v0, Lcom/xiaomi/passport/utils/AMPassTokenUpdateUtil;

    invoke-direct {v0, p0}, Lcom/xiaomi/passport/utils/AMPassTokenUpdateUtil;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/xiaomi/passport/utils/AuthenticatorUtil;->mAMPassTokenUpdateUtil:Lcom/xiaomi/passport/utils/AMPassTokenUpdateUtil;

    :cond_1
    invoke-static {p0, p1}, Lcom/xiaomi/passport/utils/AuthenticatorUtil;->getPassToken(Landroid/content/Context;Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/xiaomi/passport/utils/AuthenticatorUtil;->mAMPassTokenUpdateUtil:Lcom/xiaomi/passport/utils/AMPassTokenUpdateUtil;

    invoke-virtual {v1, v0, p2}, Lcom/xiaomi/passport/utils/AMPassTokenUpdateUtil;->needUpdatePassToken(Ljava/lang/String;Lcom/xiaomi/accountsdk/account/data/AccountInfo;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p2, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->passToken:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->getPsecurity()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/xiaomi/accountsdk/account/data/ExtendedAuthToken;->build(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/ExtendedAuthToken;

    move-result-object p2

    invoke-static {p0}, Lcom/xiaomi/accounts/AccountManager;->get(Landroid/content/Context;)Lcom/xiaomi/accounts/AccountManager;

    move-result-object p0

    invoke-virtual {p2}, Lcom/xiaomi/accountsdk/account/data/ExtendedAuthToken;->toPlain()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/accounts/AccountManager;->setPassword(Landroid/accounts/Account;Ljava/lang/String;)V

    :cond_2
    return-void

    :cond_3
    :goto_0
    return-void
.end method
