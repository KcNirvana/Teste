.class final Lcom/miui/gamebooster/ui/I;
.super Landroid/os/AsyncTask;
.source ""


# instance fields
.field final synthetic cZ:Lcom/miui/gamebooster/ui/H;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/ui/H;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/ui/I;->cZ:Lcom/miui/gamebooster/ui/H;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/gamebooster/ui/I;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/miui/gamebooster/ui/I;->cZ:Lcom/miui/gamebooster/ui/H;

    iget-object v0, v0, Lcom/miui/gamebooster/ui/H;->cY:Lcom/miui/gamebooster/ui/c;

    iget-object v1, p0, Lcom/miui/gamebooster/ui/I;->cZ:Lcom/miui/gamebooster/ui/H;

    iget-object v1, v1, Lcom/miui/gamebooster/ui/H;->cY:Lcom/miui/gamebooster/ui/c;

    invoke-static {v1}, Lcom/miui/gamebooster/ui/c;->bo(Lcom/miui/gamebooster/ui/c;)Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageService;

    move-result-object v1

    const-string/jumbo v2, "xunyou"

    const-string/jumbo v3, "xunyou_wifi_accel_switch"

    const-string/jumbo v4, "false"

    invoke-interface {v1, v2, v3, v4}, Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageService;->getSettingEx(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gamebooster/ui/c;->by(Lcom/miui/gamebooster/ui/c;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/miui/gamebooster/ui/I;->cZ:Lcom/miui/gamebooster/ui/H;

    iget-object v0, v0, Lcom/miui/gamebooster/ui/H;->cY:Lcom/miui/gamebooster/ui/c;

    invoke-static {v0}, Lcom/miui/gamebooster/ui/c;->aZ(Lcom/miui/gamebooster/ui/c;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Lcom/miui/gamebooster/c/b;->tL(Z)V

    const/4 v0, 0x0

    return-object v0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/miui/gamebooster/ui/c;->-get0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
