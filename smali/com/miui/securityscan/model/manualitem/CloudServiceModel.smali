.class public Lcom/miui/securityscan/model/manualitem/CloudServiceModel;
.super Lcom/miui/securityscan/model/AbsModel;
.source ""


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/miui/securityscan/model/AbsModel;-><init>(Ljava/lang/String;I)V

    const-string/jumbo v0, "cloud_service"

    invoke-virtual {p0, v0}, Lcom/miui/securityscan/model/manualitem/CloudServiceModel;->setTrackStr(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/securityscan/model/manualitem/CloudServiceModel;->setDelayOptimized(Z)V

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

    const/4 v0, 0x2

    return v0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/miui/securityscan/model/manualitem/CloudServiceModel;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0706ae

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/miui/securityscan/model/manualitem/CloudServiceModel;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0706ad

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public optimize(Landroid/app/Activity;)V
    .locals 3

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/miui/securityscan/c;->Ou(Z)V

    :try_start_0
    invoke-static {p1}, Lmiui/cloud/external/CloudSysHelper;->promptEnableAllMiCloudSync(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "CloudServiceModel"

    const-string/jumbo v2, "optimize error: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public scan()V
    .locals 1

    invoke-static {}, Lcom/miui/common/b/f;->aHU()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/miui/securityscan/model/AbsModel$State;->SAFE:Lcom/miui/securityscan/model/AbsModel$State;

    invoke-virtual {p0, v0}, Lcom/miui/securityscan/model/manualitem/CloudServiceModel;->setSafe(Lcom/miui/securityscan/model/AbsModel$State;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/miui/securityscan/model/manualitem/CloudServiceModel;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lmiui/cloud/external/CloudSysHelper;->isMiCloudMainSyncItemsOff(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/miui/securityscan/model/AbsModel$State;->SAFE:Lcom/miui/securityscan/model/AbsModel$State;

    :goto_1
    invoke-virtual {p0, v0}, Lcom/miui/securityscan/model/manualitem/CloudServiceModel;->setSafe(Lcom/miui/securityscan/model/AbsModel$State;)V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/miui/securityscan/model/AbsModel$State;->DANGER:Lcom/miui/securityscan/model/AbsModel$State;

    goto :goto_1
.end method
