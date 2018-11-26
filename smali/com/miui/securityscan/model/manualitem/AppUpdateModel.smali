.class public Lcom/miui/securityscan/model/manualitem/AppUpdateModel;
.super Lcom/miui/securityscan/model/AbsModel;
.source ""


# instance fields
.field private At:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/miui/securityscan/model/AbsModel;-><init>(Ljava/lang/String;I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/securityscan/model/manualitem/AppUpdateModel;->At:I

    const-string/jumbo v0, "app_update"

    invoke-virtual {p0, v0}, Lcom/miui/securityscan/model/manualitem/AppUpdateModel;->setTrackStr(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/securityscan/model/manualitem/AppUpdateModel;->setDelayOptimized(Z)V

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

    const/16 v0, 0x1b

    return v0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Lcom/miui/securityscan/model/manualitem/AppUpdateModel;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/miui/securityscan/model/manualitem/AppUpdateModel;->At:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/miui/securityscan/model/manualitem/AppUpdateModel;->At:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const v3, 0x7f0c003a

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/miui/securityscan/model/manualitem/AppUpdateModel;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0706c7

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public optimize(Landroid/app/Activity;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.xiaomi.market.UPDATE_APP_LIST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "back"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

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
    .locals 2

    const/4 v0, 0x0

    invoke-static {}, Lcom/miui/securityscan/c;->OA()I

    move-result v1

    iput v1, p0, Lcom/miui/securityscan/model/manualitem/AppUpdateModel;->At:I

    sget-boolean v1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v1, :cond_0

    iget v1, p0, Lcom/miui/securityscan/model/manualitem/AppUpdateModel;->At:I

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    if-nez v0, :cond_1

    sget-object v0, Lcom/miui/securityscan/model/AbsModel$State;->SAFE:Lcom/miui/securityscan/model/AbsModel$State;

    :goto_0
    invoke-virtual {p0, v0}, Lcom/miui/securityscan/model/manualitem/AppUpdateModel;->setSafe(Lcom/miui/securityscan/model/AbsModel$State;)V

    return-void

    :cond_1
    sget-object v0, Lcom/miui/securityscan/model/AbsModel$State;->DANGER:Lcom/miui/securityscan/model/AbsModel$State;

    goto :goto_0
.end method
