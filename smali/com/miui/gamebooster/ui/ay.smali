.class final Lcom/miui/gamebooster/ui/ay;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic ea:Lcom/miui/gamebooster/ui/m;

.field final synthetic eb:I

.field final synthetic ec:Lcom/miui/gamebooster/ui/GameBoosterMainActivity;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/ui/m;ILcom/miui/gamebooster/ui/GameBoosterMainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/ui/ay;->ea:Lcom/miui/gamebooster/ui/m;

    iput p2, p0, Lcom/miui/gamebooster/ui/ay;->eb:I

    iput-object p3, p0, Lcom/miui/gamebooster/ui/ay;->ec:Lcom/miui/gamebooster/ui/GameBoosterMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    iget v0, p0, Lcom/miui/gamebooster/ui/ay;->eb:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/ui/ay;->ec:Lcom/miui/gamebooster/ui/GameBoosterMainActivity;

    iget-object v1, p0, Lcom/miui/gamebooster/ui/ay;->ec:Lcom/miui/gamebooster/ui/GameBoosterMainActivity;

    invoke-static {v1}, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->dM(Lcom/miui/gamebooster/ui/GameBoosterMainActivity;)Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageService;

    move-result-object v1

    const-string/jumbo v2, "detailUrl"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageService;->getSetting(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->dS(Lcom/miui/gamebooster/ui/GameBoosterMainActivity;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/gamebooster/ui/ay;->ec:Lcom/miui/gamebooster/ui/GameBoosterMainActivity;

    invoke-static {v0}, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->dH(Lcom/miui/gamebooster/ui/GameBoosterMainActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/ui/ay;->ec:Lcom/miui/gamebooster/ui/GameBoosterMainActivity;

    invoke-static {v0}, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->dM(Lcom/miui/gamebooster/ui/GameBoosterMainActivity;)Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageService;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageService;->getCoupons()V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/ay;->ec:Lcom/miui/gamebooster/ui/GameBoosterMainActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->dQ(Lcom/miui/gamebooster/ui/GameBoosterMainActivity;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->-get0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
