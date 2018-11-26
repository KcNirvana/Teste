.class final Lcom/miui/gamebooster/gbservices/p;
.super Lcom/miui/gamebooster/service/MiuiVpnManageServiceCallback;
.source ""


# instance fields
.field final synthetic qc:Lcom/miui/gamebooster/gbservices/a;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/gbservices/a;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/gbservices/p;->qc:Lcom/miui/gamebooster/gbservices/a;

    invoke-direct {p0}, Lcom/miui/gamebooster/service/MiuiVpnManageServiceCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public isVpnConnected()Z
    .locals 1

    invoke-super {p0}, Lcom/miui/gamebooster/service/MiuiVpnManageServiceCallback;->isVpnConnected()Z

    move-result v0

    return v0
.end method

.method public onVpnStateChanged(IILjava/lang/String;)V
    .locals 3

    invoke-super {p0, p1, p2, p3}, Lcom/miui/gamebooster/service/MiuiVpnManageServiceCallback;->onVpnStateChanged(IILjava/lang/String;)V

    iget-object v0, p0, Lcom/miui/gamebooster/gbservices/p;->qc:Lcom/miui/gamebooster/gbservices/a;

    invoke-static {v0}, Lcom/miui/gamebooster/gbservices/a;->rj(Lcom/miui/gamebooster/gbservices/a;)Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageService;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/miui/gamebooster/gbservices/q;

    invoke-direct {v0, p0, p2}, Lcom/miui/gamebooster/gbservices/q;-><init>(Lcom/miui/gamebooster/gbservices/p;I)V

    invoke-static {v0}, Lcom/miui/common/a/b/a;->aGz(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/miui/gamebooster/gbservices/p;->qc:Lcom/miui/gamebooster/gbservices/a;

    invoke-static {v0}, Lcom/miui/gamebooster/gbservices/a;->rh(Lcom/miui/gamebooster/gbservices/a;)Lcom/miui/gamebooster/service/XunYouVPNConstants$CallBackType;

    move-result-object v0

    sget-object v1, Lcom/miui/gamebooster/service/XunYouVPNConstants$CallBackType;->mA:Lcom/miui/gamebooster/service/XunYouVPNConstants$CallBackType;

    if-ne v0, v1, :cond_2

    const/16 v0, 0x3e9

    if-ne p2, v0, :cond_2

    const-string/jumbo v0, "XunyouBoosterService"

    const-string/jumbo v1, "vpn booster success"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/gamebooster/gbservices/p;->qc:Lcom/miui/gamebooster/gbservices/a;

    sget-object v1, Lcom/miui/gamebooster/service/XunYouVPNConstants$CallBackType;->mE:Lcom/miui/gamebooster/service/XunYouVPNConstants$CallBackType;

    invoke-static {v0, v1}, Lcom/miui/gamebooster/gbservices/a;->rm(Lcom/miui/gamebooster/gbservices/a;Lcom/miui/gamebooster/service/XunYouVPNConstants$CallBackType;)Lcom/miui/gamebooster/service/XunYouVPNConstants$CallBackType;

    :cond_1
    :goto_0
    const-string/jumbo v0, "XunyouBoosterService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "VpnType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "VpnState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "Vpndata:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    iget-object v0, p0, Lcom/miui/gamebooster/gbservices/p;->qc:Lcom/miui/gamebooster/gbservices/a;

    invoke-static {v0}, Lcom/miui/gamebooster/gbservices/a;->rh(Lcom/miui/gamebooster/gbservices/a;)Lcom/miui/gamebooster/service/XunYouVPNConstants$CallBackType;

    move-result-object v0

    sget-object v1, Lcom/miui/gamebooster/service/XunYouVPNConstants$CallBackType;->mA:Lcom/miui/gamebooster/service/XunYouVPNConstants$CallBackType;

    if-ne v0, v1, :cond_1

    const/16 v0, 0x3ea

    if-ne p2, v0, :cond_1

    const-string/jumbo v0, "XunyouBoosterService"

    const-string/jumbo v1, "vpn booster failed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/gamebooster/gbservices/p;->qc:Lcom/miui/gamebooster/gbservices/a;

    sget-object v1, Lcom/miui/gamebooster/service/XunYouVPNConstants$CallBackType;->mE:Lcom/miui/gamebooster/service/XunYouVPNConstants$CallBackType;

    invoke-static {v0, v1}, Lcom/miui/gamebooster/gbservices/a;->rm(Lcom/miui/gamebooster/gbservices/a;Lcom/miui/gamebooster/service/XunYouVPNConstants$CallBackType;)Lcom/miui/gamebooster/service/XunYouVPNConstants$CallBackType;

    goto :goto_0
.end method
