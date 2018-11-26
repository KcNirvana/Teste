.class public Lcom/miui/securityscan/model/manualitem/PaymentRiskModel;
.super Lcom/miui/securityscan/model/AbsModel;
.source ""


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/miui/securityscan/model/AbsModel;-><init>(Ljava/lang/String;I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/securityscan/model/manualitem/PaymentRiskModel;->setDelayOptimized(Z)V

    const-string/jumbo v0, "payment_risk"

    invoke-virtual {p0, v0}, Lcom/miui/securityscan/model/manualitem/PaymentRiskModel;->setTrackStr(Ljava/lang/String;)V

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

    const/16 v0, 0x22

    return v0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/miui/securityscan/model/manualitem/PaymentRiskModel;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0706f3

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/miui/securityscan/model/manualitem/PaymentRiskModel;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0706f2

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public optimize(Landroid/app/Activity;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "miui.intent.action.ANTI_VIRUS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x64

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public scan()V
    .locals 4

    invoke-static {}, Lcom/miui/antivirus/i;->aDi()Lcom/miui/antivirus/utils/SecurityStatus;

    move-result-object v0

    sget-object v1, Lcom/miui/antivirus/utils/SecurityStatus;->anY:Lcom/miui/antivirus/utils/SecurityStatus;

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/miui/securityscan/model/AbsModel$State;->SAFE:Lcom/miui/securityscan/model/AbsModel$State;

    :goto_0
    invoke-virtual {p0, v0}, Lcom/miui/securityscan/model/manualitem/PaymentRiskModel;->setSafe(Lcom/miui/securityscan/model/AbsModel$State;)V

    invoke-virtual {p0}, Lcom/miui/securityscan/model/manualitem/PaymentRiskModel;->isSafe()Lcom/miui/securityscan/model/AbsModel$State;

    move-result-object v0

    sget-object v1, Lcom/miui/securityscan/model/AbsModel$State;->SAFE:Lcom/miui/securityscan/model/AbsModel$State;

    if-ne v0, v1, :cond_2

    new-instance v0, Lcom/miui/securityscan/scanner/e;

    invoke-virtual {p0}, Lcom/miui/securityscan/model/manualitem/PaymentRiskModel;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0706f1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/miui/securityscan/scanner/e;-><init>(Ljava/lang/String;Z)V

    invoke-static {}, Lcom/miui/securityscan/scanner/y;->getInstance()Lcom/miui/securityscan/scanner/y;

    move-result-object v1

    sget-object v2, Lcom/miui/securityscan/scanner/OptimizeManager$OptimizeCard;->DH:Lcom/miui/securityscan/scanner/OptimizeManager$OptimizeCard;

    invoke-virtual {p0}, Lcom/miui/securityscan/model/manualitem/PaymentRiskModel;->getItemKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/miui/securityscan/scanner/y;->Fe(Lcom/miui/securityscan/scanner/OptimizeManager$OptimizeCard;Ljava/lang/String;Lcom/miui/securityscan/scanner/e;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    sget-object v0, Lcom/miui/securityscan/model/AbsModel$State;->DANGER:Lcom/miui/securityscan/model/AbsModel$State;

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/miui/securityscan/scanner/y;->getInstance()Lcom/miui/securityscan/scanner/y;

    move-result-object v0

    sget-object v1, Lcom/miui/securityscan/scanner/OptimizeManager$OptimizeCard;->DH:Lcom/miui/securityscan/scanner/OptimizeManager$OptimizeCard;

    invoke-virtual {v0, v1}, Lcom/miui/securityscan/scanner/y;->Ff(Lcom/miui/securityscan/scanner/OptimizeManager$OptimizeCard;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/securityscan/model/manualitem/PaymentRiskModel;->getItemKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/miui/securityscan/model/manualitem/PaymentRiskModel;->getItemKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method
