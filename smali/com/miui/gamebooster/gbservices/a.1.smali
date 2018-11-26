.class public Lcom/miui/gamebooster/gbservices/a;
.super Lcom/miui/gamebooster/gbservices/d;
.source ""


# instance fields
.field private mConn:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field private oA:Z

.field private oB:Lcom/miui/gamebooster/service/MiuiVpnManageServiceCallback;

.field private ov:Z

.field private ow:Lcom/miui/gamebooster/service/XunYouVPNConstants$CallBackType;

.field private ox:Z

.field private oy:Lcom/miui/gamebooster/service/d;

.field private oz:Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/miui/gamebooster/service/d;)V
    .locals 1

    invoke-direct {p0}, Lcom/miui/gamebooster/gbservices/d;-><init>()V

    sget-object v0, Lcom/miui/gamebooster/service/XunYouVPNConstants$CallBackType;->mF:Lcom/miui/gamebooster/service/XunYouVPNConstants$CallBackType;

    iput-object v0, p0, Lcom/miui/gamebooster/gbservices/a;->ow:Lcom/miui/gamebooster/service/XunYouVPNConstants$CallBackType;

    new-instance v0, Lcom/miui/gamebooster/gbservices/o;

    invoke-direct {v0, p0}, Lcom/miui/gamebooster/gbservices/o;-><init>(Lcom/miui/gamebooster/gbservices/a;)V

    iput-object v0, p0, Lcom/miui/gamebooster/gbservices/a;->mConn:Landroid/content/ServiceConnection;

    new-instance v0, Lcom/miui/gamebooster/gbservices/p;

    invoke-direct {v0, p0}, Lcom/miui/gamebooster/gbservices/p;-><init>(Lcom/miui/gamebooster/gbservices/a;)V

    iput-object v0, p0, Lcom/miui/gamebooster/gbservices/a;->oB:Lcom/miui/gamebooster/service/MiuiVpnManageServiceCallback;

    iput-object p1, p0, Lcom/miui/gamebooster/gbservices/a;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/miui/gamebooster/gbservices/a;->oy:Lcom/miui/gamebooster/service/d;

    return-void
.end method

.method private rc()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/miui/gamebooster/gbservices/a;->oz:Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageService;

    const-string/jumbo v1, "xunyou"

    invoke-interface {v0, v1}, Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageService;->init(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "XunyouBoosterService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mMiuiVpnService Exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic rg(Lcom/miui/gamebooster/gbservices/a;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/gamebooster/gbservices/a;->ov:Z

    return v0
.end method

.method static synthetic rh(Lcom/miui/gamebooster/gbservices/a;)Lcom/miui/gamebooster/service/XunYouVPNConstants$CallBackType;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/gbservices/a;->ow:Lcom/miui/gamebooster/service/XunYouVPNConstants$CallBackType;

    return-object v0
.end method

.method static synthetic ri(Lcom/miui/gamebooster/gbservices/a;)Lcom/miui/gamebooster/service/d;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/gbservices/a;->oy:Lcom/miui/gamebooster/service/d;

    return-object v0
.end method

.method static synthetic rj(Lcom/miui/gamebooster/gbservices/a;)Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageService;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/gbservices/a;->oz:Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageService;

    return-object v0
.end method

.method static synthetic rk(Lcom/miui/gamebooster/gbservices/a;)Lcom/miui/gamebooster/service/MiuiVpnManageServiceCallback;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/gbservices/a;->oB:Lcom/miui/gamebooster/service/MiuiVpnManageServiceCallback;

    return-object v0
.end method

.method static synthetic rl(Lcom/miui/gamebooster/gbservices/a;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/gamebooster/gbservices/a;->ov:Z

    return p1
.end method

.method static synthetic rm(Lcom/miui/gamebooster/gbservices/a;Lcom/miui/gamebooster/service/XunYouVPNConstants$CallBackType;)Lcom/miui/gamebooster/service/XunYouVPNConstants$CallBackType;
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/gbservices/a;->ow:Lcom/miui/gamebooster/service/XunYouVPNConstants$CallBackType;

    return-object p1
.end method

.method static synthetic rn(Lcom/miui/gamebooster/gbservices/a;Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageService;)Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageService;
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/gbservices/a;->oz:Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageService;

    return-object p1
.end method

.method static synthetic ro(Lcom/miui/gamebooster/gbservices/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/gamebooster/gbservices/a;->rc()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 4

    iget-boolean v0, p0, Lcom/miui/gamebooster/gbservices/a;->oA:Z

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/miui/gamebooster/gbservices/a;->oz:Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageService;

    iget-object v1, p0, Lcom/miui/gamebooster/gbservices/a;->oB:Lcom/miui/gamebooster/service/MiuiVpnManageServiceCallback;

    invoke-interface {v0, v1}, Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageService;->unregisterCallback(Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageServiceCallback;)V

    iget-object v0, p0, Lcom/miui/gamebooster/gbservices/a;->mConn:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/gamebooster/gbservices/a;->ox:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/gbservices/a;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/gamebooster/gbservices/a;->mConn:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gamebooster/gbservices/a;->ox:Z

    const-string/jumbo v0, "GameBoosterService"

    const-string/jumbo v1, "xunyoubooster...stop"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "XunyouBoosterService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mMiuiVpnService Exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public open()V
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/miui/gamebooster/gbservices/a;->oy:Lcom/miui/gamebooster/service/d;

    invoke-virtual {v1}, Lcom/miui/gamebooster/service/d;->pb()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/gbservices/a;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/miui/common/b/k;->aIo(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    iget-boolean v1, p0, Lcom/miui/gamebooster/gbservices/a;->oA:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/gamebooster/gbservices/a;->oy:Lcom/miui/gamebooster/service/d;

    invoke-virtual {v1}, Lcom/miui/gamebooster/service/d;->pp()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "com.miui.securitycenter"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "com.miui.networkassistant.vpn.MIUI_VPN_MANAGE_SERVICE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/gamebooster/gbservices/a;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/miui/gamebooster/gbservices/a;->mConn:Landroid/content/ServiceConnection;

    sget-object v3, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    const/4 v4, 0x1

    invoke-virtual {v1, v0, v2, v4, v3}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/gamebooster/gbservices/a;->ox:Z

    const-string/jumbo v0, "GameBoosterService"

    const-string/jumbo v1, "xunyoubooster...start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public rd()Z
    .locals 1

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public re()V
    .locals 2

    const/4 v0, 0x0

    invoke-static {}, Lcom/miui/gamebooster/constants/a;->sV()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/gamebooster/gbservices/a;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/miui/gamebooster/c/b;->getInstance(Landroid/content/Context;)Lcom/miui/gamebooster/c/b;

    invoke-static {v0}, Lcom/miui/gamebooster/c/b;->tB(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/gbservices/a;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/gamebooster/c/b;->getInstance(Landroid/content/Context;)Lcom/miui/gamebooster/c/b;

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/miui/gamebooster/c/b;->tF(Z)Z

    move-result v0

    :cond_0
    iput-boolean v0, p0, Lcom/miui/gamebooster/gbservices/a;->oA:Z

    sget-object v0, Lcom/miui/gamebooster/service/XunYouVPNConstants$CallBackType;->mF:Lcom/miui/gamebooster/service/XunYouVPNConstants$CallBackType;

    iput-object v0, p0, Lcom/miui/gamebooster/gbservices/a;->ow:Lcom/miui/gamebooster/service/XunYouVPNConstants$CallBackType;

    return-void
.end method

.method public rf(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/gamebooster/gbservices/a;->oA:Z

    return-void
.end method
