.class public Lcom/ali/user/mobile/accountbiz/extservice/impl/SecurityInitServiceImpl;
.super Lcom/ali/user/mobile/accountbiz/extservice/base/BaseExtService;
.source "SecurityInitServiceImpl.java"

# interfaces
.implements Lcom/ali/user/mobile/accountbiz/extservice/SecurityInitService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ali/user/mobile/accountbiz/extservice/impl/SecurityInitServiceImpl$InitThread;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SecurityInitServiceImpl"

.field private static mSecurityService:Lcom/ali/user/mobile/accountbiz/extservice/SecurityInitService;


# instance fields
.field initFlagSynLock:Ljava/lang/String;

.field private isScheme:Z

.field private justGenTid:Z

.field private logSb:Lcom/ali/user/mobile/e/e;

.field private logUpdate:Lcom/ali/user/mobile/e/e;

.field private mAuthService:Lcom/ali/user/mobile/accountbiz/extservice/AuthService;

.field protected mDeviceService:Lcom/ali/user/mobile/accountbiz/extservice/DeviceService;

.field private mMemCacheService:Lcom/ali/user/mobile/accountbiz/extservice/AUMemCacheService;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/ali/user/mobile/accountbiz/extservice/base/BaseExtService;-><init>(Landroid/content/Context;)V

    const-class v0, Lcom/ali/user/mobile/accountbiz/extservice/impl/SecurityInitServiceImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/accountbiz/extservice/impl/SecurityInitServiceImpl;->initFlagSynLock:Ljava/lang/String;

    iget-object v0, p0, Lcom/ali/user/mobile/accountbiz/extservice/impl/SecurityInitServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/ali/user/mobile/accountbiz/extservice/manager/AntExtServiceManager;->getAuthService(Landroid/content/Context;)Lcom/ali/user/mobile/accountbiz/extservice/AuthService;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/accountbiz/extservice/impl/SecurityInitServiceImpl;->mAuthService:Lcom/ali/user/mobile/accountbiz/extservice/AuthService;

    iget-object v0, p0, Lcom/ali/user/mobile/accountbiz/extservice/impl/SecurityInitServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/ali/user/mobile/accountbiz/extservice/manager/AntExtServiceManager;->getDeviceService(Landroid/content/Context;)Lcom/ali/user/mobile/accountbiz/extservice/DeviceService;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/accountbiz/extservice/impl/SecurityInitServiceImpl;->mDeviceService:Lcom/ali/user/mobile/accountbiz/extservice/DeviceService;

    invoke-static {}, Lcom/ali/user/mobile/accountbiz/extservice/manager/AntExtServiceManager;->getMemCacheService()Lcom/ali/user/mobile/accountbiz/extservice/AUMemCacheService;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/accountbiz/extservice/impl/SecurityInitServiceImpl;->mMemCacheService:Lcom/ali/user/mobile/accountbiz/extservice/AUMemCacheService;

    return-void
.end method

