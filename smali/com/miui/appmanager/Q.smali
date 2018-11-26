.class final Lcom/miui/appmanager/Q;
.super Lcom/miui/common/d/e;
.source ""


# instance fields
.field final synthetic aWu:Lcom/miui/appmanager/ApplicationsDetailsActivity;


# direct methods
.method constructor <init>(Lcom/miui/appmanager/ApplicationsDetailsActivity;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/appmanager/Q;->aWu:Lcom/miui/appmanager/ApplicationsDetailsActivity;

    invoke-direct {p0, p2}, Lcom/miui/common/d/e;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public loadInBackground()Ljava/lang/Boolean;
    .locals 6

    const/4 v5, 0x1

    invoke-static {}, Lcom/miui/common/b/q;->getInstance()Lcom/nostra13/universalimageloader/core/l;

    iget-object v0, p0, Lcom/miui/appmanager/Q;->aWu:Lcom/miui/appmanager/ApplicationsDetailsActivity;

    invoke-static {v0}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->bkW(Lcom/miui/appmanager/ApplicationsDetailsActivity;)V

    iget-object v0, p0, Lcom/miui/appmanager/Q;->aWu:Lcom/miui/appmanager/ApplicationsDetailsActivity;

    iget-object v1, p0, Lcom/miui/appmanager/Q;->aWu:Lcom/miui/appmanager/ApplicationsDetailsActivity;

    invoke-static {v1}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->bkR(Lcom/miui/appmanager/ApplicationsDetailsActivity;)J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->bkx(Lcom/miui/appmanager/ApplicationsDetailsActivity;J)J

    iget-object v0, p0, Lcom/miui/appmanager/Q;->aWu:Lcom/miui/appmanager/ApplicationsDetailsActivity;

    iget-object v1, p0, Lcom/miui/appmanager/Q;->aWu:Lcom/miui/appmanager/ApplicationsDetailsActivity;

    invoke-static {v1}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->bkO(Lcom/miui/appmanager/ApplicationsDetailsActivity;)D

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->bkG(Lcom/miui/appmanager/ApplicationsDetailsActivity;D)D

    iget-object v0, p0, Lcom/miui/appmanager/Q;->aWu:Lcom/miui/appmanager/ApplicationsDetailsActivity;

    iget-object v1, p0, Lcom/miui/appmanager/Q;->aWu:Lcom/miui/appmanager/ApplicationsDetailsActivity;

    iget-object v2, p0, Lcom/miui/appmanager/Q;->aWu:Lcom/miui/appmanager/ApplicationsDetailsActivity;

    invoke-static {v2}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->bka(Lcom/miui/appmanager/ApplicationsDetailsActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/appmanager/h;->blP(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->bks(Lcom/miui/appmanager/ApplicationsDetailsActivity;Z)Z

    iget-object v0, p0, Lcom/miui/appmanager/Q;->aWu:Lcom/miui/appmanager/ApplicationsDetailsActivity;

    invoke-static {v0}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->bkV(Lcom/miui/appmanager/ApplicationsDetailsActivity;)V

    iget-object v0, p0, Lcom/miui/appmanager/Q;->aWu:Lcom/miui/appmanager/ApplicationsDetailsActivity;

    iget-object v1, p0, Lcom/miui/appmanager/Q;->aWu:Lcom/miui/appmanager/ApplicationsDetailsActivity;

    invoke-static {v1}, Lcom/miui/powercenter/a/a;->baH(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->bkw(Lcom/miui/appmanager/ApplicationsDetailsActivity;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/appmanager/Q;->aWu:Lcom/miui/appmanager/ApplicationsDetailsActivity;

    iget-object v1, p0, Lcom/miui/appmanager/Q;->aWu:Lcom/miui/appmanager/ApplicationsDetailsActivity;

    invoke-static {v1}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->bkN(Lcom/miui/appmanager/ApplicationsDetailsActivity;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->bkA(Lcom/miui/appmanager/ApplicationsDetailsActivity;Z)Z

    iget-object v0, p0, Lcom/miui/appmanager/Q;->aWu:Lcom/miui/appmanager/ApplicationsDetailsActivity;

    iget-object v1, p0, Lcom/miui/appmanager/Q;->aWu:Lcom/miui/appmanager/ApplicationsDetailsActivity;

    iget-object v2, p0, Lcom/miui/appmanager/Q;->aWu:Lcom/miui/appmanager/ApplicationsDetailsActivity;

    invoke-static {v2}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->bka(Lcom/miui/appmanager/ApplicationsDetailsActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/permcenter/e;->SI(Landroid/content/Context;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->bkE(Lcom/miui/appmanager/ApplicationsDetailsActivity;Ljava/util/HashMap;)Ljava/util/HashMap;

    iget-object v0, p0, Lcom/miui/appmanager/Q;->aWu:Lcom/miui/appmanager/ApplicationsDetailsActivity;

    iget-object v1, p0, Lcom/miui/appmanager/Q;->aWu:Lcom/miui/appmanager/ApplicationsDetailsActivity;

    iget-object v2, p0, Lcom/miui/appmanager/Q;->aWu:Lcom/miui/appmanager/ApplicationsDetailsActivity;

    invoke-static {v2}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->bkf(Lcom/miui/appmanager/ApplicationsDetailsActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmiui/provider/ExtraNetwork;->isWifiRestrict(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->bkC(Lcom/miui/appmanager/ApplicationsDetailsActivity;Z)Z

    iget-object v0, p0, Lcom/miui/appmanager/Q;->aWu:Lcom/miui/appmanager/ApplicationsDetailsActivity;

    invoke-static {v0}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->bkc(Lcom/miui/appmanager/ApplicationsDetailsActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/appmanager/Q;->aWu:Lcom/miui/appmanager/ApplicationsDetailsActivity;

    iget-object v1, p0, Lcom/miui/appmanager/Q;->aWu:Lcom/miui/appmanager/ApplicationsDetailsActivity;

    invoke-static {v1}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->bjB(Lcom/miui/appmanager/ApplicationsDetailsActivity;)Landroid/app/AppOpsManager;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/appmanager/Q;->aWu:Lcom/miui/appmanager/ApplicationsDetailsActivity;

    invoke-static {v2}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->bkb(Lcom/miui/appmanager/ApplicationsDetailsActivity;)I

    move-result v2

    iget-object v3, p0, Lcom/miui/appmanager/Q;->aWu:Lcom/miui/appmanager/ApplicationsDetailsActivity;

    invoke-static {v3}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->bka(Lcom/miui/appmanager/ApplicationsDetailsActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/miui/appmanager/n;->bmF(Landroid/app/AppOpsManager;ILjava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->bkq(Lcom/miui/appmanager/ApplicationsDetailsActivity;I)I

    iget-object v0, p0, Lcom/miui/appmanager/Q;->aWu:Lcom/miui/appmanager/ApplicationsDetailsActivity;

    iget-object v1, p0, Lcom/miui/appmanager/Q;->aWu:Lcom/miui/appmanager/ApplicationsDetailsActivity;

    iget-object v2, p0, Lcom/miui/appmanager/Q;->aWu:Lcom/miui/appmanager/ApplicationsDetailsActivity;

    invoke-static {v2}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->bjP(Lcom/miui/appmanager/ApplicationsDetailsActivity;)Landroid/content/pm/IPackageManager;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/appmanager/Q;->aWu:Lcom/miui/appmanager/ApplicationsDetailsActivity;

    invoke-static {v3}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->bkb(Lcom/miui/appmanager/ApplicationsDetailsActivity;)I

    move-result v3

    iget-object v4, p0, Lcom/miui/appmanager/Q;->aWu:Lcom/miui/appmanager/ApplicationsDetailsActivity;

    invoke-static {v4}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->bjC(Lcom/miui/appmanager/ApplicationsDetailsActivity;)I

    move-result v4

    invoke-static {v1, v2, v3, v4}, Lcom/miui/appmanager/n;->bmM(Landroid/content/Context;Landroid/content/pm/IPackageManager;II)I

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->bkF(Lcom/miui/appmanager/ApplicationsDetailsActivity;I)I

    :cond_0
    iget-object v0, p0, Lcom/miui/appmanager/Q;->aWu:Lcom/miui/appmanager/ApplicationsDetailsActivity;

    iget-object v1, p0, Lcom/miui/appmanager/Q;->aWu:Lcom/miui/appmanager/ApplicationsDetailsActivity;

    invoke-static {v1}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->bkQ(Lcom/miui/appmanager/ApplicationsDetailsActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->bkD(Lcom/miui/appmanager/ApplicationsDetailsActivity;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/appmanager/Q;->aWu:Lcom/miui/appmanager/ApplicationsDetailsActivity;

    invoke-static {v0}, Lcom/miui/networkassistant/dual/SimCardHelper;->getInstance(Landroid/content/Context;)Lcom/miui/networkassistant/dual/SimCardHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/appmanager/Q;->aWu:Lcom/miui/appmanager/ApplicationsDetailsActivity;

    invoke-virtual {v0}, Lcom/miui/networkassistant/dual/SimCardHelper;->isDualSimInserted()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->bkB(Lcom/miui/appmanager/ApplicationsDetailsActivity;Z)Z

    iget-object v1, p0, Lcom/miui/appmanager/Q;->aWu:Lcom/miui/appmanager/ApplicationsDetailsActivity;

    invoke-static {v1}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->bjS(Lcom/miui/appmanager/ApplicationsDetailsActivity;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/miui/appmanager/Q;->aWu:Lcom/miui/appmanager/ApplicationsDetailsActivity;

    iget-object v1, p0, Lcom/miui/appmanager/Q;->aWu:Lcom/miui/appmanager/ApplicationsDetailsActivity;

    iget-object v2, p0, Lcom/miui/appmanager/Q;->aWu:Lcom/miui/appmanager/ApplicationsDetailsActivity;

    invoke-static {v2}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->bkf(Lcom/miui/appmanager/ApplicationsDetailsActivity;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lmiui/provider/ExtraNetwork;->isMobileRestrict(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->bky(Lcom/miui/appmanager/ApplicationsDetailsActivity;Z)Z

    iget-object v0, p0, Lcom/miui/appmanager/Q;->aWu:Lcom/miui/appmanager/ApplicationsDetailsActivity;

    iget-object v1, p0, Lcom/miui/appmanager/Q;->aWu:Lcom/miui/appmanager/ApplicationsDetailsActivity;

    iget-object v2, p0, Lcom/miui/appmanager/Q;->aWu:Lcom/miui/appmanager/ApplicationsDetailsActivity;

    invoke-static {v2}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->bkf(Lcom/miui/appmanager/ApplicationsDetailsActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v5}, Lmiui/provider/ExtraNetwork;->isMobileRestrict(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->bkz(Lcom/miui/appmanager/ApplicationsDetailsActivity;Z)Z

    :goto_0
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/miui/appmanager/Q;->aWu:Lcom/miui/appmanager/ApplicationsDetailsActivity;

    invoke-virtual {v0}, Lcom/miui/networkassistant/dual/SimCardHelper;->getCurrentMobileSlotNum()I

    move-result v0

    invoke-static {v1, v0}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->bkp(Lcom/miui/appmanager/ApplicationsDetailsActivity;I)I

    iget-object v0, p0, Lcom/miui/appmanager/Q;->aWu:Lcom/miui/appmanager/ApplicationsDetailsActivity;

    iget-object v1, p0, Lcom/miui/appmanager/Q;->aWu:Lcom/miui/appmanager/ApplicationsDetailsActivity;

    iget-object v2, p0, Lcom/miui/appmanager/Q;->aWu:Lcom/miui/appmanager/ApplicationsDetailsActivity;

    invoke-static {v2}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->bkf(Lcom/miui/appmanager/ApplicationsDetailsActivity;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/appmanager/Q;->aWu:Lcom/miui/appmanager/ApplicationsDetailsActivity;

    invoke-static {v3}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->bjz(Lcom/miui/appmanager/ApplicationsDetailsActivity;)I

    move-result v3

    invoke-static {v1, v2, v3}, Lmiui/provider/ExtraNetwork;->isMobileRestrict(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->bky(Lcom/miui/appmanager/ApplicationsDetailsActivity;Z)Z

    goto :goto_0
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/appmanager/Q;->loadInBackground()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
