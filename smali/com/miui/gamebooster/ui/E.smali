.class final Lcom/miui/gamebooster/ui/E;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic cR:Lcom/miui/gamebooster/ui/WifiBoosterDetail;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/ui/WifiBoosterDetail;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/ui/E;->cR:Lcom/miui/gamebooster/ui/WifiBoosterDetail;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4

    iget-object v0, p0, Lcom/miui/gamebooster/ui/E;->cR:Lcom/miui/gamebooster/ui/WifiBoosterDetail;

    invoke-static {v0}, Lcom/miui/gamebooster/ui/WifiBoosterDetail;->aj(Lcom/miui/gamebooster/ui/WifiBoosterDetail;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "action_detail_wifibooster"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/miui/gamebooster/ui/E;->cR:Lcom/miui/gamebooster/ui/WifiBoosterDetail;

    invoke-static {v0}, Lcom/miui/gamebooster/ui/WifiBoosterDetail;->ak(Lcom/miui/gamebooster/ui/WifiBoosterDetail;)Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageService;

    move-result-object v0

    const-string/jumbo v1, "xunyou"

    const-string/jumbo v2, "xunyou_wifi_accel_switch"

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageService;->setSettingEx(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-static {p2}, Lcom/miui/gamebooster/c/b;->tL(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/ui/E;->cR:Lcom/miui/gamebooster/ui/WifiBoosterDetail;

    invoke-static {v0}, Lcom/miui/a/b/b/b;->getInstance(Landroid/content/Context;)Lcom/miui/a/b/b/b;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/a/b/b/b;->btt(Z)V

    :cond_0
    :goto_1
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/miui/gamebooster/ui/WifiBoosterDetail;->-get0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/gamebooster/ui/E;->cR:Lcom/miui/gamebooster/ui/WifiBoosterDetail;

    invoke-static {v0}, Lcom/miui/gamebooster/ui/WifiBoosterDetail;->aj(Lcom/miui/gamebooster/ui/WifiBoosterDetail;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "action_handsfree_mute"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Lcom/miui/gamebooster/c/b;->tM(Z)V

    goto :goto_1
.end method
