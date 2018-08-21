.class public Lcom/ali/user/mobile/login/app/LoginAppService;
.super Ljava/lang/Object;
.source "LoginAppService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LoginApp"

.field private static mLoginAppService:Lcom/ali/user/mobile/login/app/LoginAppService;


# instance fields
.field private aliUserSdkLoginBiz:Lcom/ali/user/mobile/biz/a;

.field private mContext:Landroid/content/Context;

.field private mParams:Landroid/os/Bundle;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ali/user/mobile/login/app/LoginAppService;->mParams:Landroid/os/Bundle;

    return-void
.end method

.method static synthetic access$000(Lcom/ali/user/mobile/login/app/LoginAppService;)Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/login/app/LoginAppService;->mParams:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic access$100(Lcom/ali/user/mobile/login/app/LoginAppService;)Lcom/ali/user/mobile/biz/a;
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/login/app/LoginAppService;->aliUserSdkLoginBiz:Lcom/ali/user/mobile/biz/a;

    return-object v0
.end method

.method static synthetic access$102(Lcom/ali/user/mobile/login/app/LoginAppService;Lcom/ali/user/mobile/biz/a;)Lcom/ali/user/mobile/biz/a;
    .locals 0

    iput-object p1, p0, Lcom/ali/user/mobile/login/app/LoginAppService;->aliUserSdkLoginBiz:Lcom/ali/user/mobile/biz/a;

    return-object p1
.end method

.method static synthetic access$200(Lcom/ali/user/mobile/login/app/LoginAppService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ali/user/mobile/login/app/LoginAppService;->sendBroadcast(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/ali/user/mobile/login/app/LoginAppService;)V
    .locals 0

    invoke-direct {p0}, Lcom/ali/user/mobile/login/app/LoginAppService;->checkLogoutForStart()V

    return-void
.end method

.method private checkLogoutForStart()V
    .locals 3

    iget-object v0, p0, Lcom/ali/user/mobile/login/app/LoginAppService;->mParams:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "Y"

    iget-object v1, p0, Lcom/ali/user/mobile/login/app/LoginAppService;->mParams:Landroid/os/Bundle;

    const-string/jumbo v2, "isNeedSendLogout"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "LoginApp"

    const-string/jumbo v1, "\u542f\u52a8\u8d26\u5bc6\u524d\u53d1\u73b0isNeedSendLogout\u6807\u8bb0\uff0c\u6e05isLogin\u6807\u8bb0\uff0c\u53d1\u9001logtou\u5e7f\u64ad"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ali/user/mobile/login/app/LoginAppService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/ali/user/mobile/accountbiz/extservice/manager/AntExtServiceManager;->getAccountService(Landroid/content/Context;)Lcom/ali/user/mobile/accountbiz/extservice/AccountService;

    move-result-object v0

    const-string/jumbo v1, "false"

    invoke-interface {v0, v1}, Lcom/ali/user/mobile/accountbiz/extservice/AccountService;->setCurrentLoginState(Ljava/lang/String;)V

    new-instance v0, Lcom/ali/user/mobile/accountbiz/a/a/a;

    invoke-direct {v0}, Lcom/ali/user/mobile/accountbiz/a/a/a;-><init>()V

    invoke-virtual {v0}, Lcom/ali/user/mobile/accountbiz/a/a/a;->a()V

    :cond_0
    return-void
.end method

.method private getCurrentLoginId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/login/app/LoginAppService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/ali/user/mobile/accountbiz/extservice/manager/AntExtServiceManager;->getAccountService(Landroid/content/Context;)Lcom/ali/user/mobile/accountbiz/extservice/AccountService;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {v0}, Lcom/ali/user/mobile/accountbiz/extservice/AccountService;->getCurrentLoginLogonId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getInstance()Lcom/ali/user/mobile/login/app/LoginAppService;
    .locals 2

    sget-object v0, Lcom/ali/user/mobile/login/app/LoginAppService;->mLoginAppService:Lcom/ali/user/mobile/login/app/LoginAppService;

    if-nez v0, :cond_1

    const-class v1, Lcom/ali/user/mobile/login/app/LoginAppService;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/ali/user/mobile/login/app/LoginAppService;->mLoginAppService:Lcom/ali/user/mobile/login/app/LoginAppService;

    if-nez v0, :cond_0

    new-instance v0, Lcom/ali/user/mobile/login/app/LoginAppService;

    invoke-direct {v0}, Lcom/ali/user/mobile/login/app/LoginAppService;-><init>()V

    sput-object v0, Lcom/ali/user/mobile/login/app/LoginAppService;->mLoginAppService:Lcom/ali/user/mobile/login/app/LoginAppService;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/ali/user/mobile/login/app/LoginAppService;->mLoginAppService:Lcom/ali/user/mobile/login/app/LoginAppService;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private isLogin()Z
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/login/app/LoginAppService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/ali/user/mobile/accountbiz/extservice/manager/AntExtServiceManager;->getAuthService(Landroid/content/Context;)Lcom/ali/user/mobile/accountbiz/extservice/AuthService;

    move-result-object v0

    invoke-interface {v0}, Lcom/ali/user/mobile/accountbiz/extservice/AuthService;->isLogin()Z

    move-result v0

    return v0
.end method

.method private sendBroadcast(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "data"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/ali/user/mobile/login/app/LoginAppService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    return-void
.end method


# virtual methods
.method public startLoginPage(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/login/app/LoginAppService;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/ali/user/mobile/login/app/LoginAppService;->mParams:Landroid/os/Bundle;

    const-string/jumbo v0, "LoginApp"

    const-string/jumbo v1, "aliuser login, param:%s"

    new-array v2, v7, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/ali/user/mobile/login/app/LoginAppService;->mParams:Landroid/os/Bundle;

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ali/user/mobile/login/app/LoginAppService;->mParams:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "sms"

    iget-object v1, p0, Lcom/ali/user/mobile/login/app/LoginAppService;->mParams:Landroid/os/Bundle;

    const-string/jumbo v2, "style"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "LoginApp"

    const-string/jumbo v1, "\u5916\u90e8\u5524\u8d77\u77ed\u4fe1\u767b\u5f55"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "tablauncher"

    iget-object v1, p0, Lcom/ali/user/mobile/login/app/LoginAppService;->mParams:Landroid/os/Bundle;

    const-string/jumbo v2, "LoginSource"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "LoginApp"

    const-string/jumbo v1, "tablauncher\u8c03\u8d77\u7684\u767b\u5f55\u4e0d\u505a\u4efb\u4f55\u68c0\u67e5\uff0c\u76f4\u63a5\u653e\u8fc7"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    new-instance v0, Lcom/ali/user/mobile/login/app/a;

    invoke-direct {v0, p0, p1}, Lcom/ali/user/mobile/login/app/a;-><init>(Lcom/ali/user/mobile/login/app/LoginAppService;Landroid/content/Context;)V

    invoke-static {v0}, Lcom/ali/user/mobile/accountbiz/c;->a(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/ali/user/mobile/login/app/LoginAppService;->mParams:Landroid/os/Bundle;

    const-string/jumbo v1, "loginId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/ali/user/mobile/login/app/LoginAppService;->getCurrentLoginId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/ali/user/mobile/login/app/LoginAppService;->isLogin()Z

    move-result v2

    const-string/jumbo v3, "LoginApp"

    const-string/jumbo v4, "extraLoginId:%s, curLoginId:%s, isLogin:%s"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v6

    aput-object v1, v5, v7

    const/4 v6, 0x2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz v2, :cond_0

    goto :goto_0
.end method
