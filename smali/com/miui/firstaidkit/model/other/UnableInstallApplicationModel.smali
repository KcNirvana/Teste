.class public Lcom/miui/firstaidkit/model/other/UnableInstallApplicationModel;
.super Lcom/miui/securityscan/model/AbsModel;
.source ""


# instance fields
.field private freeStorage:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/miui/securityscan/model/AbsModel;-><init>(Ljava/lang/String;I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/firstaidkit/model/other/UnableInstallApplicationModel;->setDelayOptimized(Z)V

    const-string/jumbo v0, "unable_install_app"

    invoke-virtual {p0, v0}, Lcom/miui/firstaidkit/model/other/UnableInstallApplicationModel;->setTrackStr(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/miui/firstaidkit/model/other/UnableInstallApplicationModel;->getTrackStr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_ignore"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/firstaidkit/model/other/UnableInstallApplicationModel;->setTrackIgnoreStr(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getButtonTitle()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/miui/firstaidkit/model/other/UnableInstallApplicationModel;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0709c9

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDesc()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, ""

    return-object v0
.end method

.method public getIndex()I
    .locals 1

    const/16 v0, 0x36

    return v0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lcom/miui/firstaidkit/model/other/UnableInstallApplicationModel;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-wide v2, p0, Lcom/miui/firstaidkit/model/other/UnableInstallApplicationModel;->freeStorage:J

    invoke-static {v2, v3}, Lcom/miui/securityscan/utils/m;->JF(J)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const v2, 0x7f0709c8

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/miui/firstaidkit/model/other/UnableInstallApplicationModel;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0709c7

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public optimize(Landroid/app/Activity;)V
    .locals 4

    const/16 v3, 0x64

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "miui.intent.action.GARBAGE_CLEANUP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "enter_homepage_way"

    const-string/jumbo v2, "security_firstaid_scanresult"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/cleanmaster/b;->bxB(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p1, v0, v3}, Lcom/miui/common/b/k;->aIq(Landroid/app/Activity;Landroid/content/Intent;I)Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f070712

    invoke-static {p1, v0}, Lcom/miui/common/b/o;->aIX(Landroid/content/Context;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x0

    invoke-static {p1, v0, v3, v1}, Lcom/miui/cleanmaster/a;->bxw(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)V

    goto :goto_0
.end method

.method public scan()V
    .locals 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    const v8, 0x3d4ccccd    # 0.05f

    invoke-virtual {p0}, Lcom/miui/firstaidkit/model/other/UnableInstallApplicationModel;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/securityscan/utils/c;->Iw(Landroid/content/Context;)Lcom/miui/securityscan/utils/d;

    move-result-object v2

    iget-wide v4, v2, Lcom/miui/securityscan/utils/d;->IS:J

    iget-wide v2, v2, Lcom/miui/securityscan/utils/d;->total:J

    long-to-float v6, v4

    const/high16 v7, 0x3f800000    # 1.0f

    mul-float/2addr v6, v7

    long-to-float v7, v2

    div-float/2addr v6, v7

    iput-wide v4, p0, Lcom/miui/firstaidkit/model/other/UnableInstallApplicationModel;->freeStorage:J

    long-to-float v2, v2

    mul-float/2addr v2, v8

    const v3, 0x4f32d05e    # 3.0E9f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1

    cmpg-float v2, v6, v8

    if-gez v2, :cond_0

    :goto_0
    if-eqz v0, :cond_2

    sget-object v0, Lcom/miui/securityscan/model/AbsModel$State;->DANGER:Lcom/miui/securityscan/model/AbsModel$State;

    :goto_1
    invoke-virtual {p0, v0}, Lcom/miui/firstaidkit/model/other/UnableInstallApplicationModel;->setSafe(Lcom/miui/securityscan/model/AbsModel$State;)V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    const-wide v2, 0xb2d05e00L

    cmp-long v2, v4, v2

    if-gez v2, :cond_0

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/miui/securityscan/model/AbsModel$State;->SAFE:Lcom/miui/securityscan/model/AbsModel$State;

    goto :goto_1
.end method
