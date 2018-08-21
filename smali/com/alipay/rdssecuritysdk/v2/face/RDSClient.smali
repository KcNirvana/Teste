.class public Lcom/alipay/rdssecuritysdk/v2/face/RDSClient;
.super Ljava/lang/Object;
.source "RDSClient.java"


# static fields
.field public static ApkVerify:J = 0x0L

.field private static final MAX_WAIT_TIME:J = 0x1f40L

.field private static context:Landroid/content/Context;

.field private static debug:Z

.field private static hasStartInitialize:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static initializeCond:Ljava/util/concurrent/locks/Condition;

.field private static initializeLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private static isInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static logger:Lcom/alipay/android/phone/inside/log/api/c/a;

.field private static se:Lcom/alipay/mobile/security/senative/APSE;


# instance fields
.field private rdsModelService:Lcom/alipay/rdssecuritysdk/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v0

    sput-object v0, Lcom/alipay/rdssecuritysdk/v2/face/RDSClient;->logger:Lcom/alipay/android/phone/inside/log/api/c/a;

    sput-boolean v1, Lcom/alipay/rdssecuritysdk/v2/face/RDSClient;->debug:Z

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/alipay/rdssecuritysdk/v2/face/RDSClient;->isInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/alipay/rdssecuritysdk/v2/face/RDSClient;->hasStartInitialize:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Lcom/alipay/rdssecuritysdk/v2/face/RDSClient;->initializeLock:Ljava/util/concurrent/locks/ReentrantLock;

    sget-object v0, Lcom/alipay/rdssecuritysdk/v2/face/RDSClient;->initializeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    sput-object v0, Lcom/alipay/rdssecuritysdk/v2/face/RDSClient;->initializeCond:Ljava/util/concurrent/locks/Condition;

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/alipay/rdssecuritysdk/v2/face/RDSClient;->ApkVerify:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()V
    .locals 0

    invoke-static {}, Lcom/alipay/rdssecuritysdk/v2/face/RDSClient;->doApkVerifyWork()V

    return-void
.end method

