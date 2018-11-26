.class final Lcom/miui/gamebooster/gbservices/o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic qb:Lcom/miui/gamebooster/gbservices/a;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/gbservices/a;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/gbservices/o;->qb:Lcom/miui/gamebooster/gbservices/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4

    iget-object v0, p0, Lcom/miui/gamebooster/gbservices/o;->qb:Lcom/miui/gamebooster/gbservices/a;

    invoke-static {p2}, Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gamebooster/gbservices/a;->rn(Lcom/miui/gamebooster/gbservices/a;Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageService;)Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageService;

    :try_start_0
    iget-object v0, p0, Lcom/miui/gamebooster/gbservices/o;->qb:Lcom/miui/gamebooster/gbservices/a;

    invoke-static {v0}, Lcom/miui/gamebooster/gbservices/a;->rj(Lcom/miui/gamebooster/gbservices/a;)Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageService;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gamebooster/gbservices/o;->qb:Lcom/miui/gamebooster/gbservices/a;

    invoke-static {v1}, Lcom/miui/gamebooster/gbservices/a;->rk(Lcom/miui/gamebooster/gbservices/a;)Lcom/miui/gamebooster/service/MiuiVpnManageServiceCallback;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageService;->registerCallback(Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageServiceCallback;)V

    iget-object v0, p0, Lcom/miui/gamebooster/gbservices/o;->qb:Lcom/miui/gamebooster/gbservices/a;

    invoke-static {v0}, Lcom/miui/gamebooster/gbservices/a;->ro(Lcom/miui/gamebooster/gbservices/a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string/jumbo v1, "XunyouBoosterService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mMiuiVpnService :"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/miui/gamebooster/gbservices/o;->qb:Lcom/miui/gamebooster/gbservices/a;

    invoke-static {v0}, Lcom/miui/gamebooster/gbservices/a;->rj(Lcom/miui/gamebooster/gbservices/a;)Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageService;

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

    const-string/jumbo v1, "XunyouBoosterService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mMiuiVpnService:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/gamebooster/gbservices/o;->qb:Lcom/miui/gamebooster/gbservices/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/gamebooster/gbservices/a;->rn(Lcom/miui/gamebooster/gbservices/a;Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageService;)Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageService;

    return-void
.end method
