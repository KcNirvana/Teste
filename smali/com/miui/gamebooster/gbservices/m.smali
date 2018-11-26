.class public Lcom/miui/gamebooster/gbservices/m;
.super Lcom/miui/gamebooster/gbservices/d;
.source ""


# instance fields
.field private mContext:Landroid/content/Context;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private pV:Lcom/miui/gamebooster/service/d;

.field private pW:Z

.field private pX:Z

.field private pY:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/miui/gamebooster/service/d;)V
    .locals 1

    invoke-direct {p0}, Lcom/miui/gamebooster/gbservices/d;-><init>()V

    iput-object p1, p0, Lcom/miui/gamebooster/gbservices/m;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/miui/gamebooster/gbservices/m;->pV:Lcom/miui/gamebooster/service/d;

    const-string/jumbo v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/miui/gamebooster/gbservices/m;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    iget-boolean v0, p0, Lcom/miui/gamebooster/gbservices/m;->pY:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/gamebooster/gbservices/m;->pX:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/gbservices/m;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gamebooster/gbservices/m;->pX:Z

    :cond_0
    return-void
.end method

.method public open()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/miui/gamebooster/gbservices/m;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iput-boolean v2, p0, Lcom/miui/gamebooster/gbservices/m;->pY:Z

    :goto_0
    iget-boolean v0, p0, Lcom/miui/gamebooster/gbservices/m;->pY:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/gamebooster/gbservices/m;->pW:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/gbservices/m;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/common/b/t;->aJr(Landroid/content/Context;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/gbservices/m;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    iput-boolean v2, p0, Lcom/miui/gamebooster/gbservices/m;->pX:Z

    :cond_0
    return-void

    :cond_1
    iput-boolean v1, p0, Lcom/miui/gamebooster/gbservices/m;->pY:Z

    goto :goto_0
.end method

.method public rd()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public re()V
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/gbservices/m;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/gamebooster/c/b;->getInstance(Landroid/content/Context;)Lcom/miui/gamebooster/c/b;

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/miui/gamebooster/c/b;->tQ(Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/gamebooster/gbservices/m;->pW:Z

    return-void
.end method

.method public rf(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/gamebooster/gbservices/m;->pW:Z

    return-void
.end method
