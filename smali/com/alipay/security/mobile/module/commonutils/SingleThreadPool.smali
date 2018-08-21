.class public Lcom/alipay/security/mobile/module/commonutils/SingleThreadPool;
.super Ljava/lang/Object;
.source "SingleThreadPool.java"


# static fields
.field private static instance:Lcom/alipay/security/mobile/module/commonutils/SingleThreadPool;


# instance fields
.field private mTaskQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private workThread:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/alipay/security/mobile/module/commonutils/SingleThreadPool;

    invoke-direct {v0}, Lcom/alipay/security/mobile/module/commonutils/SingleThreadPool;-><init>()V

    sput-object v0, Lcom/alipay/security/mobile/module/commonutils/SingleThreadPool;->instance:Lcom/alipay/security/mobile/module/commonutils/SingleThreadPool;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/security/mobile/module/commonutils/SingleThreadPool;->workThread:Ljava/lang/Thread;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/alipay/security/mobile/module/commonutils/SingleThreadPool;->mTaskQueue:Ljava/util/LinkedList;

    return-void
.end method

.method static synthetic access$000(Lcom/alipay/security/mobile/module/commonutils/SingleThreadPool;)Ljava/util/LinkedList;
    .locals 1

    iget-object v0, p0, Lcom/alipay/security/mobile/module/commonutils/SingleThreadPool;->mTaskQueue:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$102(Lcom/alipay/security/mobile/module/commonutils/SingleThreadPool;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0

    iput-object p1, p0, Lcom/alipay/security/mobile/module/commonutils/SingleThreadPool;->workThread:Ljava/lang/Thread;

    return-object p1
.end method

.method public static getInstance()Lcom/alipay/security/mobile/module/commonutils/SingleThreadPool;
    .locals 1

    sget-object v0, Lcom/alipay/security/mobile/module/commonutils/SingleThreadPool;->instance:Lcom/alipay/security/mobile/module/commonutils/SingleThreadPool;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized execute(Ljava/lang/Runnable;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/security/mobile/module/commonutils/SingleThreadPool;->mTaskQueue:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/alipay/security/mobile/module/commonutils/SingleThreadPool;->workThread:Ljava/lang/Thread;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/alipay/security/mobile/module/commonutils/SingleThreadPool$1;

    invoke-direct {v1, p0}, Lcom/alipay/security/mobile/module/commonutils/SingleThreadPool$1;-><init>(Lcom/alipay/security/mobile/module/commonutils/SingleThreadPool;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/alipay/security/mobile/module/commonutils/SingleThreadPool;->workThread:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/alipay/security/mobile/module/commonutils/SingleThreadPool;->workThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
