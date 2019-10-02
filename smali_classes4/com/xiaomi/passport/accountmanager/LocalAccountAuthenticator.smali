.class public Lcom/xiaomi/passport/accountmanager/LocalAccountAuthenticator;
.super Lcom/xiaomi/accounts/AbstractAccountAuthenticator;
.source "LocalAccountAuthenticator.java"


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "LocalAccountAuthenticat"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/accounts/AbstractAccountAuthenticator;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/xiaomi/passport/accountmanager/LocalAccountAuthenticator;->mContext:Landroid/content/Context;

    return-void
.end method

.method private fillQuickLoginIntent(Landroid/os/Bundle;Lcom/xiaomi/accounts/AccountAuthenticatorResponse;ZLandroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/passport/accountmanager/LocalAccountAuthenticator;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/accounts/AccountManager;->get(Landroid/content/Context;)Lcom/xiaomi/accounts/AccountManager;

    move-result-object v0

    const-string v1, "has_password"

    invoke-virtual {v0, p4, v1}, Lcom/xiaomi/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/passport/accountmanager/LocalAccountAuthenticator;->mContext:Landroid/content/Context;

    invoke-static {v0, p4}, Lcom/xiaomi/passport/utils/AuthenticatorUtil;->getPassToken(Landroid/content/Context;Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/passport/accountmanager/LocalAccountAuthenticator;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v0, p4, v2}, Lcom/xiaomi/passport/utils/AuthenticatorUtil;->isSetPasswordAndUpdateAM(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;)Z

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/passport/accountmanager/LocalAccountAuthenticator;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/accounts/AccountManager;->get(Landroid/content/Context;)Lcom/xiaomi/accounts/AccountManager;

    move-result-object v0

    const-string v2, "has_password"

    invoke-virtual {v0, p4, v2}, Lcom/xiaomi/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez p6, :cond_1

    new-instance p6, Landroid/os/Bundle;

    invoke-direct {p6}, Landroid/os/Bundle;-><init>()V

    :cond_1
    const-string v2, "userId"

    iget-object p4, p4, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {p6, v2, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p4, "need_retry_on_authenticator_response_result"

    invoke-virtual {p6, p4, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p3, "has_password"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p4

    invoke-static {v0, p4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p4

    invoke-virtual {p6, p3, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object p3, p0, Lcom/xiaomi/passport/accountmanager/LocalAccountAuthenticator;->mContext:Landroid/content/Context;

    invoke-static {p3, p2, p6}, Lcom/xiaomi/passport/utils/AuthenticatorUtil;->newQuickLoginIntent(Landroid/content/Context;Landroid/os/Parcelable;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object p2

    const-string p3, "service_id"

    invoke-virtual {p2, p3, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p3, "intent"

    invoke-virtual {p1, p3, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void
.end method

.method private getAuthTokenBundle(Lcom/xiaomi/accounts/AccountAuthenticatorResponse;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 15

    move-object v8, p0

    move-object/from16 v5, p2

    move-object/from16 v0, p3

    move-object/from16 v7, p4

    const-string v1, "androidPackageName"

    iget-object v2, v8, Lcom/xiaomi/passport/accountmanager/LocalAccountAuthenticator;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "LocalAccountAuthenticat"

    const-string v3, "getting AuthToken, type: %s, package name: %s"

    const/4 v4, 0x2

    new-array v6, v4, [Ljava/lang/Object;

    const-string v9, "weblogin:"

    invoke-virtual {v0, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    const-string v9, "websso"

    goto :goto_0

    :cond_0
    move-object v9, v0

    :goto_0
    const/4 v10, 0x0

    aput-object v9, v6, v10

    const/4 v9, 0x1

    aput-object v1, v6, v9

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaomi/accountsdk/utils/AccountLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    iget-object v2, v8, Lcom/xiaomi/passport/accountmanager/LocalAccountAuthenticator;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/passport/utils/AuthenticatorUtil;->getXiaomiAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v2

    if-eqz v2, :cond_8

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v3, v5, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_c

    :cond_1
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    const-string v2, "LocalAccountAuthenticat"

    const-string v6, "getting auth token, but no service url contained, use passportapi"

    invoke-static {v2, v6}, Lcom/xiaomi/accountsdk/utils/AccountLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "passportapi"

    move-object v6, v2

    :goto_1
    move-object v2, v3

    goto :goto_2

    :cond_2
    const-string v2, "weblogin:"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "weblogin:"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const-string v6, "passportapi"

    invoke-static {v2}, Lcom/xiaomi/passport/utils/AccountHelper;->isTrustedWebSsoUrl(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_4

    const-string v0, "errorCode"

    const/4 v1, 0x7

    invoke-virtual {v11, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "errorMessage"

    const-string v1, "untrusted web sso url"

    invoke-virtual {v11, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v11

    :cond_3
    move-object v6, v0

    goto :goto_1

    :cond_4
    :goto_2
    invoke-direct {p0, v5}, Lcom/xiaomi/passport/accountmanager/LocalAccountAuthenticator;->getRealPasstoken(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_5

    const/4 v4, 0x1

    move-object v1, p0

    move-object v2, v11

    move-object/from16 v3, p1

    move-object/from16 v5, p2

    move-object/from16 v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/xiaomi/passport/accountmanager/LocalAccountAuthenticator;->fillQuickLoginIntent(Landroid/os/Bundle;Lcom/xiaomi/accounts/AccountAuthenticatorResponse;ZLandroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    const-string v0, "LocalAccountAuthenticat"

    const-string v1, "passToken is null"

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/AccountLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v11

    :cond_5
    const/4 v13, 0x3

    const/4 v14, 0x5

    if-eqz v2, :cond_6

    :try_start_0
    iget-object v0, v5, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v0, v12, v3, v2}, Lcom/xiaomi/passport/utils/AccountHelper;->getServiceTokenByPassToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/AccountInfo;

    move-result-object v0

    const-string v1, "authAccount"

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "accountType"

    invoke-virtual {v11, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "authtoken"

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->getAutoLoginUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "LocalAccountAuthenticat"

    const-string v1, "web sso getAuthToken succeed"

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/AccountLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v11

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_4

    :catch_2
    move-exception v0

    goto :goto_5

    :catch_3
    move-exception v0

    goto/16 :goto_6

    :catch_4
    move-exception v0

    goto/16 :goto_7

    :catch_5
    move-exception v0

    goto/16 :goto_8

    :catch_6
    move-exception v0

    goto/16 :goto_9

    :catch_7
    move-exception v0

    goto/16 :goto_a

    :cond_6
    iget-object v2, v5, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v2, v12, v6}, Lcom/xiaomi/passport/utils/AccountHelper;->getServiceTokenByPassToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/AccountInfo;

    move-result-object v2

    iget-object v3, v8, Lcom/xiaomi/passport/accountmanager/LocalAccountAuthenticator;->mContext:Landroid/content/Context;

    invoke-static {v3, v5, v2}, Lcom/xiaomi/passport/utils/AuthenticatorUtil;->saveAccountInfoInAM(Landroid/content/Context;Landroid/accounts/Account;Lcom/xiaomi/accountsdk/account/data/AccountInfo;)V

    iget-object v3, v8, Lcom/xiaomi/passport/accountmanager/LocalAccountAuthenticator;->mContext:Landroid/content/Context;

    invoke-static {v3, v5, v2}, Lcom/xiaomi/passport/utils/AuthenticatorUtil;->updatePassTokenIfNeed(Landroid/content/Context;Landroid/accounts/Account;Lcom/xiaomi/accountsdk/account/data/AccountInfo;)V

    invoke-static {v2, v10}, Lcom/xiaomi/passport/utils/AccountHelper;->getAuthenticatorResponseBundle(Lcom/xiaomi/accountsdk/account/data/AccountInfo;Z)Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-virtual {v11, v2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_7
    const-string v2, "LocalAccountAuthenticat"

    const-string v3, "type: %s, package name: %s, getAuthToken succeed"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v10

    aput-object v1, v4, v9

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/xiaomi/accountsdk/utils/AccountLog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Lcom/xiaomi/accountsdk/account/exception/IllegalDeviceException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Lcom/xiaomi/accountsdk/request/InvalidResponseException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lcom/xiaomi/accountsdk/account/exception/InvalidCredentialException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lcom/xiaomi/accountsdk/request/AccessDeniedException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/xiaomi/accountsdk/request/AuthenticationFailureException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/xiaomi/accountsdk/account/exception/InvalidUserNameException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/xiaomi/accountsdk/account/exception/NeedNotificationException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_b

    :goto_3
    const-string v1, "LocalAccountAuthenticat"

    const-string v2, "need notification "

    invoke-static {v1, v2, v0}, Lcom/xiaomi/accountsdk/utils/AccountLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v1, v8, Lcom/xiaomi/passport/accountmanager/LocalAccountAuthenticator;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/account/exception/NeedNotificationException;->getNotificationUrl()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    move-object v0, v1

    move-object/from16 v1, p1

    move-object v3, v6

    move-object/from16 v5, p4

    invoke-static/range {v0 .. v5}, Lcom/xiaomi/passport/utils/AuthenticatorUtil;->newNotificationIntent(Landroid/content/Context;Landroid/os/Parcelable;Ljava/lang/String;Ljava/lang/String;ZLandroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "intent"

    invoke-virtual {v11, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto/16 :goto_b

    :goto_4
    const-string v1, "LocalAccountAuthenticat"

    const-string v2, "no such a user"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/accountsdk/utils/AccountLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_b

    :goto_5
    const-string v1, "LocalAccountAuthenticat"

    const-string v2, "auth failure"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/accountsdk/utils/AccountLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string v1, "errorCode"

    invoke-virtual {v11, v1, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "errorMessage"

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/request/AuthenticationFailureException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b

    :goto_6
    const-string v1, "LocalAccountAuthenticat"

    const-string v2, "access denied"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/accountsdk/utils/AccountLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string v1, "errorCode"

    invoke-virtual {v11, v1, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "errorMessage"

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/request/AccessDeniedException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    :goto_7
    const-string v1, "LocalAccountAuthenticat"

    const-string v2, "invalid credential, passToken is invalid"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/accountsdk/utils/AccountLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v1, v8, Lcom/xiaomi/passport/accountmanager/LocalAccountAuthenticator;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaomi/accounts/AccountManager;->get(Landroid/content/Context;)Lcom/xiaomi/accounts/AccountManager;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/xiaomi/accounts/AccountManager;->clearPassword(Landroid/accounts/Account;)V

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/account/exception/InvalidCredentialException;->getCaptchaUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "captcha_url"

    invoke-virtual {v7, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x1

    move-object v1, p0

    move-object v2, v11

    move-object/from16 v3, p1

    move-object/from16 v5, p2

    move-object/from16 v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/xiaomi/passport/accountmanager/LocalAccountAuthenticator;->fillQuickLoginIntent(Landroid/os/Bundle;Lcom/xiaomi/accounts/AccountAuthenticatorResponse;ZLandroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_b

    :goto_8
    const-string v1, "LocalAccountAuthenticat"

    const-string v2, "invalid response received when getting service token"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/accountsdk/utils/AccountLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string v1, "errorCode"

    invoke-virtual {v11, v1, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "errorMessage"

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/request/InvalidResponseException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    :goto_9
    const-string v1, "LocalAccountAuthenticat"

    const-string v2, "get device id failed when getting service token"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/accountsdk/utils/AccountLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string v0, "errorCode"

    invoke-virtual {v11, v0, v13}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "errorMessage"

    const-string v1, "illegal device exception"

    invoke-virtual {v11, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    :goto_a
    const-string v1, "LocalAccountAuthenticat"

    const-string v2, "io exception when getting service token"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/accountsdk/utils/AccountLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string v1, "errorCode"

    invoke-virtual {v11, v1, v13}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "errorMessage"

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_b
    return-object v11

    :cond_8
    :goto_c
    const-string v0, "booleanResult"

    invoke-virtual {v11, v0, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v11
.end method

.method private getRealPasstoken(Landroid/accounts/Account;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/accountmanager/LocalAccountAuthenticator;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/xiaomi/passport/utils/AuthenticatorUtil;->getPassToken(Landroid/content/Context;Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public addAccount(Lcom/xiaomi/accounts/AccountAuthenticatorResponse;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/NetworkErrorException;
        }
    .end annotation

    iget-object p2, p0, Lcom/xiaomi/passport/accountmanager/LocalAccountAuthenticator;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/xiaomi/accounts/AccountManager;->get(Landroid/content/Context;)Lcom/xiaomi/accounts/AccountManager;

    move-result-object p2

    const-string p4, "com.xiaomi"

    invoke-virtual {p2, p4}, Lcom/xiaomi/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object p2

    new-instance p4, Landroid/os/Bundle;

    invoke-direct {p4}, Landroid/os/Bundle;-><init>()V

    array-length v0, p2

    if-lez v0, :cond_0

    const-string p1, "LocalAccountAuthenticat"

    const-string p3, "a xiaomi account already exists"

    invoke-static {p1, p3}, Lcom/xiaomi/accountsdk/utils/AccountLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    aget-object p1, p2, p1

    const-string p2, "authAccount"

    iget-object p3, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {p4, p2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "accountType"

    iget-object p1, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p4, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p2, "LocalAccountAuthenticat"

    const-string p3, "no service id contained, use passportapi"

    invoke-static {p2, p3}, Lcom/xiaomi/accountsdk/utils/AccountLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string p3, "passportapi"

    :cond_1
    iget-object p2, p0, Lcom/xiaomi/passport/accountmanager/LocalAccountAuthenticator;->mContext:Landroid/content/Context;

    invoke-static {p2, p3, p5, p1}, Lcom/xiaomi/passport/utils/AuthenticatorUtil;->newAddAccountIntent(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object p1

    const-string p2, "intent"

    invoke-virtual {p4, p2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :goto_0
    return-object p4
.end method

.method public confirmCredentials(Lcom/xiaomi/accounts/AccountAuthenticatorResponse;Landroid/accounts/Account;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/NetworkErrorException;
        }
    .end annotation

    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p3, :cond_2

    const-string v3, "password"

    invoke-virtual {p3, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object p1, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    const-string p2, "password"

    invoke-virtual {p3, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v3, "captcha_code"

    invoke-virtual {p3, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "captcha_ick"

    invoke-virtual {p3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    :try_start_0
    invoke-static {p1, p2, v3, p3, v2}, Lcom/xiaomi/passport/utils/AccountHelper;->getServiceTokenByPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/AccountInfo;

    move-result-object p2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Lcom/xiaomi/accountsdk/account/exception/IllegalDeviceException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Lcom/xiaomi/accountsdk/request/InvalidResponseException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Lcom/xiaomi/accountsdk/account/exception/InvalidCredentialException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lcom/xiaomi/accountsdk/request/AccessDeniedException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lcom/xiaomi/accountsdk/request/AuthenticationFailureException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/xiaomi/accountsdk/account/exception/NeedVerificationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/xiaomi/accountsdk/account/exception/NeedCaptchaException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/xiaomi/accountsdk/account/exception/InvalidUserNameException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move-object p3, v2

    move-object v2, p2

    goto :goto_2

    :catch_0
    move-exception p2

    invoke-virtual {p2}, Lcom/xiaomi/accountsdk/account/exception/InvalidUserNameException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception p2

    invoke-virtual {p2}, Lcom/xiaomi/accountsdk/account/exception/NeedCaptchaException;->getCaptchaUrl()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2}, Lcom/xiaomi/accountsdk/account/exception/NeedCaptchaException;->printStackTrace()V

    goto :goto_2

    :catch_2
    new-instance p2, Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;

    invoke-direct {p2}, Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;-><init>()V

    invoke-virtual {p2, p1}, Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;->userId(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;->build()Lcom/xiaomi/accountsdk/account/data/AccountInfo;

    move-result-object p2

    goto :goto_0

    :catch_3
    move-exception p2

    invoke-virtual {p2}, Lcom/xiaomi/accountsdk/request/AuthenticationFailureException;->printStackTrace()V

    goto :goto_1

    :catch_4
    move-exception p2

    invoke-virtual {p2}, Lcom/xiaomi/accountsdk/request/AccessDeniedException;->printStackTrace()V

    goto :goto_1

    :catch_5
    move-exception p2

    invoke-virtual {p2}, Lcom/xiaomi/accountsdk/account/exception/InvalidCredentialException;->getCaptchaUrl()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2}, Lcom/xiaomi/accountsdk/account/exception/InvalidCredentialException;->printStackTrace()V

    goto :goto_2

    :catch_6
    move-exception p2

    invoke-virtual {p2}, Lcom/xiaomi/accountsdk/request/InvalidResponseException;->printStackTrace()V

    goto :goto_1

    :catch_7
    move-exception p2

    invoke-virtual {p2}, Lcom/xiaomi/accountsdk/account/exception/IllegalDeviceException;->printStackTrace()V

    :goto_1
    move-object p3, v2

    :goto_2
    const-string p2, "authAccount"

    invoke-virtual {v7, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "accountType"

    const-string p2, "com.xiaomi"

    invoke-virtual {v7, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "booleanResult"

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-virtual {v7, p1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p1, "captcha_url"

    invoke-virtual {v7, p1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :catch_8
    move-exception p1

    new-instance p2, Landroid/accounts/NetworkErrorException;

    const-string p3, "IO exception when sending request to passport server"

    invoke-direct {p2, p3, p1}, Landroid/accounts/NetworkErrorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_2
    :goto_3
    iget-object v3, p0, Lcom/xiaomi/passport/accountmanager/LocalAccountAuthenticator;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/xiaomi/accounts/AccountManager;->get(Landroid/content/Context;)Lcom/xiaomi/accounts/AccountManager;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/xiaomi/accounts/AccountManager;->getPassword(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v3

    if-eqz p3, :cond_4

    const-string v4, "verify_only"

    invoke-virtual {p3, v4, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_4

    :cond_3
    const/4 v1, 0x0

    :cond_4
    :goto_4
    if-eqz v1, :cond_6

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    if-nez p3, :cond_5

    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    :cond_5
    const-string v1, "verify_only"

    invoke-virtual {p3, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_6
    move-object v6, p3

    const/4 v3, 0x0

    if-eqz v6, :cond_7

    const-string p3, "service_id"

    invoke-virtual {v6, p3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    move-object v5, p3

    goto :goto_5

    :cond_7
    move-object v5, v2

    :goto_5
    move-object v0, p0

    move-object v1, v7

    move-object v2, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/xiaomi/passport/accountmanager/LocalAccountAuthenticator;->fillQuickLoginIntent(Landroid/os/Bundle;Lcom/xiaomi/accounts/AccountAuthenticatorResponse;ZLandroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    :goto_6
    return-object v7
.end method

.method public editProperties(Lcom/xiaomi/accounts/AccountAuthenticatorResponse;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getAccountRemovalAllowed(Lcom/xiaomi/accounts/AccountAuthenticatorResponse;Landroid/accounts/Account;)Landroid/os/Bundle;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/NetworkErrorException;
        }
    .end annotation

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string p2, "booleanResult"

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object p1
.end method

.method public getAuthToken(Lcom/xiaomi/accounts/AccountAuthenticatorResponse;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaomi/passport/accountmanager/LocalAccountAuthenticator;->getAuthTokenBundle(Lcom/xiaomi/accounts/AccountAuthenticatorResponse;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/xiaomi/passport/accountmanager/LocalAccountAuthenticator;->recheckAuthTokenResult(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method

.method public getAuthTokenLabel(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public hasFeatures(Lcom/xiaomi/accounts/AccountAuthenticatorResponse;Landroid/accounts/Account;[Ljava/lang/String;)Landroid/os/Bundle;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/NetworkErrorException;
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method recheckAuthTokenResult(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/passport/accountmanager/LocalAccountAuthenticator;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/passport/utils/AuthenticatorUtil;->getXiaomiAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v0, "booleanResult"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object p1
.end method

.method public updateCredentials(Lcom/xiaomi/accounts/AccountAuthenticatorResponse;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/NetworkErrorException;
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "updateCredentials not supported"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