.method static synthetic access$002(Lcom/ali/user/mobile/accountbiz/extservice/impl/SecurityInitServiceImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/ali/user/mobile/accountbiz/extservice/impl/SecurityInitServiceImpl;->isScheme:Z

    return p1
.end method

.method static synthetic access$102(Lcom/ali/user/mobile/accountbiz/extservice/impl/SecurityInitServiceImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/ali/user/mobile/accountbiz/extservice/impl/SecurityInitServiceImpl;->justGenTid:Z

    return p1
.end method

.method static synthetic access$200(Lcom/ali/user/mobile/accountbiz/extservice/impl/SecurityInitServiceImpl;Ljava/util/List;Lcom/ali/user/mobile/account/domain/MspDeviceInfoBean;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ali/user/mobile/accountbiz/extservice/impl/SecurityInitServiceImpl;->doUpdateWalletLoginAuth(Ljava/util/List;Lcom/ali/user/mobile/account/domain/MspDeviceInfoBean;)V

    return-void
.end method

.method private checkLogoutForStart()V
    .locals 0

    return-void
.end method

.method private doUpdateWalletLoginAuth(Ljava/util/List;Lcom/ali/user/mobile/account/domain/MspDeviceInfoBean;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ali/user/mobile/account/domain/MspDeviceInfoBean;",
            ")V"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/ali/user/mobile/accountbiz/extservice/impl/SecurityInitServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/ali/user/mobile/accountbiz/extservice/manager/AntExtServiceManager;->getAccountService(Landroid/content/Context;)Lcom/ali/user/mobile/accountbiz/extservice/AccountService;

    move-result-object v0

    invoke-interface {v0}, Lcom/ali/user/mobile/accountbiz/extservice/AccountService;->getAutoLoginAlipayUser()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/user/mobile/account/bean/UserInfo;

    invoke-virtual {v0}, Lcom/ali/user/mobile/account/bean/UserInfo;->isAutoLogin()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/ali/user/mobile/account/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "SecurityInitServiceImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u66f4\u65b0\u514d\u767b\u5173\u7cfb\u5f02\u5e38:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    if-eqz p1, :cond_1

    :try_start_1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/ali/user/mobile/accountbiz/a;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ali/user/mobile/accountbiz/a;-><init>(Landroid/content/Context;Lcom/ali/user/mobile/accountbiz/b;)V

    invoke-virtual {v0, p2, p1}, Lcom/ali/user/mobile/accountbiz/a;->a(Lcom/ali/user/mobile/account/domain/MspDeviceInfoBean;Ljava/util/List;)Lcom/ali/user/mobile/account/model/MobileSecurityResult;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/accountbiz/extservice/impl/SecurityInitServiceImpl;->handleUpdateLoginResult(Lcom/ali/user/mobile/account/model/MobileSecurityResult;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private generateDid()V
    .locals 2

    const-string/jumbo v0, "SecurityInitServiceImpl"

    const-string/jumbo v1, "\u5f00\u59cb\u751f\u6210tid"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ali/user/mobile/accountbiz/extservice/impl/SecurityInitServiceImpl;->logSb:Lcom/ali/user/mobile/e/e;

    const-string/jumbo v1, "generatetid..."

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/e/e;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ali/user/mobile/accountbiz/extservice/impl/SecurityInitServiceImpl;->mDeviceService:Lcom/ali/user/mobile/accountbiz/extservice/DeviceService;

    invoke-interface {v0}, Lcom/ali/user/mobile/accountbiz/extservice/DeviceService;->queryCertification()Lcom/ali/user/mobile/account/domain/MspDeviceInfoBean;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/ali/user/mobile/accountbiz/extservice/SecurityInitService;
    .locals 2

    sget-object v0, Lcom/ali/user/mobile/accountbiz/extservice/impl/SecurityInitServiceImpl;->mSecurityService:Lcom/ali/user/mobile/accountbiz/extservice/SecurityInitService;

    if-nez v0, :cond_1

    const-class v1, Lcom/ali/user/mobile/accountbiz/extservice/impl/SecurityInitServiceImpl;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/ali/user/mobile/accountbiz/extservice/impl/SecurityInitServiceImpl;->mSecurityService:Lcom/ali/user/mobile/accountbiz/extservice/SecurityInitService;

    if-nez v0, :cond_0

    new-instance v0, Lcom/ali/user/mobile/accountbiz/extservice/impl/SecurityInitServiceImpl;

    invoke-direct {v0, p0}, Lcom/ali/user/mobile/accountbiz/extservice/impl/SecurityInitServiceImpl;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/ali/user/mobile/accountbiz/extservice/impl/SecurityInitServiceImpl;->mSecurityService:Lcom/ali/user/mobile/accountbiz/extservice/SecurityInitService;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/ali/user/mobile/accountbiz/extservice/impl/SecurityInitServiceImpl;->mSecurityService:Lcom/ali/user/mobile/accountbiz/extservice/SecurityInitService;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private getTidFromMsp()Lcom/ali/user/mobile/account/domain/MspDeviceInfoBean;
    .locals 2

    const-string/jumbo v0, "SecurityInitServiceImpl"

    const-string/jumbo v1, "\u4ece\u79fb\u52a8\u5feb\u6377\u83b7\u53d6tid\u5f00\u59cb"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/ali/user/mobile/accountbiz/extservice/impl/SecurityInitServiceImpl;->mDeviceService:Lcom/ali/user/mobile/accountbiz/extservice/DeviceService;

    invoke-interface {v0}, Lcom/ali/user/mobile/accountbiz/extservice/DeviceService;->queryCertification()Lcom/ali/user/mobile/account/domain/MspDeviceInfoBean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "SecurityInitServiceImpl"

    invoke-static {v1, v0}, Lcom/ali/user/mobile/e/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private notifyLogin(Lcom/ali/user/mobile/account/bean/UserInfo;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string/jumbo v0, "SecurityInitServiceImpl"

    const-string/jumbo v1, "notify login, userInfo=%s"

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ali/user/mobile/accountbiz/extservice/impl/SecurityInitServiceImpl;->logSb:Lcom/ali/user/mobile/e/e;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifyLogin  isToBiz = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/ali/user/mobile/accountbiz/extservice/impl/SecurityInitServiceImpl;->isScheme:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/e/e;->a(Ljava/lang/String;)V

    if-eqz p1, :cond_2

    const-string/jumbo v0, "isAutoLogin:%s"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/ali/user/mobile/account/bean/UserInfo;->isAutoLogin()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "SecurityInitServiceImpl"

    invoke-static {v1, v0}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/ali/user/mobile/account/bean/UserInfo;->isAutoLogin()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/ali/user/mobile/accountbiz/extservice/impl/SecurityInitServiceImpl;->startAutoLogin()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/ali/user/mobile/accountbiz/extservice/impl/SecurityInitServiceImpl;->isScheme:Z

    if-nez v0, :cond_0

    const-string/jumbo v0, "SecurityInitServiceImpl"

    const-string/jumbo v1, "another showLoginActivity"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ali/user/mobile/accountbiz/extservice/impl/SecurityInitServiceImpl;->logSb:Lcom/ali/user/mobile/e/e;

    const-string/jumbo v1, "showLoginActivity userInfo != null && !isToBiz"

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/e/e;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ali/user/mobile/accountbiz/extservice/impl/SecurityInitServiceImpl;->logSb:Lcom/ali/user/mobile/e/e;

    invoke-virtual {v0}, Lcom/ali/user/mobile/e/e;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ali/user/mobile/e/f;->a(Ljava/lang/String;)V

    invoke-direct {p0, v5}, Lcom/ali/user/mobile/accountbiz/extservice/impl/SecurityInitServiceImpl;->showLoginActivity(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/ali/user/mobile/accountbiz/extservice/impl/SecurityInitServiceImpl;->isScheme:Z

    if-nez v0, :cond_0

    const-string/jumbo v0, "SecurityInitServiceImpl"

    const-string/jumbo v1, "showLoginActivity"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ali/user/mobile/accountbiz/extservice/impl/SecurityInitServiceImpl;->logSb:Lcom/ali/user/mobile/e/e;

    const-string/jumbo v1, "showLoginActivity userInfo == null"

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/e/e;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ali/user/mobile/accountbiz/extservice/impl/SecurityInitServiceImpl;->logSb:Lcom/ali/user/mobile/e/e;

    invoke-virtual {v0}, Lcom/ali/user/mobile/e/e;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ali/user/mobile/e/f;->a(Ljava/lang/String;)V

    invoke-direct {p0, v5}, Lcom/ali/user/mobile/accountbiz/extservice/impl/SecurityInitServiceImpl;->showLoginActivity(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method private putLoginKey(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/ali/user/mobile/accountbiz/extservice/impl/SecurityInitServiceImpl;->mMemCacheService:Lcom/ali/user/mobile/accountbiz/extservice/AUMemCacheService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ali/user/mobile/accountbiz/extservice/impl/SecurityInitServiceImpl;->mMemCacheService:Lcom/ali/user/mobile/accountbiz/extservice/AUMemCacheService;

    const-string/jumbo v1, "securityapp"

    const-string/jumbo v2, "security"

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/ali/user/mobile/accountbiz/extservice/AUMemCacheService;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private showLoginActivity(Landroid/os/Bundle;)V
    .locals 3

    if-nez p1, :cond_0

    :try_start_0
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    :cond_0
    const-string/jumbo v0, "LoginSource"

    const-string/jumbo v1, "securityInit"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ali/user/mobile/accountbiz/extservice/impl/SecurityInitServiceImpl;->mAuthService:Lcom/ali/user/mobile/accountbiz/extservice/AuthService;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/ali/user/mobile/accountbiz/extservice/AuthService;->showActivityLogin(Landroid/os/Bundle;Lcom/ali/user/mobile/account/bean/UserInfo;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "SecurityInitServiceImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ali/user/mobile/e/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private startAutoLogin()V
    .locals 8

    const/4 v3, 0x1

    const/4 v2, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/ali/user/mobile/accountbiz/extservice/impl/SecurityInitServiceImpl;->logSb:Lcom/ali/user/mobile/e/e;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startAutoLogin isToBiz = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v4, p0, Lcom/ali/user/mobile/accountbiz/extservice/impl/SecurityInitServiceImpl;->isScheme:Z

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/e/e;->a(Ljava/lang/String;)V

    const-string/jumbo v0, "SecurityInitServiceImpl"

    const-string/jumbo v1, "start auto login"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ali/user/mobile/accountbiz/extservice/impl/SecurityInitServiceImpl;->mAuthService:Lcom/ali/user/mobile/accountbiz/extservice/AuthService;

    invoke-interface {v0}, Lcom/ali/user/mobile/accountbiz/extservice/AuthService;->autoAuth()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "auto_login_result_logined"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    const-string/jumbo v1, "SecurityInitServiceImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "\u514d\u767blogined"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/alipay/android/phone/mrpc/core/RpcException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_1

    move v1, v3

    :goto_0
    :try_start_1
    iget-object v5, p0, Lcom/ali/user/mobile/accountbiz/extservice/impl/SecurityInitServiceImpl;->logSb:Lcom/ali/user/mobile/e/e;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mAuthService.autoAuth() is success?"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/ali/user/mobile/e/e;->a(Ljava/lang/String;)V

    iget-boolean v5, p0, Lcom/ali/user/mobile/accountbiz/extservice/impl/SecurityInitServiceImpl;->isScheme:Z

    if-nez v5, :cond_2

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/ali/user/mobile/accountbiz/extservice/impl/SecurityInitServiceImpl;->logSb:Lcom/ali/user/mobile/e/e;

    const-string/jumbo v5, "showLoginActivity"

    invoke-virtual {v4, v5}, Lcom/ali/user/mobile/e/e;->a(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/ali/user/mobile/accountbiz/extservice/impl/SecurityInitServiceImpl;->logSb:Lcom/ali/user/mobile/e/e;

    invoke-virtual {v4}, Lcom/ali/user/mobile/e/e;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/ali/user/mobile/e/f;->a(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/ali/user/mobile/accountbiz/extservice/impl/SecurityInitServiceImpl;->showLoginActivity(Landroid/os/Bundle;)V
    :try_end_1
    .catch Lcom/alipay/android/phone/mrpc/core/RpcException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_1
    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/ali/user/mobile/accountbiz/extservice/impl/SecurityInitServiceImpl;->startPipelineForLoginFail()V

    :cond_0
    :goto_2
    return-void

    :cond_1
    move v1, v2

    goto :goto_0

    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/ali/user/mobile/accountbiz/extservice/impl/SecurityInitServiceImpl;->logSb:Lcom/ali/user/mobile/e/e;

    invoke-virtual {v0}, Lcom/ali/user/mobile/e/e;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ali/user/mobile/e/f;->a(Ljava/lang/String;)V

    const-string/jumbo v0, "SecurityInitServiceImpl"

    const-string/jumbo v2, "startAutoLogin success, reportDeviceLocation"

    invoke-static {v0, v2}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Lcom/alipay/android/phone/mrpc/core/RpcException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move v2, v1

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_3
    iget-object v1, p0, Lcom/ali/user/mobile/accountbiz/extservice/impl/SecurityInitServiceImpl;->logSb:Lcom/ali/user/mobile/e/e;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "RpcException:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/alipay/android/phone/mrpc/core/RpcException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ali/user/mobile/e/e;->a(Ljava/lang/String;)V

    const-string/jumbo v1, "SecurityInitServiceImpl"

    invoke-static {v1, v0}, Lcom/ali/user/mobile/e/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/ali/user/mobile/accountbiz/extservice/impl/SecurityInitServiceImpl;->logSb:Lcom/ali/user/mobile/e/e;

    invoke-virtual {v0}, Lcom/ali/user/mobile/e/e;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ali/user/mobile/e/f;->a(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    invoke-direct {p0}, Lcom/ali/user/mobile/accountbiz/extservice/impl/SecurityInitServiceImpl;->startPipelineForLoginFail()V

    goto :goto_2

    :catchall_0
    move-exception v0

    move v1, v2

    :goto_3
    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcom/ali/user/mobile/accountbiz/extservice/impl/SecurityInitServiceImpl;->startPipelineForLoginFail()V

    :cond_3
    throw v0

    :catchall_1
    move-exception v0

    goto :goto_3

    :catchall_2
    move-exception v0

    move v1, v3

    goto :goto_3
.end method

.method private startPipelineForLoginFail()V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/ali/user/mobile/accountbiz/extservice/impl/SecurityInitServiceImpl$1;

    invoke-direct {v1, p0}, Lcom/ali/user/mobile/accountbiz/extservice/impl/SecurityInitServiceImpl$1;-><init>(Lcom/ali/user/mobile/accountbiz/extservice/impl/SecurityInitServiceImpl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method protected handleUpdateLoginResult(Lcom/ali/user/mobile/account/model/MobileSecurityResult;)V
    .locals 5

    const-string/jumbo v1, "SecurityInitServiceImpl"

    const-string/jumbo v2, "\u66f4\u65b0\u5ba2\u6237\u7aef\u514d\u767b\u5173\u7cfb%s"

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/ali/user/mobile/account/model/MobileSecurityResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "\u6210\u529f"

    :goto_0
    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/ali/user/mobile/account/model/MobileSecurityResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/ali/user/mobile/accountbiz/extservice/impl/SecurityInitServiceImpl;->logUpdate:Lcom/ali/user/mobile/e/e;

    const-string/jumbo v1, "handleUpdateLoginResult begin"

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/e/e;->a(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/ali/user/mobile/accountbiz/extservice/impl/SecurityInitServiceImpl;->getTidFromMsp()Lcom/ali/user/mobile/account/domain/MspDeviceInfoBean;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/ali/user/mobile/account/domain/MspDeviceInfoBean;->getTid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/common/d/c;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v0, "SecurityInitServiceImpl"

    const-string/jumbo v1, "handleUpdateLoginResult-\u4e0d\u518d\u4fdd\u5b58walterid "

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_0
    const-string/jumbo v0, "\u5931\u8d25"

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/ali/user/mobile/accountbiz/extservice/impl/SecurityInitServiceImpl;->logUpdate:Lcom/ali/user/mobile/e/e;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "tempInfoBean.getTid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/ali/user/mobile/account/domain/MspDeviceInfoBean;->getTid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/ali/user/mobile/e/e;->a(Ljava/lang/String;)V

    :goto_2
    iget-object v0, p0, Lcom/ali/user/mobile/accountbiz/extservice/impl/SecurityInitServiceImpl;->logUpdate:Lcom/ali/user/mobile/e/e;

    invoke-virtual {v0}, Lcom/ali/user/mobile/e/e;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ali/user/mobile/e/f;->a(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/ali/user/mobile/accountbiz/extservice/impl/SecurityInitServiceImpl;->logUpdate:Lcom/ali/user/mobile/e/e;

    const-string/jumbo v1, "tempInfoBean = null"

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/e/e;->a(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/ali/user/mobile/accountbiz/extservice/impl/SecurityInitServiceImpl;->logUpdate:Lcom/ali/user/mobile/e/e;

    const-string/jumbo v1, "handleUpdateLoginResult fail"

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/e/e;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ali/user/mobile/accountbiz/extservice/impl/SecurityInitServiceImpl;->logUpdate:Lcom/ali/user/mobile/e/e;

    invoke-virtual {v0}, Lcom/ali/user/mobile/e/e;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ali/user/mobile/e/f;->a(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public securityInit(Landroid/content/Intent;)V
    .locals 5

    const-string/jumbo v0, "inited_param"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/ali/user/mobile/e/e;

    invoke-direct {v1}, Lcom/ali/user/mobile/e/e;-><init>()V

    iput-object v1, p0, Lcom/ali/user/mobile/accountbiz/extservice/impl/SecurityInitServiceImpl;->logSb:Lcom/ali/user/mobile/e/e;

    invoke-static {v0}, Lcom/ali/user/mobile/accountbiz/c;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ali/user/mobile/accountbiz/extservice/impl/SecurityInitServiceImpl;->logSb:Lcom/ali/user/mobile/e/e;

    const-string/jumbo v1, "isNoNeedAutoLogin = true"

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/e/e;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ali/user/mobile/accountbiz/extservice/impl/SecurityInitServiceImpl;->logSb:Lcom/ali/user/mobile/e/e;

    invoke-virtual {v0}, Lcom/ali/user/mobile/e/e;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ali/user/mobile/e/f;->a(Ljava/lang/String;)V

    const-string/jumbo v0, "SecurityInitServiceImpl"

    const-string/jumbo v1, "\u5728\u4e0d\u9700\u8981\u81ea\u52a8\u767b\u9646set\u4e2d\u6240\u4ee5\u4e0d\u505a\u5b89\u5168\u6a21\u5757\u521d\u59cb\u5316\u548c\u514d\u767b\u64cd\u4f5c,intent uri: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/b/b;->b()V

    new-instance v0, Lcom/ali/user/mobile/accountbiz/extservice/impl/SecurityInitServiceImpl$InitThread;

    invoke-direct {v0, p0, p1}, Lcom/ali/user/mobile/accountbiz/extservice/impl/SecurityInitServiceImpl$InitThread;-><init>(Lcom/ali/user/mobile/accountbiz/extservice/impl/SecurityInitServiceImpl;Landroid/content/Intent;)V

    invoke-static {v0}, Lcom/ali/user/mobile/accountbiz/c;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public securityInitStart()V
    .locals 5

    :try_start_0
    const-string/jumbo v0, "SecurityInitServiceImpl"

    const-string/jumbo v1, "securityInitStart, justGenTid:%s, isToBiz:%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-boolean v4, p0, Lcom/ali/user/mobile/accountbiz/extservice/impl/SecurityInitServiceImpl;->justGenTid:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-boolean v4, p0, Lcom/ali/user/mobile/accountbiz/extservice/impl/SecurityInitServiceImpl;->isScheme:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "justGenTid"

    iget-boolean v1, p0, Lcom/ali/user/mobile/accountbiz/extservice/impl/SecurityInitServiceImpl;->justGenTid:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/ali/user/mobile/accountbiz/extservice/impl/SecurityInitServiceImpl;->putLoginKey(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v0, "isToBiz"

    iget-boolean v1, p0, Lcom/ali/user/mobile/accountbiz/extservice/impl/SecurityInitServiceImpl;->isScheme:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/ali/user/mobile/accountbiz/extservice/impl/SecurityInitServiceImpl;->putLoginKey(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ali/user/mobile/accountbiz/extservice/impl/SecurityInitServiceImpl;->mAuthService:Lcom/ali/user/mobile/accountbiz/extservice/AuthService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ali/user/mobile/accountbiz/extservice/impl/SecurityInitServiceImpl;->mAuthService:Lcom/ali/user/mobile/accountbiz/extservice/AuthService;

    invoke-interface {v0}, Lcom/ali/user/mobile/accountbiz/extservice/AuthService;->logLoginKey()V

    :cond_0
    iget-boolean v0, p0, Lcom/ali/user/mobile/accountbiz/extservice/impl/SecurityInitServiceImpl;->justGenTid:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "tid"

    const-string/jumbo v1, "false"

    invoke-direct {p0, v0, v1}, Lcom/ali/user/mobile/accountbiz/extservice/impl/SecurityInitServiceImpl;->putLoginKey(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ali/user/mobile/accountbiz/extservice/impl/SecurityInitServiceImpl;->logSb:Lcom/ali/user/mobile/e/e;

    const-string/jumbo v1, "justGenTid = true"

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/e/e;->a(Ljava/lang/String;)V

    const-string/jumbo v0, "SecurityInitServiceImpl"

    const-string/jumbo v1, "\u5f53\u524d\u5ba2\u6237\u7aef\u4e2d\u4e0d\u5b58\u5728\u7528\u6237\uff0c\u9996\u6b21\u542f\u52a8\u751f\u6210tid"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/ali/user/mobile/accountbiz/extservice/impl/SecurityInitServiceImpl;->generateDid()V

    iget-object v0, p0, Lcom/ali/user/mobile/accountbiz/extservice/impl/SecurityInitServiceImpl;->logSb:Lcom/ali/user/mobile/e/e;

    invoke-virtual {v0}, Lcom/ali/user/mobile/e/e;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ali/user/mobile/e/f;->a(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/ali/user/mobile/accountbiz/extservice/impl/SecurityInitServiceImpl;->logSb:Lcom/ali/user/mobile/e/e;

    const-string/jumbo v1, "justGenTid = false"

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/e/e;->a(Ljava/lang/String;)V

    const-string/jumbo v0, "SecurityInitServiceImpl"

    const-string/jumbo v1, "\u4ece\u672c\u5730\u83b7\u53d6tid\uff0c\u5982\u679c\u5df2\u7ecf\u5b58\u5728tid\u6821\u9a8c\u662f\u5426\u5408\u6cd5\uff0c\u5982\u679c\u4e0d\u5b58\u5728\u91cd\u65b0\u751f\u6210tid"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ali/user/mobile/accountbiz/extservice/impl/SecurityInitServiceImpl;->mDeviceService:Lcom/ali/user/mobile/accountbiz/extservice/DeviceService;

    invoke-interface {v0}, Lcom/ali/user/mobile/accountbiz/extservice/DeviceService;->queryCertification()Lcom/ali/user/mobile/account/domain/MspDeviceInfoBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ali/user/mobile/account/domain/MspDeviceInfoBean;->getTid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string/jumbo v1, "tid"

    const-string/jumbo v2, "true"

    invoke-direct {p0, v1, v2}, Lcom/ali/user/mobile/accountbiz/extservice/impl/SecurityInitServiceImpl;->putLoginKey(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/ali/user/mobile/accountbiz/extservice/impl/SecurityInitServiceImpl;->logSb:Lcom/ali/user/mobile/e/e;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "tid != null, tid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/ali/user/mobile/e/e;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ali/user/mobile/accountbiz/extservice/impl/SecurityInitServiceImpl;->mAuthService:Lcom/ali/user/mobile/accountbiz/extservice/AuthService;

    invoke-interface {v0}, Lcom/ali/user/mobile/accountbiz/extservice/AuthService;->getLoginUserInfo()Lcom/ali/user/mobile/account/bean/UserInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/ali/user/mobile/account/bean/UserInfo;->isAutoLogin()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "SecurityInitServiceImpl"

    const-string/jumbo v2, "\u5f00\u59cb\u81ea\u52a8\u767b\u5f55"

    invoke-static {v1, v2}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ali/user/mobile/accountbiz/extservice/impl/SecurityInitServiceImpl;->logSb:Lcom/ali/user/mobile/e/e;

    const-string/jumbo v2, "userInfo != null && userInfo.isAutoLogin()=true"

    invoke-virtual {v1, v2}, Lcom/ali/user/mobile/e/e;->a(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/ali/user/mobile/accountbiz/extservice/impl/SecurityInitServiceImpl;->notifyLogin(Lcom/ali/user/mobile/account/bean/UserInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/ali/user/mobile/accountbiz/extservice/impl/SecurityInitServiceImpl;->logSb:Lcom/ali/user/mobile/e/e;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "securityInitStart exception = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ali/user/mobile/e/e;->a(Ljava/lang/String;)V

    const-string/jumbo v1, "SecurityInitServiceImpl"

    invoke-static {v1, v0}, Lcom/ali/user/mobile/e/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/ali/user/mobile/accountbiz/extservice/impl/SecurityInitServiceImpl;->logSb:Lcom/ali/user/mobile/e/e;

    invoke-virtual {v0}, Lcom/ali/user/mobile/e/e;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ali/user/mobile/e/f;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    if-eqz v0, :cond_3

    :try_start_1
    const-string/jumbo v0, "SecurityInitServiceImpl"

    const-string/jumbo v1, "userInfo.isAutoLogin()=false"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ali/user/mobile/accountbiz/extservice/impl/SecurityInitServiceImpl;->logSb:Lcom/ali/user/mobile/e/e;

    const-string/jumbo v1, "userInfo != null && userInfo.isAutoLogin()=false"

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/e/e;->a(Ljava/lang/String;)V

    :goto_1
    const-string/jumbo v0, "SecurityInitServiceImpl"

    const-string/jumbo v1, "\u65e0\u514d\u767b\u7528\u6237\uff0ctablauncher\u8c03\u8d77\u767b\u5f55"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/ali/user/mobile/accountbiz/extservice/impl/SecurityInitServiceImpl;->checkLogoutForStart()V

    goto/16 :goto_0

    :cond_3
    const-string/jumbo v0, "SecurityInitServiceImpl"

    const-string/jumbo v1, "userInfo == null"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ali/user/mobile/accountbiz/extservice/impl/SecurityInitServiceImpl;->logSb:Lcom/ali/user/mobile/e/e;

    const-string/jumbo v1, "userInfo == null"

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/e/e;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ali/user/mobile/accountbiz/extservice/impl/SecurityInitServiceImpl;->logSb:Lcom/ali/user/mobile/e/e;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mAuthService.isLogin() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ali/user/mobile/accountbiz/extservice/impl/SecurityInitServiceImpl;->mAuthService:Lcom/ali/user/mobile/accountbiz/extservice/AuthService;

    invoke-interface {v2}, Lcom/ali/user/mobile/accountbiz/extservice/AuthService;->isLogin()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/e/e;->a(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const-string/jumbo v0, "tid"

    const-string/jumbo v1, "null"

    invoke-direct {p0, v0, v1}, Lcom/ali/user/mobile/accountbiz/extservice/impl/SecurityInitServiceImpl;->putLoginKey(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ali/user/mobile/accountbiz/extservice/impl/SecurityInitServiceImpl;->logSb:Lcom/ali/user/mobile/e/e;

    const-string/jumbo v1, "tid = null"

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/e/e;->a(Ljava/lang/String;)V

    const-string/jumbo v0, "SecurityInitServiceImpl"

    const-string/jumbo v1, "tid\u4e3anull\uff0c\u4ece\u5feb\u6377\u83b7\u53d6tid\u5e76\u4fdd\u5b58\u5728\u5ba2\u6237\u7aef\u672c\u5730"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/ali/user/mobile/accountbiz/extservice/impl/SecurityInitServiceImpl;->generateDid()V

    const-string/jumbo v0, "SecurityInitServiceImpl"

    const-string/jumbo v1, "\u6b64\u65f6\u4e0d\u4f1a\u514d\u767b\uff0c\u4f46\u9700\u8981\u8c03pipeline"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/ali/user/mobile/accountbiz/extservice/impl/SecurityInitServiceImpl;->startPipelineForLoginFail()V

    iget-object v0, p0, Lcom/ali/user/mobile/accountbiz/extservice/impl/SecurityInitServiceImpl;->logSb:Lcom/ali/user/mobile/e/e;

    invoke-virtual {v0}, Lcom/ali/user/mobile/e/e;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ali/user/mobile/e/f;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public updateWalletLoginAuth(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/ali/user/mobile/accountbiz/extservice/impl/SecurityInitServiceImpl$2;

    invoke-direct {v1, p0, p1}, Lcom/ali/user/mobile/accountbiz/extservice/impl/SecurityInitServiceImpl$2;-><init>(Lcom/ali/user/mobile/accountbiz/extservice/impl/SecurityInitServiceImpl;Ljava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
