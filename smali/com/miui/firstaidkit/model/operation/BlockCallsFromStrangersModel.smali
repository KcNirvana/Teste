.class public Lcom/miui/firstaidkit/model/operation/BlockCallsFromStrangersModel;
.super Lcom/miui/securityscan/model/AbsModel;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String; = "BlockCallsFromStrangersModel"


# instance fields
.field private currentSimId:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 2

    const/4 v1, 0x1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/miui/securityscan/model/AbsModel;-><init>(Ljava/lang/String;I)V

    iput v1, p0, Lcom/miui/firstaidkit/model/operation/BlockCallsFromStrangersModel;->currentSimId:I

    invoke-virtual {p0, v1}, Lcom/miui/firstaidkit/model/operation/BlockCallsFromStrangersModel;->setDelayOptimized(Z)V

    const-string/jumbo v0, "block_calls_from_strangers"

    invoke-virtual {p0, v0}, Lcom/miui/firstaidkit/model/operation/BlockCallsFromStrangersModel;->setTrackStr(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/miui/firstaidkit/model/operation/BlockCallsFromStrangersModel;->getTrackStr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_ignore"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/firstaidkit/model/operation/BlockCallsFromStrangersModel;->setTrackIgnoreStr(Ljava/lang/String;)V

    new-instance v0, Lcom/miui/firstaidkit/model/operation/c;

    invoke-direct {v0, p0}, Lcom/miui/firstaidkit/model/operation/c;-><init>(Lcom/miui/firstaidkit/model/operation/BlockCallsFromStrangersModel;)V

    invoke-virtual {p0, v0}, Lcom/miui/firstaidkit/model/operation/BlockCallsFromStrangersModel;->setOnAbsModelDisplayListener(Lcom/miui/securityscan/model/AbsModel$AbsModelDisplayListener;)V

    return-void
.end method

.method private setMultiSimState()V
    .locals 7

    const/4 v6, 0x2

    const/4 v1, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/miui/firstaidkit/model/operation/BlockCallsFromStrangersModel;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v3}, Landroid/provider/MiuiSettings$AntiSpam;->isAntiSpamEnableForSim(Landroid/content/Context;I)Z

    move-result v2

    invoke-virtual {p0}, Lcom/miui/firstaidkit/model/operation/BlockCallsFromStrangersModel;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v4, "stranger_call_mode"

    invoke-static {v0, v4, v3, v3}, Lcom/miui/antispam/db/a;->YP(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_1

    move v0, v3

    :goto_0
    if-eqz v2, :cond_2

    :goto_1
    invoke-virtual {p0}, Lcom/miui/firstaidkit/model/operation/BlockCallsFromStrangersModel;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v6}, Landroid/provider/MiuiSettings$AntiSpam;->isAntiSpamEnableForSim(Landroid/content/Context;I)Z

    move-result v4

    invoke-virtual {p0}, Lcom/miui/firstaidkit/model/operation/BlockCallsFromStrangersModel;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v5, "stranger_call_mode"

    invoke-static {v2, v5, v6, v3}, Lcom/miui/antispam/db/a;->YP(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v2

    invoke-virtual {p0}, Lcom/miui/firstaidkit/model/operation/BlockCallsFromStrangersModel;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/provider/MiuiSettings$AntiSpam;->isAntiSpamSettingsSharedForSims(Landroid/content/Context;)Z

    move-result v5

    if-nez v2, :cond_3

    move v2, v3

    :goto_2
    if-eqz v4, :cond_4

    xor-int/lit8 v4, v5, 0x1

    if-eqz v4, :cond_4

    :goto_3
    if-nez v0, :cond_0

    if-eqz v2, :cond_5

    :cond_0
    sget-object v1, Lcom/miui/securityscan/model/AbsModel$State;->DANGER:Lcom/miui/securityscan/model/AbsModel$State;

    :goto_4
    invoke-virtual {p0, v1}, Lcom/miui/firstaidkit/model/operation/BlockCallsFromStrangersModel;->setSafe(Lcom/miui/securityscan/model/AbsModel$State;)V

    invoke-virtual {p0}, Lcom/miui/firstaidkit/model/operation/BlockCallsFromStrangersModel;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/provider/MiuiSettings$AntiSpam;->isAntiSpamSettingsSharedForSims(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_6

    iput v3, p0, Lcom/miui/firstaidkit/model/operation/BlockCallsFromStrangersModel;->currentSimId:I

    :goto_5
    return-void

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    move v2, v1

    goto :goto_2

    :cond_4
    move v2, v1

    goto :goto_3

    :cond_5
    sget-object v1, Lcom/miui/securityscan/model/AbsModel$State;->SAFE:Lcom/miui/securityscan/model/AbsModel$State;

    goto :goto_4

    :cond_6
    if-nez v0, :cond_7

    if-eqz v2, :cond_7

    iput v6, p0, Lcom/miui/firstaidkit/model/operation/BlockCallsFromStrangersModel;->currentSimId:I

    goto :goto_5

    :cond_7
    iput v3, p0, Lcom/miui/firstaidkit/model/operation/BlockCallsFromStrangersModel;->currentSimId:I

    goto :goto_5
.end method

.method private setSingleSimState(I)V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/miui/firstaidkit/model/operation/BlockCallsFromStrangersModel;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/provider/MiuiSettings$AntiSpam;->isAntiSpamEnableForSim(Landroid/content/Context;I)Z

    move-result v2

    invoke-virtual {p0}, Lcom/miui/firstaidkit/model/operation/BlockCallsFromStrangersModel;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "stranger_call_mode"

    invoke-static {v3, v4, p1, v0}, Lcom/miui/antispam/db/a;->YP(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v3

    if-nez v3, :cond_0

    :goto_0
    if-eqz v2, :cond_1

    :goto_1
    if-eqz v0, :cond_2

    sget-object v0, Lcom/miui/securityscan/model/AbsModel$State;->DANGER:Lcom/miui/securityscan/model/AbsModel$State;

    :goto_2
    invoke-virtual {p0, v0}, Lcom/miui/firstaidkit/model/operation/BlockCallsFromStrangersModel;->setSafe(Lcom/miui/securityscan/model/AbsModel$State;)V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    sget-object v0, Lcom/miui/securityscan/model/AbsModel$State;->SAFE:Lcom/miui/securityscan/model/AbsModel$State;

    goto :goto_2
.end method


# virtual methods
.method public getButtonTitle()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/miui/firstaidkit/model/operation/BlockCallsFromStrangersModel;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f070703

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

    const/16 v0, 0x2c

    return v0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/miui/firstaidkit/model/operation/BlockCallsFromStrangersModel;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f070702

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/miui/firstaidkit/model/operation/BlockCallsFromStrangersModel;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f070701

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ignore()V
    .locals 0

    return-void
.end method

.method public optimize(Landroid/app/Activity;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "miui.intent.action.CALL_FIREWALL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "key_sim_id"

    iget v2, p0, Lcom/miui/firstaidkit/model/operation/BlockCallsFromStrangersModel;->currentSimId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

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
    .locals 8

    const/4 v7, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v2

    invoke-static {}, Lcom/miui/antispam/util/h;->XH()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    const-string/jumbo v4, "BlockCallsFromStrangersModel"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "multiSimEnabled: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "   simSize:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_3

    if-ne v0, v7, :cond_2

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/telephony/SubscriptionInfo;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/firstaidkit/model/operation/BlockCallsFromStrangersModel;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/provider/MiuiSettings$AntiSpam;->isAntiSpamSettingsSharedForSims(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    iput v7, p0, Lcom/miui/firstaidkit/model/operation/BlockCallsFromStrangersModel;->currentSimId:I

    :goto_1
    iget v0, p0, Lcom/miui/firstaidkit/model/operation/BlockCallsFromStrangersModel;->currentSimId:I

    invoke-direct {p0, v0}, Lcom/miui/firstaidkit/model/operation/BlockCallsFromStrangersModel;->setSingleSimState(I)V

    :cond_0
    :goto_2
    return-void

    :cond_1
    invoke-virtual {v0}, Lmiui/telephony/SubscriptionInfo;->getSlotId()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/miui/firstaidkit/model/operation/BlockCallsFromStrangersModel;->currentSimId:I

    goto :goto_1

    :cond_2
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/miui/firstaidkit/model/operation/BlockCallsFromStrangersModel;->setMultiSimState()V

    goto :goto_2

    :cond_3
    if-eqz v0, :cond_0

    iput v7, p0, Lcom/miui/firstaidkit/model/operation/BlockCallsFromStrangersModel;->currentSimId:I

    iget v0, p0, Lcom/miui/firstaidkit/model/operation/BlockCallsFromStrangersModel;->currentSimId:I

    invoke-direct {p0, v0}, Lcom/miui/firstaidkit/model/operation/BlockCallsFromStrangersModel;->setSingleSimState(I)V

    goto :goto_2

    :cond_4
    move v0, v1

    goto :goto_0
.end method
