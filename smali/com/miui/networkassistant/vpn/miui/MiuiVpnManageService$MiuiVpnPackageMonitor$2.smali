.class final Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$MiuiVpnPackageMonitor$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$MiuiVpnPackageMonitor;

.field final synthetic val$packageName:Ljava/lang/String;

.field final synthetic val$uid:I


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$MiuiVpnPackageMonitor;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$MiuiVpnPackageMonitor$2;->this$1:Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$MiuiVpnPackageMonitor;

    iput-object p2, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$MiuiVpnPackageMonitor$2;->val$packageName:Ljava/lang/String;

    iput p3, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$MiuiVpnPackageMonitor$2;->val$uid:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    iget-object v0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$MiuiVpnPackageMonitor$2;->this$1:Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$MiuiVpnPackageMonitor;

    iget-object v0, v0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$MiuiVpnPackageMonitor;->this$0:Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;

    invoke-static {v0}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->-get9(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$MiuiVpnPackageMonitor$2;->this$1:Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$MiuiVpnPackageMonitor;

    iget-object v0, v0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$MiuiVpnPackageMonitor;->this$0:Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;

    invoke-static {v0}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->-get4(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    monitor-exit v1

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$MiuiVpnPackageMonitor$2;->this$1:Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$MiuiVpnPackageMonitor;

    iget-object v0, v0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$MiuiVpnPackageMonitor;->this$0:Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;

    invoke-static {v0}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->-get4(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnUtils$MiuiVpnDetailInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnUtils$MiuiVpnDetailInfo;->getPackages()Ljava/util/List;

    move-result-object v0

    iget-object v3, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$MiuiVpnPackageMonitor$2;->val$packageName:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$MiuiVpnPackageMonitor$2;->this$1:Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$MiuiVpnPackageMonitor;

    iget-object v0, v0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$MiuiVpnPackageMonitor;->this$0:Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;

    invoke-static {v0}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->-get15(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;)Ljava/util/Map;

    move-result-object v3

    monitor-enter v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$MiuiVpnPackageMonitor$2;->this$1:Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$MiuiVpnPackageMonitor;

    iget-object v0, v0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$MiuiVpnPackageMonitor;->this$0:Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;

    invoke-static {v0}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->-get15(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;)Ljava/util/Map;

    move-result-object v0

    iget v4, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$MiuiVpnPackageMonitor$2;->val$uid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v5, Lcom/miui/networkassistant/vpn/miui/MiuiVpnUtils$WatchPackageInfo;

    iget v6, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$MiuiVpnPackageMonitor$2;->val$uid:I

    iget-object v7, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$MiuiVpnPackageMonitor$2;->val$packageName:Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnUtils$WatchPackageInfo;-><init>(ILjava/lang/String;ZI)V

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v3

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_2
    monitor-exit v1

    return-void
.end method
