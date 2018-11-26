.class Lcom/miui/networkassistant/service/tm/AppMonitor$AppMonitorBinder;
.super Lcom/miui/networkassistant/service/IAppMonitorBinder$Stub;
.source ""


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/service/tm/AppMonitor;


# direct methods
.method private constructor <init>(Lcom/miui/networkassistant/service/tm/AppMonitor;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/service/tm/AppMonitor$AppMonitorBinder;->this$0:Lcom/miui/networkassistant/service/tm/AppMonitor;

    invoke-direct {p0}, Lcom/miui/networkassistant/service/IAppMonitorBinder$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/networkassistant/service/tm/AppMonitor;Lcom/miui/networkassistant/service/tm/AppMonitor$AppMonitorBinder;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/service/tm/AppMonitor$AppMonitorBinder;-><init>(Lcom/miui/networkassistant/service/tm/AppMonitor;)V

    return-void
.end method


# virtual methods
.method public getAppInfoByPackageName(Ljava/lang/String;)Lcom/miui/networkassistant/model/AppInfo;
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/AppMonitor$AppMonitorBinder;->this$0:Lcom/miui/networkassistant/service/tm/AppMonitor;

    invoke-static {v0}, Lcom/miui/networkassistant/service/tm/AppMonitor;->-get1(Lcom/miui/networkassistant/service/tm/AppMonitor;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/AppMonitor$AppMonitorBinder;->this$0:Lcom/miui/networkassistant/service/tm/AppMonitor;

    invoke-static {v0}, Lcom/miui/networkassistant/service/tm/AppMonitor;->-get6(Lcom/miui/networkassistant/service/tm/AppMonitor;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/networkassistant/model/AppInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getFilteredAppInfosList()Ljava/util/List;
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/AppMonitor$AppMonitorBinder;->this$0:Lcom/miui/networkassistant/service/tm/AppMonitor;

    invoke-static {v0}, Lcom/miui/networkassistant/service/tm/AppMonitor;->-get1(Lcom/miui/networkassistant/service/tm/AppMonitor;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/miui/networkassistant/service/tm/AppMonitor$AppMonitorBinder;->this$0:Lcom/miui/networkassistant/service/tm/AppMonitor;

    invoke-static {v2}, Lcom/miui/networkassistant/service/tm/AppMonitor;->-get3(Lcom/miui/networkassistant/service/tm/AppMonitor;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getNetworkAccessedAppList()Ljava/util/List;
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/AppMonitor$AppMonitorBinder;->this$0:Lcom/miui/networkassistant/service/tm/AppMonitor;

    invoke-static {v0}, Lcom/miui/networkassistant/service/tm/AppMonitor;->-get1(Lcom/miui/networkassistant/service/tm/AppMonitor;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/AppMonitor$AppMonitorBinder;->this$0:Lcom/miui/networkassistant/service/tm/AppMonitor;

    invoke-static {v0}, Lcom/miui/networkassistant/service/tm/AppMonitor;->-get6(Lcom/miui/networkassistant/service/tm/AppMonitor;)Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/miui/networkassistant/service/tm/AppMonitor$AppMonitorBinder;->this$0:Lcom/miui/networkassistant/service/tm/AppMonitor;

    invoke-static {v2}, Lcom/miui/networkassistant/service/tm/AppMonitor;->-get6(Lcom/miui/networkassistant/service/tm/AppMonitor;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :cond_0
    monitor-exit v1

    return-object v2

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getNetworkAccessedAppsMap()Ljava/util/Map;
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/AppMonitor$AppMonitorBinder;->this$0:Lcom/miui/networkassistant/service/tm/AppMonitor;

    invoke-static {v0}, Lcom/miui/networkassistant/service/tm/AppMonitor;->-get1(Lcom/miui/networkassistant/service/tm/AppMonitor;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/AppMonitor$AppMonitorBinder;->this$0:Lcom/miui/networkassistant/service/tm/AppMonitor;

    invoke-static {v0}, Lcom/miui/networkassistant/service/tm/AppMonitor;->-get6(Lcom/miui/networkassistant/service/tm/AppMonitor;)Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/AppMonitor$AppMonitorBinder;->this$0:Lcom/miui/networkassistant/service/tm/AppMonitor;

    invoke-static {v0}, Lcom/miui/networkassistant/service/tm/AppMonitor;->-get6(Lcom/miui/networkassistant/service/tm/AppMonitor;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :cond_0
    monitor-exit v1

    return-object v2

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getNonSystemAppList()Ljava/util/List;
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/AppMonitor$AppMonitorBinder;->this$0:Lcom/miui/networkassistant/service/tm/AppMonitor;

    invoke-static {v0}, Lcom/miui/networkassistant/service/tm/AppMonitor;->-get1(Lcom/miui/networkassistant/service/tm/AppMonitor;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/AppMonitor$AppMonitorBinder;->this$0:Lcom/miui/networkassistant/service/tm/AppMonitor;

    invoke-static {v0}, Lcom/miui/networkassistant/service/tm/AppMonitor;->-get7(Lcom/miui/networkassistant/service/tm/AppMonitor;)Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/miui/networkassistant/service/tm/AppMonitor$AppMonitorBinder;->this$0:Lcom/miui/networkassistant/service/tm/AppMonitor;

    invoke-static {v2}, Lcom/miui/networkassistant/service/tm/AppMonitor;->-get7(Lcom/miui/networkassistant/service/tm/AppMonitor;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :cond_0
    monitor-exit v1

    return-object v2

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getSystemAppList()Ljava/util/List;
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/AppMonitor$AppMonitorBinder;->this$0:Lcom/miui/networkassistant/service/tm/AppMonitor;

    invoke-static {v0}, Lcom/miui/networkassistant/service/tm/AppMonitor;->-get1(Lcom/miui/networkassistant/service/tm/AppMonitor;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/AppMonitor$AppMonitorBinder;->this$0:Lcom/miui/networkassistant/service/tm/AppMonitor;

    invoke-static {v0}, Lcom/miui/networkassistant/service/tm/AppMonitor;->-get8(Lcom/miui/networkassistant/service/tm/AppMonitor;)Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/miui/networkassistant/service/tm/AppMonitor$AppMonitorBinder;->this$0:Lcom/miui/networkassistant/service/tm/AppMonitor;

    invoke-static {v2}, Lcom/miui/networkassistant/service/tm/AppMonitor;->-get8(Lcom/miui/networkassistant/service/tm/AppMonitor;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :cond_0
    monitor-exit v1

    return-object v2

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public registerLisener(Lcom/miui/networkassistant/service/IAppMonitorBinderListener;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/AppMonitor$AppMonitorBinder;->this$0:Lcom/miui/networkassistant/service/tm/AppMonitor;

    invoke-static {v0}, Lcom/miui/networkassistant/service/tm/AppMonitor;->-get5(Lcom/miui/networkassistant/service/tm/AppMonitor;)Landroid/os/RemoteCallbackList;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/AppMonitor$AppMonitorBinder;->this$0:Lcom/miui/networkassistant/service/tm/AppMonitor;

    invoke-static {v0}, Lcom/miui/networkassistant/service/tm/AppMonitor;->-get5(Lcom/miui/networkassistant/service/tm/AppMonitor;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/AppMonitor$AppMonitorBinder;->this$0:Lcom/miui/networkassistant/service/tm/AppMonitor;

    invoke-static {v0}, Lcom/miui/networkassistant/service/tm/AppMonitor;->-get4(Lcom/miui/networkassistant/service/tm/AppMonitor;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    :try_start_1
    invoke-interface {p1}, Lcom/miui/networkassistant/service/IAppMonitorBinderListener;->onAppListUpdated()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public unRegisterLisener(Lcom/miui/networkassistant/service/IAppMonitorBinderListener;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/AppMonitor$AppMonitorBinder;->this$0:Lcom/miui/networkassistant/service/tm/AppMonitor;

    invoke-static {v0}, Lcom/miui/networkassistant/service/tm/AppMonitor;->-get5(Lcom/miui/networkassistant/service/tm/AppMonitor;)Landroid/os/RemoteCallbackList;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/AppMonitor$AppMonitorBinder;->this$0:Lcom/miui/networkassistant/service/tm/AppMonitor;

    invoke-static {v0}, Lcom/miui/networkassistant/service/tm/AppMonitor;->-get5(Lcom/miui/networkassistant/service/tm/AppMonitor;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
