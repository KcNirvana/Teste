.class public Lcom/miui/securityscan/model/manualitem/CleanerCloudScanModel;
.super Lcom/miui/securityscan/model/AbsModel;
.source ""


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/miui/securityscan/model/AbsModel;-><init>(Ljava/lang/String;I)V

    const-string/jumbo v0, "cleaner_cloudscan"

    invoke-virtual {p0, v0}, Lcom/miui/securityscan/model/manualitem/CleanerCloudScanModel;->setTrackStr(Ljava/lang/String;)V

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

    const/16 v0, 0x16

    return v0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/miui/securityscan/model/manualitem/CleanerCloudScanModel;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0706dc

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/miui/securityscan/model/manualitem/CleanerCloudScanModel;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0706db

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public optimize(Landroid/app/Activity;)V
    .locals 2

    invoke-virtual {p0}, Lcom/miui/securityscan/model/manualitem/CleanerCloudScanModel;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/securitycenter/a;->bsr(Landroid/content/Context;Z)V

    sget-object v0, Lcom/miui/securityscan/model/AbsModel$State;->SAFE:Lcom/miui/securityscan/model/AbsModel$State;

    invoke-virtual {p0, v0}, Lcom/miui/securityscan/model/manualitem/CleanerCloudScanModel;->setSafe(Lcom/miui/securityscan/model/AbsModel$State;)V

    new-instance v0, Lcom/miui/securityscan/model/manualitem/l;

    invoke-direct {v0, p0, p1}, Lcom/miui/securityscan/model/manualitem/l;-><init>(Lcom/miui/securityscan/model/manualitem/CleanerCloudScanModel;Landroid/app/Activity;)V

    invoke-virtual {p0, v0}, Lcom/miui/securityscan/model/manualitem/CleanerCloudScanModel;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public scan()V
    .locals 1

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/securityscan/model/manualitem/CleanerCloudScanModel;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/securitycenter/a;->bsg(Landroid/content/Context;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    :goto_0
    if-nez v0, :cond_1

    sget-object v0, Lcom/miui/securityscan/model/AbsModel$State;->SAFE:Lcom/miui/securityscan/model/AbsModel$State;

    :goto_1
    invoke-virtual {p0, v0}, Lcom/miui/securityscan/model/manualitem/CleanerCloudScanModel;->setSafe(Lcom/miui/securityscan/model/AbsModel$State;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/miui/securityscan/model/AbsModel$State;->DANGER:Lcom/miui/securityscan/model/AbsModel$State;

    goto :goto_1
.end method
