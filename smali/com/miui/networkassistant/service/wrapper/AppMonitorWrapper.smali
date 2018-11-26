.class public Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static sInstance:Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;


# instance fields
.field private mAppMonitorBinder:Lcom/miui/networkassistant/service/IAppMonitorBinder;

.field private mAppMonitorBinderListener:Lcom/miui/networkassistant/service/IAppMonitorBinderListener$Stub;

.field private mContext:Landroid/content/Context;

.field private mIsInited:Z

.field private mListeners:Ljava/util/ArrayList;

.field private mTrafficManageBinder:Lcom/miui/networkassistant/service/ITrafficManageBinder;

.field private mTrafficManageServiceConnection:Landroid/content/ServiceConnection;


# direct methods
.method static synthetic -get0(Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;)Lcom/miui/networkassistant/service/IAppMonitorBinder;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;->mAppMonitorBinder:Lcom/miui/networkassistant/service/IAppMonitorBinder;

    return-object v0
.end method

.method static synthetic -get1(Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;)Lcom/miui/networkassistant/service/IAppMonitorBinderListener$Stub;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;->mAppMonitorBinderListener:Lcom/miui/networkassistant/service/IAppMonitorBinderListener$Stub;

    return-object v0
.end method

.method static synthetic -get2(Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;)Lcom/miui/networkassistant/service/ITrafficManageBinder;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;->mTrafficManageBinder:Lcom/miui/networkassistant/service/ITrafficManageBinder;

    return-object v0
.end method

.method static synthetic -set0(Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;Lcom/miui/networkassistant/service/IAppMonitorBinder;)Lcom/miui/networkassistant/service/IAppMonitorBinder;
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;->mAppMonitorBinder:Lcom/miui/networkassistant/service/IAppMonitorBinder;

    return-object p1
.end method

.method static synthetic -set1(Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;->mIsInited:Z

    return p1
.end method

.method static synthetic -set2(Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;Lcom/miui/networkassistant/service/ITrafficManageBinder;)Lcom/miui/networkassistant/service/ITrafficManageBinder;
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;->mTrafficManageBinder:Lcom/miui/networkassistant/service/ITrafficManageBinder;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;->broadcastAppListUpdated()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;->mIsInited:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;->mListeners:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;->mTrafficManageBinder:Lcom/miui/networkassistant/service/ITrafficManageBinder;

    iput-object v1, p0, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;->mAppMonitorBinder:Lcom/miui/networkassistant/service/IAppMonitorBinder;

    new-instance v0, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper$1;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper$1;-><init>(Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;)V

    iput-object v0, p0, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;->mAppMonitorBinderListener:Lcom/miui/networkassistant/service/IAppMonitorBinderListener$Stub;

    new-instance v0, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper$2;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper$2;-><init>(Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;)V

    iput-object v0, p0, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;->mTrafficManageServiceConnection:Landroid/content/ServiceConnection;

    sget-object v0, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "mina MonitorCenter created"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;->bindTrafficManageService()V

    return-void
.end method

.method private bindTrafficManageService()V
    .locals 5

    iget-object v0, p0, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;->mContext:Landroid/content/Context;

    const-class v3, Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v2, p0, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;->mTrafficManageServiceConnection:Landroid/content/ServiceConnection;

    invoke-static {}, Lcom/miui/common/b/f;->aHT()Landroid/os/UserHandle;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v0, v1, v2, v4, v3}, Lcom/miui/common/b/n;->aIK(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)V

    return-void
.end method

