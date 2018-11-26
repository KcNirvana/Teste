.class final Lcom/miui/gamebooster/ui/az;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic ed:Lcom/miui/gamebooster/ui/GameBoosterMainActivity;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/ui/GameBoosterMainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/ui/az;->ed:Lcom/miui/gamebooster/ui/GameBoosterMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/miui/gamebooster/ui/az;->ed:Lcom/miui/gamebooster/ui/GameBoosterMainActivity;

    invoke-static {p2}, Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageService;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->dR(Lcom/miui/gamebooster/ui/GameBoosterMainActivity;Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageService;)Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageService;

    :try_start_0
    iget-object v0, p0, Lcom/miui/gamebooster/ui/az;->ed:Lcom/miui/gamebooster/ui/GameBoosterMainActivity;

    invoke-static {v0}, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->dM(Lcom/miui/gamebooster/ui/GameBoosterMainActivity;)Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageService;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageService;->getSupportVpn()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "xunyou"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/ui/az;->ed:Lcom/miui/gamebooster/ui/GameBoosterMainActivity;

    const/4 v3, 0x0

    iput-boolean v3, v0, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->bJ:Z

    :goto_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v3, "gb_update_adapter_action"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v3, "gb_intent_xunyouuser"

    iget-object v4, p0, Lcom/miui/gamebooster/ui/az;->ed:Lcom/miui/gamebooster/ui/GameBoosterMainActivity;

    iget-boolean v4, v4, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->bJ:Z

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v3, p0, Lcom/miui/gamebooster/ui/az;->ed:Lcom/miui/gamebooster/ui/GameBoosterMainActivity;

    invoke-static {v3}, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->dL(Lcom/miui/gamebooster/ui/GameBoosterMainActivity;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-static {}, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->-get0()Ljava/lang/String;

    move-result-object v3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mMiuiVpnService :"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, p0, Lcom/miui/gamebooster/ui/az;->ed:Lcom/miui/gamebooster/ui/GameBoosterMainActivity;

    invoke-static {v0}, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->dM(Lcom/miui/gamebooster/ui/GameBoosterMainActivity;)Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageService;

    move-result-object v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/miui/gamebooster/ui/az;->ed:Lcom/miui/gamebooster/ui/GameBoosterMainActivity;

    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->bJ:Z

    iget-object v0, p0, Lcom/miui/gamebooster/ui/az;->ed:Lcom/miui/gamebooster/ui/GameBoosterMainActivity;

    iget-boolean v0, v0, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->cg:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/gamebooster/ui/az;->ed:Lcom/miui/gamebooster/ui/GameBoosterMainActivity;

    invoke-static {v0}, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->dK(Lcom/miui/gamebooster/ui/GameBoosterMainActivity;)Landroid/view/View;

    move-result-object v0

    const v3, 0x7f0a0374

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/miui/gamebooster/ui/az;->ed:Lcom/miui/gamebooster/ui/GameBoosterMainActivity;

    invoke-static {v0}, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->dM(Lcom/miui/gamebooster/ui/GameBoosterMainActivity;)Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageService;

    move-result-object v0

    iget-object v3, p0, Lcom/miui/gamebooster/ui/az;->ed:Lcom/miui/gamebooster/ui/GameBoosterMainActivity;

    invoke-static {v3}, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->dN(Lcom/miui/gamebooster/ui/GameBoosterMainActivity;)Lcom/miui/gamebooster/ui/m;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageService;->registerCallback(Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageServiceCallback;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->-get0()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_2
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/gamebooster/ui/az;->ed:Lcom/miui/gamebooster/ui/GameBoosterMainActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->dR(Lcom/miui/gamebooster/ui/GameBoosterMainActivity;Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageService;)Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageService;

    return-void
.end method
