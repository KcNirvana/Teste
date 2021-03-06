.class public Lcom/xiaomi/passport/LocalFeatures/LocalFeaturesImpl;
.super Ljava/lang/Object;
.source "LocalFeaturesImpl.java"

# interfaces
.implements Lcom/xiaomi/passport/LocalFeatures/MiLocalFeaturesManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/passport/LocalFeatures/LocalFeaturesImpl$AmsTask;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "LocalFeaturesImpl"

.field private static final THREAD_POOL_EXECUTOR:Ljava/util/concurrent/ExecutorService;

.field private static sInstance:Lcom/xiaomi/passport/LocalFeatures/LocalFeaturesImpl;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mMainHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x5

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/passport/LocalFeatures/LocalFeaturesImpl;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    const/4 v0, 0x0

    sput-object v0, Lcom/xiaomi/passport/LocalFeatures/LocalFeaturesImpl;->sInstance:Lcom/xiaomi/passport/LocalFeatures/LocalFeaturesImpl;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/passport/LocalFeatures/LocalFeaturesImpl;->mContext:Landroid/content/Context;

    new-instance p1, Landroid/os/Handler;

    iget-object v0, p0, Lcom/xiaomi/passport/LocalFeatures/LocalFeaturesImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/xiaomi/passport/LocalFeatures/LocalFeaturesImpl;->mMainHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/xiaomi/passport/LocalFeatures/LocalFeaturesImpl;Lcom/xiaomi/accounts/AccountAuthenticatorResponse;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaomi/passport/LocalFeatures/LocalFeaturesImpl;->getStsUrl(Lcom/xiaomi/accounts/AccountAuthenticatorResponse;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100()Ljava/util/concurrent/ExecutorService;
    .locals 1

    sget-object v0, Lcom/xiaomi/passport/LocalFeatures/LocalFeaturesImpl;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method static synthetic access$200(Lcom/xiaomi/passport/LocalFeatures/LocalFeaturesImpl;Ljava/lang/String;)Landroid/content/Intent;
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/passport/LocalFeatures/LocalFeaturesImpl;->getHandleQRCodeScanResultIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/xiaomi/passport/LocalFeatures/LocalFeaturesImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/passport/LocalFeatures/LocalFeaturesImpl;->ensureNotOnMainThread()V

    return-void
.end method

.method static synthetic access$500(Lcom/xiaomi/passport/LocalFeatures/LocalFeaturesImpl;Landroid/os/Handler;Lcom/xiaomi/passport/LocalFeatures/LocalFeaturesManagerCallback;Lcom/xiaomi/passport/LocalFeatures/LocalFeaturesManagerFuture;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/xiaomi/passport/LocalFeatures/LocalFeaturesImpl;->postToHandler(Landroid/os/Handler;Lcom/xiaomi/passport/LocalFeatures/LocalFeaturesManagerCallback;Lcom/xiaomi/passport/LocalFeatures/LocalFeaturesManagerFuture;)V

    return-void
.end method

.method static synthetic access$600(Lcom/xiaomi/passport/LocalFeatures/LocalFeaturesImpl;ILjava/lang/String;)Ljava/lang/Exception;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/passport/LocalFeatures/LocalFeaturesImpl;->convertErrorToException(ILjava/lang/String;)Ljava/lang/Exception;

    move-result-object p0

    return-object p0
.end method

.method private convertErrorToException(ILjava/lang/String;)Ljava/lang/Exception;
    .locals 4

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    return-object p1

    :cond_0
    const/4 v1, 0x7

    if-ne p1, v1, :cond_1

    new-instance p1, Lcom/xiaomi/accountsdk/request/AccessDeniedException;

    const/16 v0, 0x193

    invoke-direct {p1, v0, p2}, Lcom/xiaomi/accountsdk/request/AccessDeniedException;-><init>(ILjava/lang/String;)V

    return-object p1

    :cond_1
    const/4 v2, 0x4

    if-ne p1, v2, :cond_2

    new-instance p1, Lcom/xiaomi/accountsdk/account/exception/InvalidCredentialException;

    const v0, 0x11180

    const/4 v1, 0x1

    invoke-direct {p1, v0, p2, v1}, Lcom/xiaomi/accountsdk/account/exception/InvalidCredentialException;-><init>(ILjava/lang/String;Z)V

    return-object p1

    :cond_2
    const/16 v2, 0xa

    if-ne p1, v2, :cond_3

    new-instance p1, Ljavax/net/ssl/SSLException;

    invoke-direct {p1, p2}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    return-object p1

    :cond_3
    const/4 v2, 0x6

    if-ne p1, v2, :cond_4

    new-instance p1, Lcom/xiaomi/accountsdk/request/InvalidResponseException;

    invoke-direct {p1, p2}, Lcom/xiaomi/accountsdk/request/InvalidResponseException;-><init>(Ljava/lang/String;)V

    return-object p1

    :cond_4
    const/16 v3, 0x8

    if-ne p1, v3, :cond_5

    new-instance p1, Lcom/xiaomi/accountsdk/account/exception/InvalidUserNameException;

    invoke-direct {p1}, Lcom/xiaomi/accountsdk/account/exception/InvalidUserNameException;-><init>()V

    return-object p1

    :cond_5
    const/16 v3, 0x9

    if-ne p1, v3, :cond_6

    new-instance p1, Lcom/xiaomi/accountsdk/account/exception/IllegalDeviceException;

    invoke-direct {p1, p2}, Lcom/xiaomi/accountsdk/account/exception/IllegalDeviceException;-><init>(Ljava/lang/String;)V

    return-object p1

    :cond_6
    if-ne p1, v2, :cond_7

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    return-object p1

    :cond_7
    if-ne p1, v0, :cond_8

    new-instance p1, Landroid/accounts/AuthenticatorException;

    invoke-direct {p1, p2}, Landroid/accounts/AuthenticatorException;-><init>(Ljava/lang/String;)V

    return-object p1

    :cond_8
    if-ne p1, v1, :cond_9

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    return-object p1

    :cond_9
    new-instance p1, Landroid/accounts/AuthenticatorException;

    invoke-direct {p1, p2}, Landroid/accounts/AuthenticatorException;-><init>(Ljava/lang/String;)V

    return-object p1
.end method

.method private ensureNotOnMainThread()V
    .locals 3

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/xiaomi/passport/LocalFeatures/LocalFeaturesImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "calling this from your main thread can lead to deadlock"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    const-string v1, "LocalFeaturesImpl"

    const-string v2, "calling this from your main thread can lead to deadlock and/or ANRs"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/accountsdk/utils/AccountLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v1, p0, Lcom/xiaomi/passport/LocalFeatures/LocalFeaturesImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v2, 0x8

    if-ge v1, v2, :cond_0

    goto :goto_0

    :cond_0
    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public static declared-synchronized get(Landroid/content/Context;)Lcom/xiaomi/passport/LocalFeatures/LocalFeaturesImpl;
    .locals 2

    const-class v0, Lcom/xiaomi/passport/LocalFeatures/LocalFeaturesImpl;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/xiaomi/passport/LocalFeatures/LocalFeaturesImpl;->sInstance:Lcom/xiaomi/passport/LocalFeatures/LocalFeaturesImpl;

    if-nez v1, :cond_0

    new-instance v1, Lcom/xiaomi/passport/LocalFeatures/LocalFeaturesImpl;

    invoke-direct {v1, p0}, Lcom/xiaomi/passport/LocalFeatures/LocalFeaturesImpl;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/xiaomi/passport/LocalFeatures/LocalFeaturesImpl;->sInstance:Lcom/xiaomi/passport/LocalFeatures/LocalFeaturesImpl;

    :cond_0
    sget-object p0, Lcom/xiaomi/passport/LocalFeatures/LocalFeaturesImpl;->sInstance:Lcom/xiaomi/passport/LocalFeatures/LocalFeaturesImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private getHandleQRCodeScanResultIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xiaomi/passport/LocalFeatures/LocalFeaturesImpl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaomi/passport/accountmanager/MiAccountManager;->get(Landroid/content/Context;)Lcom/xiaomi/passport/accountmanager/MiAccountManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/passport/accountmanager/MiAccountManager;->isUseSystem()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "com.xiaomi.account"

    const-string v2, "com.xiaomi.account.ui.AccountWebActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/xiaomi/passport/LocalFeatures/LocalFeaturesImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.xiaomi.passport.ui.LoginQRCodeScanResultActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    return-object v0
.end method

.method private getResultIntent(Lcom/xiaomi/accounts/AccountAuthenticatorResponse;Ljava/lang/Exception;Landroid/os/Bundle;)Landroid/content/Intent;
    .locals 7

    instance-of v0, p2, Lcom/xiaomi/accountsdk/account/exception/NeedCaptchaException;

    if-eqz v0, :cond_0

    const-string v0, "captcha_url"

    check-cast p2, Lcom/xiaomi/accountsdk/account/exception/NeedCaptchaException;

    invoke-virtual {p2}, Lcom/xiaomi/accountsdk/account/exception/NeedCaptchaException;->getCaptchaUrl()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/xiaomi/passport/LocalFeatures/LocalFeaturesImpl;->mContext:Landroid/content/Context;

    invoke-static {p2, p1, p3}, Lcom/xiaomi/passport/utils/AuthenticatorUtil;->newQuickLoginIntent(Landroid/content/Context;Landroid/os/Parcelable;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object p1

    goto :goto_0

    :cond_0
    instance-of v0, p2, Lcom/xiaomi/accountsdk/account/exception/NeedNotificationException;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/xiaomi/passport/LocalFeatures/LocalFeaturesImpl;->mContext:Landroid/content/Context;

    check-cast p2, Lcom/xiaomi/accountsdk/account/exception/NeedNotificationException;

    invoke-virtual {p2}, Lcom/xiaomi/accountsdk/account/exception/NeedNotificationException;->getNotificationUrl()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v2, p1

    move-object v6, p3

    invoke-static/range {v1 .. v6}, Lcom/xiaomi/passport/utils/AuthenticatorUtil;->newNotificationIntent(Landroid/content/Context;Landroid/os/Parcelable;Ljava/lang/String;Ljava/lang/String;ZLandroid/os/Bundle;)Landroid/content/Intent;

    move-result-object p1

    goto :goto_0

    :cond_1
    instance-of v0, p2, Lcom/xiaomi/accountsdk/account/exception/NeedVerificationException;

    if-eqz v0, :cond_2

    check-cast p2, Lcom/xiaomi/accountsdk/account/exception/NeedVerificationException;

    invoke-virtual {p2}, Lcom/xiaomi/accountsdk/account/exception/NeedVerificationException;->getMetaLoginData()Lcom/xiaomi/accountsdk/account/data/MetaLoginData;

    move-result-object v0

    const-string v1, "extra_step1_token"

    invoke-virtual {p2}, Lcom/xiaomi/accountsdk/account/exception/NeedVerificationException;->getStep1Token()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "extra_sign"

    iget-object v1, v0, Lcom/xiaomi/accountsdk/account/data/MetaLoginData;->sign:Ljava/lang/String;

    invoke-virtual {p3, p2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "extra_qs"

    iget-object v1, v0, Lcom/xiaomi/accountsdk/account/data/MetaLoginData;->qs:Ljava/lang/String;

    invoke-virtual {p3, p2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "extra_callback"

    iget-object v0, v0, Lcom/xiaomi/accountsdk/account/data/MetaLoginData;->callback:Ljava/lang/String;

    invoke-virtual {p3, p2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/xiaomi/passport/LocalFeatures/LocalFeaturesImpl;->mContext:Landroid/content/Context;

    invoke-static {p2, p1, p3}, Lcom/xiaomi/passport/utils/AuthenticatorUtil;->newQuickLoginIntent(Landroid/content/Context;Landroid/os/Parcelable;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object p1

    goto :goto_0

    :cond_2
    iget-object p2, p0, Lcom/xiaomi/passport/LocalFeatures/LocalFeaturesImpl;->mContext:Landroid/content/Context;

    invoke-static {p2, p1, p3}, Lcom/xiaomi/passport/utils/AuthenticatorUtil;->newQuickLoginIntent(Landroid/content/Context;Landroid/os/Parcelable;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private getStsUrl(Lcom/xiaomi/accounts/AccountAuthenticatorResponse;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    if-eqz p1, :cond_2

    const/4 v0, 0x6

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p2, p3, p4, v1, v1}, Lcom/xiaomi/passport/utils/AccountHelper;->getStsUrlByPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/AccountInfo;

    move-result-object v2

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "sts_url"

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->getAutoLoginUrl()Ljava/lang/String;

    move-result-object v1

    :cond_0
    invoke-virtual {v3, v4, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Lcom/xiaomi/accounts/AccountAuthenticatorResponse;->onResult(Landroid/os/Bundle;)V
    :try_end_0
    .catch Lcom/xiaomi/accountsdk/account/exception/NeedCaptchaException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Lcom/xiaomi/accountsdk/account/exception/NeedVerificationException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Lcom/xiaomi/accountsdk/account/exception/NeedNotificationException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Lcom/xiaomi/accountsdk/account/exception/InvalidCredentialException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lcom/xiaomi/accountsdk/request/InvalidResponseException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lcom/xiaomi/accountsdk/request/AccessDeniedException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/xiaomi/accountsdk/account/exception/InvalidUserNameException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/xiaomi/accountsdk/request/AuthenticationFailureException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/xiaomi/accountsdk/account/exception/IllegalDeviceException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception p2

    const-string p3, "LocalFeaturesImpl"

    invoke-static {p3, p2}, Lcom/xiaomi/accountsdk/utils/AccountLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 p3, 0x9

    invoke-virtual {p2}, Lcom/xiaomi/accountsdk/account/exception/IllegalDeviceException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lcom/xiaomi/accounts/AccountAuthenticatorResponse;->onError(ILjava/lang/String;)V

    goto/16 :goto_0

    :catch_1
    move-exception p2

    const-string p3, "LocalFeaturesImpl"

    invoke-static {p3, p2}, Lcom/xiaomi/accountsdk/utils/AccountLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p2}, Lcom/xiaomi/accountsdk/request/AuthenticationFailureException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lcom/xiaomi/accounts/AccountAuthenticatorResponse;->onError(ILjava/lang/String;)V

    goto/16 :goto_0

    :catch_2
    move-exception p2

    const-string p3, "LocalFeaturesImpl"

    invoke-static {p3, p2}, Lcom/xiaomi/accountsdk/utils/AccountLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 p3, 0x8

    invoke-virtual {p2}, Lcom/xiaomi/accountsdk/account/exception/InvalidUserNameException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lcom/xiaomi/accounts/AccountAuthenticatorResponse;->onError(ILjava/lang/String;)V

    goto/16 :goto_0

    :catch_3
    move-exception p2

    const-string p3, "LocalFeaturesImpl"

    invoke-static {p3, p2}, Lcom/xiaomi/accountsdk/utils/AccountLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p3, 0x7

    invoke-virtual {p2}, Lcom/xiaomi/accountsdk/request/AccessDeniedException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lcom/xiaomi/accounts/AccountAuthenticatorResponse;->onError(ILjava/lang/String;)V

    goto/16 :goto_0

    :catch_4
    move-exception p2

    const-string p3, "LocalFeaturesImpl"

    invoke-static {p3, p2}, Lcom/xiaomi/accountsdk/utils/AccountLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p2}, Lcom/xiaomi/accountsdk/request/InvalidResponseException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lcom/xiaomi/accounts/AccountAuthenticatorResponse;->onError(ILjava/lang/String;)V

    goto/16 :goto_0

    :catch_5
    move-exception p2

    const-string p3, "LocalFeaturesImpl"

    invoke-static {p3, p2}, Lcom/xiaomi/accountsdk/utils/AccountLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p3, 0x5

    invoke-virtual {p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lcom/xiaomi/accounts/AccountAuthenticatorResponse;->onError(ILjava/lang/String;)V

    goto/16 :goto_0

    :catch_6
    move-exception v0

    move-object v6, v0

    const-string v0, "LocalFeaturesImpl"

    invoke-static {v0, v6}, Lcom/xiaomi/accountsdk/utils/AccountLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v6}, Lcom/xiaomi/accountsdk/account/exception/InvalidCredentialException;->getHasPwd()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p2, 0x4

    invoke-virtual {v6}, Lcom/xiaomi/accountsdk/account/exception/InvalidCredentialException;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/xiaomi/accounts/AccountAuthenticatorResponse;->onError(ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/xiaomi/passport/LocalFeatures/LocalFeaturesImpl;->onBackIntent(Lcom/xiaomi/accounts/AccountAuthenticatorResponse;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    :catch_7
    move-exception v0

    move-object v6, v0

    const-string v0, "LocalFeaturesImpl"

    invoke-static {v0, v6}, Lcom/xiaomi/accountsdk/utils/AccountLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/xiaomi/passport/LocalFeatures/LocalFeaturesImpl;->onBackIntent(Lcom/xiaomi/accounts/AccountAuthenticatorResponse;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    :catch_8
    move-exception v0

    move-object v6, v0

    const-string v0, "LocalFeaturesImpl"

    invoke-static {v0, v6}, Lcom/xiaomi/accountsdk/utils/AccountLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/xiaomi/passport/LocalFeatures/LocalFeaturesImpl;->onBackIntent(Lcom/xiaomi/accounts/AccountAuthenticatorResponse;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    :catch_9
    move-exception v0

    move-object v6, v0

    const-string v0, "LocalFeaturesImpl"

    invoke-static {v0, v6}, Lcom/xiaomi/accountsdk/utils/AccountLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/xiaomi/passport/LocalFeatures/LocalFeaturesImpl;->onBackIntent(Lcom/xiaomi/accounts/AccountAuthenticatorResponse;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_0
    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "response is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private onBackIntent(Lcom/xiaomi/accounts/AccountAuthenticatorResponse;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "userId"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "service_id"

    invoke-virtual {v0, p2, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "password"

    invoke-virtual {v0, p2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "need_retry_on_authenticator_response_result"

    const/4 p3, 0x1

    invoke-virtual {v0, p2, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-direct {p0, p1, p5, v0}, Lcom/xiaomi/passport/LocalFeatures/LocalFeaturesImpl;->getResultIntent(Lcom/xiaomi/accounts/AccountAuthenticatorResponse;Ljava/lang/Exception;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object p2

    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    const-string p4, "intent"

    invoke-virtual {p3, p4, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {p1, p3}, Lcom/xiaomi/accounts/AccountAuthenticatorResponse;->onResult(Landroid/os/Bundle;)V

    return-void
.end method

.method private postToHandler(Landroid/os/Handler;Lcom/xiaomi/passport/LocalFeatures/LocalFeaturesManagerCallback;Lcom/xiaomi/passport/LocalFeatures/LocalFeaturesManagerFuture;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Handler;",
            "Lcom/xiaomi/passport/LocalFeatures/LocalFeaturesManagerCallback<",
            "Landroid/os/Bundle;",
            ">;",
            "Lcom/xiaomi/passport/LocalFeatures/LocalFeaturesManagerFuture<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/xiaomi/passport/LocalFeatures/LocalFeaturesImpl;->mMainHandler:Landroid/os/Handler;

    :cond_0
    new-instance v0, Lcom/xiaomi/passport/LocalFeatures/LocalFeaturesImpl$3;

    invoke-direct {v0, p0, p2, p3}, Lcom/xiaomi/passport/LocalFeatures/LocalFeaturesImpl$3;-><init>(Lcom/xiaomi/passport/LocalFeatures/LocalFeaturesImpl;Lcom/xiaomi/passport/LocalFeatures/LocalFeaturesManagerCallback;Lcom/xiaomi/passport/LocalFeatures/LocalFeaturesManagerFuture;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public getStsUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Lcom/xiaomi/passport/LocalFeatures/LocalFeaturesManagerCallback;Landroid/os/Handler;)Lcom/xiaomi/passport/LocalFeatures/LocalFeaturesManagerFuture;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Landroid/app/Activity;",
            "Lcom/xiaomi/passport/LocalFeatures/LocalFeaturesManagerCallback<",
            "Landroid/os/Bundle;",
            ">;",
            "Landroid/os/Handler;",
            ")",
            "Lcom/xiaomi/passport/LocalFeatures/LocalFeaturesManagerFuture<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    new-instance p4, Lcom/xiaomi/passport/LocalFeatures/LocalFeaturesImpl$1;

    move-object v0, p4

    move-object v1, p0

    move-object v2, p5

    move-object v3, p7

    move-object v4, p6

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/xiaomi/passport/LocalFeatures/LocalFeaturesImpl$1;-><init>(Lcom/xiaomi/passport/LocalFeatures/LocalFeaturesImpl;Landroid/app/Activity;Landroid/os/Handler;Lcom/xiaomi/passport/LocalFeatures/LocalFeaturesManagerCallback;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p4}, Lcom/xiaomi/passport/LocalFeatures/LocalFeaturesImpl$1;->start()Lcom/xiaomi/passport/LocalFeatures/LocalFeaturesManagerFuture;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "userId or password options is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public handleLoginQRCodeScanResult(Ljava/lang/String;Landroid/app/Activity;Landroid/os/Bundle;Lcom/xiaomi/passport/LocalFeatures/LocalFeaturesManagerCallback;Landroid/os/Handler;)Lcom/xiaomi/passport/LocalFeatures/LocalFeaturesManagerFuture;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/app/Activity;",
            "Landroid/os/Bundle;",
            "Lcom/xiaomi/passport/LocalFeatures/LocalFeaturesManagerCallback<",
            "Landroid/os/Bundle;",
            ">;",
            "Landroid/os/Handler;",
            ")",
            "Lcom/xiaomi/passport/LocalFeatures/LocalFeaturesManagerFuture<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    new-instance v7, Lcom/xiaomi/passport/LocalFeatures/LocalFeaturesImpl$2;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p2

    move-object v3, p5

    move-object v4, p4

    move-object v5, p1

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/xiaomi/passport/LocalFeatures/LocalFeaturesImpl$2;-><init>(Lcom/xiaomi/passport/LocalFeatures/LocalFeaturesImpl;Landroid/app/Activity;Landroid/os/Handler;Lcom/xiaomi/passport/LocalFeatures/LocalFeaturesManagerCallback;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v7}, Lcom/xiaomi/passport/LocalFeatures/LocalFeaturesImpl$2;->start()Lcom/xiaomi/passport/LocalFeatures/LocalFeaturesManagerFuture;

    move-result-object p1

    return-object p1
.end method
