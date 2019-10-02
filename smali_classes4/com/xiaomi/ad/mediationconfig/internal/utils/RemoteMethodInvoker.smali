.class public abstract Lcom/xiaomi/ad/mediationconfig/internal/utils/RemoteMethodInvoker;
.super Ljava/util/concurrent/FutureTask;
.source "RemoteMethodInvoker.java"

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
        "Ljava/util/concurrent/FutureTask<",
        "TT;>;",
        "Landroid/content/ServiceConnection;"
    }
.end annotation


# static fields
.field private static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class;",
            "Landroid/os/IInterface;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private b:Landroid/content/Context;

.field private c:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private d:Landroid/os/IInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TS;"
        }
    .end annotation
.end field

.field private e:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TS;>;"
        }
    .end annotation
.end field

.field private f:J

.field private g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/xiaomi/ad/mediationconfig/internal/utils/RemoteMethodInvoker;->a:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "TS;>;)V"
        }
    .end annotation

    new-instance v0, Lcom/xiaomi/ad/mediationconfig/internal/utils/RemoteMethodInvoker$1;

    invoke-direct {v0}, Lcom/xiaomi/ad/mediationconfig/internal/utils/RemoteMethodInvoker$1;-><init>()V

    invoke-direct {p0, v0}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    iput-object p1, p0, Lcom/xiaomi/ad/mediationconfig/internal/utils/RemoteMethodInvoker;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/xiaomi/ad/mediationconfig/internal/utils/RemoteMethodInvoker;->e:Ljava/lang/Class;

    const-string p1, "RemoteMethodInvoker"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "RMI of "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/xiaomi/ad/mediationconfig/internal/utils/RemoteMethodInvoker;->e:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Package;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/xiaomi/ad/mediationconfig/internal/utils/RemoteMethodInvoker;->e:Ljava/lang/Class;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/miui/zeus/logger/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/ad/mediationconfig/internal/utils/RemoteMethodInvoker;Landroid/os/IInterface;)Landroid/os/IInterface;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/ad/mediationconfig/internal/utils/RemoteMethodInvoker;->d:Landroid/os/IInterface;

    return-object p1
.end method

.method static synthetic a(Lcom/xiaomi/ad/mediationconfig/internal/utils/RemoteMethodInvoker;)Ljava/lang/Class;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/ad/mediationconfig/internal/utils/RemoteMethodInvoker;->e:Ljava/lang/Class;

    return-object p0
.end method

