.class public Lcom/alipay/security/mobile/api/AuthenticatorApiAgent;
.super Ljava/lang/Object;
.source "AuthenticatorApiAgent.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static mExecutor:Ljava/util/concurrent/ExecutorService;

.field private static mRunningThread:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static declared-synchronized closeThread()V
    .locals 3

    const-class v1, Lcom/alipay/security/mobile/api/AuthenticatorApiAgent;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/security/mobile/api/AuthenticatorApiAgent;->mRunningThread:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/alipay/security/mobile/api/AuthenticatorApiAgent;->mRunningThread:Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/alipay/security/mobile/api/AuthenticatorApiAgent;->mRunningThread:Ljava/util/concurrent/Future;

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/security/mobile/api/AuthenticatorApiAgent;->mRunningThread:Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    :try_start_1
    sget-object v0, Lcom/alipay/security/mobile/api/AuthenticatorApiAgent;->mExecutor:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/alipay/security/mobile/api/AuthenticatorApiAgent;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/security/mobile/api/AuthenticatorApiAgent;->mExecutor:Ljava/util/concurrent/ExecutorService;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :goto_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public static declared-synchronized getPayAuthData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-class v2, Lcom/alipay/security/mobile/api/AuthenticatorApiAgent;

    monitor-enter v2

    :try_start_0
    const-string/jumbo v1, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {}, Lcom/alipay/security/mobile/api/AuthenticatorApiAgent;->closeThread()V

    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/security/mobile/api/AuthenticatorApiAgent;->mExecutor:Ljava/util/concurrent/ExecutorService;

    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/security/mobile/api/AuthenticatorApiAgent;->mRunningThread:Ljava/util/concurrent/Future;

    new-instance v0, Lcom/alipay/security/mobile/api/AuthenticatorApiAgent$1;

    invoke-direct {v0}, Lcom/alipay/security/mobile/api/AuthenticatorApiAgent$1;-><init>()V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/alipay/security/mobile/api/AuthenticatorApiAgent;->mExecutor:Ljava/util/concurrent/ExecutorService;

    sget-object v0, Lcom/alipay/security/mobile/api/AuthenticatorApiAgent;->mExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lcom/alipay/security/mobile/api/AuthenticatorApiAgent$2;

    invoke-direct {v3, p0, p1}, Lcom/alipay/security/mobile/api/AuthenticatorApiAgent$2;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    sput-object v0, Lcom/alipay/security/mobile/api/AuthenticatorApiAgent;->mRunningThread:Ljava/util/concurrent/Future;

    sget-object v0, Lcom/alipay/security/mobile/api/AuthenticatorApiAgent;->mRunningThread:Ljava/util/concurrent/Future;

    const-wide/16 v4, 0x2

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v4, v5, v3}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {}, Lcom/alipay/security/mobile/api/AuthenticatorApiAgent;->closeThread()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    monitor-exit v2

    return-object v0

    :catch_0
    move-exception v0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    :goto_1
    :try_start_3
    invoke-static {v1}, Lcom/alipay/security/mobile/auth/AuthenticatorLOG;->error(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :catch_1
    move-exception v1

    goto :goto_1
.end method
