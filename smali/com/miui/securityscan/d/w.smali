.class final Lcom/miui/securityscan/d/w;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic val$model:Lcom/miui/common/card/models/BaseCardModel;


# direct methods
.method constructor <init>(Lcom/miui/common/card/models/BaseCardModel;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securityscan/d/w;->val$model:Lcom/miui/common/card/models/BaseCardModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/securityscan/d/w;->val$model:Lcom/miui/common/card/models/BaseCardModel;

    instance-of v0, v0, Lcom/miui/common/card/models/AdvCardModel;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/securityscan/d/w;->val$model:Lcom/miui/common/card/models/BaseCardModel;

    check-cast v0, Lcom/miui/common/card/models/AdvCardModel;

    invoke-virtual {v0}, Lcom/miui/common/card/models/AdvCardModel;->isLocal()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/miui/common/card/models/AdvCardModel;->getDataId()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lcom/miui/securityscan/d/a;->Lf(Ljava/lang/String;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/miui/common/card/models/AdvCardModel;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/miui/securityscan/d/w;->val$model:Lcom/miui/common/card/models/BaseCardModel;

    instance-of v0, v0, Lcom/miui/common/card/models/NewsCardModel;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/securityscan/d/w;->val$model:Lcom/miui/common/card/models/BaseCardModel;

    check-cast v0, Lcom/miui/common/card/models/NewsCardModel;

    invoke-virtual {v0}, Lcom/miui/common/card/models/NewsCardModel;->getDataId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/securityscan/d/a;->Li(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/miui/securityscan/d/w;->val$model:Lcom/miui/common/card/models/BaseCardModel;

    instance-of v0, v0, Lcom/miui/common/card/models/ActivityCardModel;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/miui/securityscan/d/w;->val$model:Lcom/miui/common/card/models/BaseCardModel;

    check-cast v0, Lcom/miui/common/card/models/ActivityCardModel;

    invoke-virtual {v0}, Lcom/miui/common/card/models/ActivityCardModel;->getDataId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/securityscan/d/a;->Le(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/miui/securityscan/d/w;->val$model:Lcom/miui/common/card/models/BaseCardModel;

    instance-of v0, v0, Lcom/miui/common/card/models/FunctionCardModel;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/miui/securityscan/d/w;->val$model:Lcom/miui/common/card/models/BaseCardModel;

    check-cast v0, Lcom/miui/common/card/models/FunctionCardModel;

    invoke-virtual {v0}, Lcom/miui/common/card/models/FunctionCardModel;->getCurModel()Lcom/miui/securityscan/model/AbsModel;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/securityscan/model/AbsModel;->getTrackStr()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/securityscan/d/a;->Lg(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/miui/securityscan/d/w;->val$model:Lcom/miui/common/card/models/BaseCardModel;

    instance-of v0, v0, Lcom/miui/common/card/models/ListTitleCheckboxCardModel;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/miui/securityscan/d/w;->val$model:Lcom/miui/common/card/models/BaseCardModel;

    check-cast v0, Lcom/miui/common/card/models/ListTitleCheckboxCardModel;

    invoke-virtual {v0}, Lcom/miui/common/card/models/ListTitleCheckboxCardModel;->getGroup()Lcom/miui/securityscan/model/GroupModel;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/securityscan/model/GroupModel;->getModelList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/miui/securityscan/d/a;->Lh(Ljava/util/List;)V

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/miui/securityscan/d/w;->val$model:Lcom/miui/common/card/models/BaseCardModel;

    instance-of v0, v0, Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/miui/securityscan/d/w;->val$model:Lcom/miui/common/card/models/BaseCardModel;

    check-cast v0, Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel;

    invoke-virtual {v0}, Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel;->getCurModel()Lcom/miui/securityscan/model/manualitem/ConsumePowerRankModel;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/securityscan/model/manualitem/ConsumePowerRankModel;->getTrackStr()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/securityscan/d/a;->Lg(Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    iget-object v0, p0, Lcom/miui/securityscan/d/w;->val$model:Lcom/miui/common/card/models/BaseCardModel;

    instance-of v0, v0, Lcom/miui/common/card/models/ListTitleFlowRankCardModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/securityscan/d/w;->val$model:Lcom/miui/common/card/models/BaseCardModel;

    check-cast v0, Lcom/miui/common/card/models/ListTitleFlowRankCardModel;

    invoke-virtual {v0}, Lcom/miui/common/card/models/ListTitleFlowRankCardModel;->getCurModel()Lcom/miui/securityscan/model/AbsModel;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/securityscan/model/AbsModel;->getTrackStr()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/securityscan/d/a;->Lg(Ljava/lang/String;)V

    goto/16 :goto_1
.end method