.method private static doApkVerifyWork()V
    .locals 10

    const-wide/16 v8, -0x1

    const v6, 0x1fffff

    new-instance v0, Lcom/alipay/android/phone/inside/log/api/behavior/a;

    invoke-direct {v0}, Lcom/alipay/android/phone/inside/log/api/behavior/a;-><init>()V

    const-string/jumbo v1, "APK_VERIFY_RESULT"

    iput-object v1, v0, Lcom/alipay/android/phone/inside/log/api/behavior/a;->a:Ljava/lang/String;

    :try_start_0
    sget-object v1, Lcom/alipay/rdssecuritysdk/v2/face/RDSClient;->se:Lcom/alipay/mobile/security/senative/APSE;

    sget-object v2, Lcom/alipay/rdssecuritysdk/v2/face/RDSClient;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/security/senative/APSE;->init(Ljava/lang/Object;)J

    move-result-wide v2

    const/16 v1, 0x20

    shr-long v4, v2, v1

    and-long/2addr v4, v8

    long-to-int v1, v4

    and-int v4, v1, v6

    shr-int/lit8 v1, v1, 0x15

    and-int/lit16 v1, v1, 0x3ff

    and-long/2addr v2, v8

    long-to-int v2, v2

    and-int v3, v2, v6

    shr-int/lit8 v2, v2, 0x15

    and-int/lit16 v2, v2, 0x3ff

    if-nez v4, :cond_0

    if-nez v1, :cond_0

    if-nez v3, :cond_0

    if-eqz v2, :cond_1

    :cond_0
    const-wide/16 v6, 0x1

    sput-wide v6, Lcom/alipay/rdssecuritysdk/v2/face/RDSClient;->ApkVerify:J

    :cond_1
    sget-object v5, Lcom/alipay/rdssecuritysdk/v2/face/RDSClient;->logger:Lcom/alipay/android/phone/inside/log/api/c/a;

    const-string/jumbo v6, "APSecuritySdk"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "APK_VERIFY_RESULT majorErrCode:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " minorErrCode:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " minorLineNum:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lcom/alipay/android/phone/inside/log/api/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/alipay/android/phone/inside/log/api/behavior/a;->g:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/alipay/android/phone/inside/log/api/behavior/a;->h:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "-"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/android/phone/inside/log/api/behavior/a;->i:Ljava/lang/String;

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getBehaviorLogger()Lcom/alipay/android/phone/inside/log/api/behavior/b;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/alipay/android/phone/inside/log/api/behavior/b;->a(Lcom/alipay/android/phone/inside/log/api/behavior/a;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    sget-object v0, Lcom/alipay/rdssecuritysdk/v2/face/RDSClient;->isInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    sget-object v0, Lcom/alipay/rdssecuritysdk/v2/face/RDSClient;->initializeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    sget-object v0, Lcom/alipay/rdssecuritysdk/v2/face/RDSClient;->initializeCond:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sget-object v0, Lcom/alipay/rdssecuritysdk/v2/face/RDSClient;->initializeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v0, Lcom/alipay/rdssecuritysdk/v2/face/RDSClient;->initializeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-object v1, Lcom/alipay/rdssecuritysdk/v2/face/RDSClient;->initializeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    :catch_1
    move-exception v1

    :try_start_2
    const-string/jumbo v1, "0"

    iput-object v1, v0, Lcom/alipay/android/phone/inside/log/api/behavior/a;->g:Ljava/lang/String;

    const-string/jumbo v1, "0"

    iput-object v1, v0, Lcom/alipay/android/phone/inside/log/api/behavior/a;->h:Ljava/lang/String;

    const-string/jumbo v1, "0"

    iput-object v1, v0, Lcom/alipay/android/phone/inside/log/api/behavior/a;->i:Ljava/lang/String;

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getBehaviorLogger()Lcom/alipay/android/phone/inside/log/api/behavior/b;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/alipay/android/phone/inside/log/api/behavior/b;->a(Lcom/alipay/android/phone/inside/log/api/behavior/a;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    sget-object v0, Lcom/alipay/rdssecuritysdk/v2/face/RDSClient;->isInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    sget-object v0, Lcom/alipay/rdssecuritysdk/v2/face/RDSClient;->initializeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    sget-object v0, Lcom/alipay/rdssecuritysdk/v2/face/RDSClient;->initializeCond:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    sget-object v0, Lcom/alipay/rdssecuritysdk/v2/face/RDSClient;->initializeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catch_2
    move-exception v0

    sget-object v0, Lcom/alipay/rdssecuritysdk/v2/face/RDSClient;->initializeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_1
    move-exception v0

    sget-object v1, Lcom/alipay/rdssecuritysdk/v2/face/RDSClient;->initializeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    :catchall_2
    move-exception v0

    :try_start_4
    sget-object v1, Lcom/alipay/rdssecuritysdk/v2/face/RDSClient;->isInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    sget-object v1, Lcom/alipay/rdssecuritysdk/v2/face/RDSClient;->initializeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    sget-object v1, Lcom/alipay/rdssecuritysdk/v2/face/RDSClient;->initializeCond:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    sget-object v1, Lcom/alipay/rdssecuritysdk/v2/face/RDSClient;->initializeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_1
    throw v0

    :catch_3
    move-exception v1

    sget-object v1, Lcom/alipay/rdssecuritysdk/v2/face/RDSClient;->initializeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_1

    :catchall_3
    move-exception v0

    sget-object v1, Lcom/alipay/rdssecuritysdk/v2/face/RDSClient;->initializeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public static declared-synchronized enableLog()V
    .locals 2

    const-class v0, Lcom/alipay/rdssecuritysdk/v2/face/RDSClient;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    sput-boolean v1, Lcom/alipay/rdssecuritysdk/v2/face/RDSClient;->debug:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/alipay/rdssecuritysdk/v2/face/RDSClient;->context:Landroid/content/Context;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 3

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/alipay/rdssecuritysdk/v2/face/RDSClient;->logger:Lcom/alipay/android/phone/inside/log/api/c/a;

    const-string/jumbo v1, "APSecuritySdk"

    const-string/jumbo v2, "loading."

    invoke-interface {v0, v1, v2}, Lcom/alipay/android/phone/inside/log/api/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/alipay/rdssecuritysdk/v2/face/RDSClient;->hasStartInitialize:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/alipay/mobile/security/senative/APSE;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/security/senative/APSE;

    move-result-object v0

    sput-object v0, Lcom/alipay/rdssecuritysdk/v2/face/RDSClient;->se:Lcom/alipay/mobile/security/senative/APSE;

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/alipay/rdssecuritysdk/v2/face/RDSClient$1;

    invoke-direct {v1}, Lcom/alipay/rdssecuritysdk/v2/face/RDSClient$1;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public static isDebug()Z
    .locals 1

    sget-boolean v0, Lcom/alipay/rdssecuritysdk/v2/face/RDSClient;->debug:Z

    return v0
.end method

.method public static setContext(Landroid/content/Context;)V
    .locals 0

    sput-object p0, Lcom/alipay/rdssecuritysdk/v2/face/RDSClient;->context:Landroid/content/Context;

    return-void
.end method

.method private waitApseFinishInitialize()V
    .locals 6

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v0, 0x0

    sget-object v4, Lcom/alipay/rdssecuritysdk/v2/face/RDSClient;->isInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    if-nez v4, :cond_1

    :try_start_1
    sget-object v4, Lcom/alipay/rdssecuritysdk/v2/face/RDSClient;->initializeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :goto_0
    sget-object v4, Lcom/alipay/rdssecuritysdk/v2/face/RDSClient;->isInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    if-nez v4, :cond_0

    const-wide/16 v4, 0x1f40

    cmp-long v0, v0, v4

    if-gez v0, :cond_0

    :try_start_2
    sget-object v0, Lcom/alipay/rdssecuritysdk/v2/face/RDSClient;->initializeCond:Ljava/util/concurrent/locks/Condition;

    const-wide/16 v4, 0x7d0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v4, v5, v1}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    :try_start_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-wide v0

    sub-long/2addr v0, v2

    goto :goto_0

    :cond_0
    :try_start_4
    sget-object v0, Lcom/alipay/rdssecuritysdk/v2/face/RDSClient;->initializeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_1
    :goto_2
    return-void

    :catch_0
    move-exception v0

    sget-object v0, Lcom/alipay/rdssecuritysdk/v2/face/RDSClient;->initializeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_2

    :catchall_0
    move-exception v0

    sget-object v1, Lcom/alipay/rdssecuritysdk/v2/face/RDSClient;->initializeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :catch_2
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method public declared-synchronized onControlClick(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/alipay/rdssecuritysdk/v2/face/RDSClient;->logger:Lcom/alipay/android/phone/inside/log/api/c/a;

    const-string/jumbo v1, "APSecuritySdk"

    const-string/jumbo v2, "RDSClient onControlClick."

    invoke-interface {v0, v1, v2}, Lcom/alipay/android/phone/inside/log/api/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v2/face/RDSClient;->rdsModelService:Lcom/alipay/rdssecuritysdk/a;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/rdssecuritysdk/a;->onControlClick(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onGetFocus(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/alipay/rdssecuritysdk/v2/face/RDSClient;->logger:Lcom/alipay/android/phone/inside/log/api/c/a;

    const-string/jumbo v1, "APSecuritySdk"

    const-string/jumbo v2, "RDSClient onGetFocus."

    invoke-interface {v0, v1, v2}, Lcom/alipay/android/phone/inside/log/api/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v2/face/RDSClient;->rdsModelService:Lcom/alipay/rdssecuritysdk/a;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Lcom/alipay/rdssecuritysdk/a;->onFocusChange(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onKeyDown(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/alipay/rdssecuritysdk/v2/face/RDSClient;->logger:Lcom/alipay/android/phone/inside/log/api/c/a;

    const-string/jumbo v1, "APSecuritySdk"

    const-string/jumbo v2, "RDSClient onKeyDown."

    invoke-interface {v0, v1, v2}, Lcom/alipay/android/phone/inside/log/api/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v2/face/RDSClient;->rdsModelService:Lcom/alipay/rdssecuritysdk/a;

    invoke-virtual {v0, p1, p2, p3}, Lcom/alipay/rdssecuritysdk/a;->onKeyDown(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onLostFocus(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/alipay/rdssecuritysdk/v2/face/RDSClient;->logger:Lcom/alipay/android/phone/inside/log/api/c/a;

    const-string/jumbo v1, "APSecuritySdk"

    const-string/jumbo v2, "RDSClient onLostFocus."

    invoke-interface {v0, v1, v2}, Lcom/alipay/android/phone/inside/log/api/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v2/face/RDSClient;->rdsModelService:Lcom/alipay/rdssecuritysdk/a;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/alipay/rdssecuritysdk/a;->onFocusChange(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onLostFocus(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/alipay/rdssecuritysdk/v2/face/RDSClient;->logger:Lcom/alipay/android/phone/inside/log/api/c/a;

    const-string/jumbo v1, "APSecuritySdk"

    const-string/jumbo v2, "RDSClient onLostFocus."

    invoke-interface {v0, v1, v2}, Lcom/alipay/android/phone/inside/log/api/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v2/face/RDSClient;->rdsModelService:Lcom/alipay/rdssecuritysdk/a;

    invoke-virtual {v0, p1, p2, p3}, Lcom/alipay/rdssecuritysdk/a;->onFocusChange(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onPage(Landroid/content/Context;Ljava/util/Map;Z)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)Z"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/alipay/rdssecuritysdk/v2/face/RDSClient;->logger:Lcom/alipay/android/phone/inside/log/api/c/a;

    const-string/jumbo v1, "APSecuritySdk"

    const-string/jumbo v2, "RDSClient onPage."

    invoke-interface {v0, v1, v2}, Lcom/alipay/android/phone/inside/log/api/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    invoke-static {p1}, Lcom/alipay/rdssecuritysdk/v2/face/RDSClient;->setContext(Landroid/content/Context;)V

    const-string/jumbo v0, "pageName"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v1, "refPageName"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v2, Lcom/alipay/rdssecuritysdk/v3/impl/RDSModelServiceV3Impl;

    invoke-direct {v2}, Lcom/alipay/rdssecuritysdk/v3/impl/RDSModelServiceV3Impl;-><init>()V

    iput-object v2, p0, Lcom/alipay/rdssecuritysdk/v2/face/RDSClient;->rdsModelService:Lcom/alipay/rdssecuritysdk/a;

    iget-object v2, p0, Lcom/alipay/rdssecuritysdk/v2/face/RDSClient;->rdsModelService:Lcom/alipay/rdssecuritysdk/a;

    if-nez v2, :cond_1

    sget-object v2, Lcom/alipay/rdssecuritysdk/v2/face/RDSClient;->logger:Lcom/alipay/android/phone/inside/log/api/c/a;

    const-string/jumbo v3, "APSecuritySdk"

    const-string/jumbo v4, "onPage(), NOT FIND SERVICE!!!"

    invoke-interface {v2, v3, v4}, Lcom/alipay/android/phone/inside/log/api/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    iget-object v2, p0, Lcom/alipay/rdssecuritysdk/v2/face/RDSClient;->rdsModelService:Lcom/alipay/rdssecuritysdk/a;

    invoke-virtual {v2, p1, p2, p3}, Lcom/alipay/rdssecuritysdk/a;->reInit(Landroid/content/Context;Ljava/util/Map;Z)V

    iget-object v2, p0, Lcom/alipay/rdssecuritysdk/v2/face/RDSClient;->rdsModelService:Lcom/alipay/rdssecuritysdk/a;

    invoke-virtual {v2, v0, v1}, Lcom/alipay/rdssecuritysdk/a;->onPage(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/alipay/rdssecuritysdk/v2/face/RDSClient;->logger:Lcom/alipay/android/phone/inside/log/api/c/a;

    const-string/jumbo v3, "APSecuritySdk"

    const-string/jumbo v4, "onPage(), find service success."

    invoke-interface {v2, v3, v4}, Lcom/alipay/android/phone/inside/log/api/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onPageEnd(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/alipay/rdssecuritysdk/v2/face/RDSClient;->logger:Lcom/alipay/android/phone/inside/log/api/c/a;

    const-string/jumbo v1, "APSecuritySdk"

    const-string/jumbo v2, "RDSClient onPageEnd."

    invoke-interface {v0, v1, v2}, Lcom/alipay/android/phone/inside/log/api/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/alipay/rdssecuritysdk/v2/face/RDSClient;->onPageEndAndZip(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onPageEndAndZip(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    sget-object v1, Lcom/alipay/rdssecuritysdk/v2/face/RDSClient;->logger:Lcom/alipay/android/phone/inside/log/api/c/a;

    const-string/jumbo v2, "APSecuritySdk"

    const-string/jumbo v3, "RDSClient onPageEndAndZip."

    invoke-interface {v1, v2, v3}, Lcom/alipay/android/phone/inside/log/api/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/rdssecuritysdk/v2/face/RDSClient;->rdsModelService:Lcom/alipay/rdssecuritysdk/a;

    invoke-virtual {v1, p2}, Lcom/alipay/rdssecuritysdk/a;->updateUser(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/rdssecuritysdk/v2/face/RDSClient;->rdsModelService:Lcom/alipay/rdssecuritysdk/a;

    invoke-virtual {v1}, Lcom/alipay/rdssecuritysdk/a;->onPageEnd()V

    invoke-static {}, Lcom/alipay/rdssecuritysdk/v2/face/RDSClient;->getContext()Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/alipay/rdssecuritysdk/v2/face/RDSClient;->waitApseFinishInitialize()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v1, p0, Lcom/alipay/rdssecuritysdk/v2/face/RDSClient;->rdsModelService:Lcom/alipay/rdssecuritysdk/a;

    sget-object v2, Lcom/alipay/rdssecuritysdk/v2/face/RDSClient;->se:Lcom/alipay/mobile/security/senative/APSE;

    invoke-virtual {v1, p1, v2}, Lcom/alipay/rdssecuritysdk/a;->getRdsRequestMessage(Landroid/content/Context;Lcom/alipay/mobile/security/senative/APSE;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_3
    sget-object v2, Lcom/alipay/rdssecuritysdk/v2/face/RDSClient;->logger:Lcom/alipay/android/phone/inside/log/api/c/a;

    const-string/jumbo v3, "APSecuritySdk"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onPageEndAndZip call manager.getRdsRequestMessage happened exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Lcom/alipay/android/phone/inside/log/api/c/a;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onTouchScreen(Ljava/lang/String;Ljava/lang/String;DD)V
    .locals 9

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/alipay/rdssecuritysdk/v2/face/RDSClient;->logger:Lcom/alipay/android/phone/inside/log/api/c/a;

    const-string/jumbo v1, "APSecuritySdk"

    const-string/jumbo v2, "RDSClient onTouchScreen."

    invoke-interface {v0, v1, v2}, Lcom/alipay/android/phone/inside/log/api/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/rdssecuritysdk/v2/face/RDSClient;->rdsModelService:Lcom/alipay/rdssecuritysdk/a;

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-wide v6, p5

    invoke-virtual/range {v1 .. v7}, Lcom/alipay/rdssecuritysdk/a;->onTouchScreen(Ljava/lang/String;Ljava/lang/String;DD)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
