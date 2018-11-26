.class Lcom/miui/networkassistant/service/tm/AppMonitor;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAppMapLock:Ljava/lang/Object;

.field private mAppMonitorBinder:Lcom/miui/networkassistant/service/tm/AppMonitor$AppMonitorBinder;

.field private mContext:Landroid/content/Context;

.field private mCurrentUserId:I

.field private mFillAppLock:Ljava/lang/Object;

.field private mFilteredAppInfosMap:Ljava/util/HashMap;

.field private mIsInited:Z

.field private mListeners:Landroid/os/RemoteCallbackList;

.field private mNetworkAccessedAppsMap:Ljava/util/HashMap;

.field private mNonSystemAppMap:Ljava/util/HashMap;

.field private mPkgManager:Landroid/content/pm/PackageManager;

.field private mSecurityManager:Lmiui/security/SecurityManager;

.field private mSocketTaggerManager:Lcom/miui/networkassistant/service/tm/SocketTaggerManager;

.field private mSystemAppMap:Ljava/util/HashMap;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/miui/networkassistant/service/tm/AppMonitor;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/miui/networkassistant/service/tm/AppMonitor;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/AppMonitor;->mAppMapLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get2(Lcom/miui/networkassistant/service/tm/AppMonitor;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/AppMonitor;->mFillAppLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get3(Lcom/miui/networkassistant/service/tm/AppMonitor;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/AppMonitor;->mFilteredAppInfosMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic -get4(Lcom/miui/networkassistant/service/tm/AppMonitor;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/networkassistant/service/tm/AppMonitor;->mIsInited:Z

    return v0
.end method

.method static synthetic -get5(Lcom/miui/networkassistant/service/tm/AppMonitor;)Landroid/os/RemoteCallbackList;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/AppMonitor;->mListeners:Landroid/os/RemoteCallbackList;

    return-object v0
.end method

.method static synthetic -get6(Lcom/miui/networkassistant/service/tm/AppMonitor;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/AppMonitor;->mNetworkAccessedAppsMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic -get7(Lcom/miui/networkassistant/service/tm/AppMonitor;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/AppMonitor;->mNonSystemAppMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic -get8(Lcom/miui/networkassistant/service/tm/AppMonitor;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/AppMonitor;->mSystemAppMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/miui/networkassistant/service/tm/AppMonitor;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/AppMonitor;->broadcastAppListUpdated()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/miui/networkassistant/service/tm/AppMonitor;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/AppMonitor;->fillNetworkAccessedApps()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/miui/networkassistant/service/tm/AppMonitor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/networkassistant/service/tm/AppMonitor;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/miui/networkassistant/service/tm/AppMonitor;->mListeners:Landroid/os/RemoteCallbackList;

    new-instance v0, Lcom/miui/networkassistant/service/tm/AppMonitor$AppMonitorBinder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/networkassistant/service/tm/AppMonitor$AppMonitorBinder;-><init>(Lcom/miui/networkassistant/service/tm/AppMonitor;Lcom/miui/networkassistant/service/tm/AppMonitor$AppMonitorBinder;)V

    iput-object v0, p0, Lcom/miui/networkassistant/service/tm/AppMonitor;->mAppMonitorBinder:Lcom/miui/networkassistant/service/tm/AppMonitor$AppMonitorBinder;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/networkassistant/service/tm/AppMonitor;->mIsInited:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/miui/networkassistant/service/tm/AppMonitor;->mAppMapLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/miui/networkassistant/service/tm/AppMonitor;->mFillAppLock:Ljava/lang/Object;

    const/16 v0, -0x2710

    iput v0, p0, Lcom/miui/networkassistant/service/tm/AppMonitor;->mCurrentUserId:I

    sget-object v0, Lcom/miui/networkassistant/service/tm/AppMonitor;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "mina MonitorCenter created"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/service/tm/AppMonitor;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/AppMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/service/tm/AppMonitor;->mPkgManager:Landroid/content/pm/PackageManager;

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/AppMonitor;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "security"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/security/SecurityManager;

    iput-object v0, p0, Lcom/miui/networkassistant/service/tm/AppMonitor;->mSecurityManager:Lmiui/security/SecurityManager;

    return-void
.end method

.method private broadcastAppListUpdated()V
    .locals 3

    iget-object v2, p0, Lcom/miui/networkassistant/service/tm/AppMonitor;->mListeners:Landroid/os/RemoteCallbackList;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/AppMonitor;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    :goto_0
    if-lez v0, :cond_0

    add-int/lit8 v1, v0, -0x1

    :try_start_1
    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/AppMonitor;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/miui/networkassistant/service/IAppMonitorBinderListener;

    invoke-interface {v0}, Lcom/miui/networkassistant/service/IAppMonitorBinderListener;->onAppListUpdated()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_0
    :try_start_3
    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/AppMonitor;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v2

    return-void
.end method

.method private buildAppInfo(Ljava/lang/String;IZ)Lcom/miui/networkassistant/model/AppInfo;
    .locals 2

    new-instance v0, Lcom/miui/networkassistant/model/AppInfo;

    invoke-direct {v0}, Lcom/miui/networkassistant/model/AppInfo;-><init>()V

    iput p2, v0, Lcom/miui/networkassistant/model/AppInfo;->uid:I

    invoke-static {p1, p2}, Lcom/miui/networkassistant/utils/PackageUtil;->getPackageNameFormat(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/networkassistant/model/AppInfo;->packageName:Ljava/lang/CharSequence;

    iput-boolean p3, v0, Lcom/miui/networkassistant/model/AppInfo;->isSystemApp:Z

    return-object v0
.end method

.method private fillNetworkAccessedApps()V
    .locals 11

    const/4 v8, 0x0

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    iget v0, p0, Lcom/miui/networkassistant/service/tm/AppMonitor;->mCurrentUserId:I

    invoke-static {v8, v0}, Lcom/miui/a/d/a/a;->bua(II)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v1, p0, Lcom/miui/networkassistant/service/tm/AppMonitor;->mCurrentUserId:I

    if-nez v1, :cond_1

    const/16 v1, 0x3e7

    invoke-static {v8, v1}, Lcom/miui/a/d/a/a;->bua(II)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/AppMonitor;->mContext:Landroid/content/Context;

    iget-object v9, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v10, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v10}, Lcom/miui/common/b/f;->aHR(I)I

    move-result v10

    invoke-static {v1, v9, v10}, Lcom/miui/enterprise/ApplicationHelper;->shouldGrantPermission(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string/jumbo v1, "Enterprise"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Net config is restricted for package"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/AppMonitor;->mPkgManager:Landroid/content/pm/PackageManager;

    iget-object v9, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v1, v9}, Lcom/miui/networkassistant/utils/PackageUtil;->hasInternetPermission(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v9, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Lcom/miui/networkassistant/utils/PackageUtil;->isSystemApp(Landroid/content/pm/ApplicationInfo;)Z

    move-result v10

    invoke-direct {p0, v1, v9, v10}, Lcom/miui/networkassistant/service/tm/AppMonitor;->buildAppInfo(Ljava/lang/String;IZ)Lcom/miui/networkassistant/model/AppInfo;

    move-result-object v9

    iget-boolean v1, v9, Lcom/miui/networkassistant/model/AppInfo;->isSystemApp:Z

    if-eqz v1, :cond_6

    iget v1, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget v1, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v7, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v1}, Lcom/miui/networkassistant/traffic/statistic/PreSetGroup;->isGroupHead(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget v1, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/networkassistant/model/AppInfo;

    iget-object v10, v1, Lcom/miui/networkassistant/model/AppInfo;->packageName:Ljava/lang/CharSequence;

    invoke-virtual {v3, v10}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v1, Lcom/miui/networkassistant/model/AppInfo;->packageName:Ljava/lang/CharSequence;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v9, Lcom/miui/networkassistant/model/AppInfo;->packageName:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v9, Lcom/miui/networkassistant/model/AppInfo;->packageName:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v6, v0, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    :goto_1
    iget-object v0, v9, Lcom/miui/networkassistant/model/AppInfo;->packageName:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_5
    iget-object v1, v9, Lcom/miui/networkassistant/model/AppInfo;->packageName:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v9, Lcom/miui/networkassistant/model/AppInfo;->packageName:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v6, v0, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_6
    iget v1, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, v9, Lcom/miui/networkassistant/model/AppInfo;->packageName:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v6, v0, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    iget-object v0, v9, Lcom/miui/networkassistant/model/AppInfo;->packageName:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_7
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_8
    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iget-object v6, p0, Lcom/miui/networkassistant/service/tm/AppMonitor;->mSecurityManager:Lmiui/security/SecurityManager;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v6, v0}, Lmiui/security/SecurityManager;->addMiuiFirewallSharedUid(I)Z

    goto :goto_3

    :cond_9
    invoke-interface {v7}, Ljava/util/Set;->clear()V

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/AppMonitor;->mAppMapLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object v2, p0, Lcom/miui/networkassistant/service/tm/AppMonitor;->mNetworkAccessedAppsMap:Ljava/util/HashMap;

    iput-object v3, p0, Lcom/miui/networkassistant/service/tm/AppMonitor;->mSystemAppMap:Ljava/util/HashMap;

    iput-object v4, p0, Lcom/miui/networkassistant/service/tm/AppMonitor;->mNonSystemAppMap:Ljava/util/HashMap;

    iput-object v5, p0, Lcom/miui/networkassistant/service/tm/AppMonitor;->mFilteredAppInfosMap:Ljava/util/HashMap;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/networkassistant/service/tm/AppMonitor;->mIsInited:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private isShouldRefreshAppList(I)Z
    .locals 1

    iget v0, p0, Lcom/miui/networkassistant/service/tm/AppMonitor;->mCurrentUserId:I

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method getBinder()Lcom/miui/networkassistant/service/IAppMonitorBinder;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/AppMonitor;->mAppMonitorBinder:Lcom/miui/networkassistant/service/tm/AppMonitor$AppMonitorBinder;

    return-object v0
.end method

.method initData(I)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/service/tm/AppMonitor;->isShouldRefreshAppList(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/miui/networkassistant/service/tm/AppMonitor;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "init app list"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/miui/networkassistant/service/tm/AppMonitor;->mCurrentUserId:I

    new-instance v0, Lcom/miui/networkassistant/service/tm/AppMonitor$1;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/service/tm/AppMonitor$1;-><init>(Lcom/miui/networkassistant/service/tm/AppMonitor;)V

    invoke-static {v0}, Lcom/miui/common/a/b/a;->aGz(Ljava/lang/Runnable;)V

    return-void
.end method

.method onPackageChanged(Landroid/content/Intent;)V
    .locals 4

    const/4 v2, 0x0

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-boolean v1, p0, Lcom/miui/networkassistant/service/tm/AppMonitor;->mIsInited:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/net/Uri;->getEncodedSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    :cond_2
    const-string/jumbo v1, "android.intent.extra.UID"

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    if-nez v1, :cond_4

    :cond_3
    return-void

    :cond_4
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "android.intent.action.PACKAGE_ADDED"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v2, p0, Lcom/miui/networkassistant/service/tm/AppMonitor;->mContext:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/miui/networkassistant/utils/PackageUtil;->isSystemApp(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {v1}, Lcom/miui/networkassistant/traffic/statistic/PreSetGroup;->isGroupUid(I)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-static {v0}, Lcom/miui/networkassistant/traffic/statistic/PreSetGroup;->isGroupHead(Ljava/lang/String;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_5

    return-void

    :cond_5
    iget-object v3, p0, Lcom/miui/networkassistant/service/tm/AppMonitor;->mPkgManager:Landroid/content/pm/PackageManager;

    invoke-static {v3, v0}, Lcom/miui/networkassistant/utils/PackageUtil;->hasInternetPermission(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-direct {p0, v0, v1, v2}, Lcom/miui/networkassistant/service/tm/AppMonitor;->buildAppInfo(Ljava/lang/String;IZ)Lcom/miui/networkassistant/model/AppInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/AppMonitor;->mAppMapLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/miui/networkassistant/service/tm/AppMonitor;->mNetworkAccessedAppsMap:Ljava/util/HashMap;

    iget-object v3, v0, Lcom/miui/networkassistant/model/AppInfo;->packageName:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v2, v0, Lcom/miui/networkassistant/model/AppInfo;->isSystemApp:Z

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/miui/networkassistant/service/tm/AppMonitor;->mSystemAppMap:Ljava/util/HashMap;

    iget-object v3, v0, Lcom/miui/networkassistant/model/AppInfo;->packageName:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    iget-object v2, p0, Lcom/miui/networkassistant/service/tm/AppMonitor;->mFilteredAppInfosMap:Ljava/util/HashMap;

    iget-object v3, v0, Lcom/miui/networkassistant/model/AppInfo;->packageName:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    :cond_6
    :goto_1
    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/AppMonitor;->broadcastAppListUpdated()V

    return-void

    :cond_7
    :try_start_1
    iget-object v2, p0, Lcom/miui/networkassistant/service/tm/AppMonitor;->mNonSystemAppMap:Ljava/util/HashMap;

    iget-object v3, v0, Lcom/miui/networkassistant/model/AppInfo;->packageName:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_8
    const-string/jumbo v3, "android.intent.action.PACKAGE_REMOVED"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/miui/networkassistant/service/tm/AppMonitor;->mAppMapLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_2
    invoke-static {v0, v1}, Lcom/miui/networkassistant/utils/PackageUtil;->getPackageNameFormat(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/AppMonitor;->mNetworkAccessedAppsMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/AppMonitor;->mSystemAppMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/AppMonitor;->mNonSystemAppMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/AppMonitor;->mFilteredAppInfosMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v2

    goto :goto_1

    :catchall_1
    move-exception v0

    monitor-exit v2

    throw v0
.end method
