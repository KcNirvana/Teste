.class final Lcom/miui/gamebooster/ui/F;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic cS:Lcom/miui/gamebooster/ui/WifiBoosterDetail;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/ui/WifiBoosterDetail;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/ui/F;->cS:Lcom/miui/gamebooster/ui/WifiBoosterDetail;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5

    iget-object v0, p0, Lcom/miui/gamebooster/ui/F;->cS:Lcom/miui/gamebooster/ui/WifiBoosterDetail;

    invoke-static {p2}, Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gamebooster/ui/WifiBoosterDetail;->an(Lcom/miui/gamebooster/ui/WifiBoosterDetail;Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageService;)Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageService;

    :try_start_0
    iget-object v0, p0, Lcom/miui/gamebooster/ui/F;->cS:Lcom/miui/gamebooster/ui/WifiBoosterDetail;

    iget-object v1, p0, Lcom/miui/gamebooster/ui/F;->cS:Lcom/miui/gamebooster/ui/WifiBoosterDetail;

    invoke-static {v1}, Lcom/miui/gamebooster/ui/WifiBoosterDetail;->ak(Lcom/miui/gamebooster/ui/WifiBoosterDetail;)Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageService;

    move-result-object v1

    const-string/jumbo v2, "xunyou"

    const-string/jumbo v3, "xunyou_wifi_accel_switch"

    const-string/jumbo v4, "false"

    invoke-interface {v1, v2, v3, v4}, Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageService;->getSettingEx(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gamebooster/ui/WifiBoosterDetail;->am(Lcom/miui/gamebooster/ui/WifiBoosterDetail;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/miui/gamebooster/ui/F;->cS:Lcom/miui/gamebooster/ui/WifiBoosterDetail;

    invoke-static {v0}, Lcom/miui/gamebooster/ui/WifiBoosterDetail;->al(Lcom/miui/gamebooster/ui/WifiBoosterDetail;)Lmiui/widget/SlidingButton;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gamebooster/ui/F;->cS:Lcom/miui/gamebooster/ui/WifiBoosterDetail;

    invoke-static {v1}, Lcom/miui/gamebooster/ui/WifiBoosterDetail;->ai(Lcom/miui/gamebooster/ui/WifiBoosterDetail;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lmiui/widget/SlidingButton;->setChecked(Z)V

    invoke-static {}, Lcom/miui/gamebooster/ui/WifiBoosterDetail;->-get0()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mMiuiVpnService :"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/miui/gamebooster/ui/F;->cS:Lcom/miui/gamebooster/ui/WifiBoosterDetail;

    invoke-static {v0}, Lcom/miui/gamebooster/ui/WifiBoosterDetail;->ak(Lcom/miui/gamebooster/ui/WifiBoosterDetail;)Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageService;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/miui/gamebooster/ui/WifiBoosterDetail;->-get0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/gamebooster/ui/F;->cS:Lcom/miui/gamebooster/ui/WifiBoosterDetail;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/gamebooster/ui/WifiBoosterDetail;->an(Lcom/miui/gamebooster/ui/WifiBoosterDetail;Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageService;)Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageService;

    return-void
.end method
