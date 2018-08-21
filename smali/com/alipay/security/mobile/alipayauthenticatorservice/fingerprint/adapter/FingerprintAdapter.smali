.class public Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/adapter/FingerprintAdapter;
.super Ljava/lang/Object;
.source "FingerprintAdapter.java"


# static fields
.field private static sInstance:Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/adapter/FingerprintAdapter;

.field private static sInstanceLock:Ljava/lang/Object;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mExecutor:Ljava/util/concurrent/ExecutorService;

.field private mRunningThread:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/adapter/FingerprintAdapter;->sInstanceLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/adapter/FingerprintAdapter;->mContext:Landroid/content/Context;

    return-void
.end method

.method private declared-synchronized closeThread()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/adapter/FingerprintAdapter;->mRunningThread:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/adapter/FingerprintAdapter;->mRunningThread:Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/adapter/FingerprintAdapter;->mRunningThread:Ljava/util/concurrent/Future;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/adapter/FingerprintAdapter;->mExecutor:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/adapter/FingerprintAdapter;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :goto_1
    :try_start_2
    iget-object v0, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/adapter/FingerprintAdapter;->mRunningThread:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/adapter/FingerprintAdapter;->mRunningThread:Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/adapter/FingerprintAdapter;->mRunningThread:Ljava/util/concurrent/Future;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    :goto_2
    :try_start_3
    iget-object v0, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/adapter/FingerprintAdapter;->mExecutor:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/adapter/FingerprintAdapter;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/adapter/FingerprintAdapter;->mExecutor:Ljava/util/concurrent/ExecutorService;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_3
    :goto_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v0

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/adapter/FingerprintAdapter;
    .locals 2

    sget-object v1, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/adapter/FingerprintAdapter;->sInstanceLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/adapter/FingerprintAdapter;->sInstance:Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/adapter/FingerprintAdapter;

    if-nez v0, :cond_0

    new-instance v0, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/adapter/FingerprintAdapter;

    invoke-direct {v0, p0}, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/adapter/FingerprintAdapter;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/adapter/FingerprintAdapter;->sInstance:Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/adapter/FingerprintAdapter;

    :cond_0
    sget-object v0, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/adapter/FingerprintAdapter;->sInstance:Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/adapter/FingerprintAdapter;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public declared-synchronized finishAuth(Landroid/os/Bundle;)V
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/adapter/FingerprintAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/alipay/security/mobile/alipayauthenticatorservice/message/MessageCenter;->sendResponseMessage(Landroid/content/Context;Landroid/os/Bundle;)V

    :cond_0
    invoke-direct {p0}, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/adapter/FingerprintAdapter;->closeThread()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized handleAsyncMessage(Landroid/os/Bundle;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/adapter/FingerprintAdapter;->closeThread()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/adapter/FingerprintAdapter;->mExecutor:Ljava/util/concurrent/ExecutorService;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/adapter/FingerprintAdapter;->mRunningThread:Ljava/util/concurrent/Future;

    new-instance v0, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/adapter/FingerprintAdapter$1;

    invoke-direct {v0, p0}, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/adapter/FingerprintAdapter$1;-><init>(Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/adapter/FingerprintAdapter;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/adapter/FingerprintAdapter;->mExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/task/FingerprintTask;

    iget-object v1, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/adapter/FingerprintAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/task/FingerprintTask;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/adapter/FingerprintAdapter;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/adapter/FingerprintAdapter;->mRunningThread:Ljava/util/concurrent/Future;

    if-eqz p1, :cond_0

    const-string/jumbo v0, "KEY_OPERATIONT_TYPE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    invoke-static {v0}, Lcom/alipay/security/mobile/auth/AuthenticatorLOG;->error(Ljava/lang/Throwable;)V

    const/4 v0, 0x6

    const/16 v1, 0x65

    invoke-static {v0, v1}, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/util/FingerprintDataUtil;->constructResultBundle(II)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/adapter/FingerprintAdapter;->finishAuth(Landroid/os/Bundle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
