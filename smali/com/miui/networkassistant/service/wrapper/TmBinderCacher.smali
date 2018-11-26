.class public Lcom/miui/networkassistant/service/wrapper/TmBinderCacher;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String; = "TmBinderCacher"

.field private static sInstance:Lcom/miui/networkassistant/service/wrapper/TmBinderCacher;


# instance fields
.field private mBinder:Landroid/os/IBinder;

.field private mBinderAndConnLock:Ljava/lang/Object;

.field private mComponentName:Landroid/content/ComponentName;

.field private mConn:Landroid/content/ServiceConnection;

.field private mConnections:Ljava/util/ArrayList;

.field private mContext:Landroid/content/Context;


# direct methods
.method static synthetic -get0(Lcom/miui/networkassistant/service/wrapper/TmBinderCacher;)Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/service/wrapper/TmBinderCacher;->mBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method static synthetic -get1(Lcom/miui/networkassistant/service/wrapper/TmBinderCacher;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/service/wrapper/TmBinderCacher;->mBinderAndConnLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get2(Lcom/miui/networkassistant/service/wrapper/TmBinderCacher;)Landroid/content/ComponentName;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/service/wrapper/TmBinderCacher;->mComponentName:Landroid/content/ComponentName;

    return-object v0
.end method

.method static synthetic -get3(Lcom/miui/networkassistant/service/wrapper/TmBinderCacher;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/service/wrapper/TmBinderCacher;->mConnections:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -set0(Lcom/miui/networkassistant/service/wrapper/TmBinderCacher;Landroid/os/IBinder;)Landroid/os/IBinder;
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/service/wrapper/TmBinderCacher;->mBinder:Landroid/os/IBinder;

    return-object p1
.end method

.method static synthetic -set1(Lcom/miui/networkassistant/service/wrapper/TmBinderCacher;Landroid/content/ComponentName;)Landroid/content/ComponentName;
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/service/wrapper/TmBinderCacher;->mComponentName:Landroid/content/ComponentName;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/miui/networkassistant/service/wrapper/TmBinderCacher;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/networkassistant/service/wrapper/TmBinderCacher;->bindTrafficManageService()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/miui/networkassistant/service/wrapper/TmBinderCacher;->sInstance:Lcom/miui/networkassistant/service/wrapper/TmBinderCacher;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/miui/networkassistant/service/wrapper/TmBinderCacher;->mBinder:Landroid/os/IBinder;

    iput-object v0, p0, Lcom/miui/networkassistant/service/wrapper/TmBinderCacher;->mComponentName:Landroid/content/ComponentName;

    iput-object v0, p0, Lcom/miui/networkassistant/service/wrapper/TmBinderCacher;->mContext:Landroid/content/Context;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/miui/networkassistant/service/wrapper/TmBinderCacher;->mBinderAndConnLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/networkassistant/service/wrapper/TmBinderCacher;->mConnections:Ljava/util/ArrayList;

    new-instance v0, Lcom/miui/networkassistant/service/wrapper/TmBinderCacher$1;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/service/wrapper/TmBinderCacher$1;-><init>(Lcom/miui/networkassistant/service/wrapper/TmBinderCacher;)V

    iput-object v0, p0, Lcom/miui/networkassistant/service/wrapper/TmBinderCacher;->mConn:Landroid/content/ServiceConnection;

    iput-object p1, p0, Lcom/miui/networkassistant/service/wrapper/TmBinderCacher;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/miui/networkassistant/service/wrapper/TmBinderCacher;->bindTrafficManageService()V

    return-void
.end method

.method private bindTrafficManageService()V
    .locals 5

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.miui.securitycenter"

    const-string/jumbo v3, "com.miui.networkassistant.service.tm.TrafficManageService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/networkassistant/service/wrapper/TmBinderCacher;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/miui/networkassistant/service/wrapper/TmBinderCacher;->mConn:Landroid/content/ServiceConnection;

    invoke-static {}, Lcom/miui/common/b/f;->aHT()Landroid/os/UserHandle;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v1, v0, v2, v4, v3}, Lcom/miui/common/b/n;->aIK(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/miui/networkassistant/service/wrapper/TmBinderCacher;
    .locals 3

    const-class v1, Lcom/miui/networkassistant/service/wrapper/TmBinderCacher;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/miui/networkassistant/service/wrapper/TmBinderCacher;->sInstance:Lcom/miui/networkassistant/service/wrapper/TmBinderCacher;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Please invoke init before call getInstance"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_0
    :try_start_1
    sget-object v0, Lcom/miui/networkassistant/service/wrapper/TmBinderCacher;->sInstance:Lcom/miui/networkassistant/service/wrapper/TmBinderCacher;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-object v0
.end method

.method public static declared-synchronized initForUIProcess(Landroid/content/Context;)V
    .locals 2

    const-class v1, Lcom/miui/networkassistant/service/wrapper/TmBinderCacher;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/miui/networkassistant/service/wrapper/TmBinderCacher;->sInstance:Lcom/miui/networkassistant/service/wrapper/TmBinderCacher;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/networkassistant/service/wrapper/TmBinderCacher;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/service/wrapper/TmBinderCacher;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/miui/networkassistant/service/wrapper/TmBinderCacher;->sInstance:Lcom/miui/networkassistant/service/wrapper/TmBinderCacher;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private unBindTrafficManageService()V
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/service/wrapper/TmBinderCacher;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/networkassistant/service/wrapper/TmBinderCacher;->mConn:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    return-void
.end method


# virtual methods
.method public bindTmService(Landroid/content/ServiceConnection;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/miui/networkassistant/service/wrapper/TmBinderCacher;->mBinderAndConnLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/miui/networkassistant/service/wrapper/TmBinderCacher;->mBinder:Landroid/os/IBinder;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/miui/networkassistant/service/wrapper/TmBinderCacher$2;

    invoke-direct {v0, p0, p1}, Lcom/miui/networkassistant/service/wrapper/TmBinderCacher$2;-><init>(Lcom/miui/networkassistant/service/wrapper/TmBinderCacher;Landroid/content/ServiceConnection;)V

    invoke-static {v0}, Lcom/miui/common/a/b/a;->aGz(Ljava/lang/Runnable;)V

    :cond_1
    iget-object v2, p0, Lcom/miui/networkassistant/service/wrapper/TmBinderCacher;->mConnections:Ljava/util/ArrayList;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v0, p0, Lcom/miui/networkassistant/service/wrapper/TmBinderCacher;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method protected finalize()V
    .locals 0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    invoke-direct {p0}, Lcom/miui/networkassistant/service/wrapper/TmBinderCacher;->unBindTrafficManageService()V

    return-void
.end method

.method public unbindTmService(Landroid/content/ServiceConnection;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/miui/networkassistant/service/wrapper/TmBinderCacher;->mConnections:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/miui/networkassistant/service/wrapper/TmBinderCacher;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/networkassistant/service/wrapper/TmBinderCacher;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
