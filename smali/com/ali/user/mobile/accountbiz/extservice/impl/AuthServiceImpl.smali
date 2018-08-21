.class public Lcom/ali/user/mobile/accountbiz/extservice/impl/AuthServiceImpl;
.super Lcom/ali/user/mobile/accountbiz/extservice/base/BaseExtService;
.source "AuthServiceImpl.java"

# interfaces
.implements Lcom/ali/user/mobile/accountbiz/extservice/AuthService;


# static fields
.field private static final AUTO_LOGIN:Ljava/lang/String; = "autoLoginRpc"

.field private static final LOGIN_SOURCE:Ljava/lang/String; = "loginSource"

.field private static final TAG:Ljava/lang/String; = "AuthServiceImpl"

.field private static final THREAD_CAN_NOT_CANCEL:Ljava/lang/String; = "thread_can_not_cancel"

.field private static final THREAD_OK:Ljava/lang/String; = "thread_ok"

.field private static mAuthService:Lcom/ali/user/mobile/accountbiz/extservice/AuthService;


# instance fields
.field private findLoginAppWhenCashier:Z

.field loginSuccess:Z

.field private mLockGestureApp:Ljava/lang/Object;

.field private mLockLoginApp:Ljava/lang/Object;

.field private mMemService:Lcom/ali/user/mobile/accountbiz/extservice/AUMemCacheService;

.field private taoBaoSsoFlag:Z

.field private final threadMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/ali/user/mobile/accountbiz/extservice/base/BaseExtService;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/ali/user/mobile/accountbiz/extservice/impl/AuthServiceImpl;->mLockLoginApp:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/ali/user/mobile/accountbiz/extservice/impl/AuthServiceImpl;->mLockGestureApp:Ljava/lang/Object;

    iput-boolean v1, p0, Lcom/ali/user/mobile/accountbiz/extservice/impl/AuthServiceImpl;->loginSuccess:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ali/user/mobile/accountbiz/extservice/impl/AuthServiceImpl;->threadMap:Ljava/util/HashMap;

    iput-boolean v1, p0, Lcom/ali/user/mobile/accountbiz/extservice/impl/AuthServiceImpl;->findLoginAppWhenCashier:Z

    iput-boolean v1, p0, Lcom/ali/user/mobile/accountbiz/extservice/impl/AuthServiceImpl;->taoBaoSsoFlag:Z

    invoke-static {}, Lcom/ali/user/mobile/accountbiz/extservice/manager/AntExtServiceManager;->getMemCacheService()Lcom/ali/user/mobile/accountbiz/extservice/AUMemCacheService;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/accountbiz/extservice/impl/AuthServiceImpl;->mMemService:Lcom/ali/user/mobile/accountbiz/extservice/AUMemCacheService;

    return-void
.end method

