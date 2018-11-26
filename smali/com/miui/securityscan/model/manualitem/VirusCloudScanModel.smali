.class public Lcom/miui/securityscan/model/manualitem/VirusCloudScanModel;
.super Lcom/miui/securityscan/model/AbsModel;
.source ""


# instance fields
.field private AG:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/miui/securityscan/model/AbsModel;-><init>(Ljava/lang/String;I)V

    const-string/jumbo v0, "virus_cloudscan"

    invoke-virtual {p0, v0}, Lcom/miui/securityscan/model/manualitem/VirusCloudScanModel;->setTrackStr(Ljava/lang/String;)V

    invoke-static {}, Lcom/miui/securitycenter/Application;->bsy()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0705c3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/securityscan/model/manualitem/VirusCloudScanModel;->AG:Ljava/lang/String;

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

    const/16 v0, 0x1f

    return v0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/miui/securityscan/model/manualitem/VirusCloudScanModel;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0706da

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/miui/securityscan/model/manualitem/VirusCloudScanModel;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0706d9

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public optimize(Landroid/app/Activity;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/securityscan/model/manualitem/VirusCloudScanModel;->AG:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/common/persistence/a;->aMP(Ljava/lang/String;Z)V

    sget-object v0, Lcom/miui/securityscan/model/AbsModel$State;->SAFE:Lcom/miui/securityscan/model/AbsModel$State;

    invoke-virtual {p0, v0}, Lcom/miui/securityscan/model/manualitem/VirusCloudScanModel;->setSafe(Lcom/miui/securityscan/model/AbsModel$State;)V

    new-instance v0, Lcom/miui/securityscan/model/manualitem/r;

    invoke-direct {v0, p0, p1}, Lcom/miui/securityscan/model/manualitem/r;-><init>(Lcom/miui/securityscan/model/manualitem/VirusCloudScanModel;Landroid/app/Activity;)V

    invoke-virtual {p0, v0}, Lcom/miui/securityscan/model/manualitem/VirusCloudScanModel;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public scan()V
    .locals 2

    const/4 v0, 0x0

    sget-boolean v1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/miui/securityscan/model/manualitem/VirusCloudScanModel;->AG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/miui/common/persistence/a;->aMN(Ljava/lang/String;Z)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    :cond_0
    if-eqz v0, :cond_1

    sget-object v0, Lcom/miui/securityscan/model/AbsModel$State;->DANGER:Lcom/miui/securityscan/model/AbsModel$State;

    :goto_0
    invoke-virtual {p0, v0}, Lcom/miui/securityscan/model/manualitem/VirusCloudScanModel;->setSafe(Lcom/miui/securityscan/model/AbsModel$State;)V

    return-void

    :cond_1
    sget-object v0, Lcom/miui/securityscan/model/AbsModel$State;->SAFE:Lcom/miui/securityscan/model/AbsModel$State;

    goto :goto_0
.end method
