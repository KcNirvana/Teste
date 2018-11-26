.class public Lcom/miui/common/card/models/CardModelMaker;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static cardModelMaker:Lcom/miui/common/card/models/CardModelMaker;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/miui/common/card/models/CardModelMaker;
    .locals 2

    const-class v1, Lcom/miui/common/card/models/CardModelMaker;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/miui/common/card/models/CardModelMaker;->cardModelMaker:Lcom/miui/common/card/models/CardModelMaker;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/common/card/models/CardModelMaker;

    invoke-direct {v0}, Lcom/miui/common/card/models/CardModelMaker;-><init>()V

    sput-object v0, Lcom/miui/common/card/models/CardModelMaker;->cardModelMaker:Lcom/miui/common/card/models/CardModelMaker;

    :cond_0
    sget-object v0, Lcom/miui/common/card/models/CardModelMaker;->cardModelMaker:Lcom/miui/common/card/models/CardModelMaker;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public getCleanupAccelerationCardModel(ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/miui/common/card/models/CleanupAccelerationCardModel;
    .locals 1

    new-instance v0, Lcom/miui/common/card/models/CleanupAccelerationCardModel;

    invoke-direct {v0}, Lcom/miui/common/card/models/CleanupAccelerationCardModel;-><init>()V

    invoke-virtual {v0, p1}, Lcom/miui/common/card/models/CleanupAccelerationCardModel;->setResId(I)V

    invoke-virtual {v0, p2}, Lcom/miui/common/card/models/CleanupAccelerationCardModel;->setTitle(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lcom/miui/common/card/models/CleanupAccelerationCardModel;->setStatus(Ljava/lang/String;)V

    invoke-virtual {v0, p4}, Lcom/miui/common/card/models/CleanupAccelerationCardModel;->setMap(Ljava/util/Map;)V

    return-object v0
.end method

.method public getFuncBtnBottomCardModel(Lcom/miui/securityscan/model/AbsModel;Ljava/lang/String;Ljava/lang/String;Lcom/miui/common/card/functions/BaseFunction;)Lcom/miui/common/card/models/FuncBtnBottomCardModel;
    .locals 2

    new-instance v0, Lcom/miui/common/card/models/FuncBtnBottomCardModel;

    invoke-direct {v0, p1}, Lcom/miui/common/card/models/FuncBtnBottomCardModel;-><init>(Lcom/miui/securityscan/model/AbsModel;)V

    invoke-virtual {p1}, Lcom/miui/securityscan/model/AbsModel;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/common/card/models/FuncBtnBottomCardModel;->setTitle(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/miui/securityscan/model/AbsModel;->getSummary()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/common/card/models/FuncBtnBottomCardModel;->setSummary(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/miui/common/card/models/FuncBtnBottomCardModel;->setButton(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lcom/miui/common/card/models/FuncBtnBottomCardModel;->setIcon(Ljava/lang/String;)V

    invoke-virtual {v0, p4}, Lcom/miui/common/card/models/FuncBtnBottomCardModel;->setFunction(Lcom/miui/common/card/functions/BaseFunction;)V

    invoke-virtual {p1}, Lcom/miui/securityscan/model/AbsModel;->getScore()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/common/card/models/FuncBtnBottomCardModel;->setScore(I)V

    return-object v0
.end method

.method public getFuncCloudSpaceCardModel(Lcom/miui/securityscan/model/AbsModel;Ljava/lang/String;Lcom/miui/common/card/functions/BaseFunction;)Lcom/miui/common/card/models/FuncCloudSpaceCardModel;
    .locals 2

    new-instance v0, Lcom/miui/common/card/models/FuncCloudSpaceCardModel;

    invoke-direct {v0, p1}, Lcom/miui/common/card/models/FuncCloudSpaceCardModel;-><init>(Lcom/miui/securityscan/model/AbsModel;)V

    invoke-virtual {p1}, Lcom/miui/securityscan/model/AbsModel;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/common/card/models/FuncCloudSpaceCardModel;->setTitle(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/miui/securityscan/model/AbsModel;->getSummary()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/common/card/models/FuncCloudSpaceCardModel;->setSummary(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/miui/common/card/models/FuncCloudSpaceCardModel;->setButton(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lcom/miui/common/card/models/FuncCloudSpaceCardModel;->setFunction(Lcom/miui/common/card/functions/BaseFunction;)V

    invoke-virtual {p1}, Lcom/miui/securityscan/model/AbsModel;->getScore()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/common/card/models/FuncCloudSpaceCardModel;->setScore(I)V

    return-object v0
.end method

.method public getFuncLeftBannerCardModel(Lcom/miui/securityscan/model/AbsModel;Ljava/lang/String;Ljava/lang/String;Lcom/miui/common/card/functions/BaseFunction;)Lcom/miui/common/card/models/FuncLeftBannerCardModel;
    .locals 2

    new-instance v0, Lcom/miui/common/card/models/FuncLeftBannerCardModel;

    invoke-direct {v0, p1}, Lcom/miui/common/card/models/FuncLeftBannerCardModel;-><init>(Lcom/miui/securityscan/model/AbsModel;)V

    invoke-virtual {p1}, Lcom/miui/securityscan/model/AbsModel;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/common/card/models/FuncLeftBannerCardModel;->setTitle(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/miui/securityscan/model/AbsModel;->getSummary()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/common/card/models/FuncLeftBannerCardModel;->setSummary(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/miui/common/card/models/FuncLeftBannerCardModel;->setButton(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lcom/miui/common/card/models/FuncLeftBannerCardModel;->setIcon(Ljava/lang/String;)V

    invoke-virtual {v0, p4}, Lcom/miui/common/card/models/FuncLeftBannerCardModel;->setFunction(Lcom/miui/common/card/functions/BaseFunction;)V

    return-object v0
.end method

.method public getFuncTopBannerCardModel(Lcom/miui/securityscan/model/AbsModel;Ljava/lang/String;Ljava/lang/String;Lcom/miui/common/card/functions/BaseFunction;)Lcom/miui/common/card/models/FuncTopBannerCardModel;
    .locals 2

    new-instance v0, Lcom/miui/common/card/models/FuncTopBannerCardModel;

    invoke-direct {v0, p1}, Lcom/miui/common/card/models/FuncTopBannerCardModel;-><init>(Lcom/miui/securityscan/model/AbsModel;)V

    invoke-virtual {p1}, Lcom/miui/securityscan/model/AbsModel;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/common/card/models/FuncTopBannerCardModel;->setTitle(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/miui/securityscan/model/AbsModel;->getSummary()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/common/card/models/FuncTopBannerCardModel;->setSummary(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/miui/common/card/models/FuncTopBannerCardModel;->setButton(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lcom/miui/common/card/models/FuncTopBannerCardModel;->setImgUrl(Ljava/lang/String;)V

    invoke-virtual {v0, p4}, Lcom/miui/common/card/models/FuncTopBannerCardModel;->setFunction(Lcom/miui/common/card/functions/BaseFunction;)V

    invoke-virtual {p1}, Lcom/miui/securityscan/model/AbsModel;->getScore()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/common/card/models/FuncTopBannerCardModel;->setScore(I)V

    return-object v0
.end method

.method public getListTitleCheckboxCardModel(Lcom/miui/securityscan/scanner/n;Lcom/miui/securityscan/model/GroupModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIZ)Lcom/miui/common/card/models/ListTitleCheckboxCardModel;
    .locals 1

    new-instance v0, Lcom/miui/common/card/models/ListTitleCheckboxCardModel;

    invoke-direct {v0, p1, p2}, Lcom/miui/common/card/models/ListTitleCheckboxCardModel;-><init>(Lcom/miui/securityscan/scanner/n;Lcom/miui/securityscan/model/GroupModel;)V

    invoke-virtual {v0, p3}, Lcom/miui/common/card/models/ListTitleCheckboxCardModel;->setTitle(Ljava/lang/String;)V

    invoke-virtual {v0, p4}, Lcom/miui/common/card/models/ListTitleCheckboxCardModel;->setSummary(Ljava/lang/String;)V

    invoke-virtual {v0, p5}, Lcom/miui/common/card/models/ListTitleCheckboxCardModel;->setBtnText(Ljava/lang/String;)V

    invoke-virtual {v0, p6}, Lcom/miui/common/card/models/ListTitleCheckboxCardModel;->setGroupToast(Ljava/lang/String;)V

    invoke-virtual {v0, p7}, Lcom/miui/common/card/models/ListTitleCheckboxCardModel;->setNeedRefreshManualItem(Z)V

    if-eqz p8, :cond_0

    invoke-virtual {v0, p8}, Lcom/miui/common/card/models/ListTitleCheckboxCardModel;->setResId(I)V

    :cond_0
    invoke-virtual {v0, p9}, Lcom/miui/common/card/models/ListTitleCheckboxCardModel;->setShowRightIcon(Z)V

    return-object v0
.end method

.method public getListTitleConsumePowerRankCardModel(Lcom/miui/securityscan/scanner/n;Lcom/miui/securityscan/model/manualitem/ConsumePowerRankModel;Ljava/lang/String;)Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel;
    .locals 2

    new-instance v0, Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel;

    invoke-direct {v0, p1, p2}, Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel;-><init>(Lcom/miui/securityscan/scanner/n;Lcom/miui/securityscan/model/manualitem/ConsumePowerRankModel;)V

    invoke-virtual {v0, p3}, Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel;->setButton(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/miui/securityscan/model/manualitem/ConsumePowerRankModel;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel;->setTitle(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/miui/securityscan/model/manualitem/ConsumePowerRankModel;->getAppConsumeInfoList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel;->setAppConsumeInfoList(Ljava/util/List;)V

    invoke-virtual {p2}, Lcom/miui/securityscan/model/manualitem/ConsumePowerRankModel;->getScore()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel;->setScore(I)V

    return-object v0
.end method

.method public getListTitleFlowRankCardModel(Lcom/miui/securityscan/scanner/n;Lcom/miui/securityscan/model/manualitem/FlowRankModel;Ljava/lang/String;)Lcom/miui/common/card/models/ListTitleFlowRankCardModel;
    .locals 2

    new-instance v0, Lcom/miui/common/card/models/ListTitleFlowRankCardModel;

    invoke-direct {v0, p1, p2}, Lcom/miui/common/card/models/ListTitleFlowRankCardModel;-><init>(Lcom/miui/securityscan/scanner/n;Lcom/miui/securityscan/model/AbsModel;)V

    invoke-virtual {p2}, Lcom/miui/securityscan/model/manualitem/FlowRankModel;->getFlowRankDataModels()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/common/card/models/ListTitleFlowRankCardModel;->setFlowRankDataModels(Ljava/util/List;)V

    invoke-virtual {p2}, Lcom/miui/securityscan/model/manualitem/FlowRankModel;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/common/card/models/ListTitleFlowRankCardModel;->setTitle(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lcom/miui/common/card/models/ListTitleFlowRankCardModel;->setButton(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/miui/securityscan/model/manualitem/FlowRankModel;->getScore()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/common/card/models/ListTitleFlowRankCardModel;->setScore(I)V

    return-object v0
.end method

.method public getSecurityProtectionCardModel(ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/miui/common/card/models/SecurityProtectionCardModel;
    .locals 1

    new-instance v0, Lcom/miui/common/card/models/SecurityProtectionCardModel;

    invoke-direct {v0}, Lcom/miui/common/card/models/SecurityProtectionCardModel;-><init>()V

    invoke-virtual {v0, p1}, Lcom/miui/common/card/models/SecurityProtectionCardModel;->setResId(I)V

    invoke-virtual {v0, p2}, Lcom/miui/common/card/models/SecurityProtectionCardModel;->setTitle(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lcom/miui/common/card/models/SecurityProtectionCardModel;->setStatus(Ljava/lang/String;)V

    invoke-virtual {v0, p4}, Lcom/miui/common/card/models/SecurityProtectionCardModel;->setMap(Ljava/util/Map;)V

    return-object v0
.end method

.method public getSystemProtectionCardModel(ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/miui/common/card/models/SystemProtectionCardModel;
    .locals 1

    new-instance v0, Lcom/miui/common/card/models/SystemProtectionCardModel;

    invoke-direct {v0}, Lcom/miui/common/card/models/SystemProtectionCardModel;-><init>()V

    invoke-virtual {v0, p1}, Lcom/miui/common/card/models/SystemProtectionCardModel;->setResId(I)V

    invoke-virtual {v0, p2}, Lcom/miui/common/card/models/SystemProtectionCardModel;->setTitle(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lcom/miui/common/card/models/SystemProtectionCardModel;->setStatus(Ljava/lang/String;)V

    invoke-virtual {v0, p4}, Lcom/miui/common/card/models/SystemProtectionCardModel;->setMap(Ljava/util/Map;)V

    return-object v0
.end method
