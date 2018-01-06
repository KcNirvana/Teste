.class public abstract Lcom/miui/systemAdSolution/remoteMethodInvoker/RemoteMethodInvoker;
.super Ljava/util/concurrent/FutureTask;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "S::",
        "Landroid/os/IInterface;",
        ">",
        "Ljava/util/concurrent/FutureTask",
        "<TT;>;",
        "Landroid/content/ServiceConnection;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "RemoteMethodInvoker"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mResult:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private mService:Landroid/os/IInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TS;"
        }
    .end annotation
.end field

.field private mServiceClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TS;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<TS;>;)V"
        }
    .end annotation

    new-instance v0, Lcom/miui/systemAdSolution/remoteMethodInvoker/RemoteMethodInvoker$1;

    invoke-direct {v0}, Lcom/miui/systemAdSolution/remoteMethodInvoker/RemoteMethodInvoker$1;-><init>()V

    invoke-direct {p0, v0}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    iput-object p1, p0, Lcom/miui/systemAdSolution/remoteMethodInvoker/RemoteMethodInvoker;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/miui/systemAdSolution/remoteMethodInvoker/RemoteMethodInvoker;->mServiceClass:Ljava/lang/Class;

    const-string v0, "RemoteMethodInvoker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/miui/systemAdSolution/remoteMethodInvoker/RemoteMethodInvoker;->mServiceClass:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Package;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/systemAdSolution/remoteMethodInvoker/RemoteMethodInvoker;->mServiceClass:Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic access$000(Lcom/miui/systemAdSolution/remoteMethodInvoker/RemoteMethodInvoker;)Ljava/lang/Class;
    .locals 1

    iget-object v0, p0, Lcom/miui/systemAdSolution/remoteMethodInvoker/RemoteMethodInvoker;->mServiceClass:Ljava/lang/Class;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/systemAdSolution/remoteMethodInvoker/RemoteMethodInvoker;)Landroid/os/IInterface;
    .locals 1

    iget-object v0, p0, Lcom/miui/systemAdSolution/remoteMethodInvoker/RemoteMethodInvoker;->mService:Landroid/os/IInterface;

    return-object v0
.end method

.method static synthetic access$102(Lcom/miui/systemAdSolution/remoteMethodInvoker/RemoteMethodInvoker;Landroid/os/IInterface;)Landroid/os/IInterface;
    .locals 0

    iput-object p1, p0, Lcom/miui/systemAdSolution/remoteMethodInvoker/RemoteMethodInvoker;->mService:Landroid/os/IInterface;

    return-object p1
.end method

.method static synthetic access$200(Lcom/miui/systemAdSolution/remoteMethodInvoker/RemoteMethodInvoker;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/miui/systemAdSolution/remoteMethodInvoker/RemoteMethodInvoker;->mResult:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$202(Lcom/miui/systemAdSolution/remoteMethodInvoker/RemoteMethodInvoker;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/miui/systemAdSolution/remoteMethodInvoker/RemoteMethodInvoker;->mResult:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$300(Lcom/miui/systemAdSolution/remoteMethodInvoker/RemoteMethodInvoker;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/miui/systemAdSolution/remoteMethodInvoker/RemoteMethodInvoker;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/miui/systemAdSolution/remoteMethodInvoker/RemoteMethodInvoker;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/miui/systemAdSolution/remoteMethodInvoker/RemoteMethodInvoker;->set(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public abstract innerInvoke(Landroid/os/IInterface;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)TT;"
        }
    .end annotation
.end method

.method public invoke(Landroid/content/Intent;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/miui/systemAdSolution/remoteMethodInvoker/RemoteMethodInvoker;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, p0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/miui/systemAdSolution/remoteMethodInvoker/RemoteMethodInvoker;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    :cond_0
    const-string v1, "RemoteMethodInvoker"

    const-string v2, "Can not find Service"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public invokeAsync(Landroid/content/Intent;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/systemAdSolution/remoteMethodInvoker/RemoteMethodInvoker;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p0, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method public invokeInNewThread(Landroid/content/Intent;)V
    .locals 1

    new-instance v0, Lcom/miui/systemAdSolution/remoteMethodInvoker/RemoteMethodInvoker$3;

    invoke-direct {v0, p0, p1}, Lcom/miui/systemAdSolution/remoteMethodInvoker/RemoteMethodInvoker$3;-><init>(Lcom/miui/systemAdSolution/remoteMethodInvoker/RemoteMethodInvoker;Landroid/content/Intent;)V

    invoke-virtual {v0}, Lcom/miui/systemAdSolution/remoteMethodInvoker/RemoteMethodInvoker$3;->start()V

    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    new-instance v0, Lcom/miui/systemAdSolution/remoteMethodInvoker/RemoteMethodInvoker$2;

    invoke-direct {v0, p0, p2}, Lcom/miui/systemAdSolution/remoteMethodInvoker/RemoteMethodInvoker$2;-><init>(Lcom/miui/systemAdSolution/remoteMethodInvoker/RemoteMethodInvoker;Landroid/os/IBinder;)V

    invoke-virtual {v0}, Lcom/miui/systemAdSolution/remoteMethodInvoker/RemoteMethodInvoker$2;->start()V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    return-void
.end method
