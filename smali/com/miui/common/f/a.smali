.class public Lcom/miui/common/f/a;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static aBU:Lcom/miui/common/f/a;


# instance fields
.field private aBT:Ljava/util/Map;

.field private mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/common/f/a;->aBT:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/common/f/a;->mContext:Landroid/content/Context;

    return-void
.end method

.method private aMo(Lcom/miui/common/f/b;Lcom/miui/common/f/c;Landroid/os/IBinder;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-interface {p1, p3}, Lcom/miui/common/f/b;->ed(Landroid/os/IBinder;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p2}, Lcom/miui/common/f/a;->aMs(Lcom/miui/common/f/c;)V

    :cond_0
    return-void
.end method

.method private aMq(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, p2, v1}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private aMs(Lcom/miui/common/f/c;)V
    .locals 4

    if-eqz p1, :cond_2

    iget-object v1, p1, Lcom/miui/common/f/c;->aBZ:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v0, p1, Lcom/miui/common/f/c;->aBW:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p1, Lcom/miui/common/f/c;->aBW:I

    const-string/jumbo v0, "BinderManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "action:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/miui/common/f/c;->action:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "   bindCount : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/miui/common/f/c;->aBW:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lmiui/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p1, Lcom/miui/common/f/c;->aBW:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    :try_start_1
    iget-object v0, p1, Lcom/miui/common/f/c;->aBY:Landroid/os/IBinder;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/miui/common/f/c;->aBX:Lcom/miui/common/f/d;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "BinderManager"

    const-string/jumbo v2, "BinderManager execute releaseService"

    invoke-static {v0, v2}, Lmiui/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/common/f/a;->mContext:Landroid/content/Context;

    iget-object v2, p1, Lcom/miui/common/f/c;->aBX:Lcom/miui/common/f/d;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_0
    iget-object v0, p0, Lcom/miui/common/f/a;->aBT:Ljava/util/Map;

    iget-object v2, p1, Lcom/miui/common/f/c;->action:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :goto_0
    monitor-exit v1

    :cond_2
    return-void

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v2, "BinderManager"

    const-string/jumbo v3, "IllegalArgumentException:"

    invoke-static {v2, v3, v0}, Lmiui/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic aMt(Lcom/miui/common/f/a;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/miui/common/f/a;->aBT:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic aMu(Lcom/miui/common/f/a;Lcom/miui/common/f/b;Lcom/miui/common/f/c;Landroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/common/f/a;->aMo(Lcom/miui/common/f/b;Lcom/miui/common/f/c;Landroid/os/IBinder;)V

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/miui/common/f/a;
    .locals 2

    const-class v1, Lcom/miui/common/f/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/miui/common/f/a;->aBU:Lcom/miui/common/f/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/common/f/a;

    invoke-direct {v0, p0}, Lcom/miui/common/f/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/miui/common/f/a;->aBU:Lcom/miui/common/f/a;

    :cond_0
    sget-object v0, Lcom/miui/common/f/a;->aBU:Lcom/miui/common/f/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public aMn(Ljava/lang/String;Ljava/lang/String;Lcom/miui/common/f/b;)Z
    .locals 7

    const/4 v1, 0x1

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/miui/common/f/a;->aBT:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/common/f/c;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/common/f/c;

    invoke-direct {v0, p0}, Lcom/miui/common/f/c;-><init>(Lcom/miui/common/f/a;)V

    iput-object p1, v0, Lcom/miui/common/f/c;->action:Ljava/lang/String;

    iput-object p2, v0, Lcom/miui/common/f/c;->aBV:Ljava/lang/String;

    new-instance v3, Lcom/miui/common/f/d;

    invoke-direct {v3, p0, p1}, Lcom/miui/common/f/d;-><init>(Lcom/miui/common/f/a;Ljava/lang/String;)V

    iput-object v3, v0, Lcom/miui/common/f/c;->aBX:Lcom/miui/common/f/d;

    iget-object v3, p0, Lcom/miui/common/f/a;->aBT:Ljava/util/Map;

    iget-object v4, v0, Lcom/miui/common/f/c;->action:Ljava/lang/String;

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v3, v0, Lcom/miui/common/f/c;->aBZ:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget v4, v0, Lcom/miui/common/f/c;->aBW:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v0, Lcom/miui/common/f/c;->aBW:I

    iget-object v4, v0, Lcom/miui/common/f/c;->aBX:Lcom/miui/common/f/d;

    if-eqz v4, :cond_1

    iget-object v4, v0, Lcom/miui/common/f/c;->aBX:Lcom/miui/common/f/d;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/miui/common/f/d;->aMx(Lcom/miui/common/f/d;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v3

    const-string/jumbo v3, "BinderManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "action:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "   bindCount : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Lcom/miui/common/f/c;->aBW:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lmiui/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, v0, Lcom/miui/common/f/c;->aBY:Landroid/os/IBinder;

    if-eqz v3, :cond_2

    const-string/jumbo v2, "BinderManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "find cached binder:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/miui/common/f/c;->aBY:Landroid/os/IBinder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " thread:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lmiui/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v0, Lcom/miui/common/f/c;->aBY:Landroid/os/IBinder;

    invoke-direct {p0, p3, v0, v2}, Lcom/miui/common/f/a;->aMo(Lcom/miui/common/f/b;Lcom/miui/common/f/c;Landroid/os/IBinder;)V

    :goto_0
    return v1

    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0

    :cond_2
    iget-object v3, v0, Lcom/miui/common/f/c;->aBZ:Ljava/lang/Object;

    monitor-enter v3

    :try_start_1
    iget-object v0, p0, Lcom/miui/common/f/a;->aBT:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/common/f/c;

    if-eqz v0, :cond_5

    iget-object v4, v0, Lcom/miui/common/f/c;->aBY:Landroid/os/IBinder;

    if-eqz v4, :cond_3

    const-string/jumbo v4, "BinderManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "find cached binder in synchronized code:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/miui/common/f/c;->aBY:Landroid/os/IBinder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " thread:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "  isBindServiceSuccess:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lmiui/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v0, Lcom/miui/common/f/c;->aBY:Landroid/os/IBinder;

    invoke-direct {p0, p3, v0, v2}, Lcom/miui/common/f/a;->aMo(Lcom/miui/common/f/b;Lcom/miui/common/f/c;Landroid/os/IBinder;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v3

    return v1

    :cond_3
    :try_start_2
    iget-object v2, v0, Lcom/miui/common/f/c;->aBX:Lcom/miui/common/f/d;

    invoke-virtual {v2, p3}, Lcom/miui/common/f/d;->aMv(Lcom/miui/common/f/b;)V

    iget-boolean v2, v0, Lcom/miui/common/f/c;->aCa:Z

    if-nez v2, :cond_5

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/miui/common/f/c;->aBV:Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/common/f/a;->mContext:Landroid/content/Context;

    iget-object v4, v0, Lcom/miui/common/f/c;->aBX:Lcom/miui/common/f/d;

    const/4 v5, 0x1

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    iget-object v4, p0, Lcom/miui/common/f/a;->mContext:Landroid/content/Context;

    invoke-direct {p0, v4, v2}, Lcom/miui/common/f/a;->aMq(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v2

    if-nez v2, :cond_4

    xor-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_4

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/miui/common/f/c;->aCa:Z

    :goto_1
    const-string/jumbo v0, "BinderManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "can not  find cached binder\uff0cbind service thread:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "  isBindServiceSuccess:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lmiui/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move v0, v1

    :goto_2
    monitor-exit v3

    move v1, v0

    goto/16 :goto_0

    :cond_4
    const/4 v2, 0x1

    :try_start_3
    iput-boolean v2, v0, Lcom/miui/common/f/c;->aCa:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    monitor-exit v3

    throw v0

    :cond_5
    move v0, v1

    goto :goto_2
.end method

.method public aMp(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/miui/common/f/a;->aBT:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/common/f/c;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/miui/common/f/c;->aBX:Lcom/miui/common/f/d;

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/miui/common/f/c;->aBX:Lcom/miui/common/f/d;

    invoke-static {v0}, Lcom/miui/common/f/d;->aMw(Lcom/miui/common/f/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public aMr(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/common/f/a;->aBT:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/common/f/c;

    invoke-direct {p0, v0}, Lcom/miui/common/f/a;->aMs(Lcom/miui/common/f/c;)V

    return-void
.end method
