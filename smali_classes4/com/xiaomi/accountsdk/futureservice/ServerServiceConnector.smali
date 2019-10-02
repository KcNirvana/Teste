.class public abstract Lcom/xiaomi/accountsdk/futureservice/ServerServiceConnector;
.super Ljava/lang/Object;
.source "ServerServiceConnector.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<IServiceType:",
        "Ljava/lang/Object;",
        "ServerDataType:",
        "Ljava/lang/Object;",
        "ClientDataType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/content/ServiceConnection;"
    }
.end annotation


# static fields
.field private static final mThreadPool:Ljava/util/concurrent/ExecutorService;


# instance fields
.field private final bindFlag:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mActionName:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mFuture:Lcom/xiaomi/accountsdk/futureservice/ClientFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xiaomi/accountsdk/futureservice/ClientFuture<",
            "TServerDataType;TClientDataType;>;"
        }
    .end annotation
.end field

.field private mIService:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TIServiceType;"
        }
    .end annotation
.end field

.field private final mServicePackageName:Ljava/lang/String;

.field private final unbindFlag:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/accountsdk/futureservice/ServerServiceConnector;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/accountsdk/futureservice/ClientFuture;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/xiaomi/accountsdk/futureservice/ClientFuture<",
            "TServerDataType;TClientDataType;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/xiaomi/accountsdk/futureservice/ServerServiceConnector;->bindFlag:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/xiaomi/accountsdk/futureservice/ServerServiceConnector;->unbindFlag:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/accountsdk/futureservice/ServerServiceConnector;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/xiaomi/accountsdk/futureservice/ServerServiceConnector;->mActionName:Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaomi/accountsdk/futureservice/ServerServiceConnector;->mServicePackageName:Ljava/lang/String;

    iput-object p4, p0, Lcom/xiaomi/accountsdk/futureservice/ServerServiceConnector;->mFuture:Lcom/xiaomi/accountsdk/futureservice/ClientFuture;

    return-void
.end method

.method static synthetic access$000(Lcom/xiaomi/accountsdk/futureservice/ServerServiceConnector;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/accountsdk/futureservice/ServerServiceConnector;->doWork()V

    return-void
.end method

.method static checkFirstTimeCall(Ljava/util/concurrent/atomic/AtomicBoolean;)Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p0

    return p0
.end method

.method private clearFields()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/futureservice/ServerServiceConnector;->mIService:Ljava/lang/Object;

    iput-object v0, p0, Lcom/xiaomi/accountsdk/futureservice/ServerServiceConnector;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/xiaomi/accountsdk/futureservice/ServerServiceConnector;->mFuture:Lcom/xiaomi/accountsdk/futureservice/ClientFuture;

    return-void
.end method

.method private doWork()V
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/futureservice/ServerServiceConnector;->callServiceWork()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/accountsdk/futureservice/ServerServiceConnector;->mFuture:Lcom/xiaomi/accountsdk/futureservice/ClientFuture;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/xiaomi/accountsdk/futureservice/ServerServiceConnector;->mFuture:Lcom/xiaomi/accountsdk/futureservice/ClientFuture;

    invoke-virtual {v1, v0}, Lcom/xiaomi/accountsdk/futureservice/ClientFuture;->setServerData(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/xiaomi/accountsdk/futureservice/ServerServiceConnector;->mFuture:Lcom/xiaomi/accountsdk/futureservice/ClientFuture;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/xiaomi/accountsdk/futureservice/ServerServiceConnector;->mFuture:Lcom/xiaomi/accountsdk/futureservice/ClientFuture;

    invoke-virtual {v1, v0}, Lcom/xiaomi/accountsdk/futureservice/ClientFuture;->setServerSideThrowable(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public final bind()Z
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/accountsdk/futureservice/ServerServiceConnector;->bindFlag:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-static {v0}, Lcom/xiaomi/accountsdk/futureservice/ServerServiceConnector;->checkFirstTimeCall(Ljava/util/concurrent/atomic/AtomicBoolean;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/xiaomi/accountsdk/futureservice/ServerServiceConnector;->mActionName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/xiaomi/accountsdk/futureservice/ServerServiceConnector;->mServicePackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/xiaomi/accountsdk/futureservice/ServerServiceConnector;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, p0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-nez v0, :cond_1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xf

    if-ge v1, v2, :cond_0

    new-instance v1, Landroid/os/RemoteException;

    invoke-direct {v1}, Landroid/os/RemoteException;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v1, Landroid/os/RemoteException;

    const-string v2, "failed to bind to service"

    invoke-direct {v1, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    :goto_0
    iget-object v2, p0, Lcom/xiaomi/accountsdk/futureservice/ServerServiceConnector;->mFuture:Lcom/xiaomi/accountsdk/futureservice/ClientFuture;

    invoke-virtual {v2, v1}, Lcom/xiaomi/accountsdk/futureservice/ClientFuture;->setServerSideThrowable(Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/futureservice/ServerServiceConnector;->unbind()V

    :cond_1
    return v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "should only bind for one time"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected abstract binderToServiceType(Landroid/os/IBinder;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            ")TIServiceType;"
        }
    .end annotation
.end method

.method protected abstract callServiceWork()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TServerDataType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method protected final getIService()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TIServiceType;"
        }
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/accountsdk/futureservice/ServerServiceConnector;->mIService:Ljava/lang/Object;

    return-object v0
.end method

.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    invoke-virtual {p0, p2}, Lcom/xiaomi/accountsdk/futureservice/ServerServiceConnector;->binderToServiceType(Landroid/os/IBinder;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/accountsdk/futureservice/ServerServiceConnector;->mIService:Ljava/lang/Object;

    sget-object p1, Lcom/xiaomi/accountsdk/futureservice/ServerServiceConnector;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    new-instance p2, Lcom/xiaomi/accountsdk/futureservice/ServerServiceConnector$1;

    invoke-direct {p2, p0}, Lcom/xiaomi/accountsdk/futureservice/ServerServiceConnector$1;-><init>(Lcom/xiaomi/accountsdk/futureservice/ServerServiceConnector;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/accountsdk/futureservice/ServerServiceConnector;->clearFields()V

    return-void
.end method

.method final unbind()V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/accountsdk/futureservice/ServerServiceConnector;->unbindFlag:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-static {v0}, Lcom/xiaomi/accountsdk/futureservice/ServerServiceConnector;->checkFirstTimeCall(Ljava/util/concurrent/atomic/AtomicBoolean;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/accountsdk/futureservice/ServerServiceConnector;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/accountsdk/futureservice/ServerServiceConnector;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_1
    invoke-direct {p0}, Lcom/xiaomi/accountsdk/futureservice/ServerServiceConnector;->clearFields()V

    return-void
.end method
