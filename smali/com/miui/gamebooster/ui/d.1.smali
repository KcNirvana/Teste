.class Lcom/miui/gamebooster/ui/d;
.super Lcom/miui/gamebooster/service/MiuiVpnManageServiceCallback;
.source ""


# instance fields
.field private final aN:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lcom/miui/gamebooster/ui/c;)V
    .locals 1

    invoke-direct {p0}, Lcom/miui/gamebooster/service/MiuiVpnManageServiceCallback;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/gamebooster/ui/d;->aN:Ljava/lang/ref/WeakReference;

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
    .locals 6

    const/16 v5, 0x66

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-super {p0, p1, p2, p3}, Lcom/miui/gamebooster/service/MiuiVpnManageServiceCallback;->onVpnStateChanged(IILjava/lang/String;)V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/d;->aN:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/ui/c;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {v0}, Lcom/miui/gamebooster/ui/c;->bo(Lcom/miui/gamebooster/ui/c;)Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageService;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    new-instance v1, Lcom/miui/gamebooster/ui/G;

    invoke-direct {v1, p0, v0, p2, p3}, Lcom/miui/gamebooster/ui/G;-><init>(Lcom/miui/gamebooster/ui/d;Lcom/miui/gamebooster/ui/c;ILjava/lang/String;)V

    invoke-static {v1}, Lcom/miui/common/a/b/a;->aGz(Ljava/lang/Runnable;)V

    invoke-static {v0}, Lcom/miui/gamebooster/ui/c;->ba(Lcom/miui/gamebooster/ui/c;)Lcom/miui/gamebooster/service/XunYouVPNConstants$CallBackType;

    move-result-object v1

    sget-object v2, Lcom/miui/gamebooster/service/XunYouVPNConstants$CallBackType;->mA:Lcom/miui/gamebooster/service/XunYouVPNConstants$CallBackType;

    if-ne v1, v2, :cond_6

    const/16 v1, 0x3e9

    if-ne p2, v1, :cond_6

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gamebooster/ui/c;->bR(Lcom/miui/gamebooster/ui/c;Ljava/lang/Boolean;)V

    invoke-static {}, Lcom/miui/gamebooster/ui/c;->-get0()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "vpn booster success"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/miui/gamebooster/service/XunYouVPNConstants$CallBackType;->mE:Lcom/miui/gamebooster/service/XunYouVPNConstants$CallBackType;

    invoke-static {v0, v1}, Lcom/miui/gamebooster/ui/c;->bz(Lcom/miui/gamebooster/ui/c;Lcom/miui/gamebooster/service/XunYouVPNConstants$CallBackType;)Lcom/miui/gamebooster/service/XunYouVPNConstants$CallBackType;

    :cond_2
    :goto_0
    if-ne p2, v5, :cond_3

    const/4 v0, 0x5

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_4
    const-string/jumbo v0, "gamebooster_xunyou_cache_expire"

    invoke-static {v0, v3}, Lcom/miui/common/persistence/a;->aMP(Ljava/lang/String;Z)V

    :cond_5
    :goto_1
    invoke-static {}, Lcom/miui/gamebooster/ui/c;->-get0()Ljava/lang/String;

    move-result-object v0

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

    :cond_6
    invoke-static {v0}, Lcom/miui/gamebooster/ui/c;->ba(Lcom/miui/gamebooster/ui/c;)Lcom/miui/gamebooster/service/XunYouVPNConstants$CallBackType;

    move-result-object v1

    sget-object v2, Lcom/miui/gamebooster/service/XunYouVPNConstants$CallBackType;->mA:Lcom/miui/gamebooster/service/XunYouVPNConstants$CallBackType;

    if-ne v1, v2, :cond_2

    const/16 v1, 0x3ea

    if-ne p2, v1, :cond_2

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gamebooster/ui/c;->bR(Lcom/miui/gamebooster/ui/c;Ljava/lang/Boolean;)V

    invoke-static {}, Lcom/miui/gamebooster/ui/c;->-get0()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "vpn booster failed"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/miui/gamebooster/service/XunYouVPNConstants$CallBackType;->mE:Lcom/miui/gamebooster/service/XunYouVPNConstants$CallBackType;

    invoke-static {v0, v1}, Lcom/miui/gamebooster/ui/c;->bz(Lcom/miui/gamebooster/ui/c;Lcom/miui/gamebooster/service/XunYouVPNConstants$CallBackType;)Lcom/miui/gamebooster/service/XunYouVPNConstants$CallBackType;

    goto :goto_0

    :cond_7
    if-ne p2, v5, :cond_5

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x6

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_8
    const-string/jumbo v0, "gamebooster_xunyou_cache_expire"

    invoke-static {v0, v4}, Lcom/miui/common/persistence/a;->aMP(Ljava/lang/String;Z)V

    const-string/jumbo v0, "gamebooster_xunyou_cache_user_type"

    invoke-static {v0, p3}, Lcom/miui/common/persistence/a;->aMK(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method
