.class final Lcom/miui/gamebooster/ui/H;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic cY:Lcom/miui/gamebooster/ui/c;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/ui/c;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/ui/H;->cY:Lcom/miui/gamebooster/ui/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/miui/gamebooster/ui/H;->cY:Lcom/miui/gamebooster/ui/c;

    invoke-static {p2}, Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageService;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/miui/gamebooster/ui/c;->bF(Lcom/miui/gamebooster/ui/c;Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageService;)Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageService;

    new-instance v0, Lcom/miui/gamebooster/ui/I;

    invoke-direct {v0, p0}, Lcom/miui/gamebooster/ui/I;-><init>(Lcom/miui/gamebooster/ui/H;)V

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v3, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v2, v3}, Lcom/miui/gamebooster/ui/I;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :try_start_0
    iget-object v0, p0, Lcom/miui/gamebooster/ui/H;->cY:Lcom/miui/gamebooster/ui/c;

    invoke-static {v0}, Lcom/miui/gamebooster/ui/c;->bo(Lcom/miui/gamebooster/ui/c;)Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageService;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/gamebooster/ui/H;->cY:Lcom/miui/gamebooster/ui/c;

    invoke-static {v2}, Lcom/miui/gamebooster/ui/c;->bn(Lcom/miui/gamebooster/ui/c;)Lcom/miui/gamebooster/ui/d;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageService;->registerCallback(Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageServiceCallback;)V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/H;->cY:Lcom/miui/gamebooster/ui/c;

    invoke-virtual {v0}, Lcom/miui/gamebooster/ui/c;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v2, "top"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/ui/H;->cY:Lcom/miui/gamebooster/ui/c;

    invoke-static {v0}, Lcom/miui/gamebooster/ui/c;->bd(Lcom/miui/gamebooster/ui/c;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/applicationlock/utils/b;->adS(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/ui/H;->cY:Lcom/miui/gamebooster/ui/c;

    invoke-static {v0}, Lcom/miui/gamebooster/ui/c;->bj(Lcom/miui/gamebooster/ui/c;)Lcom/miui/gamebooster/ui/e;

    move-result-object v0

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    const/16 v3, 0x72

    invoke-virtual {v0, v3, v2}, Lcom/miui/gamebooster/ui/e;->aLg(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-static {}, Lcom/miui/gamebooster/ui/c;->-get0()Ljava/lang/String;

    move-result-object v2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mMiuiVpnService :"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p0, Lcom/miui/gamebooster/ui/H;->cY:Lcom/miui/gamebooster/ui/c;

    invoke-static {v0}, Lcom/miui/gamebooster/ui/c;->bo(Lcom/miui/gamebooster/ui/c;)Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageService;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/miui/gamebooster/ui/c;->-get0()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/gamebooster/ui/H;->cY:Lcom/miui/gamebooster/ui/c;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/gamebooster/ui/c;->bF(Lcom/miui/gamebooster/ui/c;Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageService;)Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageService;

    return-void
.end method
