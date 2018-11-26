.class final Lcom/miui/gamebooster/ui/W;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic dp:Lcom/miui/gamebooster/ui/c;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/ui/c;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/ui/W;->dp:Lcom/miui/gamebooster/ui/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    const/4 v4, 0x1

    const-string/jumbo v0, "click"

    const-string/jumbo v1, "open_now"

    invoke-static {v0, v1}, Lcom/miui/gamebooster/a/t;->hg(Ljava/lang/String;Ljava/lang/String;)V

    check-cast p1, Lmiui/app/AlertDialog;

    invoke-virtual {p1}, Lmiui/app/AlertDialog;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "click"

    const-string/jumbo v1, "not_remind"

    invoke-static {v0, v1}, Lcom/miui/gamebooster/a/t;->hg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "gamebooster_netbooster_wifi_open_nomore"

    invoke-static {v0, v4}, Lcom/miui/common/persistence/a;->aMP(Ljava/lang/String;Z)V

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/miui/gamebooster/ui/W;->dp:Lcom/miui/gamebooster/ui/c;

    invoke-static {v0}, Lcom/miui/gamebooster/ui/c;->bo(Lcom/miui/gamebooster/ui/c;)Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageService;

    move-result-object v0

    const-string/jumbo v1, "xunyou"

    const-string/jumbo v2, "xunyou_wifi_accel_switch"

    const-string/jumbo v3, "true"

    invoke-interface {v0, v1, v2, v3}, Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageService;->setSettingEx(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/miui/gamebooster/c/b;->tL(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/miui/gamebooster/ui/W;->dp:Lcom/miui/gamebooster/ui/c;

    invoke-static {v0}, Lcom/miui/gamebooster/ui/c;->bd(Lcom/miui/gamebooster/ui/c;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/a/b/b/b;->getInstance(Landroid/content/Context;)Lcom/miui/a/b/b/b;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/miui/a/b/b/b;->btt(Z)V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/W;->dp:Lcom/miui/gamebooster/ui/c;

    invoke-static {v0}, Lcom/miui/gamebooster/ui/c;->bL(Lcom/miui/gamebooster/ui/c;)V

    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/miui/gamebooster/ui/c;->-get0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
