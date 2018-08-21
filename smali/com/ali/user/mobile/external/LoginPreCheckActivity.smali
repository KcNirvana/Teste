.class public Lcom/ali/user/mobile/external/LoginPreCheckActivity;
.super Lcom/ali/user/mobile/external/BaseExternalActivity;
.source "LoginPreCheckActivity.java"


# static fields
.field private static final DO_ALIPAY_AUTH_LOGIN:I = 0x7d3

.field private static final DO_OPEN_AUTH_TOKEN_LOGIN:I = 0x7d1

.field private static final DO_SND_LOGIN:I = 0x7d4

.field private static final DO_SSO_TOKEN_LOGIN:I = 0x7d2

.field private static final LOGIN_BY_SSO_TOKEN:Ljava/lang/String; = "BY_SSO_TOKEN"

.field private static final PRE_CHECK_RESULT:I = 0xb

.field private static final TAG:Ljava/lang/String;

.field private static final TRUST_LOGIN_BY_OPENAUTHTOKEN:Ljava/lang/String; = "BY_OPEN_AUTH_TOKEN"

.field private static final WAIT_TIME:J = 0x7d0L


# instance fields
.field handler:Landroid/os/Handler;

.field private mCurrentLoginValidateType:Ljava/lang/String;

.field private mOpenAuthToken:Ljava/lang/String;

.field private mOpenAuthUserId:Ljava/lang/String;

.field private mOpenMCMobileNumber:Ljava/lang/String;

.field private mOpenMcAccount:Ljava/lang/String;

.field private mOpenMobileNumber:Ljava/lang/String;

