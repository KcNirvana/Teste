.class final Lcom/miui/networkassistant/service/tm/TrafficSimManager$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/service/tm/TrafficSimManager;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/service/tm/TrafficSimManager;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager$4;->this$0:Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, -0x1

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager$4;->this$0:Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    invoke-static {v0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->-wrap4(Lcom/miui/networkassistant/service/tm/TrafficSimManager;)J

    move-result-wide v4

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager$4;->this$0:Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    iget-object v0, v0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getPhoneNumber()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager$4;->this$0:Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    invoke-static {v0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->-get0(Lcom/miui/networkassistant/service/tm/TrafficSimManager;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager$4;->this$0:Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    iget-object v1, v1, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v1}, Lcom/miui/networkassistant/config/SimUserInfo;->getSlotNum()I

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/networkassistant/utils/TelephonyUtil;->getPhoneNumber(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager$4;->this$0:Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    iget-object v0, v0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0, v2}, Lcom/miui/networkassistant/config/SimUserInfo;->setPhoneNumber(Ljava/lang/String;)V

    :cond_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager$4;->this$0:Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    iget-object v0, v0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->hasImsi()Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_1
    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager$4;->this$0:Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    iget-object v0, v0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getImsi()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager$4;->this$0:Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    iget-object v1, v1, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v1}, Lcom/miui/networkassistant/config/SimUserInfo;->getCity()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager$4;->this$0:Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    iget-object v3, v3, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v3}, Lcom/miui/networkassistant/config/SimUserInfo;->getOperator()Ljava/lang/String;

    move-result-object v3

    iget-object v6, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager$4;->this$0:Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    iget-object v6, v6, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v6}, Lcom/miui/networkassistant/config/SimUserInfo;->getIccid()Ljava/lang/String;

    move-result-object v6

    invoke-static/range {v0 .. v6}, Lcom/miui/networkassistant/webapi/WebApiAccessHelper;->queryDataUsage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)Lcom/miui/networkassistant/webapi/DataUsageResult;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager$4;->this$0:Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    iget-object v1, v1, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v1, v8}, Lcom/miui/networkassistant/config/SimUserInfo;->setMiMobileOperatorModify(Z)Z

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/miui/networkassistant/webapi/DataUsageResult;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_8

    const-string/jumbo v1, "TrafficManageService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "modify mi mobile operator setting "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/miui/networkassistant/webapi/DataUsageResult;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager$4;->this$0:Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    iget-object v1, v1, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/webapi/DataUsageResult;->getOperator()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/miui/networkassistant/config/SimUserInfo;->saveOperator(Ljava/lang/String;)Z

    invoke-virtual {v0}, Lcom/miui/networkassistant/webapi/DataUsageResult;->getProvinceCode()I

    move-result v1

    if-le v1, v7, :cond_7

    invoke-virtual {v0}, Lcom/miui/networkassistant/webapi/DataUsageResult;->getCityCode()I

    move-result v1

    if-le v1, v7, :cond_7

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager$4;->this$0:Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    iget-object v1, v1, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/webapi/DataUsageResult;->getCityCode()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/miui/networkassistant/config/SimUserInfo;->saveCity(I)Z

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager$4;->this$0:Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    iget-object v1, v1, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/webapi/DataUsageResult;->getProvinceCode()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/miui/networkassistant/config/SimUserInfo;->saveProvince(I)Z

    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager$4;->this$0:Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    iget-object v1, v1, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/webapi/DataUsageResult;->getTotal()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/miui/networkassistant/config/SimUserInfo;->saveDataUsageTotal(J)Z

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager$4;->this$0:Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    invoke-virtual {v0}, Lcom/miui/networkassistant/webapi/DataUsageResult;->getUsedFlow()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->saveLatestCorrectedNormalDataUsage(J)V

    invoke-virtual {v0}, Lcom/miui/networkassistant/webapi/DataUsageResult;->getTotal()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gtz v1, :cond_3

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager$4;->this$0:Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    iget-object v1, v1, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v1, v9}, Lcom/miui/networkassistant/config/SimUserInfo;->toggleDataUsageOverLimitStopNetwork(Z)Z

    :cond_3
    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager$4;->this$0:Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    iget-object v1, v1, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v1, v8}, Lcom/miui/networkassistant/config/SimUserInfo;->toggleDataUsageAutoCorrection(Z)Z

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager$4;->this$0:Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    invoke-static {v1}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->-get5(Lcom/miui/networkassistant/service/tm/TrafficSimManager;)Lcom/miui/networkassistant/service/tm/TrafficManageService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->initDataUsageAutoCorrection()V

    invoke-virtual {v0}, Lcom/miui/networkassistant/webapi/DataUsageResult;->isBillOn()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager$4;->this$0:Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    iget-object v1, v1, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/webapi/DataUsageResult;->getBillLeft()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/miui/networkassistant/config/SimUserInfo;->setBillPackageRemained(J)Z

    :cond_4
    invoke-virtual {v0}, Lcom/miui/networkassistant/webapi/DataUsageResult;->isCallTimeOn()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager$4;->this$0:Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    iget-object v1, v1, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/webapi/DataUsageResult;->getCallTimeTotal()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/miui/networkassistant/config/SimUserInfo;->setCallTimePackageTotal(J)Z

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager$4;->this$0:Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    iget-object v1, v1, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/webapi/DataUsageResult;->getCallTimeLeft()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/miui/networkassistant/config/SimUserInfo;->setCallTimePackageRemained(J)Z

    :cond_5
    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager$4;->this$0:Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    invoke-static {v0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->-get0(Lcom/miui/networkassistant/service/tm/TrafficSimManager;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/networkassistant/utils/NotificationUtil;->cancelNormalTotalPackageNotSetted(Landroid/content/Context;)V

    :cond_6
    :goto_1
    return-void

    :cond_7
    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager$4;->this$0:Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    invoke-static {v1, v2}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->-wrap3(Lcom/miui/networkassistant/service/tm/TrafficSimManager;Ljava/lang/String;)[I

    move-result-object v1

    aget v2, v1, v9

    if-le v2, v7, :cond_2

    aget v2, v1, v8

    if-le v2, v7, :cond_2

    iget-object v2, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager$4;->this$0:Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    iget-object v2, v2, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    aget v3, v1, v9

    invoke-virtual {v2, v3}, Lcom/miui/networkassistant/config/SimUserInfo;->saveCity(I)Z

    iget-object v2, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager$4;->this$0:Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    iget-object v2, v2, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    aget v1, v1, v8

    invoke-virtual {v2, v1}, Lcom/miui/networkassistant/config/SimUserInfo;->saveProvince(I)Z

    goto/16 :goto_0

    :cond_8
    if-eqz v0, :cond_6

    const-string/jumbo v1, "TrafficManageService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "failed result : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/miui/networkassistant/webapi/DataUsageResult;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
