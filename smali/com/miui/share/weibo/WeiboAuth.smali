.class Lcom/miui/share/weibo/WeiboAuth;
.super Ljava/lang/Object;
.source "WeiboAuth.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/share/weibo/WeiboAuth$AuthListener;,
        Lcom/miui/share/weibo/WeiboAuth$WeiboAuthCallback;
    }
.end annotation


# static fields
.field private static final PREF_KEY_WEIBO_EXPIRES_IN:Ljava/lang/String; = "weibo_expires_in"

.field private static final PREF_KEY_WEIBO_TOKEN:Ljava/lang/String; = "weibo_token"

.field private static final PREF_KEY_WEIBO_UID:Ljava/lang/String; = "weibo_uid"

.field private static final PREF_NAME:Ljava/lang/String; = "Weibo"

.field private static final TAG:Ljava/lang/String; = "MiuiShare"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mAuthListener:Lcom/miui/share/weibo/WeiboAuth$AuthListener;

.field private mCallback:Lcom/miui/share/weibo/WeiboAuth$WeiboAuthCallback;

.field private mSsoHandler:Lcom/sina/weibo/sdk/auth/sso/SsoHandler;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/miui/share/weibo/WeiboAuth$AuthListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/share/weibo/WeiboAuth$AuthListener;-><init>(Lcom/miui/share/weibo/WeiboAuth;Lcom/miui/share/weibo/WeiboAuth$1;)V

    iput-object v0, p0, Lcom/miui/share/weibo/WeiboAuth;->mAuthListener:Lcom/miui/share/weibo/WeiboAuth$AuthListener;

    iput-object p1, p0, Lcom/miui/share/weibo/WeiboAuth;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method static synthetic access$100(Lcom/miui/share/weibo/WeiboAuth;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/miui/share/weibo/WeiboAuth;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$200(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/share/weibo/WeiboAuth;->parseAccessToken(Landroid/content/Context;Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$300(Lcom/miui/share/weibo/WeiboAuth;)Lcom/miui/share/weibo/WeiboAuth$WeiboAuthCallback;
    .locals 1

    iget-object v0, p0, Lcom/miui/share/weibo/WeiboAuth;->mCallback:Lcom/miui/share/weibo/WeiboAuth$WeiboAuthCallback;

    return-object v0
.end method

.method static synthetic access$400(Lcom/miui/share/weibo/WeiboAuth;)Lcom/sina/weibo/sdk/auth/sso/SsoHandler;
    .locals 1

    iget-object v0, p0, Lcom/miui/share/weibo/WeiboAuth;->mSsoHandler:Lcom/sina/weibo/sdk/auth/sso/SsoHandler;

    return-object v0
.end method

.method static synthetic access$402(Lcom/miui/share/weibo/WeiboAuth;Lcom/sina/weibo/sdk/auth/sso/SsoHandler;)Lcom/sina/weibo/sdk/auth/sso/SsoHandler;
    .locals 0

    iput-object p1, p0, Lcom/miui/share/weibo/WeiboAuth;->mSsoHandler:Lcom/sina/weibo/sdk/auth/sso/SsoHandler;

    return-object p1
.end method

.method static synthetic access$500(Lcom/miui/share/weibo/WeiboAuth;)Lcom/miui/share/weibo/WeiboAuth$AuthListener;
    .locals 1

    iget-object v0, p0, Lcom/miui/share/weibo/WeiboAuth;->mAuthListener:Lcom/miui/share/weibo/WeiboAuth$AuthListener;

    return-object v0
.end method

.method private buildSsoHandler(Landroid/app/Activity;Lcom/sina/weibo/sdk/auth/AuthInfo;)V
    .locals 3

    :try_start_0
    new-instance v1, Lcom/miui/share/weibo/WeiboAuth$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/miui/share/weibo/WeiboAuth$1;-><init>(Lcom/miui/share/weibo/WeiboAuth;Landroid/app/Activity;Lcom/sina/weibo/sdk/auth/AuthInfo;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/miui/share/weibo/WeiboAuth$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/util/concurrent/RejectedExecutionException;->printStackTrace()V

    goto :goto_0
.end method

.method public static clean(Landroid/content/Context;)V
    .locals 3

    const-string/jumbo v1, "Weibo"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method static isAccessTokenValid(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p0}, Lcom/miui/share/weibo/WeiboAuth;->readAccessToken(Landroid/content/Context;)Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;->isSessionValid()Z

    move-result v0

    return v0
.end method

.method private static parseAccessToken(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 10

    invoke-static {p1}, Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;->parseAccessToken(Landroid/os/Bundle;)Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;->isSessionValid()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;->getToken()Ljava/lang/String;

    move-result-object v0

    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string/jumbo v6, "yyyy/MM/dd HH:mm:ss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v6, Ljava/util/Date;

    invoke-virtual {v4}, Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;->getExpiresTime()J

    move-result-wide v8

    invoke-direct {v6, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v5, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v5, "MiuiShare"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "parseAccessToken - AccessToken - token = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", uid = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;->getUid()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", expire date = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;->getUid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;->getExpiresTime()J

    move-result-wide v6

    invoke-static {p0, v0, v5, v6, v7}, Lcom/miui/share/weibo/WeiboAuth;->saveAccessToken(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v5, "code"

    const-string/jumbo v6, ""

    invoke-virtual {p1, v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Session invalid. code: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string/jumbo v5, "MiuiShare"

    invoke-static {v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v5, 0x1

    invoke-static {p0, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private static readAccessToken(Landroid/content/Context;)Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;
    .locals 6

    new-instance v0, Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;

    invoke-direct {v0}, Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;-><init>()V

    const-string/jumbo v2, "Weibo"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string/jumbo v2, "weibo_uid"

    const-string/jumbo v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;->setUid(Ljava/lang/String;)V

    const-string/jumbo v2, "weibo_token"

    const-string/jumbo v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;->setToken(Ljava/lang/String;)V

    const-string/jumbo v2, "weibo_expires_in"

    const-wide/16 v4, 0x0

    invoke-interface {v1, v2, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;->setExpiresTime(J)V

    return-object v0
.end method

.method private static saveAccessToken(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 3

    const-string/jumbo v1, "Weibo"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v2, "weibo_uid"

    invoke-interface {v1, v2, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v2, "weibo_token"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v2, "weibo_expires_in"

    invoke-interface {v1, v2, p3, p4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method


# virtual methods
.method handleSsoAuthResult(IILandroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/share/weibo/WeiboAuth;->mSsoHandler:Lcom/sina/weibo/sdk/auth/sso/SsoHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/share/weibo/WeiboAuth;->mSsoHandler:Lcom/sina/weibo/sdk/auth/sso/SsoHandler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->authorizeCallBack(IILandroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method ssoAuth(Landroid/os/Bundle;Lcom/miui/share/weibo/WeiboAuth$WeiboAuthCallback;)V
    .locals 6

    const-string/jumbo v4, "MiuiShare"

    const-string/jumbo v5, "sso auth"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p2, p0, Lcom/miui/share/weibo/WeiboAuth;->mCallback:Lcom/miui/share/weibo/WeiboAuth$WeiboAuthCallback;

    const-string/jumbo v4, "weibo_app_key"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, "weibo_redirect_url"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "weibo_scope"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    const-string/jumbo v4, "MiuiShare"

    const-string/jumbo v5, "Invalid weibo auth params"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    new-instance v1, Lcom/sina/weibo/sdk/auth/AuthInfo;

    iget-object v4, p0, Lcom/miui/share/weibo/WeiboAuth;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v4, v0, v2, v3}, Lcom/sina/weibo/sdk/auth/AuthInfo;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/miui/share/weibo/WeiboAuth;->mActivity:Landroid/app/Activity;

    invoke-direct {p0, v4, v1}, Lcom/miui/share/weibo/WeiboAuth;->buildSsoHandler(Landroid/app/Activity;Lcom/sina/weibo/sdk/auth/AuthInfo;)V

    goto :goto_0
.end method
