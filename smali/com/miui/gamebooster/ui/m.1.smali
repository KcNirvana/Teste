.class Lcom/miui/gamebooster/ui/m;
.super Lcom/miui/gamebooster/service/MiuiVpnManageServiceCallback;
.source ""


# instance fields
.field private final cw:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lcom/miui/gamebooster/ui/GameBoosterMainActivity;)V
    .locals 1

    invoke-direct {p0}, Lcom/miui/gamebooster/service/MiuiVpnManageServiceCallback;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/gamebooster/ui/m;->cw:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public isVpnConnected()Z
    .locals 1

    invoke-super {p0}, Lcom/miui/gamebooster/service/MiuiVpnManageServiceCallback;->isVpnConnected()Z

    move-result v0

    return v0
.end method

.method public onQueryCouponsResult(ILjava/util/List;)V
    .locals 3

    invoke-super {p0, p1, p2}, Lcom/miui/gamebooster/service/MiuiVpnManageServiceCallback;->onQueryCouponsResult(ILjava/util/List;)V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/m;->cw:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    invoke-static {}, Lcom/miui/gamebooster/sign/a;->getInstance()Lcom/miui/gamebooster/sign/a;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, v2}, Lcom/miui/gamebooster/sign/a;->rb(Ljava/util/ArrayList;)V

    invoke-static {v0}, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->dJ(Lcom/miui/gamebooster/ui/GameBoosterMainActivity;)Lcom/miui/gamebooster/ui/l;

    move-result-object v0

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    const/16 v2, 0x7c

    invoke-virtual {v0, v2, v1}, Lcom/miui/gamebooster/ui/l;->aLg(ILjava/lang/Object;)V

    :goto_0
    invoke-static {}, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->-get0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " gift:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-static {v0}, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->dJ(Lcom/miui/gamebooster/ui/GameBoosterMainActivity;)Lcom/miui/gamebooster/ui/l;

    move-result-object v0

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    const/16 v2, 0x7b

    invoke-virtual {v0, v2, v1}, Lcom/miui/gamebooster/ui/l;->aLg(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public onVpnStateChanged(IILjava/lang/String;)V
    .locals 3

    invoke-super {p0, p1, p2, p3}, Lcom/miui/gamebooster/service/MiuiVpnManageServiceCallback;->onVpnStateChanged(IILjava/lang/String;)V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/m;->cw:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {v0}, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->dM(Lcom/miui/gamebooster/ui/GameBoosterMainActivity;)Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageService;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    new-instance v1, Lcom/miui/gamebooster/ui/ay;

    invoke-direct {v1, p0, p2, v0}, Lcom/miui/gamebooster/ui/ay;-><init>(Lcom/miui/gamebooster/ui/m;ILcom/miui/gamebooster/ui/GameBoosterMainActivity;)V

    invoke-static {v1}, Lcom/miui/common/a/b/a;->aGz(Ljava/lang/Runnable;)V

    invoke-static {}, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->-get0()Ljava/lang/String;

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
.end method