.method private _log(Ljava/lang/String;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "[Thread-id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",name:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "AuthServiceImpl"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private declared-synchronized autoLogin(Lcom/ali/user/mobile/accountbiz/extservice/LoginContext;)Z
    .locals 6

    const/4 v2, 0x1

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "-----autoLogin \u662f\u5426\u8df3\u8fc7\u68c0\u67e5\u5f53\u524d\u767b\u5f55\u6001\u6807\u8bb0  isSkipCheckIsLogin:%s, isLogin:%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/ali/user/mobile/accountbiz/extservice/LoginContext;->isSkipCheckIsLogin()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/ali/user/mobile/accountbiz/extservice/impl/AuthServiceImpl;->isLogin()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ali/user/mobile/accountbiz/extservice/impl/AuthServiceImpl;->_log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ali/user/mobile/accountbiz/extservice/impl/AuthServiceImpl;->threadMap:Ljava/util/HashMap;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v3, "\u5f53\u524d\u7ebf\u7a0b\u88ab\u6807\u8bb0\u72b6\u6001(\u542f\u52a8\u514d\u767b): %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/ali/user/mobile/accountbiz/extservice/impl/AuthServiceImpl;->_log(Ljava/lang/String;)V

    const-string/jumbo v3, "canceled"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    move v0, v1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    const-string/jumbo v1, "thread_ok"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lcom/ali/user/mobile/accountbiz/extservice/impl/AuthServiceImpl;->loginForResult(Lcom/ali/user/mobile/accountbiz/extservice/LoginContext;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/ali/user/mobile/accountbiz/extservice/impl/AuthServiceImpl;->setWaitingThreadOk()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    :try_start_2
    invoke-direct {p0}, Lcom/ali/user/mobile/accountbiz/extservice/impl/AuthServiceImpl;->setWaitingThreadCanceled()V

    invoke-virtual {p0}, Lcom/ali/user/mobile/accountbiz/extservice/impl/AuthServiceImpl;->clearAuthLoginFlag()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private autoLoginFail(Ljava/lang/String;)V
    .locals 3

    :try_start_0
    const-string/jumbo v0, "\u6e05\u9664\u672c\u5730\u6240\u4ee5\u7528\u6236\u514d\u767b\u72c0\u614b userId=%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ali/user/mobile/accountbiz/extservice/impl/AuthServiceImpl;->_log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ali/user/mobile/accountbiz/extservice/impl/AuthServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/ali/user/mobile/c/c;->a(Landroid/content/Context;)Lcom/ali/user/mobile/c/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ali/user/mobile/c/c;->c(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    const-string/jumbo v0, "\u4fee\u6539\u5f53\u524d\u7528\u6237\u767b\u5f55\u72b6\u6001\u4e3a\u672a\u767b\u5f55"

    invoke-direct {p0, v0}, Lcom/ali/user/mobile/accountbiz/extservice/impl/AuthServiceImpl;->_log(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/ali/user/mobile/accountbiz/extservice/impl/AuthServiceImpl;->getAccountService()Lcom/ali/user/mobile/accountbiz/extservice/AccountService;

    move-result-object v0

    const-string/jumbo v1, "false"

    invoke-interface {v0, v1}, Lcom/ali/user/mobile/accountbiz/extservice/AccountService;->setCurrentLoginState(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "AuthServiceImpl"

    invoke-static {v1, v0}, Lcom/ali/user/mobile/e/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    const-string/jumbo v1, "AuthServiceImpl"

    invoke-static {v1, v0}, Lcom/ali/user/mobile/e/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private autoLoginStart(Lcom/ali/user/mobile/accountbiz/extservice/LoginContext;)Z
    .locals 5

    const/4 v2, 0x0

    const-string/jumbo v0, "\u53ef\u4ee5\u514d\u767b\uff0c\u8c03\u7528\u514d\u767b\u670d\u52a1"

    invoke-direct {p0, v0}, Lcom/ali/user/mobile/accountbiz/extservice/impl/AuthServiceImpl;->_log(Ljava/lang/String;)V

    :try_start_0
    invoke-direct {p0, p1}, Lcom/ali/user/mobile/accountbiz/extservice/impl/AuthServiceImpl;->loginForResult(Lcom/ali/user/mobile/accountbiz/extservice/LoginContext;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v1

    const-string/jumbo v0, "AuthServiceImpl"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string/jumbo v0, "autoLoginRpc"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "fail-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Lcom/ali/user/mobile/accountbiz/extservice/impl/AuthServiceImpl;->putLoginKey(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Lcom/ali/user/mobile/accountbiz/extservice/LoginContext;->setIsLoginSucess(Ljava/lang/Boolean;)V

    instance-of v0, v1, Lcom/alipay/android/phone/mrpc/core/RpcException;

    if-eqz v0, :cond_1

    const-string/jumbo v3, "\u767b\u9646RpcException(%s)\uff0c\u53d6\u6d88\u7b49\u5f85\u7ebf\u7a0b\u5e76\u629b\u51fa\u5f02\u5e38"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, Lcom/alipay/android/phone/mrpc/core/RpcException;

    invoke-virtual {v0}, Lcom/alipay/android/phone/mrpc/core/RpcException;->getCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ali/user/mobile/accountbiz/extservice/impl/AuthServiceImpl;->_log(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ali/user/mobile/accountbiz/extservice/impl/AuthServiceImpl;->getLastLoginedUserInfo()Lcom/ali/user/mobile/account/bean/UserInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ali/user/mobile/accountbiz/extservice/impl/AuthServiceImpl;->isCanAutoLoginUser(Lcom/ali/user/mobile/account/bean/UserInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/ali/user/mobile/accountbiz/extservice/impl/AuthServiceImpl;->getAccountService()Lcom/ali/user/mobile/accountbiz/extservice/AccountService;

    move-result-object v0

    invoke-interface {v0}, Lcom/ali/user/mobile/accountbiz/extservice/AccountService;->getCurrentLoginState()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/ali/user/mobile/accountbiz/extservice/impl/AuthServiceImpl;->getAccountService()Lcom/ali/user/mobile/accountbiz/extservice/AccountService;

    move-result-object v0

    const-string/jumbo v2, "true"

    invoke-interface {v0, v2}, Lcom/ali/user/mobile/accountbiz/extservice/AccountService;->setCurrentLoginState(Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0}, Lcom/ali/user/mobile/accountbiz/extservice/impl/AuthServiceImpl;->setWaitingThreadCanceled()V

    throw v1

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method private getAccountService()Lcom/ali/user/mobile/accountbiz/extservice/AccountService;
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/accountbiz/extservice/impl/AuthServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/ali/user/mobile/accountbiz/extservice/manager/AntExtServiceManager;->getAccountService(Landroid/content/Context;)Lcom/ali/user/mobile/accountbiz/extservice/AccountService;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/ali/user/mobile/accountbiz/extservice/AuthService;
    .locals 2

    sget-object v0, Lcom/ali/user/mobile/accountbiz/extservice/impl/AuthServiceImpl;->mAuthService:Lcom/ali/user/mobile/accountbiz/extservice/AuthService;

    if-nez v0, :cond_1

    const-class v1, Lcom/ali/user/mobile/accountbiz/extservice/impl/AuthServiceImpl;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/ali/user/mobile/accountbiz/extservice/impl/AuthServiceImpl;->mAuthService:Lcom/ali/user/mobile/accountbiz/extservice/AuthService;

    if-nez v0, :cond_0

    new-instance v0, Lcom/ali/user/mobile/accountbiz/extservice/impl/AuthServiceImpl;

    invoke-direct {v0, p0}, Lcom/ali/user/mobile/accountbiz/extservice/impl/AuthServiceImpl;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/ali/user/mobile/accountbiz/extservice/impl/AuthServiceImpl;->mAuthService:Lcom/ali/user/mobile/accountbiz/extservice/AuthService;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/ali/user/mobile/accountbiz/extservice/impl/AuthServiceImpl;->mAuthService:Lcom/ali/user/mobile/accountbiz/extservice/AuthService;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private innerAuth(Lcom/ali/user/mobile/accountbiz/extservice/LoginContext;)Z
    .locals 8

    const/4 v2, 0x1

    const/4 v0, 0x0

    const-string/jumbo v1, "innerAuth \u7ebf\u7a0b key=%s"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/ali/user/mobile/accountbiz/extservice/impl/AuthServiceImpl;->_log(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ali/user/mobile/accountbiz/extservice/impl/AuthServiceImpl;->threadMap:Ljava/util/HashMap;

    monitor-enter v1

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Lcom/ali/user/mobile/accountbiz/extservice/LoginContext;->getParams()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string/jumbo v0, "key_device_lock_thread_cannot_cancel"

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "innerAuth \u6dfb\u52a0\u7b49\u5f85\u7ebf\u7a0b key=%s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " \u7ebf\u7a0b\u53ef\u5426\u88ab\u53d6\u6d88threadCanCancel="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/ali/user/mobile/accountbiz/extservice/impl/AuthServiceImpl;->_log(Ljava/lang/String;)V

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ali/user/mobile/accountbiz/extservice/impl/AuthServiceImpl;->threadMap:Ljava/util/HashMap;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string/jumbo v3, "thread_can_not_cancel"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0, p1}, Lcom/ali/user/mobile/accountbiz/extservice/impl/AuthServiceImpl;->syncAuth(Lcom/ali/user/mobile/accountbiz/extservice/LoginContext;)Z

    move-result v0

    iget-object v1, p0, Lcom/ali/user/mobile/accountbiz/extservice/impl/AuthServiceImpl;->threadMap:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_1
    const-string/jumbo v2, "innerAuth \u79fb\u9664\u7b49\u5f85\u7ebf\u7a0b key=%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/ali/user/mobile/accountbiz/extservice/impl/AuthServiceImpl;->_log(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ali/user/mobile/accountbiz/extservice/impl/AuthServiceImpl;->threadMap:Ljava/util/HashMap;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return v0

    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/ali/user/mobile/accountbiz/extservice/impl/AuthServiceImpl;->threadMap:Ljava/util/HashMap;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string/jumbo v3, "wait"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method private innerFullLogin(Lcom/ali/user/mobile/accountbiz/extservice/LoginContext;)Z
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/ali/user/mobile/accountbiz/extservice/impl/AuthServiceImpl;->loginSuccess:Z

    invoke-static {}, Lcom/alipay/mobile/common/d/d;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalThreadStateException;

    const-string/jumbo v1, "can\'t in main thread call Auth Service ."

    invoke-direct {v0, v1}, Ljava/lang/IllegalThreadStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-string/jumbo v0, "\u5f00\u59cb\u514d\u767b, loginContext=%s"

    new-array v1, v5, [Ljava/lang/Object;

    aput-object p1, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ali/user/mobile/accountbiz/extservice/impl/AuthServiceImpl;->_log(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/ali/user/mobile/accountbiz/extservice/impl/AuthServiceImpl;->innerLogin(Lcom/ali/user/mobile/accountbiz/extservice/LoginContext;)Z

    move-result v0

    const-string/jumbo v1, "\u514d\u767b\u7ed3\u675f, showAppflag=%s"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/ali/user/mobile/accountbiz/extservice/impl/AuthServiceImpl;->_log(Ljava/lang/String;)V

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/ali/user/mobile/accountbiz/extservice/impl/AuthServiceImpl;->mLockLoginApp:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    const-string/jumbo v0, "\u5f00\u59cb\u767b\u5f55\u754c\u9762\u7b49\u5f85\u9501"

    invoke-direct {p0, v0}, Lcom/ali/user/mobile/accountbiz/extservice/impl/AuthServiceImpl;->_log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ali/user/mobile/accountbiz/extservice/impl/AuthServiceImpl;->mLockLoginApp:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    const-string/jumbo v0, "\u767b\u5f55\u754c\u9762\u7b49\u5f85\u9501\u91ca\u653e"

    invoke-direct {p0, v0}, Lcom/ali/user/mobile/accountbiz/extservice/impl/AuthServiceImpl;->_log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    const-string/jumbo v0, "\u767b\u5f55\u7ed3\u679c: %s, loginContext=%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-boolean v2, p0, Lcom/ali/user/mobile/accountbiz/extservice/impl/AuthServiceImpl;->loginSuccess:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v4

    aput-object p1, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ali/user/mobile/accountbiz/extservice/impl/AuthServiceImpl;->_log(Ljava/lang/String;)V

    const-string/jumbo v0, "\u68c0\u67e5\u662f\u5426\u9700\u8981\u8bbe\u7f6e\u6216\u8005\u9a8c\u8bc1\u624b\u52bf"

    invoke-direct {p0, v0}, Lcom/ali/user/mobile/accountbiz/extservice/impl/AuthServiceImpl;->_log(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/ali/user/mobile/accountbiz/extservice/impl/AuthServiceImpl;->loginSuccess:Z

    if-eqz v0, :cond_2

    const-string/jumbo v0, "\u767b\u5f55\u6210\u529f\uff0c\u91cd\u7f6emShowLoginCount"

    invoke-direct {p0, v0}, Lcom/ali/user/mobile/accountbiz/extservice/impl/AuthServiceImpl;->_log(Ljava/lang/String;)V

    :cond_2
    iget-boolean v0, p0, Lcom/ali/user/mobile/accountbiz/extservice/impl/AuthServiceImpl;->loginSuccess:Z

    return v0

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v2, "AuthServiceImpl"

    invoke-static {v2, v0}, Lcom/ali/user/mobile/e/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method private innerLogin(Lcom/ali/user/mobile/accountbiz/extservice/LoginContext;)Z
    .locals 8

    const/4 v7, 0x1

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/ali/user/mobile/accountbiz/extservice/LoginContext;->getUserInfo()Lcom/ali/user/mobile/account/bean/UserInfo;

    move-result-object v1

    invoke-virtual {p1}, Lcom/ali/user/mobile/accountbiz/extservice/LoginContext;->isSkipAutoLogin()Z

    move-result v2

    invoke-direct {p0, v1}, Lcom/ali/user/mobile/accountbiz/extservice/impl/AuthServiceImpl;->isCanAutoLoginUser(Lcom/ali/user/mobile/account/bean/UserInfo;)Z

    move-result v3

    const-string/jumbo v4, "innerLogin, isSkipAutoLogin: %s, isCanAutoLoginUser: %s, userInfo: %s"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v7

    const/4 v6, 0x2

    invoke-static {v1}, Lcom/ali/user/mobile/util/g;->a(Lcom/ali/user/mobile/account/bean/UserInfo;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/ali/user/mobile/accountbiz/extservice/impl/AuthServiceImpl;->_log(Ljava/lang/String;)V

    if-nez v2, :cond_1

    if-eqz v3, :cond_1

    invoke-direct {p0, p1}, Lcom/ali/user/mobile/accountbiz/extservice/impl/AuthServiceImpl;->autoLoginStart(Lcom/ali/user/mobile/accountbiz/extservice/LoginContext;)Z

    move-result v1

    const-string/jumbo v2, "autoLoginStart\u7ed3\u679c: %s"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/ali/user/mobile/accountbiz/extservice/impl/AuthServiceImpl;->_log(Ljava/lang/String;)V

    if-eqz v1, :cond_1

    iput-boolean v7, p0, Lcom/ali/user/mobile/accountbiz/extservice/impl/AuthServiceImpl;->loginSuccess:Z

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Lcom/ali/user/mobile/accountbiz/extservice/LoginContext;->isForceNotShowLoginApp()Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v0, "\u5f53\u524d\u65e0\u6cd5\u514d\u767b\uff0c\u542f\u52a8\u767b\u5f55\u754c\u9762"

    invoke-direct {p0, v0}, Lcom/ali/user/mobile/accountbiz/extservice/impl/AuthServiceImpl;->_log(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/ali/user/mobile/accountbiz/extservice/LoginContext;->getUserInfo()Lcom/ali/user/mobile/account/bean/UserInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/ali/user/mobile/accountbiz/extservice/LoginContext;->getParams()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "logonId"

    invoke-virtual {p1}, Lcom/ali/user/mobile/accountbiz/extservice/LoginContext;->getUserInfo()Lcom/ali/user/mobile/account/bean/UserInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ali/user/mobile/account/bean/UserInfo;->getLogonId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p1}, Lcom/ali/user/mobile/accountbiz/extservice/LoginContext;->getParams()Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ali/user/mobile/accountbiz/extservice/impl/AuthServiceImpl;->showLoginApp(Landroid/os/Bundle;)Z

    move-result v0

    goto :goto_0
.end method

.method private isBlank(Ljava/lang/String;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    :cond_0
    move v0, v1

    :cond_1
    :goto_0
    return v0

    :cond_2
    move v2, v0

    :goto_1
    if-ge v2, v3, :cond_3

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v4

    if-eqz v4, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method private isCanAutoLoginUser(Lcom/ali/user/mobile/account/bean/UserInfo;)Z
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/ali/user/mobile/account/bean/UserInfo;->isAutoLogin()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loginForResult(Lcom/ali/user/mobile/accountbiz/extservice/LoginContext;)Z
    .locals 7

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/ali/user/mobile/accountbiz/extservice/impl/AuthServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/ali/user/mobile/accountbiz/extservice/manager/AntExtServiceManager;->getLoginService(Landroid/content/Context;)Lcom/ali/user/mobile/accountbiz/extservice/LoginService;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ali/user/mobile/accountbiz/extservice/LoginContext;->getUserInfo()Lcom/ali/user/mobile/account/bean/UserInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ali/user/mobile/account/bean/UserInfo;->getLogonId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/ali/user/mobile/accountbiz/extservice/LoginContext;->isResetCookie()Z

    move-result v6

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-interface/range {v0 .. v6}, Lcom/ali/user/mobile/accountbiz/extservice/LoginService;->login(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/ali/user/mobile/account/bean/UserLoginResultBiz;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/ali/user/mobile/accountbiz/extservice/impl/AuthServiceImpl;->result(Lcom/ali/user/mobile/accountbiz/extservice/LoginContext;Lcom/ali/user/mobile/account/bean/UserLoginResultBiz;)Z

    move-result v0

    return v0
.end method

.method private putLoginKey(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/ali/user/mobile/accountbiz/extservice/impl/AuthServiceImpl;->mMemService:Lcom/ali/user/mobile/accountbiz/extservice/AUMemCacheService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ali/user/mobile/accountbiz/extservice/impl/AuthServiceImpl;->mMemService:Lcom/ali/user/mobile/accountbiz/extservice/AUMemCacheService;

    const-string/jumbo v1, "securityapp"

    const-string/jumbo v2, "security"

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/ali/user/mobile/accountbiz/extservice/AUMemCacheService;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private reGenerateTid()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/ali/user/mobile/accountbiz/extservice/impl/AuthServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/ali/user/mobile/c/c;->a(Landroid/content/Context;)Lcom/ali/user/mobile/c/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ali/user/mobile/c/c;->b()Z

    const-string/jumbo v0, "com.alipay.android.phone.inside.PHONE_CASHIER_RESET_TID"

    invoke-static {v0}, Lcom/alipay/android/phone/inside/framework/a/c;->b(Ljava/lang/String;)Lcom/alipay/android/phone/inside/framework/service/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/alipay/android/phone/inside/framework/service/a;->start(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "AuthServiceImpl"

    invoke-static {v1, v0}, Lcom/ali/user/mobile/e/a;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private result(Lcom/ali/user/mobile/accountbiz/extservice/LoginContext;Lcom/ali/user/mobile/account/bean/UserLoginResultBiz;)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v2, 0x0

    const-string/jumbo v1, "\u5f00\u59cb\u5904\u7406\u514d\u767b\u7ed3\u679c"

    invoke-direct {p0, v1}, Lcom/ali/user/mobile/accountbiz/extservice/impl/AuthServiceImpl;->_log(Ljava/lang/String;)V

    if-eqz p2, :cond_6

    const-string/jumbo v1, "\u514d\u767b\u670d\u52a1\u7ed3\u675f, resultStatus: %s, memo: %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/ali/user/mobile/account/bean/UserLoginResultBiz;->getResultStatus()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-virtual {p2}, Lcom/ali/user/mobile/account/bean/UserLoginResultBiz;->getMemo()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/ali/user/mobile/accountbiz/extservice/impl/AuthServiceImpl;->_log(Ljava/lang/String;)V

    const/16 v1, 0x3e8

    invoke-virtual {p2}, Lcom/ali/user/mobile/account/bean/UserLoginResultBiz;->getResultStatus()I

    move-result v3

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lcom/ali/user/mobile/accountbiz/extservice/impl/AuthServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/ali/user/mobile/accountbiz/extservice/manager/AntExtServiceManager;->getUserInfoService(Landroid/content/Context;)Lcom/ali/user/mobile/accountbiz/extservice/UserInfoService;

    move-result-object v1

    invoke-virtual {p2}, Lcom/ali/user/mobile/account/bean/UserLoginResultBiz;->getUserId()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    const-string/jumbo v2, "\u67e5\u8be2\u7528\u6237\u4fe1\u606f\u5e76\u653e\u5165\u7f13\u5b58\u5f00\u59cb"

    invoke-direct {p0, v2}, Lcom/ali/user/mobile/accountbiz/extservice/impl/AuthServiceImpl;->_log(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/ali/user/mobile/account/bean/UserLoginResultBiz;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/ali/user/mobile/accountbiz/extservice/UserInfoService;->queryUserInfo(Ljava/lang/String;)Lcom/ali/user/mobile/account/bean/UserMode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ali/user/mobile/account/bean/UserMode;->getUserInfo()Lcom/ali/user/mobile/account/bean/UserInfo;

    const-string/jumbo v1, "\u67e5\u8be2\u7528\u6237\u4fe1\u606f\u5e76\u653e\u5165\u7f13\u5b58\u5b8c\u6210"

    invoke-direct {p0, v1}, Lcom/ali/user/mobile/accountbiz/extservice/impl/AuthServiceImpl;->_log(Ljava/lang/String;)V

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v1}, Lcom/ali/user/mobile/accountbiz/extservice/LoginContext;->setIsLoginSucess(Ljava/lang/Boolean;)V

    :goto_0
    return v0

    :cond_0
    const-string/jumbo v0, "\u767b\u5f55\u6210\u529f\u540e\uff0c\u8fd4\u56deuserId \u4e3a null "

    invoke-direct {p0, v0}, Lcom/ali/user/mobile/accountbiz/extservice/impl/AuthServiceImpl;->_log(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Lcom/ali/user/mobile/accountbiz/extservice/LoginContext;->setIsLoginSucess(Ljava/lang/Boolean;)V

    const-string/jumbo v0, "autoLoginRpc"

    const-string/jumbo v1, "fail-\u767b\u5f55\u6210\u529f\u540e\uff0c\u8fd4\u56deuserId \u4e3a null"

    invoke-direct {p0, v0, v1}, Lcom/ali/user/mobile/accountbiz/extservice/impl/AuthServiceImpl;->putLoginKey(Ljava/lang/String;Ljava/lang/Object;)V

    move v0, v2

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "autoLoginRpc"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "fail-status:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/ali/user/mobile/account/bean/UserLoginResultBiz;->getResultStatus()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/ali/user/mobile/accountbiz/extservice/impl/AuthServiceImpl;->putLoginKey(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/ali/user/mobile/accountbiz/extservice/impl/AuthServiceImpl;->clearAuthLoginFlag()V

    invoke-virtual {p2}, Lcom/ali/user/mobile/account/bean/UserLoginResultBiz;->getResultStatus()I

    move-result v0

    const/16 v1, 0x1b5e

    if-eq v0, v1, :cond_2

    invoke-virtual {p2}, Lcom/ali/user/mobile/account/bean/UserLoginResultBiz;->getResultStatus()I

    move-result v0

    const/16 v1, 0x1b5f

    if-ne v0, v1, :cond_3

    :cond_2
    const-string/jumbo v0, "\u514d\u767b\u6821\u9a8ctid\u5931\u8d25\uff0c\u91cd\u65b0\u751f\u6210tid"

    invoke-direct {p0, v0}, Lcom/ali/user/mobile/accountbiz/extservice/impl/AuthServiceImpl;->_log(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/ali/user/mobile/accountbiz/extservice/impl/AuthServiceImpl;->reGenerateTid()V

    :cond_3
    invoke-virtual {p0}, Lcom/ali/user/mobile/accountbiz/extservice/impl/AuthServiceImpl;->getLastLoginedUserInfo()Lcom/ali/user/mobile/account/bean/UserInfo;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0, v2}, Lcom/ali/user/mobile/account/bean/UserInfo;->setAutoLogin(Z)V

    invoke-virtual {v0}, Lcom/ali/user/mobile/account/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ali/user/mobile/accountbiz/extservice/impl/AuthServiceImpl;->autoLoginFail(Ljava/lang/String;)V

    :cond_4
    const-string/jumbo v0, "\u514d\u767b\u5931\u8d25\uff0c\u663e\u793a\u767b\u9646\u754c\u9762"

    invoke-direct {p0, v0}, Lcom/ali/user/mobile/accountbiz/extservice/impl/AuthServiceImpl;->_log(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/ali/user/mobile/account/bean/UserLoginResultBiz;->getResultStatus()I

    move-result v0

    const/16 v1, 0x7d3

    if-ne v0, v1, :cond_5

    const-string/jumbo v0, "\u514d\u767b\u5931\u8d25\uff0c\u5f3a\u5347"

    invoke-direct {p0, v0}, Lcom/ali/user/mobile/accountbiz/extservice/impl/AuthServiceImpl;->_log(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/ali/user/mobile/accountbiz/extservice/LoginContext;->getParams()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_7

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p1, v0}, Lcom/ali/user/mobile/accountbiz/extservice/LoginContext;->setParams(Landroid/os/Bundle;)V

    move-object v1, v0

    :goto_1
    const-string/jumbo v0, "force_upgrade_tag"

    invoke-virtual {p2}, Lcom/ali/user/mobile/account/bean/UserLoginResultBiz;->getResultStatus()I

    move-result v3

    invoke-virtual {v1, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "force_upgrade_target_version"

    invoke-virtual {p2}, Lcom/ali/user/mobile/account/bean/UserLoginResultBiz;->getCurrentProductVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "force_upgrade_exist_newversion"

    invoke-virtual {p2}, Lcom/ali/user/mobile/account/bean/UserLoginResultBiz;->getExistNewVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "force_upgrade_msg"

    invoke-virtual {p2}, Lcom/ali/user/mobile/account/bean/UserLoginResultBiz;->getMemo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "force_upgrade_package_download_url"

    invoke-virtual {p2}, Lcom/ali/user/mobile/account/bean/UserLoginResultBiz;->getDownloadURL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "force_upgrade_target_version"

    invoke-virtual {p2}, Lcom/ali/user/mobile/account/bean/UserLoginResultBiz;->getCurrentProductVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/ali/user/mobile/account/bean/UserLoginResultBiz;->getExtResAttrs()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_5

    const-string/jumbo v3, "force_upgrade_target_concrete_version"

    invoke-virtual {p2}, Lcom/ali/user/mobile/account/bean/UserLoginResultBiz;->getExtResAttrs()Ljava/util/Map;

    move-result-object v0

    const-string/jumbo v4, "upgradeVersion"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "force_upgrade_light_down_url"

    invoke-virtual {p2}, Lcom/ali/user/mobile/account/bean/UserLoginResultBiz;->getExtResAttrs()Ljava/util/Map;

    move-result-object v0

    const-string/jumbo v4, "lightUpgradeURL"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "force_upgrade_light_md5"

    invoke-virtual {p2}, Lcom/ali/user/mobile/account/bean/UserLoginResultBiz;->getExtResAttrs()Ljava/util/Map;

    move-result-object v0

    const-string/jumbo v4, "lightUpgradeMd5"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "force_upgrade_md5"

    invoke-virtual {p2}, Lcom/ali/user/mobile/account/bean/UserLoginResultBiz;->getExtResAttrs()Ljava/util/Map;

    move-result-object v0

    const-string/jumbo v4, "fullMd5"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Lcom/ali/user/mobile/accountbiz/extservice/LoginContext;->setIsLoginSucess(Ljava/lang/Boolean;)V

    move v0, v2

    goto/16 :goto_0

    :cond_6
    const-string/jumbo v0, "\u514d\u767b\u670d\u52a1\u5f00\u59cb\u670d\u52a1\u5668\u54cd\u5e94\u5f02\u5e38userLoginResultBiz=null"

    invoke-direct {p0, v0}, Lcom/ali/user/mobile/accountbiz/extservice/impl/AuthServiceImpl;->_log(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Lcom/ali/user/mobile/accountbiz/extservice/LoginContext;->setIsLoginSucess(Ljava/lang/Boolean;)V

    const-string/jumbo v0, "autoLoginRpc"

    const-string/jumbo v1, "fail-userLoginResultBiz is null"

    invoke-direct {p0, v0, v1}, Lcom/ali/user/mobile/accountbiz/extservice/impl/AuthServiceImpl;->putLoginKey(Ljava/lang/String;Ljava/lang/Object;)V

    move v0, v2

    goto/16 :goto_0

    :cond_7
    move-object v1, v0

    goto/16 :goto_1
.end method

.method private sLogLoginkey(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "loginSource"

    invoke-direct {p0, v0, p1}, Lcom/ali/user/mobile/accountbiz/extservice/impl/AuthServiceImpl;->putLoginKey(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/ali/user/mobile/accountbiz/extservice/impl/AuthServiceImpl;->logLoginKey()V

    return-void
.end method

.method private setWaitingThreadCanceled()V
    .locals 6

    iget-object v2, p0, Lcom/ali/user/mobile/accountbiz/extservice/impl/AuthServiceImpl;->threadMap:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lcom/ali/user/mobile/accountbiz/extservice/impl/AuthServiceImpl;->threadMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v4, "thread_can_not_cancel"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "\u8bbe\u5907\u9501\u5f00\u542f\u767b\u5f55\u9875\u7ebf\u7a0b\u4e0d\u80fd\u88abcancel\uff0c\u5426\u5219\u5f00\u542f\u4e0d\u4e86\u767b\u5f55\u9875"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ali/user/mobile/accountbiz/extservice/impl/AuthServiceImpl;->_log(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    const-string/jumbo v0, "\u767b\u5f55\u5b8c\u6210\u4e14\u767b\u5f55\u5931\u8d25\uff0c\u8bbe\u7f6e\u7b49\u5f85\u7ebf\u7a0b \u4e3a\u53d6\u6d88\u72b6\u6001 key=%s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ali/user/mobile/accountbiz/extservice/impl/AuthServiceImpl;->_log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ali/user/mobile/accountbiz/extservice/impl/AuthServiceImpl;->threadMap:Ljava/util/HashMap;

    const-string/jumbo v4, "canceled"

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method private setWaitingThreadOk()V
    .locals 6

    iget-object v1, p0, Lcom/ali/user/mobile/accountbiz/extservice/impl/AuthServiceImpl;->threadMap:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/ali/user/mobile/accountbiz/extservice/impl/AuthServiceImpl;->threadMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    const-string/jumbo v3, "\u767b\u5f55\u5b8c\u6210\u4e14\u767b\u5f55\u6210\u529f\uff0c\u8bbe\u7f6e\u7b49\u5f85\u7ebf\u7a0b \u4e3aok\u72b6\u6001 key=%s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/ali/user/mobile/accountbiz/extservice/impl/AuthServiceImpl;->_log(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/ali/user/mobile/accountbiz/extservice/impl/AuthServiceImpl;->threadMap:Ljava/util/HashMap;

    const-string/jumbo v4, "thread_ok"

    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method private showLoginApp(Landroid/os/Bundle;)Z
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    const-string/jumbo v2, "\u5f00\u59cb\u5524\u8d77\u767b\u9646\u754c\u9762, params: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/ali/user/mobile/accountbiz/extservice/impl/AuthServiceImpl;->_log(Ljava/lang/String;)V

    const-string/jumbo v2, "com.ali.user.mobile.login.app.LoginAppService"

    invoke-static {v2}, Lcom/ali/user/mobile/util/i;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string/jumbo v3, "AuthServiceImpl"

    const-string/jumbo v4, "reflect get LoginAppService success"

    invoke-static {v3, v4}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "startLoginPage"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/content/Context;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, Landroid/os/Bundle;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/ali/user/mobile/accountbiz/extservice/impl/AuthServiceImpl;->mContext:Landroid/content/Context;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object p1, v5, v6

    invoke-static {v2, v3, v4, v5}, Lcom/ali/user/mobile/util/i;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_0

    const-string/jumbo v2, "come_back"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "\u8c03\u8d77\u767b\u5f55\u9875\u9762\uff0c\u5e76\u4e14\u767b\u5f55\u9875\u9762\u4e0d\u53ef\u9000\u51fa\uff0c\u6e05\u9664\u672c\u5730\u767b\u5f55\u6001"

    invoke-direct {p0, v2}, Lcom/ali/user/mobile/accountbiz/extservice/impl/AuthServiceImpl;->_log(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ali/user/mobile/accountbiz/extservice/impl/AuthServiceImpl;->clearAuthLoginFlag()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "AuthServiceImpl"

    invoke-static {v2, v0}, Lcom/ali/user/mobile/e/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v1

    goto :goto_0
.end method

.method private declared-synchronized syncAuth(Lcom/ali/user/mobile/accountbiz/extservice/LoginContext;)Z
    .locals 6

    const/4 v2, 0x0

    const/4 v1, 0x1

    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "-----syncAuth \u662f\u5426\u8df3\u8fc7\u68c0\u67e5\u5f53\u524d\u767b\u5f55\u6001\u6807\u8bb0  isSkipCheckIsLogin:%s, isLogin:%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/ali/user/mobile/accountbiz/extservice/LoginContext;->isSkipCheckIsLogin()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/ali/user/mobile/accountbiz/extservice/impl/AuthServiceImpl;->isLogin()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ali/user/mobile/accountbiz/extservice/impl/AuthServiceImpl;->_log(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/ali/user/mobile/accountbiz/extservice/LoginContext;->isDirectAuth()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "DirectAuth\u8bf7\u6c42\uff0c\u4e0d\u5224\u65ad\u767b\u5f55\uff0c\u76f4\u63a5\u5c1d\u8bd5\u514d\u767b"

    invoke-direct {p0, v0}, Lcom/ali/user/mobile/accountbiz/extservice/impl/AuthServiceImpl;->_log(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/ali/user/mobile/accountbiz/extservice/impl/AuthServiceImpl;->threadMap:Ljava/util/HashMap;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v3, "\u5f53\u524d\u7ebf\u7a0b\u88ab\u6807\u8bb0\u72b6\u6001: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/ali/user/mobile/accountbiz/extservice/impl/AuthServiceImpl;->_log(Ljava/lang/String;)V

    const-string/jumbo v3, "canceled"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_2

    move v0, v2

    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    :try_start_1
    invoke-virtual {p1}, Lcom/ali/user/mobile/accountbiz/extservice/LoginContext;->isSkipCheckIsLogin()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/ali/user/mobile/accountbiz/extservice/impl/AuthServiceImpl;->isLogin()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "\u9700\u8981\u68c0\u67e5\u767b\u5f55\u6001\u6807\u8bb0\u5e76\u4e14isLogin()=true, rpc\u8bf7\u6c42\u5df2\u7ecf\u767b\u5f55 "

    invoke-direct {p0, v0}, Lcom/ali/user/mobile/accountbiz/extservice/impl/AuthServiceImpl;->_log(Ljava/lang/String;)V

    move v0, v1

    goto :goto_0

    :cond_2
    const-string/jumbo v2, "thread_ok"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    invoke-direct {p0, p1}, Lcom/ali/user/mobile/accountbiz/extservice/impl/AuthServiceImpl;->innerFullLogin(Lcom/ali/user/mobile/accountbiz/extservice/LoginContext;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/ali/user/mobile/accountbiz/extservice/impl/AuthServiceImpl;->setWaitingThreadOk()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_4
    :try_start_2
    invoke-direct {p0}, Lcom/ali/user/mobile/accountbiz/extservice/impl/AuthServiceImpl;->setWaitingThreadCanceled()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private traceRpcAuthStack()V
    .locals 6

    const-string/jumbo v0, "test"

    invoke-static {}, Lcom/alipay/mobile/common/b/a;->a()Lcom/alipay/mobile/common/b/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/common/b/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "dev"

    invoke-static {}, Lcom/alipay/mobile/common/b/a;->a()Lcom/alipay/mobile/common/b/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/common/b/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "rc"

    invoke-static {}, Lcom/alipay/mobile/common/b/a;->a()Lcom/alipay/mobile/common/b/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/common/b/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    if-eqz v2, :cond_2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "###"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "###"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string/jumbo v0, "UC-ZHAQ-56"

    const-string/jumbo v2, "loginTrace"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "rpcAuthTrace = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, ""

    const-string/jumbo v4, ""

    invoke-static {v0, v2, v1, v3, v4}, Lcom/ali/user/mobile/e/c;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_1
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v1

    const-string/jumbo v2, "\u602a\u7269"

    invoke-interface {v1, v2, v0}, Lcom/alipay/android/phone/inside/log/api/c/a;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method


# virtual methods
.method public auth()Z
    .locals 1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/accountbiz/extservice/impl/AuthServiceImpl;->auth(Landroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public auth(Landroid/os/Bundle;)Z
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string/jumbo v0, "-----auth, params: %s"

    new-array v1, v6, [Ljava/lang/Object;

    aput-object p1, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ali/user/mobile/accountbiz/extservice/impl/AuthServiceImpl;->_log(Ljava/lang/String;)V

    const-string/jumbo v0, "auth"

    invoke-direct {p0, v0}, Lcom/ali/user/mobile/accountbiz/extservice/impl/AuthServiceImpl;->sLogLoginkey(Ljava/lang/String;)V

    if-nez p1, :cond_0

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    :cond_0
    const-string/jumbo v0, "LoginSource"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "LoginSource"

    const-string/jumbo v1, "auth"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Lcom/ali/user/mobile/accountbiz/extservice/impl/AuthServiceImpl;->getLastLoginedUserInfo()Lcom/ali/user/mobile/account/bean/UserInfo;

    move-result-object v0

    new-instance v1, Lcom/ali/user/mobile/accountbiz/extservice/LoginContext;

    invoke-direct {v1}, Lcom/ali/user/mobile/accountbiz/extservice/LoginContext;-><init>()V

    invoke-virtual {v1, p1}, Lcom/ali/user/mobile/accountbiz/extservice/LoginContext;->setParams(Landroid/os/Bundle;)V

    invoke-virtual {v1, v0}, Lcom/ali/user/mobile/accountbiz/extservice/LoginContext;->setUserInfo(Lcom/ali/user/mobile/account/bean/UserInfo;)V

    if-eqz p1, :cond_2

    const-string/jumbo v0, "resetCookie"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const-string/jumbo v2, "auth - resetCookie: %s"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/ali/user/mobile/accountbiz/extservice/impl/AuthServiceImpl;->_log(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/ali/user/mobile/accountbiz/extservice/LoginContext;->setResetCookie(Z)V

    const-string/jumbo v0, "directAuth"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const-string/jumbo v2, "auth - directAuth: %s"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/ali/user/mobile/accountbiz/extservice/impl/AuthServiceImpl;->_log(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/ali/user/mobile/accountbiz/extservice/LoginContext;->setDirectAuth(Z)V

    :cond_2
    invoke-direct {p0, v1}, Lcom/ali/user/mobile/accountbiz/extservice/impl/AuthServiceImpl;->innerAuth(Lcom/ali/user/mobile/accountbiz/extservice/LoginContext;)Z

    move-result v0

    return v0
.end method

.method public autoAuth()Landroid/os/Bundle;
    .locals 8

    const/4 v2, 0x1

    const/4 v6, 0x0

    const-string/jumbo v0, "-----autoAuth"

    invoke-direct {p0, v0}, Lcom/ali/user/mobile/accountbiz/extservice/impl/AuthServiceImpl;->_log(Ljava/lang/String;)V

    const-string/jumbo v0, "autoAuth"

    invoke-direct {p0, v0}, Lcom/ali/user/mobile/accountbiz/extservice/impl/AuthServiceImpl;->sLogLoginkey(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/common/d/d;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalThreadStateException;

    const-string/jumbo v1, "can\'t in main thread call Auth Service ."

    invoke-direct {v0, v1}, Ljava/lang/IllegalThreadStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Lcom/ali/user/mobile/accountbiz/extservice/impl/AuthServiceImpl;->getLastLoginedUserInfo()Lcom/ali/user/mobile/account/bean/UserInfo;

    move-result-object v0

    const-string/jumbo v1, "\u5ba2\u6237\u7aef\u514d\u767b\u8bf7\u6c42\u7ebf\u7a0b(\u542f\u52a8\u514d\u767b): %s"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/ali/user/mobile/accountbiz/extservice/impl/AuthServiceImpl;->_log(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ali/user/mobile/accountbiz/extservice/impl/AuthServiceImpl;->threadMap:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    const-string/jumbo v2, "autoAuth \u6dfb\u52a0\u7b49\u5f85\u7ebf\u7a0b (\u542f\u52a8\u514d\u767b)key=%s "

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/ali/user/mobile/accountbiz/extservice/impl/AuthServiceImpl;->_log(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ali/user/mobile/accountbiz/extservice/impl/AuthServiceImpl;->threadMap:Ljava/util/HashMap;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string/jumbo v4, "wait"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v1, Lcom/ali/user/mobile/accountbiz/extservice/LoginContext;

    invoke-direct {v1}, Lcom/ali/user/mobile/accountbiz/extservice/LoginContext;-><init>()V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v3, "LoginSource"

    const-string/jumbo v4, "autoAuth"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/ali/user/mobile/accountbiz/extservice/LoginContext;->setParams(Landroid/os/Bundle;)V

    invoke-virtual {v1, v0}, Lcom/ali/user/mobile/accountbiz/extservice/LoginContext;->setUserInfo(Lcom/ali/user/mobile/account/bean/UserInfo;)V

    :try_start_1
    invoke-direct {p0, v1}, Lcom/ali/user/mobile/accountbiz/extservice/impl/AuthServiceImpl;->autoLogin(Lcom/ali/user/mobile/accountbiz/extservice/LoginContext;)Z
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result v0

    iget-object v2, p0, Lcom/ali/user/mobile/accountbiz/extservice/impl/AuthServiceImpl;->threadMap:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_2
    const-string/jumbo v3, "autoAuth \u79fb\u9664\u7b49\u5f85\u7ebf\u7a0b(\u542f\u52a8\u514d\u767b) key=%s "

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/ali/user/mobile/accountbiz/extservice/impl/AuthServiceImpl;->_log(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/ali/user/mobile/accountbiz/extservice/impl/AuthServiceImpl;->threadMap:Ljava/util/HashMap;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-virtual {v1}, Lcom/ali/user/mobile/accountbiz/extservice/LoginContext;->getParams()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "auto_login_result_logined"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v1

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    :catch_0
    move-exception v0

    :try_start_5
    const-string/jumbo v1, "autoLoginRpc"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "fail-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/ali/user/mobile/accountbiz/extservice/impl/AuthServiceImpl;->putLoginKey(Ljava/lang/String;Ljava/lang/Object;)V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception v0

    iget-object v1, p0, Lcom/ali/user/mobile/accountbiz/extservice/impl/AuthServiceImpl;->threadMap:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_6
    const-string/jumbo v2, "autoAuth \u79fb\u9664\u7b49\u5f85\u7ebf\u7a0b(\u542f\u52a8\u514d\u767b) key=%s "

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/ali/user/mobile/accountbiz/extservice/impl/AuthServiceImpl;->_log(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ali/user/mobile/accountbiz/extservice/impl/AuthServiceImpl;->threadMap:Ljava/util/HashMap;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v0

    :catchall_3
    move-exception v0

    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v0
.end method

.method public clearAuthLoginFlag()V
    .locals 2

    const-string/jumbo v0, "\u6e05\u9664\u672c\u5730\u767b\u5f55\u6001setCurrentLoginState = false"

    invoke-direct {p0, v0}, Lcom/ali/user/mobile/accountbiz/extservice/impl/AuthServiceImpl;->_log(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/ali/user/mobile/accountbiz/extservice/impl/AuthServiceImpl;->getAccountService()Lcom/ali/user/mobile/accountbiz/extservice/AccountService;

    move-result-object v0

    const-string/jumbo v1, "false"

    invoke-interface {v0, v1}, Lcom/ali/user/mobile/accountbiz/extservice/AccountService;->setCurrentLoginState(Ljava/lang/String;)V

    return-void
.end method

.method public clearLoginUserInfo()V
    .locals 1

    const-string/jumbo v0, "clearLoginUserInfo = null"

    invoke-direct {p0, v0}, Lcom/ali/user/mobile/accountbiz/extservice/impl/AuthServiceImpl;->_log(Ljava/lang/String;)V

    return-void
.end method

.method public gestureGetUserInfo()Lcom/ali/user/mobile/account/bean/UserInfo;
    .locals 4

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/ali/user/mobile/accountbiz/extservice/impl/AuthServiceImpl;->getAccountService()Lcom/ali/user/mobile/accountbiz/extservice/AccountService;

    move-result-object v1

    invoke-interface {v1, v0, v0}, Lcom/ali/user/mobile/accountbiz/extservice/AccountService;->getUserInfoBySql(Ljava/lang/String;Ljava/lang/String;)Lcom/ali/user/mobile/account/bean/UserInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/ali/user/mobile/account/bean/UserInfo;->isAutoLogin()Z

    move-result v2

    invoke-direct {p0}, Lcom/ali/user/mobile/accountbiz/extservice/impl/AuthServiceImpl;->getAccountService()Lcom/ali/user/mobile/accountbiz/extservice/AccountService;

    move-result-object v3

    invoke-interface {v3}, Lcom/ali/user/mobile/accountbiz/extservice/AccountService;->getCurrentLoginState()Z

    move-result v3

    if-nez v2, :cond_1

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public getLastLoginedUserInfo()Lcom/ali/user/mobile/account/bean/UserInfo;
    .locals 2

    invoke-direct {p0}, Lcom/ali/user/mobile/accountbiz/extservice/impl/AuthServiceImpl;->getAccountService()Lcom/ali/user/mobile/accountbiz/extservice/AccountService;

    move-result-object v0

    invoke-interface {v0}, Lcom/ali/user/mobile/accountbiz/extservice/AccountService;->getCurrentLoginUserId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ali/user/mobile/accountbiz/extservice/impl/AuthServiceImpl;->isBlank(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/ali/user/mobile/accountbiz/extservice/impl/AuthServiceImpl;->getAccountService()Lcom/ali/user/mobile/accountbiz/extservice/AccountService;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/ali/user/mobile/accountbiz/extservice/AccountService;->queryAccountDetailInfoByUserId(Ljava/lang/String;)Lcom/ali/user/mobile/account/bean/UserInfo;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLoginUserInfo()Lcom/ali/user/mobile/account/bean/UserInfo;
    .locals 5

    invoke-direct {p0}, Lcom/ali/user/mobile/accountbiz/extservice/impl/AuthServiceImpl;->getAccountService()Lcom/ali/user/mobile/accountbiz/extservice/AccountService;

    move-result-object v0

    invoke-interface {v0}, Lcom/ali/user/mobile/accountbiz/extservice/AccountService;->getCurrentLoginUserId()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "getLoginUserInfo - currentUserId: %s"

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    if-nez v1, :cond_0

    const-string/jumbo v0, "null"

    :goto_0
    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ali/user/mobile/accountbiz/extservice/impl/AuthServiceImpl;->_log(Ljava/lang/String;)V

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/ali/user/mobile/accountbiz/extservice/impl/AuthServiceImpl;->getAccountService()Lcom/ali/user/mobile/accountbiz/extservice/AccountService;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/ali/user/mobile/accountbiz/extservice/AccountService;->queryAccountDetailInfoByUserId(Ljava/lang/String;)Lcom/ali/user/mobile/account/bean/UserInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/ali/user/mobile/util/g;->a(Lcom/ali/user/mobile/account/bean/UserInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/ali/user/mobile/accountbiz/extservice/impl/AuthServiceImpl;->_log(Ljava/lang/String;)V

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/ali/user/mobile/account/bean/UserInfo;->isAutoLogin()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "userInfo != null, can autoLogin, return userInfo"

    invoke-direct {p0, v1}, Lcom/ali/user/mobile/accountbiz/extservice/impl/AuthServiceImpl;->_log(Ljava/lang/String;)V

    :goto_1
    return-object v0

    :cond_0
    const-string/jumbo v0, "not null"

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getTaoBaoSsoFlag()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ali/user/mobile/accountbiz/extservice/impl/AuthServiceImpl;->taoBaoSsoFlag:Z

    return v0
.end method

.method public getUserInfo()Lcom/ali/user/mobile/account/bean/UserInfo;
    .locals 6

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/ali/user/mobile/accountbiz/extservice/impl/AuthServiceImpl;->getAccountService()Lcom/ali/user/mobile/accountbiz/extservice/AccountService;

    move-result-object v0

    invoke-interface {v0}, Lcom/ali/user/mobile/accountbiz/extservice/AccountService;->getCurrentLoginUserId()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "getUserInfo - currentUserId:%s"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/Object;

    const/4 v5, 0x0

    if-nez v2, :cond_1

    const-string/jumbo v0, "null"

    :goto_0
    aput-object v0, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ali/user/mobile/accountbiz/extservice/impl/AuthServiceImpl;->_log(Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/ali/user/mobile/accountbiz/extservice/impl/AuthServiceImpl;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/ali/user/mobile/accountbiz/extservice/impl/AuthServiceImpl;->getAccountService()Lcom/ali/user/mobile/accountbiz/extservice/AccountService;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/ali/user/mobile/accountbiz/extservice/AccountService;->queryAccountDetailInfoByUserId(Ljava/lang/String;)Lcom/ali/user/mobile/account/bean/UserInfo;

    move-result-object v0

    :goto_1
    if-nez v0, :cond_0

    const-string/jumbo v1, "getUserInfo is null"

    invoke-direct {p0, v1}, Lcom/ali/user/mobile/accountbiz/extservice/impl/AuthServiceImpl;->_log(Ljava/lang/String;)V

    :cond_0
    return-object v0

    :cond_1
    const-string/jumbo v0, "not null"

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method public isLogin()Z
    .locals 1

    invoke-direct {p0}, Lcom/ali/user/mobile/accountbiz/extservice/impl/AuthServiceImpl;->getAccountService()Lcom/ali/user/mobile/accountbiz/extservice/AccountService;

    move-result-object v0

    invoke-interface {v0}, Lcom/ali/user/mobile/accountbiz/extservice/AccountService;->getCurrentLoginState()Z

    move-result v0

    return v0
.end method

.method public logLoginKey()V
    .locals 3

    invoke-direct {p0}, Lcom/ali/user/mobile/accountbiz/extservice/impl/AuthServiceImpl;->getAccountService()Lcom/ali/user/mobile/accountbiz/extservice/AccountService;

    move-result-object v0

    invoke-interface {v0}, Lcom/ali/user/mobile/accountbiz/extservice/AccountService;->getCurrentLoginUserId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "CurrentLoginUserId"

    const-string/jumbo v1, "false"

    invoke-direct {p0, v0, v1}, Lcom/ali/user/mobile/accountbiz/extservice/impl/AuthServiceImpl;->putLoginKey(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    invoke-virtual {p0}, Lcom/ali/user/mobile/accountbiz/extservice/impl/AuthServiceImpl;->getLastLoginedUserInfo()Lcom/ali/user/mobile/account/bean/UserInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string/jumbo v1, "userInfo"

    const-string/jumbo v2, "true"

    invoke-direct {p0, v1, v2}, Lcom/ali/user/mobile/accountbiz/extservice/impl/AuthServiceImpl;->putLoginKey(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v1, "isAutoLogin"

    invoke-virtual {v0}, Lcom/ali/user/mobile/account/bean/UserInfo;->isAutoLogin()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/ali/user/mobile/accountbiz/extservice/impl/AuthServiceImpl;->putLoginKey(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_1
    const-string/jumbo v0, "isSkipAutoLogin"

    const-string/jumbo v1, "false"

    invoke-direct {p0, v0, v1}, Lcom/ali/user/mobile/accountbiz/extservice/impl/AuthServiceImpl;->putLoginKey(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v0, "isLogin"

    invoke-virtual {p0}, Lcom/ali/user/mobile/accountbiz/extservice/impl/AuthServiceImpl;->isLogin()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/ali/user/mobile/accountbiz/extservice/impl/AuthServiceImpl;->putLoginKey(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_0
    const-string/jumbo v0, "CurrentLoginUserId"

    const-string/jumbo v1, "true"

    invoke-direct {p0, v0, v1}, Lcom/ali/user/mobile/accountbiz/extservice/impl/AuthServiceImpl;->putLoginKey(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "userInfo"

    const-string/jumbo v1, "false"

    invoke-direct {p0, v0, v1}, Lcom/ali/user/mobile/accountbiz/extservice/impl/AuthServiceImpl;->putLoginKey(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v0, "isAutoLogin"

    const-string/jumbo v1, "false"

    invoke-direct {p0, v0, v1}, Lcom/ali/user/mobile/accountbiz/extservice/impl/AuthServiceImpl;->putLoginKey(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public notifyUnlockGestureApp()V
    .locals 3

    iget-object v1, p0, Lcom/ali/user/mobile/accountbiz/extservice/impl/AuthServiceImpl;->mLockGestureApp:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    const-string/jumbo v0, "\u91ca\u653e\u624b\u52bf\u754c\u9762\u9501"

    invoke-direct {p0, v0}, Lcom/ali/user/mobile/accountbiz/extservice/impl/AuthServiceImpl;->_log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ali/user/mobile/accountbiz/extservice/impl/AuthServiceImpl;->mLockGestureApp:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    :try_start_1
    monitor-exit v1

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "AuthServiceImpl"

    invoke-static {v2, v0}, Lcom/ali/user/mobile/e/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public notifyUnlockLoginApp(ZZ)V
    .locals 5

    iget-object v1, p0, Lcom/ali/user/mobile/accountbiz/extservice/impl/AuthServiceImpl;->mLockLoginApp:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    const-string/jumbo v0, "notifyUnlockLoginApp\u91ca\u653e\u767b\u5f55\u754c\u9762\u9501, loginSuccess: %s, autoLogin: %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ali/user/mobile/accountbiz/extservice/impl/AuthServiceImpl;->_log(Ljava/lang/String;)V

    iput-boolean p1, p0, Lcom/ali/user/mobile/accountbiz/extservice/impl/AuthServiceImpl;->loginSuccess:Z

    iget-object v0, p0, Lcom/ali/user/mobile/accountbiz/extservice/impl/AuthServiceImpl;->mLockLoginApp:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    :try_start_1
    monitor-exit v1

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "AuthServiceImpl"

    invoke-static {v2, v0}, Lcom/ali/user/mobile/e/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public queryLatelyLoginUser()Lcom/ali/user/mobile/account/bean/UserInfo;
    .locals 6

    const/4 v0, 0x0

    const-string/jumbo v1, "\u67e5\u8be2\u6700\u8fd1\u4e00\u6b21\u767b\u5f55\u7528\u6237\u4fe1\u606f"

    invoke-direct {p0, v1}, Lcom/ali/user/mobile/accountbiz/extservice/impl/AuthServiceImpl;->_log(Ljava/lang/String;)V

    :try_start_0
    invoke-direct {p0}, Lcom/ali/user/mobile/accountbiz/extservice/impl/AuthServiceImpl;->getAccountService()Lcom/ali/user/mobile/accountbiz/extservice/AccountService;

    move-result-object v1

    invoke-interface {v1}, Lcom/ali/user/mobile/accountbiz/extservice/AccountService;->getCurrentLoginLogonId()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u67e5\u8be2\u51fa\u5f53\u524d\u767b\u5f55\u7528\u6237 currentUserLoginId=%s"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/ali/user/mobile/accountbiz/extservice/impl/AuthServiceImpl;->_log(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/ali/user/mobile/accountbiz/extservice/impl/AuthServiceImpl;->getAccountService()Lcom/ali/user/mobile/accountbiz/extservice/AccountService;

    move-result-object v1

    invoke-interface {v1}, Lcom/ali/user/mobile/accountbiz/extservice/AccountService;->getCurrentLoginUserId()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v2

    :try_start_2
    const-string/jumbo v1, "\u67e5\u8be2\u51fa\u5f53\u524d\u767b\u5f55\u7528\u6237 currentUserId=%s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/ali/user/mobile/accountbiz/extservice/impl/AuthServiceImpl;->_log(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    :goto_0
    if-eqz v3, :cond_0

    :try_start_3
    const-string/jumbo v1, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "\u5f53\u524d\u7528\u6237\u5df2\u7ecf\u767b\u5f55\u72b6\u6001 \uff0c\u67e5\u8be2\u5f53\u524d\u7528\u6237\u8be6\u7ec6\u4fe1\u606f"

    invoke-direct {p0, v1}, Lcom/ali/user/mobile/accountbiz/extservice/impl/AuthServiceImpl;->_log(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ali/user/mobile/accountbiz/extservice/impl/AuthServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/ali/user/mobile/accountbiz/extservice/manager/AntExtServiceManager;->getAccountService(Landroid/content/Context;)Lcom/ali/user/mobile/accountbiz/extservice/AccountService;

    move-result-object v1

    invoke-interface {v1, v2}, Lcom/ali/user/mobile/accountbiz/extservice/AccountService;->queryAccountDetailInfoByUserId(Ljava/lang/String;)Lcom/ali/user/mobile/account/bean/UserInfo;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v0

    :goto_1
    return-object v0

    :catch_0
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    :goto_2
    const-string/jumbo v4, "AuthServiceImpl"

    invoke-static {v4, v1}, Lcom/ali/user/mobile/e/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    :try_start_4
    const-string/jumbo v1, "\u5f53\u524d\u65e0\u767b\u9646\u7528\u6237\uff0c\u8fd4\u56de\u7a7a\u6570\u636e"

    invoke-direct {p0, v1}, Lcom/ali/user/mobile/accountbiz/extservice/impl/AuthServiceImpl;->_log(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    const-string/jumbo v2, "AuthServiceImpl"

    invoke-static {v2, v1}, Lcom/ali/user/mobile/e/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_2
    move-exception v1

    move-object v2, v0

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_2
.end method

.method public rpcAuth()Z
    .locals 4

    const/4 v2, 0x1

    const-string/jumbo v0, "-----rpcAuth"

    invoke-direct {p0, v0}, Lcom/ali/user/mobile/accountbiz/extservice/impl/AuthServiceImpl;->_log(Ljava/lang/String;)V

    const-string/jumbo v0, "rpcAuth"

    invoke-direct {p0, v0}, Lcom/ali/user/mobile/accountbiz/extservice/impl/AuthServiceImpl;->sLogLoginkey(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/ali/user/mobile/accountbiz/extservice/impl/AuthServiceImpl;->traceRpcAuthStack()V

    new-instance v0, Lcom/ali/user/mobile/accountbiz/extservice/LoginContext;

    invoke-direct {v0}, Lcom/ali/user/mobile/accountbiz/extservice/LoginContext;-><init>()V

    invoke-virtual {p0}, Lcom/ali/user/mobile/accountbiz/extservice/impl/AuthServiceImpl;->getLoginUserInfo()Lcom/ali/user/mobile/account/bean/UserInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/accountbiz/extservice/LoginContext;->setUserInfo(Lcom/ali/user/mobile/account/bean/UserInfo;)V

    invoke-virtual {v0, v2}, Lcom/ali/user/mobile/accountbiz/extservice/LoginContext;->setSkipGestureApp(Z)V

    invoke-virtual {v0, v2}, Lcom/ali/user/mobile/accountbiz/extservice/LoginContext;->setSkipCheckIsLogin(Z)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "LoginSource"

    const-string/jumbo v3, "rpcAuth"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/accountbiz/extservice/LoginContext;->setParams(Landroid/os/Bundle;)V

    invoke-direct {p0, v0}, Lcom/ali/user/mobile/accountbiz/extservice/impl/AuthServiceImpl;->innerAuth(Lcom/ali/user/mobile/accountbiz/extservice/LoginContext;)Z

    move-result v0

    return v0
.end method

.method public rpcAuth(Z)Z
    .locals 4

    const/4 v2, 0x1

    const-string/jumbo v0, "-----rpcAuth Inside"

    invoke-direct {p0, v0}, Lcom/ali/user/mobile/accountbiz/extservice/impl/AuthServiceImpl;->_log(Ljava/lang/String;)V

    const-string/jumbo v0, "rpcAuth Inside"

    invoke-direct {p0, v0}, Lcom/ali/user/mobile/accountbiz/extservice/impl/AuthServiceImpl;->sLogLoginkey(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/ali/user/mobile/accountbiz/extservice/impl/AuthServiceImpl;->traceRpcAuthStack()V

    new-instance v0, Lcom/ali/user/mobile/accountbiz/extservice/LoginContext;

    invoke-direct {v0}, Lcom/ali/user/mobile/accountbiz/extservice/LoginContext;-><init>()V

    invoke-virtual {p0}, Lcom/ali/user/mobile/accountbiz/extservice/impl/AuthServiceImpl;->getLoginUserInfo()Lcom/ali/user/mobile/account/bean/UserInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/accountbiz/extservice/LoginContext;->setUserInfo(Lcom/ali/user/mobile/account/bean/UserInfo;)V

    invoke-virtual {v0, v2}, Lcom/ali/user/mobile/accountbiz/extservice/LoginContext;->setSkipGestureApp(Z)V

    invoke-virtual {v0, v2}, Lcom/ali/user/mobile/accountbiz/extservice/LoginContext;->setSkipCheckIsLogin(Z)V

    invoke-virtual {v0, p1}, Lcom/ali/user/mobile/accountbiz/extservice/LoginContext;->setForceNotShowLogin(Z)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "LoginSource"

    const-string/jumbo v3, "rpcAuth"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/accountbiz/extservice/LoginContext;->setParams(Landroid/os/Bundle;)V

    invoke-direct {p0, v0}, Lcom/ali/user/mobile/accountbiz/extservice/impl/AuthServiceImpl;->innerAuth(Lcom/ali/user/mobile/accountbiz/extservice/LoginContext;)Z

    move-result v0

    return v0
.end method

.method public setTaoBaoSsoFlag(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ali/user/mobile/accountbiz/extservice/impl/AuthServiceImpl;->taoBaoSsoFlag:Z

    return-void
.end method

.method public showActivityLogin(Landroid/os/Bundle;Lcom/ali/user/mobile/account/bean/UserInfo;)Z
    .locals 4

    const/4 v3, 0x1

    const-string/jumbo v0, "-----showActivityLogin, params: %s, userInfo: %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    aput-object p2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ali/user/mobile/accountbiz/extservice/impl/AuthServiceImpl;->_log(Ljava/lang/String;)V

    const-string/jumbo v0, "showActivityLogin"

    invoke-direct {p0, v0}, Lcom/ali/user/mobile/accountbiz/extservice/impl/AuthServiceImpl;->sLogLoginkey(Ljava/lang/String;)V

    const-string/jumbo v0, "AuthServiceImpl"

    const-string/jumbo v1, "showActivityLogin"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/ali/user/mobile/accountbiz/extservice/LoginContext;

    invoke-direct {v0}, Lcom/ali/user/mobile/accountbiz/extservice/LoginContext;-><init>()V

    invoke-virtual {v0, p1}, Lcom/ali/user/mobile/accountbiz/extservice/LoginContext;->setParams(Landroid/os/Bundle;)V

    invoke-virtual {v0, p2}, Lcom/ali/user/mobile/accountbiz/extservice/LoginContext;->setUserInfo(Lcom/ali/user/mobile/account/bean/UserInfo;)V

    invoke-virtual {v0, v3}, Lcom/ali/user/mobile/accountbiz/extservice/LoginContext;->setSkipAutoLogin(Z)V

    invoke-virtual {v0, v3}, Lcom/ali/user/mobile/accountbiz/extservice/LoginContext;->setSkipCheckIsLogin(Z)V

    invoke-virtual {v0, v3}, Lcom/ali/user/mobile/accountbiz/extservice/LoginContext;->setSkipSelectAccountApp(Z)V

    const-string/jumbo v1, "isSkipAutoLogin"

    const-string/jumbo v2, "true"

    invoke-direct {p0, v1, v2}, Lcom/ali/user/mobile/accountbiz/extservice/impl/AuthServiceImpl;->putLoginKey(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/ali/user/mobile/accountbiz/extservice/impl/AuthServiceImpl;->innerAuth(Lcom/ali/user/mobile/accountbiz/extservice/LoginContext;)Z

    move-result v0

    return v0
.end method
