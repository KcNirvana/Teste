.class final Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$4;
.super Landroid/app/IMiuiProcessObserver;
.source ""


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$4;->this$0:Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;

    invoke-direct {p0}, Landroid/app/IMiuiProcessObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onForegroundActivitiesChanged(IIZ)V
    .locals 9

    if-eqz p3, :cond_3

    iget-object v1, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$4;->this$0:Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;

    invoke-static {v1}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->-get15(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;)Ljava/util/Map;

    move-result-object v8

    monitor-enter v8

    :try_start_0
    iget-object v1, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$4;->this$0:Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;

    invoke-static {v1}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->-get15(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;)Ljava/util/Map;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnUtils$WatchPackageInfo;

    move-object v7, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v7, :cond_0

    monitor-exit v8

    return-void

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$4;->this$0:Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;

    iget-object v2, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$4;->this$0:Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;

    invoke-static {v2}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->-get14(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;)I

    move-result v2

    iget-object v3, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$4;->this$0:Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;

    invoke-static {v3}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->-get13(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;)I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->-wrap17(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;IILjava/lang/String;)V

    iput p1, v7, Lcom/miui/networkassistant/vpn/miui/MiuiVpnUtils$WatchPackageInfo;->mPid:I

    iget-boolean v1, v7, Lcom/miui/networkassistant/vpn/miui/MiuiVpnUtils$WatchPackageInfo;->mIsRunning:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_1

    monitor-exit v8

    return-void

    :cond_1
    const/4 v1, 0x1

    :try_start_2
    iput-boolean v1, v7, Lcom/miui/networkassistant/vpn/miui/MiuiVpnUtils$WatchPackageInfo;->mIsRunning:Z

    iget-object v1, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$4;->this$0:Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;

    invoke-static {v1}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->-get11(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;)I

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$4;->this$0:Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;

    invoke-static {v1}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->-get10(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;)I

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$4;->this$0:Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;

    invoke-static {v1}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->-get3(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;)Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "com.miui.vpnsdkmanager"

    iget-object v3, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$4;->this$0:Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;

    invoke-static {v3}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->-get10(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;)I

    move-result v3

    iget-object v4, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$4;->this$0:Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;

    invoke-static {v4}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->-get11(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;)I

    move-result v4

    iget-object v5, v7, Lcom/miui/networkassistant/vpn/miui/MiuiVpnUtils$WatchPackageInfo;->mPackageName:Ljava/lang/String;

    iget v6, v7, Lcom/miui/networkassistant/vpn/miui/MiuiVpnUtils$WatchPackageInfo;->mUid:I

    iget v7, v7, Lcom/miui/networkassistant/vpn/miui/MiuiVpnUtils$WatchPackageInfo;->mPid:I

    invoke-static/range {v1 .. v7}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnUtils;->keepVpnProcAlive(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    monitor-exit v8

    :goto_1
    return-void

    :cond_2
    :try_start_3
    iget-object v1, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$4;->this$0:Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;

    invoke-static {v1, v7}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->-set1(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;Lcom/miui/networkassistant/vpn/miui/MiuiVpnUtils$WatchPackageInfo;)Lcom/miui/networkassistant/vpn/miui/MiuiVpnUtils$WatchPackageInfo;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v8

    throw v1

    :cond_3
    iget-object v1, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$4;->this$0:Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;

    invoke-static {v1}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->-get15(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;)Ljava/util/Map;

    move-result-object v2

    monitor-enter v2

    :try_start_4
    iget-object v1, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$4;->this$0:Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;

    invoke-static {v1}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->-get15(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;)Ljava/util/Map;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/networkassistant/vpn/miui/MiuiVpnUtils$WatchPackageInfo;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-nez v1, :cond_4

    monitor-exit v2

    return-void

    :cond_4
    monitor-exit v2

    goto :goto_1

    :catchall_1
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public onImportanceChanged(III)V
    .locals 0

    return-void
.end method

.method public onProcessDied(II)V
    .locals 4

    iget-object v0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$4;->this$0:Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;

    invoke-static {v0}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->-get15(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;)Ljava/util/Map;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$4;->this$0:Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;

    invoke-static {v0}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->-get15(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnUtils$WatchPackageInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit v1

    return-void

    :cond_0
    :try_start_1
    iget-boolean v2, v0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnUtils$WatchPackageInfo;->mIsRunning:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_1

    monitor-exit v1

    return-void

    :cond_1
    :try_start_2
    iget-object v0, v0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnUtils$WatchPackageInfo;->mPackageName:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onProcessDied. uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$4;->this$0:Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;

    invoke-static {v1, p2, v0}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->-wrap18(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;ILjava/lang/String;)V

    :cond_2
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onProcessStateChanged(III)V
    .locals 0

    return-void
.end method
