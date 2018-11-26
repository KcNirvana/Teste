.class final Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$9;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;

.field final synthetic val$uid:I


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;I)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$9;->this$0:Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;

    iput p2, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$9;->val$uid:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$9;->this$0:Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;

    iget-object v1, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$9;->this$0:Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;

    invoke-static {v1}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->-get14(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->-wrap3(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;I)Lcom/miui/networkassistant/vpn/miui/MiuiVpnUtils$MiuiVpnDetailInfo;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnUtils$MiuiVpnDetailInfo;->getPackages()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$9;->this$0:Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;

    invoke-static {v0}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->-get3(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/common/b/k;->aIw(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    iget-object v0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$9;->this$0:Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;

    invoke-static {v0}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->-get15(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;)Ljava/util/Map;

    move-result-object v3

    monitor-enter v3

    :try_start_0
    iget-object v0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$9;->this$0:Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;

    invoke-static {v0}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->-get15(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;)Ljava/util/Map;

    move-result-object v0

    iget v4, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$9;->val$uid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnUtils$WatchPackageInfo;

    if-eqz v0, :cond_2

    iget-boolean v4, v0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnUtils$WatchPackageInfo;->mIsRunning:Z

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnUtils$WatchPackageInfo;->mPackageName:Ljava/lang/String;

    invoke-interface {v2, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    sget-object v4, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnUtils$WatchPackageInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " is Died."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    iput-boolean v4, v0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnUtils$WatchPackageInfo;->mIsRunning:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit v3

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0

    :cond_4
    iget-object v0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$9;->this$0:Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;

    invoke-static {v0}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->-wrap6(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;)I

    return-void
.end method
