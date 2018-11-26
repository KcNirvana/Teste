.class public Lcom/miui/securityscan/model/manualitem/PermissionRootModel;
.super Lcom/miui/securityscan/model/AbsModel;
.source ""


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/miui/securityscan/model/AbsModel;-><init>(Ljava/lang/String;I)V

    const-string/jumbo v0, "permission_root"

    invoke-virtual {p0, v0}, Lcom/miui/securityscan/model/manualitem/PermissionRootModel;->setTrackStr(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/securityscan/model/manualitem/PermissionRootModel;->setDelayOptimized(Z)V

    return-void
.end method

.method private checkSystemRoot()Z
    .locals 7

    const/4 v6, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x5

    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    const-string/jumbo v0, "/system/bin/"

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const-string/jumbo v0, "/system/xbin/"

    const/4 v3, 0x1

    aput-object v0, v2, v3

    const-string/jumbo v0, "/system/sbin/"

    const/4 v3, 0x2

    aput-object v0, v2, v3

    const-string/jumbo v0, "/sbin/"

    const/4 v3, 0x3

    aput-object v0, v2, v3

    const-string/jumbo v0, "/vendor/bin/"

    const/4 v3, 0x4

    aput-object v0, v2, v3

    move v0, v1

    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_1

    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v5, v2, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "su"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    return v6

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "PermissionRootModel"

    const-string/jumbo v3, "checkSystemRoot : "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    return v1
.end method


# virtual methods
.method public getDesc()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getIndex()I
    .locals 1

    const/16 v0, 0x18

    return v0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/miui/securityscan/model/manualitem/PermissionRootModel;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0706c6

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/miui/securityscan/model/manualitem/PermissionRootModel;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0706c5

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public optimize(Landroid/app/Activity;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "pl.zdunex25.updater"

    const-string/jumbo v2, "pl.zdunex25.updater.MainActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "user_action"

    const-string/jumbo v2, "user_action_update_full"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

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

    const/4 v1, 0x0

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lmiui/os/Build;->IS_ALPHA_BUILD:Z

    xor-int/lit8 v0, v0, 0x1

    move v2, v0

    :goto_0
    if-eqz v2, :cond_2

    invoke-direct {p0}, Lcom/miui/securityscan/model/manualitem/PermissionRootModel;->checkSystemRoot()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_3

    sget-object v0, Lcom/miui/securityscan/model/AbsModel$State;->SAFE:Lcom/miui/securityscan/model/AbsModel$State;

    :goto_2
    invoke-virtual {p0, v0}, Lcom/miui/securityscan/model/manualitem/PermissionRootModel;->setSafe(Lcom/miui/securityscan/model/AbsModel$State;)V

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/miui/securityscan/model/manualitem/PermissionRootModel;->isSafe()Lcom/miui/securityscan/model/AbsModel$State;

    move-result-object v0

    sget-object v2, Lcom/miui/securityscan/model/AbsModel$State;->SAFE:Lcom/miui/securityscan/model/AbsModel$State;

    if-ne v0, v2, :cond_4

    new-instance v0, Lcom/miui/securityscan/scanner/e;

    invoke-virtual {p0}, Lcom/miui/securityscan/model/manualitem/PermissionRootModel;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0706c4

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lcom/miui/securityscan/scanner/e;-><init>(Ljava/lang/String;Z)V

    invoke-static {}, Lcom/miui/securityscan/scanner/y;->getInstance()Lcom/miui/securityscan/scanner/y;

    move-result-object v1

    sget-object v2, Lcom/miui/securityscan/scanner/OptimizeManager$OptimizeCard;->DG:Lcom/miui/securityscan/scanner/OptimizeManager$OptimizeCard;

    invoke-virtual {p0}, Lcom/miui/securityscan/model/manualitem/PermissionRootModel;->getItemKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/miui/securityscan/scanner/y;->Fe(Lcom/miui/securityscan/scanner/OptimizeManager$OptimizeCard;Ljava/lang/String;Lcom/miui/securityscan/scanner/e;)V

    :cond_0
    :goto_3
    return-void

    :cond_1
    move v2, v1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    sget-object v0, Lcom/miui/securityscan/model/AbsModel$State;->DANGER:Lcom/miui/securityscan/model/AbsModel$State;

    goto :goto_2

    :cond_4
    invoke-static {}, Lcom/miui/securityscan/scanner/y;->getInstance()Lcom/miui/securityscan/scanner/y;

    move-result-object v0

    sget-object v1, Lcom/miui/securityscan/scanner/OptimizeManager$OptimizeCard;->DG:Lcom/miui/securityscan/scanner/OptimizeManager$OptimizeCard;

    invoke-virtual {v0, v1}, Lcom/miui/securityscan/scanner/y;->Ff(Lcom/miui/securityscan/scanner/OptimizeManager$OptimizeCard;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/securityscan/model/manualitem/PermissionRootModel;->getItemKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/miui/securityscan/model/manualitem/PermissionRootModel;->getItemKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_5
    move v0, v1

    goto :goto_1
.end method
