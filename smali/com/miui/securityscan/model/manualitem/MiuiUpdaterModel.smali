.class public Lcom/miui/securityscan/model/manualitem/MiuiUpdaterModel;
.super Lcom/miui/securityscan/model/AbsModel;
.source ""


# instance fields
.field private AA:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/miui/securityscan/model/AbsModel;-><init>(Ljava/lang/String;I)V

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/miui/securityscan/model/manualitem/MiuiUpdaterModel;->AA:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/securityscan/model/manualitem/MiuiUpdaterModel;->setDelayOptimized(Z)V

    const-string/jumbo v0, "miui_update"

    invoke-virtual {p0, v0}, Lcom/miui/securityscan/model/manualitem/MiuiUpdaterModel;->setTrackStr(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getDesc()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getIndex()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lcom/miui/securityscan/model/manualitem/MiuiUpdaterModel;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/miui/securityscan/model/manualitem/MiuiUpdaterModel;->AA:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const v2, 0x7f0706d8

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/miui/securityscan/model/manualitem/MiuiUpdaterModel;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0706d7

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public optimize(Landroid/app/Activity;)V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v2, "pl.zdunex25.updater"

    const-string/jumbo v3, "pl.zdunex25.updater.MainActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/16 v1, 0x64

    invoke-static {p1, v0, v1}, Lcom/miui/common/b/k;->aIq(Landroid/app/Activity;Landroid/content/Intent;I)Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f070712

    invoke-static {p1, v0}, Lcom/miui/common/b/o;->aIX(Landroid/content/Context;I)V

    :cond_0
    return-void
.end method

.method public scan()V
    .locals 4

    invoke-virtual {p0}, Lcom/miui/securityscan/model/manualitem/MiuiUpdaterModel;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/common/b/e;->aHx(Landroid/content/Context;)Z

    move-result v0

    invoke-static {}, Lcom/miui/securityscan/c;->Oy()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/securityscan/model/manualitem/MiuiUpdaterModel;->AA:Ljava/lang/String;

    const-string/jumbo v1, "MIUI_UPDATE"

    invoke-static {v1}, Lcom/miui/securityscan/utils/g;->IN(Ljava/lang/String;)Z

    move-result v1

    if-eqz v0, :cond_1

    xor-int/lit8 v0, v1, 0x1

    if-eqz v0, :cond_1

    sget-object v0, Lcom/miui/securityscan/model/AbsModel$State;->DANGER:Lcom/miui/securityscan/model/AbsModel$State;

    :goto_0
    invoke-virtual {p0, v0}, Lcom/miui/securityscan/model/manualitem/MiuiUpdaterModel;->setSafe(Lcom/miui/securityscan/model/AbsModel$State;)V

    invoke-virtual {p0}, Lcom/miui/securityscan/model/manualitem/MiuiUpdaterModel;->isSafe()Lcom/miui/securityscan/model/AbsModel$State;

    move-result-object v0

    sget-object v1, Lcom/miui/securityscan/model/AbsModel$State;->SAFE:Lcom/miui/securityscan/model/AbsModel$State;

    if-ne v0, v1, :cond_2

    new-instance v0, Lcom/miui/securityscan/scanner/e;

    invoke-virtual {p0}, Lcom/miui/securityscan/model/manualitem/MiuiUpdaterModel;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0706d6

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/miui/securityscan/scanner/e;-><init>(Ljava/lang/String;Z)V

    invoke-static {}, Lcom/miui/securityscan/scanner/y;->getInstance()Lcom/miui/securityscan/scanner/y;

    move-result-object v1

    sget-object v2, Lcom/miui/securityscan/scanner/OptimizeManager$OptimizeCard;->DH:Lcom/miui/securityscan/scanner/OptimizeManager$OptimizeCard;

    invoke-virtual {p0}, Lcom/miui/securityscan/model/manualitem/MiuiUpdaterModel;->getItemKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/miui/securityscan/scanner/y;->Fe(Lcom/miui/securityscan/scanner/OptimizeManager$OptimizeCard;Ljava/lang/String;Lcom/miui/securityscan/scanner/e;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    sget-object v0, Lcom/miui/securityscan/model/AbsModel$State;->SAFE:Lcom/miui/securityscan/model/AbsModel$State;

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/miui/securityscan/scanner/y;->getInstance()Lcom/miui/securityscan/scanner/y;

    move-result-object v0

    sget-object v1, Lcom/miui/securityscan/scanner/OptimizeManager$OptimizeCard;->DH:Lcom/miui/securityscan/scanner/OptimizeManager$OptimizeCard;

    invoke-virtual {v0, v1}, Lcom/miui/securityscan/scanner/y;->Ff(Lcom/miui/securityscan/scanner/OptimizeManager$OptimizeCard;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/securityscan/model/manualitem/MiuiUpdaterModel;->getItemKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/miui/securityscan/model/manualitem/MiuiUpdaterModel;->getItemKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method