.field private mSsoService:Lcom/ali/user/mobile/login/sso/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/ali/user/mobile/external/LoginPreCheckActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ali/user/mobile/external/LoginPreCheckActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/ali/user/mobile/external/BaseExternalActivity;-><init>()V

    iput-object v0, p0, Lcom/ali/user/mobile/external/LoginPreCheckActivity;->mOpenAuthToken:Ljava/lang/String;

    iput-object v0, p0, Lcom/ali/user/mobile/external/LoginPreCheckActivity;->mOpenAuthUserId:Ljava/lang/String;

    new-instance v0, Lcom/ali/user/mobile/external/LoginPreCheckActivity$4;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/ali/user/mobile/external/LoginPreCheckActivity$4;-><init>(Lcom/ali/user/mobile/external/LoginPreCheckActivity;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/ali/user/mobile/external/LoginPreCheckActivity;->handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/ali/user/mobile/external/LoginPreCheckActivity;)Z
    .locals 1

    invoke-direct {p0}, Lcom/ali/user/mobile/external/LoginPreCheckActivity;->canOpenAuthLogin()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/ali/user/mobile/external/LoginPreCheckActivity;)Z
    .locals 1

    invoke-direct {p0}, Lcom/ali/user/mobile/external/LoginPreCheckActivity;->isAlipayInstall()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/ali/user/mobile/external/LoginPreCheckActivity;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ali/user/mobile/external/LoginPreCheckActivity;->processSuggestReponse(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/ali/user/mobile/external/LoginPreCheckActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/ali/user/mobile/external/LoginPreCheckActivity;->delayFinishCurrentPage()V

    return-void
.end method

.method static synthetic access$200(Lcom/ali/user/mobile/external/LoginPreCheckActivity;)Lcom/ali/user/mobile/login/sso/SsoLoginInfo;
    .locals 1

    invoke-direct {p0}, Lcom/ali/user/mobile/external/LoginPreCheckActivity;->getSSOLoginInfo()Lcom/ali/user/mobile/login/sso/SsoLoginInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/ali/user/mobile/external/LoginPreCheckActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/ali/user/mobile/external/LoginPreCheckActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/ali/user/mobile/external/LoginPreCheckActivity;->startRemoteCheck()V

    return-void
.end method

.method static synthetic access$500(Lcom/ali/user/mobile/external/LoginPreCheckActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/ali/user/mobile/external/LoginPreCheckActivity;->startCheckUserInfo()V

    return-void
.end method

.method static synthetic access$600(Lcom/ali/user/mobile/external/LoginPreCheckActivity;)Lcom/ali/user/mobile/external/model/SuggestLoginUserReqPb;
    .locals 1

    invoke-direct {p0}, Lcom/ali/user/mobile/external/LoginPreCheckActivity;->buildSuggestReq()Lcom/ali/user/mobile/external/model/SuggestLoginUserReqPb;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/ali/user/mobile/external/LoginPreCheckActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/ali/user/mobile/external/LoginPreCheckActivity;->doOpenAuthLogin()V

    return-void
.end method

.method static synthetic access$800(Lcom/ali/user/mobile/external/LoginPreCheckActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/ali/user/mobile/external/LoginPreCheckActivity;->doAlipayAuthLogin()V

    return-void
.end method

.method static synthetic access$900(Lcom/ali/user/mobile/external/LoginPreCheckActivity;Lcom/ali/user/mobile/login/sso/SsoLoginInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ali/user/mobile/external/LoginPreCheckActivity;->doSsoTokenLogin(Lcom/ali/user/mobile/login/sso/SsoLoginInfo;)V

    return-void
.end method

.method private buildSuggestReq()Lcom/ali/user/mobile/external/model/SuggestLoginUserReqPb;
    .locals 3

    new-instance v0, Lcom/ali/user/mobile/external/model/SuggestLoginUserReqPb;

    invoke-direct {v0}, Lcom/ali/user/mobile/external/model/SuggestLoginUserReqPb;-><init>()V

    invoke-static {}, Lcom/ali/user/mobile/info/AppInfo;->getInstance()Lcom/ali/user/mobile/info/AppInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ali/user/mobile/info/AppInfo;->getProductId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ali/user/mobile/external/model/SuggestLoginUserReqPb;->productId:Ljava/lang/String;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/ali/user/mobile/external/LoginPreCheckActivity;->mOpenMobileNumber:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/ali/user/mobile/external/LoginPreCheckActivity;->mOpenMCMobileNumber:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/ali/user/mobile/external/LoginPreCheckActivity;->mOpenMcAccount:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput-object v1, v0, Lcom/ali/user/mobile/external/model/SuggestLoginUserReqPb;->loginIds:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/ali/user/mobile/external/LoginPreCheckActivity;->getSecurityParams(Lcom/ali/user/mobile/external/model/SuggestLoginUserReqPb;)V

    return-object v0
.end method

.method private canOpenAuthLogin()Z
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/external/LoginPreCheckActivity;->mOpenAuthToken:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ali/user/mobile/external/LoginPreCheckActivity;->mOpenAuthUserId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private delayFinishCurrentPage()V
    .locals 4

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/ali/user/mobile/external/LoginPreCheckActivity$6;

    invoke-direct {v1, p0}, Lcom/ali/user/mobile/external/LoginPreCheckActivity$6;-><init>(Lcom/ali/user/mobile/external/LoginPreCheckActivity;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private doAlipayAuthLogin()V
    .locals 3

    sget-object v0, Lcom/ali/user/mobile/external/LoginPreCheckActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "doAlipayAuthLogin"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-static {}, Lcom/alipay/android/phone/inside/framework/LauncherApplication;->getInstance()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/ali/user/mobile/authlogin/a;->a(Landroid/content/Context;)Lcom/ali/user/mobile/authlogin/a/a;

    move-result-object v0

    new-instance v1, Lcom/ali/user/mobile/external/LoginPreCheckActivity$7;

    invoke-direct {v1, p0}, Lcom/ali/user/mobile/external/LoginPreCheckActivity$7;-><init>(Lcom/ali/user/mobile/external/LoginPreCheckActivity;)V

    invoke-interface {v0, p0, v1}, Lcom/ali/user/mobile/authlogin/a/a;->a(Landroid/app/Activity;Lcom/ali/user/mobile/authlogin/a/c;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/ali/user/mobile/external/LoginPreCheckActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "goAlipayAuthLogin failed"

    invoke-static {v1, v2, v0}, Lcom/ali/user/mobile/e/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0}, Lcom/ali/user/mobile/external/LoginPreCheckActivity;->startRemoteCheck()V

    goto :goto_0
.end method

.method private doOpenAuthLogin()V
    .locals 4

    sget-object v0, Lcom/ali/user/mobile/external/LoginPreCheckActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "doOpenAuthLogin"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "BY_OPEN_AUTH_TOKEN"

    iput-object v0, p0, Lcom/ali/user/mobile/external/LoginPreCheckActivity;->mCurrentLoginValidateType:Ljava/lang/String;

    const-string/jumbo v0, "clicked"

    const-string/jumbo v1, "prerouterpage_trustlogin_by_openauthtoken"

    const-string/jumbo v2, "UC-PREROUTER-LOG-170401-2"

    const-string/jumbo v3, "BY_OPEN_AUTH_TOKEN"

    invoke-static {v0, v1, v2, v3}, Lcom/ali/user/mobile/e/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, ""

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/external/LoginPreCheckActivity;->showProgress(Ljava/lang/String;)V

    new-instance v0, Lcom/ali/user/mobile/login/LoginParam;

    invoke-direct {v0}, Lcom/ali/user/mobile/login/LoginParam;-><init>()V

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/external/LoginPreCheckActivity;->getLoginParams(Lcom/ali/user/mobile/login/LoginParam;)V

    iget-object v1, p0, Lcom/ali/user/mobile/external/LoginPreCheckActivity;->mOpenAuthToken:Ljava/lang/String;

    iput-object v1, v0, Lcom/ali/user/mobile/login/LoginParam;->token:Ljava/lang/String;

    const-string/jumbo v1, "withopenauthtoken"

    iput-object v1, v0, Lcom/ali/user/mobile/login/LoginParam;->validateTpye:Ljava/lang/String;

    const-string/jumbo v1, "openAuthUserId"

    iget-object v2, p0, Lcom/ali/user/mobile/external/LoginPreCheckActivity;->mOpenAuthUserId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/ali/user/mobile/login/LoginParam;->addExternalParam(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "openMobileNumber"

    iget-object v2, p0, Lcom/ali/user/mobile/external/LoginPreCheckActivity;->mOpenMobileNumber:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/ali/user/mobile/login/LoginParam;->addExternalParam(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "openMcMobileNumber"

    iget-object v2, p0, Lcom/ali/user/mobile/external/LoginPreCheckActivity;->mOpenMCMobileNumber:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/ali/user/mobile/login/LoginParam;->addExternalParam(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "openMcAccount"

    iget-object v2, p0, Lcom/ali/user/mobile/external/LoginPreCheckActivity;->mOpenMcAccount:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/ali/user/mobile/login/LoginParam;->addExternalParam(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/external/LoginPreCheckActivity;->doUnifyLogin(Lcom/ali/user/mobile/login/LoginParam;)V

    return-void
.end method

.method private doSsoTokenLogin(Lcom/ali/user/mobile/login/sso/SsoLoginInfo;)V
    .locals 4

    const-string/jumbo v0, "BY_SSO_TOKEN"

    iput-object v0, p0, Lcom/ali/user/mobile/external/LoginPreCheckActivity;->mCurrentLoginValidateType:Ljava/lang/String;

    sget-object v0, Lcom/ali/user/mobile/external/LoginPreCheckActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "doSsoTokenLogin"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "clicked"

    const-string/jumbo v1, "prerouterpage_ssologin"

    const-string/jumbo v2, "UC-PREROUTER-LOG-170401-5"

    const-string/jumbo v3, "BY_SSO_TOKEN"

    invoke-static {v0, v1, v2, v3}, Lcom/ali/user/mobile/e/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, ""

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/external/LoginPreCheckActivity;->showProgress(Ljava/lang/String;)V

    new-instance v0, Lcom/ali/user/mobile/login/LoginParam;

    invoke-direct {v0}, Lcom/ali/user/mobile/login/LoginParam;-><init>()V

    iget-object v1, p1, Lcom/ali/user/mobile/login/sso/SsoLoginInfo;->nick:Ljava/lang/String;

    iput-object v1, v0, Lcom/ali/user/mobile/login/LoginParam;->loginAccount:Ljava/lang/String;

    iget-object v1, p1, Lcom/ali/user/mobile/login/sso/SsoLoginInfo;->loginToken:Ljava/lang/String;

    iput-object v1, v0, Lcom/ali/user/mobile/login/LoginParam;->token:Ljava/lang/String;

    const-string/jumbo v1, "withlogintoken"

    iput-object v1, v0, Lcom/ali/user/mobile/login/LoginParam;->validateTpye:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/external/LoginPreCheckActivity;->doUnifyLogin(Lcom/ali/user/mobile/login/LoginParam;)V

    return-void
.end method

.method private getMspTid()Ljava/lang/String;
    .locals 3

    :try_start_0
    const-string/jumbo v0, "com.alipay.android.phone.inside.PHONE_CASHIER_GET_TID"

    invoke-static {v0}, Lcom/alipay/android/phone/inside/framework/a/c;->b(Ljava/lang/String;)Lcom/alipay/android/phone/inside/framework/service/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/alipay/android/phone/inside/framework/service/a;->startForResult(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    const-string/jumbo v1, ""

    if-nez v0, :cond_0

    sget-object v0, Lcom/ali/user/mobile/external/LoginPreCheckActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "\u8c03\u7528\u79fb\u52a8\u5feb\u6377\u83b7\u53d6tid=null"

    invoke-static {v0, v2}, Lcom/ali/user/mobile/e/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v1, "Tid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method private getResultEvenTimeout(Ljava/util/concurrent/FutureTask;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/FutureTask",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/ali/user/mobile/external/LoginPreCheckActivity$5;

    invoke-direct {v1, p0, p1}, Lcom/ali/user/mobile/external/LoginPreCheckActivity$5;-><init>(Lcom/ali/user/mobile/external/LoginPreCheckActivity;Ljava/util/concurrent/FutureTask;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private getSSOLoginInfo()Lcom/ali/user/mobile/login/sso/SsoLoginInfo;
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/ali/user/mobile/external/LoginPreCheckActivity;->mSsoService:Lcom/ali/user/mobile/login/sso/a;

    invoke-virtual {v0}, Lcom/ali/user/mobile/login/sso/a;->a()Lcom/ali/user/mobile/login/sso/SsoLoginInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/ali/user/mobile/login/sso/SsoLoginInfo;->loginToken:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, v0, Lcom/ali/user/mobile/login/sso/SsoLoginInfo;->nick:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    move-object v0, v1

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    iget-object v2, p0, Lcom/ali/user/mobile/external/LoginPreCheckActivity;->mSsoService:Lcom/ali/user/mobile/login/sso/a;

    invoke-virtual {v2, v0}, Lcom/ali/user/mobile/login/sso/a;->a(Lcom/ali/user/mobile/login/sso/SsoLoginInfo;)Lcom/ali/user/mobile/login/sso/SsoLoginInfo;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-boolean v2, v0, Lcom/ali/user/mobile/login/sso/SsoLoginInfo;->isDirectLogin:Z

    if-eqz v2, :cond_3

    iget-object v2, v0, Lcom/ali/user/mobile/login/sso/SsoLoginInfo;->loginToken:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, v0, Lcom/ali/user/mobile/login/sso/SsoLoginInfo;->nick:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method

.method private getSecurityParams(Lcom/ali/user/mobile/external/model/SuggestLoginUserReqPb;)V
    .locals 1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/b/a;->a()Lcom/alipay/mobile/common/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/b/a;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/ali/user/mobile/external/model/SuggestLoginUserReqPb;->productId:Ljava/lang/String;

    invoke-static {}, Lcom/alipay/mobile/common/b/a;->a()Lcom/alipay/mobile/common/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/b/a;->g()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/ali/user/mobile/external/model/SuggestLoginUserReqPb;->productVersion:Ljava/lang/String;

    invoke-static {}, Lcom/alipay/mobile/common/b/b;->a()Lcom/alipay/mobile/common/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/b/b;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/ali/user/mobile/external/model/SuggestLoginUserReqPb;->utdid:Ljava/lang/String;

    invoke-static {}, Lcom/ali/user/mobile/info/AppInfo;->getInstance()Lcom/ali/user/mobile/info/AppInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ali/user/mobile/info/AppInfo;->getApdid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/ali/user/mobile/external/model/SuggestLoginUserReqPb;->apdid:Ljava/lang/String;

    invoke-direct {p0}, Lcom/ali/user/mobile/external/LoginPreCheckActivity;->getMspTid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/ali/user/mobile/external/model/SuggestLoginUserReqPb;->tid:Ljava/lang/String;

    invoke-static {}, Lcom/ali/user/mobile/info/AppInfo;->getInstance()Lcom/ali/user/mobile/info/AppInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ali/user/mobile/info/AppInfo;->getUmid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/ali/user/mobile/external/model/SuggestLoginUserReqPb;->umidToken:Ljava/lang/String;

    goto :goto_0
.end method

.method private isAlipayInstall()Z
    .locals 1

    invoke-static {}, Lcom/alipay/android/phone/inside/framework/LauncherApplication;->getInstance()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ali/user/mobile/i/b;->a(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private loginFlowJudge()V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/ali/user/mobile/external/LoginPreCheckActivity$1;

    invoke-direct {v1, p0}, Lcom/ali/user/mobile/external/LoginPreCheckActivity$1;-><init>(Lcom/ali/user/mobile/external/LoginPreCheckActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private onSuggestFail()V
    .locals 3

    invoke-virtual {p0}, Lcom/ali/user/mobile/external/LoginPreCheckActivity;->dismissProgress()V

    invoke-static {}, Lcom/ali/user/mobile/login/app/LoginAppService;->getInstance()Lcom/ali/user/mobile/login/app/LoginAppService;

    move-result-object v0

    invoke-static {}, Lcom/alipay/android/phone/inside/framework/LauncherApplication;->getInstance()Landroid/app/Application;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/ali/user/mobile/login/app/LoginAppService;->startLoginPage(Landroid/content/Context;Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/ali/user/mobile/external/LoginPreCheckActivity;->delayFinishCurrentPage()V

    return-void
.end method

.method private onSuggestSuccess(Lcom/ali/user/mobile/external/model/SuggestLoginUserResPb;)V
    .locals 4

    iget-object v0, p1, Lcom/ali/user/mobile/external/model/SuggestLoginUserResPb;->loginId:Ljava/lang/String;

    sget-object v1, Lcom/ali/user/mobile/external/LoginPreCheckActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "suggestLoginId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "loginId"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/ali/user/mobile/login/app/LoginAppService;->getInstance()Lcom/ali/user/mobile/login/app/LoginAppService;

    move-result-object v0

    invoke-static {}, Lcom/alipay/android/phone/inside/framework/LauncherApplication;->getInstance()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/ali/user/mobile/login/app/LoginAppService;->startLoginPage(Landroid/content/Context;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/ali/user/mobile/external/LoginPreCheckActivity;->dismissProgress()V

    invoke-direct {p0}, Lcom/ali/user/mobile/external/LoginPreCheckActivity;->delayFinishCurrentPage()V

    return-void
.end method

.method private processLoginFailed(Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginRes;)V
    .locals 3

    const-string/jumbo v0, ""

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginRes;->extMap:Ljava/util/Map;

    if-nez v0, :cond_1

    const-string/jumbo v0, ""

    :cond_0
    :goto_0
    invoke-direct {p0, p1}, Lcom/ali/user/mobile/external/LoginPreCheckActivity;->setSuggestSwitchState(Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginRes;)V

    invoke-virtual {p0}, Lcom/ali/user/mobile/external/LoginPreCheckActivity;->dismissProgress()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "loginId"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/ali/user/mobile/login/app/LoginAppService;->getInstance()Lcom/ali/user/mobile/login/app/LoginAppService;

    move-result-object v0

    invoke-static {}, Lcom/alipay/android/phone/inside/framework/LauncherApplication;->getInstance()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/ali/user/mobile/login/app/LoginAppService;->startLoginPage(Landroid/content/Context;Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/ali/user/mobile/external/LoginPreCheckActivity;->delayFinishCurrentPage()V

    return-void

    :cond_1
    const-string/jumbo v0, "suggestLoginId"

    invoke-virtual {p0, p1, v0}, Lcom/ali/user/mobile/external/LoginPreCheckActivity;->getStringFromExtResAttrs(Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginRes;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private processSuggestReponse(Ljava/lang/Object;)V
    .locals 3

    :try_start_0
    sget-object v0, Lcom/ali/user/mobile/external/LoginPreCheckActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "begin process pre check result"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    sget-object v0, Lcom/ali/user/mobile/external/LoginPreCheckActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "pre check result is null"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/ali/user/mobile/external/LoginPreCheckActivity;->onSuggestFail()V

    :goto_0
    return-void

    :cond_0
    check-cast p1, Lcom/ali/user/mobile/external/model/SuggestLoginUserResPb;

    invoke-direct {p0, p1}, Lcom/ali/user/mobile/external/LoginPreCheckActivity;->setSuggestSwitchState(Lcom/ali/user/mobile/external/model/SuggestLoginUserResPb;)V

    iget-object v0, p1, Lcom/ali/user/mobile/external/model/SuggestLoginUserResPb;->success:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/ali/user/mobile/external/LoginPreCheckActivity;->onSuggestFail()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/ali/user/mobile/external/LoginPreCheckActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "processSuggestReponse error"

    invoke-static {v1, v2, v0}, Lcom/ali/user/mobile/e/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0}, Lcom/ali/user/mobile/external/LoginPreCheckActivity;->onSuggestFail()V

    goto :goto_0

    :cond_1
    :try_start_1
    invoke-direct {p0, p1}, Lcom/ali/user/mobile/external/LoginPreCheckActivity;->onSuggestSuccess(Lcom/ali/user/mobile/external/model/SuggestLoginUserResPb;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private setSuggestSwitchState(Lcom/ali/user/mobile/external/model/SuggestLoginUserResPb;)V
    .locals 6

    :try_start_0
    invoke-static {}, Lcom/alipay/android/phone/inside/framework/LauncherApplication;->getInstance()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ali/user/mobile/accountbiz/extservice/manager/AntExtServiceManager;->getConfigService(Landroid/content/Context;)Lcom/ali/user/mobile/accountbiz/extservice/ServerConfigService;

    move-result-object v2

    iget-object v3, p1, Lcom/ali/user/mobile/external/model/SuggestLoginUserResPb;->clientConfigMap:Ljava/util/List;

    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/ali/user/mobile/external/LoginPreCheckActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setSuggestSwitchState:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    if-ge v1, v4, :cond_0

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/user/mobile/external/model/ExternMap;

    iget-object v5, v0, Lcom/ali/user/mobile/external/model/ExternMap;->key:Ljava/lang/String;

    iget-object v0, v0, Lcom/ali/user/mobile/external/model/ExternMap;->value:Ljava/lang/String;

    invoke-interface {v2, v5, v0}, Lcom/ali/user/mobile/accountbiz/extservice/ServerConfigService;->putConfig(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :catch_0
    move-exception v0

    sget-object v1, Lcom/ali/user/mobile/external/LoginPreCheckActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "process drm error"

    invoke-static {v1, v2, v0}, Lcom/ali/user/mobile/e/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private setSuggestSwitchState(Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginRes;)V
    .locals 3

    if-nez p1, :cond_0

    :try_start_0
    sget-object v0, Lcom/ali/user/mobile/external/LoginPreCheckActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "\u4fe1\u767b\u8fd4\u56de\u4fe1\u606f\u4e3a\u7a7a"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/alipay/android/phone/inside/framework/LauncherApplication;->getInstance()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ali/user/mobile/accountbiz/extservice/manager/AntExtServiceManager;->getConfigService(Landroid/content/Context;)Lcom/ali/user/mobile/accountbiz/extservice/ServerConfigService;

    move-result-object v0

    const-string/jumbo v1, "read_sms_duration"

    const-string/jumbo v2, "read_sms_duration"

    invoke-virtual {p0, p1, v2}, Lcom/ali/user/mobile/external/LoginPreCheckActivity;->getStringFromExtResAttrs(Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginRes;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/ali/user/mobile/accountbiz/extservice/ServerConfigService;->putConfig(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "sms_login_enable"

    const-string/jumbo v2, "sms_login_enable"

    invoke-virtual {p0, p1, v2}, Lcom/ali/user/mobile/external/LoginPreCheckActivity;->getStringFromExtResAttrs(Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginRes;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/ali/user/mobile/accountbiz/extservice/ServerConfigService;->putConfig(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/ali/user/mobile/external/LoginPreCheckActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "process drm error"

    invoke-static {v1, v2, v0}, Lcom/ali/user/mobile/e/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private startCheckUserInfo()V
    .locals 3

    :try_start_0
    new-instance v0, Ljava/util/concurrent/FutureTask;

    new-instance v1, Lcom/ali/user/mobile/external/LoginPreCheckActivity$3;

    invoke-direct {v1, p0}, Lcom/ali/user/mobile/external/LoginPreCheckActivity$3;-><init>(Lcom/ali/user/mobile/external/LoginPreCheckActivity;)V

    invoke-direct {v0, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    invoke-direct {p0, v0}, Lcom/ali/user/mobile/external/LoginPreCheckActivity;->getResultEvenTimeout(Ljava/util/concurrent/FutureTask;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/ali/user/mobile/external/LoginPreCheckActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "login pre check error"

    invoke-static {v1, v2, v0}, Lcom/ali/user/mobile/e/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0}, Lcom/ali/user/mobile/external/LoginPreCheckActivity;->onSuggestFail()V

    goto :goto_0
.end method

.method private startRemoteCheck()V
    .locals 2

    sget-object v0, Lcom/ali/user/mobile/external/LoginPreCheckActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "startRemoteCheck"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/ali/user/mobile/external/LoginPreCheckActivity$2;

    invoke-direct {v0, p0}, Lcom/ali/user/mobile/external/LoginPreCheckActivity$2;-><init>(Lcom/ali/user/mobile/external/LoginPreCheckActivity;)V

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/external/LoginPreCheckActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public getLoginParams(Lcom/ali/user/mobile/login/LoginParam;)V
    .locals 1

    iget-object v0, p1, Lcom/ali/user/mobile/login/LoginParam;->loginAccount:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/ali/user/mobile/external/LoginPreCheckActivity;->getLoginAccount()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/ali/user/mobile/login/LoginParam;->loginAccount:Ljava/lang/String;

    :cond_0
    iget-object v0, p1, Lcom/ali/user/mobile/login/LoginParam;->loginPassword:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/ali/user/mobile/external/LoginPreCheckActivity;->getLoginPassword()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/ali/user/mobile/login/LoginParam;->loginPassword:Ljava/lang/String;

    :cond_1
    iget-object v0, p1, Lcom/ali/user/mobile/login/LoginParam;->validateTpye:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "withsndpwd"

    iput-object v0, p1, Lcom/ali/user/mobile/login/LoginParam;->validateTpye:Ljava/lang/String;

    :cond_2
    iget-object v0, p1, Lcom/ali/user/mobile/login/LoginParam;->loginType:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/ali/user/mobile/external/LoginPreCheckActivity;->getLoginType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/ali/user/mobile/login/LoginParam;->loginType:Ljava/lang/String;

    :cond_3
    iput-object p1, p0, Lcom/ali/user/mobile/external/LoginPreCheckActivity;->mLoginParam:Lcom/ali/user/mobile/login/LoginParam;

    return-void
.end method

.method protected handleRpcException(Lcom/alipay/android/phone/mrpc/core/RpcException;)V
    .locals 4

    const-string/jumbo v0, "clicked"

    const-string/jumbo v1, "login_action_callback"

    const-string/jumbo v2, "UC-ACTION-CALLBACK-170401-5"

    const-string/jumbo v3, "rpc_error"

    invoke-static {v0, v1, v2, v3}, Lcom/ali/user/mobile/e/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ali/user/mobile/external/LoginPreCheckActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/ali/user/mobile/security/ui/R$string;->alipay_security_connect_network_fail:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/ali/user/mobile/external/LoginPreCheckActivity;->toast(Ljava/lang/String;I)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "loginStatus"

    const-string/jumbo v2, "cancel"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/ali/user/mobile/a/a;->i()Lcom/alipay/android/phone/inside/framework/service/b;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1, v0}, Lcom/alipay/android/phone/inside/framework/service/b;->a(Ljava/lang/Object;)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/ali/user/mobile/a/a;->a(Lcom/alipay/android/phone/inside/framework/service/b;)V

    :cond_0
    invoke-direct {p0}, Lcom/ali/user/mobile/external/LoginPreCheckActivity;->delayFinishCurrentPage()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/ali/user/mobile/external/BaseExternalActivity;->onCreate(Landroid/os/Bundle;)V

    const-string/jumbo v0, ""

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/external/LoginPreCheckActivity;->showProgress(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ali/user/mobile/external/LoginPreCheckActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "openMobileNumber"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ali/user/mobile/external/LoginPreCheckActivity;->mOpenMobileNumber:Ljava/lang/String;

    const-string/jumbo v1, "openMcMobileNumber"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ali/user/mobile/external/LoginPreCheckActivity;->mOpenMCMobileNumber:Ljava/lang/String;

    const-string/jumbo v1, "openMcAccount"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ali/user/mobile/external/LoginPreCheckActivity;->mOpenMcAccount:Ljava/lang/String;

    const-string/jumbo v1, "openAuthToken"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ali/user/mobile/external/LoginPreCheckActivity;->mOpenAuthToken:Ljava/lang/String;

    const-string/jumbo v1, "openAuthUserId"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/external/LoginPreCheckActivity;->mOpenAuthUserId:Ljava/lang/String;

    :cond_0
    sget-object v0, Lcom/ali/user/mobile/external/LoginPreCheckActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "init login pre check"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ali/user/mobile/external/LoginPreCheckActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ali/user/mobile/login/sso/a;->a(Landroid/content/Context;)Lcom/ali/user/mobile/login/sso/a;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/external/LoginPreCheckActivity;->mSsoService:Lcom/ali/user/mobile/login/sso/a;

    invoke-static {}, Lcom/alipay/android/phone/inside/framework/LauncherApplication;->getInstance()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/ali/user/mobile/biz/a;->a(Landroid/content/Context;)Lcom/ali/user/mobile/biz/a;

    const-string/jumbo v0, ""

    const-string/jumbo v1, "LoginPreCheckActivity"

    const-string/jumbo v2, "login"

    const-string/jumbo v3, ""

    invoke-static {v0, v1, v2, v3}, Lcom/ali/user/mobile/e/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, ""

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/external/LoginPreCheckActivity;->initRdsPage(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/ali/user/mobile/external/LoginPreCheckActivity;->loginFlowJudge()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/ali/user/mobile/external/BaseExternalActivity;->onDestroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ali/user/mobile/external/LoginPreCheckActivity;->mCurrentLoginValidateType:Ljava/lang/String;

    return-void
.end method

.method protected onLoginResponseError(Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginRes;)V
    .locals 2

    const-string/jumbo v0, "BY_OPEN_AUTH_TOKEN"

    iget-object v1, p0, Lcom/ali/user/mobile/external/LoginPreCheckActivity;->mCurrentLoginValidateType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/ali/user/mobile/external/LoginPreCheckActivity;->isAlipayInstall()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/ali/user/mobile/external/LoginPreCheckActivity$8;

    invoke-direct {v1, p0}, Lcom/ali/user/mobile/external/LoginPreCheckActivity$8;-><init>(Lcom/ali/user/mobile/external/LoginPreCheckActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/ali/user/mobile/external/LoginPreCheckActivity;->processLoginFailed(Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginRes;)V

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "BY_SSO_TOKEN"

    iget-object v1, p0, Lcom/ali/user/mobile/external/LoginPreCheckActivity;->mCurrentLoginValidateType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ali/user/mobile/external/LoginPreCheckActivity;->handler:Landroid/os/Handler;

    const/16 v1, 0x7d3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1}, Lcom/ali/user/mobile/external/LoginPreCheckActivity;->processLoginFailed(Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginRes;)V

    goto :goto_0
.end method

.method protected onLoginResponseSuccess(Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginRes;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/ali/user/mobile/external/BaseExternalActivity;->onLoginResponseSuccess(Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginRes;)V

    invoke-direct {p0, p1}, Lcom/ali/user/mobile/external/LoginPreCheckActivity;->setSuggestSwitchState(Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginRes;)V

    invoke-virtual {p0}, Lcom/ali/user/mobile/external/LoginPreCheckActivity;->dismissProgress()V

    invoke-direct {p0}, Lcom/ali/user/mobile/external/LoginPreCheckActivity;->delayFinishCurrentPage()V

    return-void
.end method

.method protected onStart()V
    .locals 0

    invoke-super {p0}, Lcom/ali/user/mobile/external/BaseExternalActivity;->onStart()V

    return-void
.end method

.method protected onStop()V
    .locals 0

    invoke-super {p0}, Lcom/ali/user/mobile/external/BaseExternalActivity;->onStop()V

    return-void
.end method
