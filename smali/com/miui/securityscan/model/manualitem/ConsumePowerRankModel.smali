.class public Lcom/miui/securityscan/model/manualitem/ConsumePowerRankModel;
.super Lcom/miui/securityscan/model/AbsModel;
.source ""


# static fields
.field private static appConsumeInfoList:Ljava/util/List;


# instance fields
.field private Au:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/miui/securityscan/model/AbsModel;-><init>(Ljava/lang/String;I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/securityscan/model/manualitem/ConsumePowerRankModel;->setDelayOptimized(Z)V

    const-string/jumbo v0, "consume_power_rank"

    invoke-virtual {p0, v0}, Lcom/miui/securityscan/model/manualitem/ConsumePowerRankModel;->setTrackStr(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic Bs(Ljava/util/List;)Ljava/util/List;
    .locals 0

    sput-object p0, Lcom/miui/securityscan/model/manualitem/ConsumePowerRankModel;->appConsumeInfoList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic Bt(Lcom/miui/securityscan/model/manualitem/ConsumePowerRankModel;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/securityscan/model/manualitem/ConsumePowerRankModel;->Au:Z

    return p1
.end method


# virtual methods
.method public getAppConsumeInfoList()Ljava/util/List;
    .locals 1

    sget-object v0, Lcom/miui/securityscan/model/manualitem/ConsumePowerRankModel;->appConsumeInfoList:Ljava/util/List;

    return-object v0
.end method

.method public getDesc()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getIndex()I
    .locals 1

    const/16 v0, 0x21

    return v0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/miui/securityscan/model/manualitem/ConsumePowerRankModel;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0706f0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public optimize(Landroid/app/Activity;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.POWER_USAGE_SUMMARY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x64

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public scan()V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Lcom/miui/securityscan/model/manualitem/b;

    invoke-virtual {p0}, Lcom/miui/securityscan/model/manualitem/ConsumePowerRankModel;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/miui/securityscan/model/manualitem/b;-><init>(Lcom/miui/securityscan/model/manualitem/ConsumePowerRankModel;Landroid/content/Context;)V

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/miui/securityscan/model/manualitem/b;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    iget-boolean v0, p0, Lcom/miui/securityscan/model/manualitem/ConsumePowerRankModel;->Au:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/miui/securityscan/model/manualitem/ConsumePowerRankModel;->appConsumeInfoList:Ljava/util/List;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/miui/securityscan/model/manualitem/ConsumePowerRankModel;->appConsumeInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    sget-object v0, Lcom/miui/securityscan/model/AbsModel$State;->DANGER:Lcom/miui/securityscan/model/AbsModel$State;

    :goto_0
    invoke-virtual {p0, v0}, Lcom/miui/securityscan/model/manualitem/ConsumePowerRankModel;->setSafe(Lcom/miui/securityscan/model/AbsModel$State;)V

    :cond_0
    return-void

    :cond_1
    sget-object v0, Lcom/miui/securityscan/model/AbsModel$State;->SAFE:Lcom/miui/securityscan/model/AbsModel$State;

    goto :goto_0
.end method
