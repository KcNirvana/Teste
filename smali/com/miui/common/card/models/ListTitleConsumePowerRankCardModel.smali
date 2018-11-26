.class public Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel;
.super Lcom/miui/common/card/models/BaseCardModel;
.source ""


# instance fields
.field private amoListener:Lcom/miui/securityscan/scanner/n;

.field private appConsumeInfoList:Ljava/util/List;

.field private curModel:Lcom/miui/securityscan/model/manualitem/ConsumePowerRankModel;

.field private score:I


# direct methods
.method static synthetic -get0(Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel;)Lcom/miui/securityscan/scanner/n;
    .locals 1

    iget-object v0, p0, Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel;->amoListener:Lcom/miui/securityscan/scanner/n;

    return-object v0
.end method

.method static synthetic -get1(Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel;->appConsumeInfoList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -get2(Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel;)Lcom/miui/securityscan/model/manualitem/ConsumePowerRankModel;
    .locals 1

    iget-object v0, p0, Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel;->curModel:Lcom/miui/securityscan/model/manualitem/ConsumePowerRankModel;

    return-object v0
.end method

.method static synthetic -get3(Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel;)I
    .locals 1

    iget v0, p0, Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel;->score:I

    return v0
.end method

.method public constructor <init>(Lcom/miui/securityscan/scanner/n;Lcom/miui/securityscan/model/manualitem/ConsumePowerRankModel;)V
    .locals 1

    const v0, 0x7f030050

    invoke-direct {p0, v0}, Lcom/miui/common/card/models/BaseCardModel;-><init>(I)V

    iput-object p1, p0, Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel;->amoListener:Lcom/miui/securityscan/scanner/n;

    iput-object p2, p0, Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel;->curModel:Lcom/miui/securityscan/model/manualitem/ConsumePowerRankModel;

    return-void
.end method


# virtual methods
.method public createViewHolder(Landroid/view/View;)Lcom/miui/common/card/BaseViewHolder;
    .locals 1

    new-instance v0, Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel$ListTitleConsumePowerRankViewHolder;

    invoke-direct {v0, p0, p1}, Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel$ListTitleConsumePowerRankViewHolder;-><init>(Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel;Landroid/view/View;)V

    return-object v0
.end method

.method public getAppConsumeInfoList()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel;->appConsumeInfoList:Ljava/util/List;

    return-object v0
.end method

.method public getCurModel()Lcom/miui/securityscan/model/manualitem/ConsumePowerRankModel;
    .locals 1

    iget-object v0, p0, Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel;->curModel:Lcom/miui/securityscan/model/manualitem/ConsumePowerRankModel;

    return-object v0
.end method

.method public getScore()I
    .locals 1

    iget v0, p0, Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel;->score:I

    return v0
.end method

.method public setAppConsumeInfoList(Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel;->appConsumeInfoList:Ljava/util/List;

    return-void
.end method

.method public setScore(I)V
    .locals 0

    iput p1, p0, Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel;->score:I

    return-void
.end method

.method public validate()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