.method private broadcastAppListUpdated()V
    .locals 3

    iget-object v1, p0, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;->mListeners:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;->mListeners:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper$AppMonitorListener;

    invoke-interface {v0}, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper$AppMonitorListener;->onAppListUpdated()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_0
    monitor-exit v1

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;
    .locals 2

    const-class v1, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;->sInstance:Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;->sInstance:Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;

    :cond_0
    sget-object v0, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;->sInstance:Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private unBindTrafficManageService()V
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;->mAppMonitorBinder:Lcom/miui/networkassistant/service/IAppMonitorBinder;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;->mAppMonitorBinder:Lcom/miui/networkassistant/service/IAppMonitorBinder;

    iget-object v1, p0, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;->mAppMonitorBinderListener:Lcom/miui/networkassistant/service/IAppMonitorBinderListener$Stub;

    invoke-interface {v0, v1}, Lcom/miui/networkassistant/service/IAppMonitorBinder;->unRegisterLisener(Lcom/miui/networkassistant/service/IAppMonitorBinderListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;->mTrafficManageServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method protected finalize()V
    .locals 0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    invoke-direct {p0}, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;->unBindTrafficManageService()V

    return-void
.end method

.method public getAppInfoByPackageName(Ljava/lang/String;)Lcom/miui/networkassistant/model/AppInfo;
    .locals 1

    iget-boolean v0, p0, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;->mIsInited:Z

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;->mAppMonitorBinder:Lcom/miui/networkassistant/service/IAppMonitorBinder;

    invoke-interface {v0, p1}, Lcom/miui/networkassistant/service/IAppMonitorBinder;->getAppInfoByPackageName(Ljava/lang/String;)Lcom/miui/networkassistant/model/AppInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFilteredAppInfosList()Ljava/util/ArrayList;
    .locals 1

    iget-boolean v0, p0, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;->mIsInited:Z

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;->mAppMonitorBinder:Lcom/miui/networkassistant/service/IAppMonitorBinder;

    invoke-interface {v0}, Lcom/miui/networkassistant/service/IAppMonitorBinder;->getFilteredAppInfosList()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNetworkAccessedAppList()Ljava/util/ArrayList;
    .locals 1

    iget-boolean v0, p0, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;->mIsInited:Z

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;->mAppMonitorBinder:Lcom/miui/networkassistant/service/IAppMonitorBinder;

    invoke-interface {v0}, Lcom/miui/networkassistant/service/IAppMonitorBinder;->getNetworkAccessedAppList()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNetworkAccessedAppsMap()Ljava/util/HashMap;
    .locals 1

    iget-boolean v0, p0, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;->mIsInited:Z

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;->mAppMonitorBinder:Lcom/miui/networkassistant/service/IAppMonitorBinder;

    invoke-interface {v0}, Lcom/miui/networkassistant/service/IAppMonitorBinder;->getNetworkAccessedAppsMap()Ljava/util/Map;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNonSystemAppList()Ljava/util/ArrayList;
    .locals 1

    iget-boolean v0, p0, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;->mIsInited:Z

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;->mAppMonitorBinder:Lcom/miui/networkassistant/service/IAppMonitorBinder;

    invoke-interface {v0}, Lcom/miui/networkassistant/service/IAppMonitorBinder;->getNonSystemAppList()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSystemAppList()Ljava/util/ArrayList;
    .locals 1

    iget-boolean v0, p0, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;->mIsInited:Z

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;->mAppMonitorBinder:Lcom/miui/networkassistant/service/IAppMonitorBinder;

    invoke-interface {v0}, Lcom/miui/networkassistant/service/IAppMonitorBinder;->getSystemAppList()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public registerLisener(Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper$AppMonitorListener;)V
    .locals 2

    iget-object v1, p0, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;->mListeners:Ljava/util/ArrayList;

    monitor-enter v1

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean v0, p0, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;->mIsInited:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper$3;

    invoke-direct {v0, p0, p1}, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper$3;-><init>(Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper$AppMonitorListener;)V

    invoke-static {v0}, Lcom/miui/common/a/b/a;->aGz(Ljava/lang/Runnable;)V
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

.method public unRegisterLisener(Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper$AppMonitorListener;)V
    .locals 2

    iget-object v1, p0, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;->mListeners:Ljava/util/ArrayList;

    monitor-enter v1

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
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
