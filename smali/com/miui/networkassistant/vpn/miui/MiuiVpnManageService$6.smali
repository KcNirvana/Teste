.class final Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$6;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$6;->this$0:Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 8

    sget-object v0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onServiceConnected. name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", vpnState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$6;->this$0:Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;

    invoke-static {v2}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->-get13(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_0

    sget-object v0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onServiceConnected. service is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$6;->this$0:Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;

    invoke-static {v0}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->-get12(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    :try_start_0
    iget-object v0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$6;->this$0:Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;

    invoke-static {p2}, Lcom/miui/vpnsdkmanager/IMiuiVpnSdkService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/vpnsdkmanager/IMiuiVpnSdkService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->-set0(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;Lcom/miui/vpnsdkmanager/IMiuiVpnSdkService;)Lcom/miui/vpnsdkmanager/IMiuiVpnSdkService;

    iget-object v0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$6;->this$0:Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;

    iget-object v1, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$6;->this$0:Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;

    invoke-static {v1}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->-get7(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;)Lcom/miui/vpnsdkmanager/IMiuiVpnSdkService;

    move-result-object v1

    invoke-interface {v1}, Lcom/miui/vpnsdkmanager/IMiuiVpnSdkService;->bxE()I

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->-set2(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;I)I

    iget-object v0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$6;->this$0:Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;

    invoke-static {v0}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->-get8(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;)Lcom/miui/networkassistant/vpn/miui/MiuiVpnUtils$WatchPackageInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$6;->this$0:Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;

    invoke-static {v0}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->-get11(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;)I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$6;->this$0:Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;

    invoke-static {v0}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->-get10(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;)I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$6;->this$0:Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;

    invoke-static {v0}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->-get3(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "com.miui.vpnsdkmanager"

    iget-object v2, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$6;->this$0:Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;

    invoke-static {v2}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->-get10(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;)I

    move-result v2

    iget-object v3, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$6;->this$0:Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;

    invoke-static {v3}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->-get11(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;)I

    move-result v3

    iget-object v4, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$6;->this$0:Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;

    invoke-static {v4}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->-get8(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;)Lcom/miui/networkassistant/vpn/miui/MiuiVpnUtils$WatchPackageInfo;

    move-result-object v4

    iget-object v4, v4, Lcom/miui/networkassistant/vpn/miui/MiuiVpnUtils$WatchPackageInfo;->mPackageName:Ljava/lang/String;

    iget-object v5, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$6;->this$0:Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;

    invoke-static {v5}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->-get8(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;)Lcom/miui/networkassistant/vpn/miui/MiuiVpnUtils$WatchPackageInfo;

    move-result-object v5

    iget v5, v5, Lcom/miui/networkassistant/vpn/miui/MiuiVpnUtils$WatchPackageInfo;->mUid:I

    iget-object v6, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$6;->this$0:Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;

    invoke-static {v6}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->-get8(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;)Lcom/miui/networkassistant/vpn/miui/MiuiVpnUtils$WatchPackageInfo;

    move-result-object v6

    iget v6, v6, Lcom/miui/networkassistant/vpn/miui/MiuiVpnUtils$WatchPackageInfo;->mPid:I

    invoke-static/range {v0 .. v6}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnUtils;->keepVpnProcAlive(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;II)V

    iget-object v0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$6;->this$0:Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->-set1(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;Lcom/miui/networkassistant/vpn/miui/MiuiVpnUtils$WatchPackageInfo;)Lcom/miui/networkassistant/vpn/miui/MiuiVpnUtils$WatchPackageInfo;

    :cond_1
    iget-object v0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$6;->this$0:Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;

    invoke-static {v0}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->-get7(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;)Lcom/miui/vpnsdkmanager/IMiuiVpnSdkService;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$6;->this$0:Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;

    invoke-static {v1}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->-get6(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;)Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$MiuiVpnManageServiceCallback;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/miui/vpnsdkmanager/IMiuiVpnSdkService;->registerCallback(Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageServiceCallback;)V

    iget-object v0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$6;->this$0:Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;

    iget-object v1, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$6;->this$0:Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;

    invoke-static {v1}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->-get14(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->-wrap7(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;I)I

    iget-object v0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$6;->this$0:Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;

    invoke-static {v0}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->-get13(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    monitor-exit v7

    return-void

    :pswitch_1
    :try_start_1
    iget-object v0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$6;->this$0:Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;

    iget-object v1, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$6;->this$0:Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;

    invoke-static {v1}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->-get0(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->-wrap4(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;I)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    sget-object v1, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onServiceConnected"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v7

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 4

    sget-object v0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onServiceDisconnected. name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$6;->this$0:Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;

    invoke-static {v0}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->-get12(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$6;->this$0:Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->-set0(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;Lcom/miui/vpnsdkmanager/IMiuiVpnSdkService;)Lcom/miui/vpnsdkmanager/IMiuiVpnSdkService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    iget-object v0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$6;->this$0:Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;

    invoke-static {v0}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->-wrap22(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;)V

    iget-object v0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$6;->this$0:Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;

    invoke-static {v0}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->-get1(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x3e8

    const/16 v1, 0x106

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
