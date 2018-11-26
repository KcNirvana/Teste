.class final Lcom/miui/gamebooster/gbservices/q;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic qd:Lcom/miui/gamebooster/gbservices/p;

.field final synthetic qe:I


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/gbservices/p;I)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/gbservices/q;->qd:Lcom/miui/gamebooster/gbservices/p;

    iput p2, p0, Lcom/miui/gamebooster/gbservices/q;->qe:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/miui/gamebooster/gbservices/q;->qd:Lcom/miui/gamebooster/gbservices/p;

    iget-object v0, v0, Lcom/miui/gamebooster/gbservices/p;->qc:Lcom/miui/gamebooster/gbservices/a;

    invoke-static {v0}, Lcom/miui/gamebooster/gbservices/a;->rg(Lcom/miui/gamebooster/gbservices/a;)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/miui/gamebooster/gbservices/q;->qe:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/gbservices/q;->qd:Lcom/miui/gamebooster/gbservices/p;

    iget-object v0, v0, Lcom/miui/gamebooster/gbservices/p;->qc:Lcom/miui/gamebooster/gbservices/a;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/gamebooster/gbservices/a;->rl(Lcom/miui/gamebooster/gbservices/a;Z)Z

    :cond_0
    iget-object v0, p0, Lcom/miui/gamebooster/gbservices/q;->qd:Lcom/miui/gamebooster/gbservices/p;

    iget-object v0, v0, Lcom/miui/gamebooster/gbservices/p;->qc:Lcom/miui/gamebooster/gbservices/a;

    invoke-static {v0}, Lcom/miui/gamebooster/gbservices/a;->rg(Lcom/miui/gamebooster/gbservices/a;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/gamebooster/gbservices/q;->qd:Lcom/miui/gamebooster/gbservices/p;

    iget-object v0, v0, Lcom/miui/gamebooster/gbservices/p;->qc:Lcom/miui/gamebooster/gbservices/a;

    invoke-static {v0}, Lcom/miui/gamebooster/gbservices/a;->rj(Lcom/miui/gamebooster/gbservices/a;)Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageService;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gamebooster/gbservices/q;->qd:Lcom/miui/gamebooster/gbservices/p;

    iget-object v1, v1, Lcom/miui/gamebooster/gbservices/p;->qc:Lcom/miui/gamebooster/gbservices/a;

    invoke-static {v1}, Lcom/miui/gamebooster/gbservices/a;->ri(Lcom/miui/gamebooster/gbservices/a;)Lcom/miui/gamebooster/service/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/gamebooster/service/d;->pb()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageService;->connectVpn(Ljava/lang/String;)I

    const-string/jumbo v0, "XunyouBoosterService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "connect:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gamebooster/gbservices/q;->qd:Lcom/miui/gamebooster/gbservices/p;

    iget-object v2, v2, Lcom/miui/gamebooster/gbservices/p;->qc:Lcom/miui/gamebooster/gbservices/a;

    invoke-static {v2}, Lcom/miui/gamebooster/gbservices/a;->ri(Lcom/miui/gamebooster/gbservices/a;)Lcom/miui/gamebooster/service/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/gamebooster/service/d;->pb()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/gamebooster/gbservices/q;->qd:Lcom/miui/gamebooster/gbservices/p;

    iget-object v0, v0, Lcom/miui/gamebooster/gbservices/p;->qc:Lcom/miui/gamebooster/gbservices/a;

    sget-object v1, Lcom/miui/gamebooster/service/XunYouVPNConstants$CallBackType;->mA:Lcom/miui/gamebooster/service/XunYouVPNConstants$CallBackType;

    invoke-static {v0, v1}, Lcom/miui/gamebooster/gbservices/a;->rm(Lcom/miui/gamebooster/gbservices/a;Lcom/miui/gamebooster/service/XunYouVPNConstants$CallBackType;)Lcom/miui/gamebooster/service/XunYouVPNConstants$CallBackType;

    iget-object v0, p0, Lcom/miui/gamebooster/gbservices/q;->qd:Lcom/miui/gamebooster/gbservices/p;

    iget-object v0, v0, Lcom/miui/gamebooster/gbservices/p;->qc:Lcom/miui/gamebooster/gbservices/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/gamebooster/gbservices/a;->rl(Lcom/miui/gamebooster/gbservices/a;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "XunyouBoosterService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "RemoteException:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