.method private a(Landroid/os/IInterface;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/xiaomi/ad/mediationconfig/internal/utils/RemoteMethodInvoker;->innerInvoke(Landroid/os/IInterface;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "RemoteMethodInvoker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[RMIMonitor] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaomi/ad/mediationconfig/internal/utils/RemoteMethodInvoker;->e:Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " takes "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/xiaomi/ad/mediationconfig/internal/utils/RemoteMethodInvoker;->f:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/zeus/logger/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method static synthetic a(Lcom/xiaomi/ad/mediationconfig/internal/utils/RemoteMethodInvoker;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/ad/mediationconfig/internal/utils/RemoteMethodInvoker;->c:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic a()Ljava/util/Map;
    .locals 1

    sget-object v0, Lcom/xiaomi/ad/mediationconfig/internal/utils/RemoteMethodInvoker;->a:Ljava/util/Map;

    return-object v0
.end method

.method private a(Landroid/os/IBinder;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/xiaomi/ad/mediationconfig/internal/utils/RemoteMethodInvoker;->g:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/xiaomi/ad/mediationconfig/internal/utils/RemoteMethodInvoker$4;

    invoke-direct {v0, p0, p1}, Lcom/xiaomi/ad/mediationconfig/internal/utils/RemoteMethodInvoker$4;-><init>(Lcom/xiaomi/ad/mediationconfig/internal/utils/RemoteMethodInvoker;Landroid/os/IBinder;)V

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    const-string v0, "RemoteMethodInvoker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Keep Service["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaomi/ad/mediationconfig/internal/utils/RemoteMethodInvoker;->e:Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "] for reusing!"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/miui/zeus/logger/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/xiaomi/ad/mediationconfig/internal/utils/RemoteMethodInvoker;->a:Ljava/util/Map;

    iget-object v0, p0, Lcom/xiaomi/ad/mediationconfig/internal/utils/RemoteMethodInvoker;->e:Ljava/lang/Class;

    iget-object v1, p0, Lcom/xiaomi/ad/mediationconfig/internal/utils/RemoteMethodInvoker;->d:Landroid/os/IInterface;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/xiaomi/ad/mediationconfig/internal/utils/RemoteMethodInvoker;Landroid/os/IBinder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/xiaomi/ad/mediationconfig/internal/utils/RemoteMethodInvoker;->a(Landroid/os/IBinder;)V

    return-void
.end method

.method private b()Landroid/os/IInterface;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/xiaomi/ad/mediationconfig/internal/utils/RemoteMethodInvoker;->g:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/xiaomi/ad/mediationconfig/internal/utils/RemoteMethodInvoker;->a:Ljava/util/Map;

    iget-object v1, p0, Lcom/xiaomi/ad/mediationconfig/internal/utils/RemoteMethodInvoker;->e:Ljava/lang/Class;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IInterface;

    if-eqz v0, :cond_0

    const-string v1, "RemoteMethodInvoker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Reuse Service["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaomi/ad/mediationconfig/internal/utils/RemoteMethodInvoker;->e:Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/zeus/logger/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic b(Lcom/xiaomi/ad/mediationconfig/internal/utils/RemoteMethodInvoker;)Landroid/os/IInterface;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/ad/mediationconfig/internal/utils/RemoteMethodInvoker;->d:Landroid/os/IInterface;

    return-object p0
.end method

.method static synthetic b(Lcom/xiaomi/ad/mediationconfig/internal/utils/RemoteMethodInvoker;Landroid/os/IInterface;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/xiaomi/ad/mediationconfig/internal/utils/RemoteMethodInvoker;->a(Landroid/os/IInterface;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b(Lcom/xiaomi/ad/mediationconfig/internal/utils/RemoteMethodInvoker;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/xiaomi/ad/mediationconfig/internal/utils/RemoteMethodInvoker;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public static binderCanBeReused(Ljava/lang/Class;)Z
    .locals 1

    sget-object v0, Lcom/xiaomi/ad/mediationconfig/internal/utils/RemoteMethodInvoker;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static synthetic c(Lcom/xiaomi/ad/mediationconfig/internal/utils/RemoteMethodInvoker;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/ad/mediationconfig/internal/utils/RemoteMethodInvoker;->b:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic d(Lcom/xiaomi/ad/mediationconfig/internal/utils/RemoteMethodInvoker;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/ad/mediationconfig/internal/utils/RemoteMethodInvoker;->c:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic e(Lcom/xiaomi/ad/mediationconfig/internal/utils/RemoteMethodInvoker;)Landroid/os/IInterface;
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/ad/mediationconfig/internal/utils/RemoteMethodInvoker;->b()Landroid/os/IInterface;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract innerInvoke(Landroid/os/IInterface;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public invoke(Landroid/content/Intent;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")TT;"
        }
    .end annotation

    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/xiaomi/ad/mediationconfig/internal/utils/RemoteMethodInvoker;->invoke(Landroid/content/Intent;J)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public invoke(Landroid/content/Intent;J)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "J)TT;"
        }
    .end annotation

    invoke-static {}, Lcom/xiaomi/ad/mediationconfig/internal/utils/AndroidUtil;->avoidOnMainThread()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/ad/mediationconfig/internal/utils/RemoteMethodInvoker;->f:J

    invoke-direct {p0}, Lcom/xiaomi/ad/mediationconfig/internal/utils/RemoteMethodInvoker;->b()Landroid/os/IInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/ad/mediationconfig/internal/utils/RemoteMethodInvoker;->d:Landroid/os/IInterface;

    iget-object v0, p0, Lcom/xiaomi/ad/mediationconfig/internal/utils/RemoteMethodInvoker;->d:Landroid/os/IInterface;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/xiaomi/ad/mediationconfig/internal/utils/RemoteMethodInvoker;->b:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, p0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p1

    if-eqz p1, :cond_1

    const-wide/16 v2, 0x0

    cmp-long p1, p2, v2

    if-gtz p1, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/xiaomi/ad/mediationconfig/internal/utils/RemoteMethodInvoker;->get()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_0
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, p2, p3, p1}, Lcom/xiaomi/ad/mediationconfig/internal/utils/RemoteMethodInvoker;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :goto_0
    const-string p2, "RemoteMethodInvoker"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "invoke Exception "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/xiaomi/ad/mediationconfig/internal/utils/RemoteMethodInvoker;->e:Ljava/lang/Class;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3, p1}, Lcom/miui/zeus/logger/MLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1

    :cond_1
    const-string p1, "RemoteMethodInvoker"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Can not find bind service for "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/xiaomi/ad/mediationconfig/internal/utils/RemoteMethodInvoker;->e:Ljava/lang/Class;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/miui/zeus/logger/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    :try_start_1
    iget-object p1, p0, Lcom/xiaomi/ad/mediationconfig/internal/utils/RemoteMethodInvoker;->d:Landroid/os/IInterface;

    invoke-direct {p0, p1}, Lcom/xiaomi/ad/mediationconfig/internal/utils/RemoteMethodInvoker;->a(Landroid/os/IInterface;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object p1

    :catch_1
    move-exception p1

    const-string p2, "RemoteMethodInvoker"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "invoke Exception "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/xiaomi/ad/mediationconfig/internal/utils/RemoteMethodInvoker;->e:Ljava/lang/Class;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3, p1}, Lcom/miui/zeus/logger/MLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-object v1
.end method

.method public invokeAsync(Landroid/content/Intent;)V
    .locals 3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/ad/mediationconfig/internal/utils/RemoteMethodInvoker;->f:J

    new-instance v0, Lcom/xiaomi/ad/mediationconfig/internal/utils/RemoteMethodInvoker$3;

    const-string v1, "RemoteMethodInvoker"

    const-string v2, "invokeAsync exception"

    invoke-direct {v0, p0, v1, v2, p1}, Lcom/xiaomi/ad/mediationconfig/internal/utils/RemoteMethodInvoker$3;-><init>(Lcom/xiaomi/ad/mediationconfig/internal/utils/RemoteMethodInvoker;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    sget-object p1, Lcom/xiaomi/ad/mediationconfig/internal/utils/TaskRunner;->CACHED_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    new-instance p1, Lcom/xiaomi/ad/mediationconfig/internal/utils/RemoteMethodInvoker$2;

    invoke-direct {p1, p0, p2}, Lcom/xiaomi/ad/mediationconfig/internal/utils/RemoteMethodInvoker$2;-><init>(Lcom/xiaomi/ad/mediationconfig/internal/utils/RemoteMethodInvoker;Landroid/os/IBinder;)V

    sget-object p2, Lcom/xiaomi/ad/mediationconfig/internal/utils/TaskRunner;->CACHED_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p2, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    return-void
.end method

.method public setReuseBinder(Z)Lcom/xiaomi/ad/mediationconfig/internal/utils/RemoteMethodInvoker;
    .locals 0

    iput-boolean p1, p0, Lcom/xiaomi/ad/mediationconfig/internal/utils/RemoteMethodInvoker;->g:Z

    return-object p0
.end method
