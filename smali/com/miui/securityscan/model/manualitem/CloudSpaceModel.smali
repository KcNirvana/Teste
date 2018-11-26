.class public Lcom/miui/securityscan/model/manualitem/CloudSpaceModel;
.super Lcom/miui/securityscan/model/AbsModel;
.source ""


# instance fields
.field private status:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/miui/securityscan/model/AbsModel;-><init>(Ljava/lang/String;I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/securityscan/model/manualitem/CloudSpaceModel;->status:I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/securityscan/model/manualitem/CloudSpaceModel;->setDelayOptimized(Z)V

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

    const/4 v0, 0x3

    return v0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lcom/miui/securityscan/model/manualitem/CloudSpaceModel;->status:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/miui/securityscan/model/manualitem/CloudSpaceModel;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0706cf

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/miui/securityscan/model/manualitem/CloudSpaceModel;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0706d1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lcom/miui/securityscan/model/manualitem/CloudSpaceModel;->status:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/miui/securityscan/model/manualitem/CloudSpaceModel;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0706ce

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/miui/securityscan/model/manualitem/CloudSpaceModel;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0706d0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public optimize(Landroid/app/Activity;)V
    .locals 3

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/miui/securityscan/c;->Ou(Z)V

    :try_start_0
    invoke-virtual {p0}, Lcom/miui/securityscan/model/manualitem/CloudSpaceModel;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lmiui/cloud/CloudSyncUtils;->startMiCloudMemberActivity(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "CloudSpaceModel"

    const-string/jumbo v2, "optimize error: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public scan()V
    .locals 5

    const/4 v1, 0x0

    const/4 v0, 0x1

    sget-boolean v2, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v2, :cond_0

    invoke-static {}, Lcom/miui/common/b/f;->aHU()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    sget-object v0, Lcom/miui/securityscan/model/AbsModel$State;->SAFE:Lcom/miui/securityscan/model/AbsModel$State;

    invoke-virtual {p0, v0}, Lcom/miui/securityscan/model/manualitem/CloudSpaceModel;->setSafe(Lcom/miui/securityscan/model/AbsModel$State;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    :try_start_0
    invoke-virtual {p0}, Lcom/miui/securityscan/model/manualitem/CloudSpaceModel;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lmiui/cloud/util/SyncStatusHelper;->getSyncStatus(Landroid/content/Context;)I

    move-result v2

    iput v2, p0, Lcom/miui/securityscan/model/manualitem/CloudSpaceModel;->status:I

    iget v2, p0, Lcom/miui/securityscan/model/manualitem/CloudSpaceModel;->status:I

    if-ne v2, v0, :cond_3

    move v2, v0

    :goto_1
    iget v3, p0, Lcom/miui/securityscan/model/manualitem/CloudSpaceModel;->status:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_4

    :goto_2
    if-eqz v2, :cond_5

    sget-object v0, Lcom/miui/securityscan/model/AbsModel$State;->DANGER_MINOR:Lcom/miui/securityscan/model/AbsModel$State;

    :goto_3
    invoke-virtual {p0, v0}, Lcom/miui/securityscan/model/manualitem/CloudSpaceModel;->setSafe(Lcom/miui/securityscan/model/AbsModel$State;)V

    invoke-virtual {p0}, Lcom/miui/securityscan/model/manualitem/CloudSpaceModel;->isSafe()Lcom/miui/securityscan/model/AbsModel$State;

    move-result-object v0

    sget-object v1, Lcom/miui/securityscan/model/AbsModel$State;->SAFE:Lcom/miui/securityscan/model/AbsModel$State;

    if-eq v0, v1, :cond_1

    if-eqz v2, :cond_7

    const-string/jumbo v0, "cloud_space_almost_full"

    :goto_4
    invoke-virtual {p0, v0}, Lcom/miui/securityscan/model/manualitem/CloudSpaceModel;->setTrackStr(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "CloudSpaceModel"

    const-string/jumbo v2, "scan error: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_3
    move v2, v1

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_2

    :cond_5
    if-eqz v0, :cond_6

    :try_start_1
    sget-object v0, Lcom/miui/securityscan/model/AbsModel$State;->DANGER:Lcom/miui/securityscan/model/AbsModel$State;

    goto :goto_3

    :cond_6
    sget-object v0, Lcom/miui/securityscan/model/AbsModel$State;->SAFE:Lcom/miui/securityscan/model/AbsModel$State;

    goto :goto_3

    :cond_7
    const-string/jumbo v0, "cloud_space_full"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4
.end method
