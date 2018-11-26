.class final Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection$SmsReceiver$1;
.super Landroid/os/AsyncTask;
.source ""


# instance fields
.field final synthetic this$1:Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection$SmsReceiver;

.field final synthetic val$hasMoreSmsComing:Z

.field final synthetic val$returnedSms:Ljava/lang/String;

.field final synthetic val$senderNum:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection$SmsReceiver;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection$SmsReceiver$1;->this$1:Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection$SmsReceiver;

    iput-object p2, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection$SmsReceiver$1;->val$senderNum:Ljava/lang/String;

    iput-object p3, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection$SmsReceiver$1;->val$returnedSms:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection$SmsReceiver$1;->val$hasMoreSmsComing:Z

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection$SmsReceiver$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 9

    const/4 v5, 0x4

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    invoke-static {}, Lcom/miui/sdk/tc/TcManager;->getInstance()Lcom/miui/sdk/tc/TcManager;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection$SmsReceiver$1;->val$senderNum:Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection$SmsReceiver$1;->val$returnedSms:Ljava/lang/String;

    iget-object v3, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection$SmsReceiver$1;->this$1:Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection$SmsReceiver;

    invoke-static {v3}, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection$SmsReceiver;->-get1(Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection$SmsReceiver;)I

    move-result v3

    iget-object v4, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection$SmsReceiver$1;->this$1:Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection$SmsReceiver;

    invoke-static {v4}, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection$SmsReceiver;->-get2(Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection$SmsReceiver;)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/miui/sdk/tc/TcManager;->getResult(Ljava/lang/String;Ljava/lang/String;II)Lcom/miui/sdk/tc/DataUsage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/sdk/tc/DataUsage;->getReturnCode()I

    move-result v1

    if-nez v1, :cond_5

    new-instance v1, Lcom/miui/networkassistant/model/TrafficUsedStatus;

    invoke-direct {v1, v5}, Lcom/miui/networkassistant/model/TrafficUsedStatus;-><init>(I)V

    invoke-virtual {v0}, Lcom/miui/sdk/tc/DataUsage;->getDailyPkgDetail()Lcom/miui/sdk/tc/DataUsage$PackageDetail;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v7}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->setReturnCode(I)V

    invoke-virtual {v2}, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->getTotalTrafficB()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->setTotalTrafficB(J)V

    invoke-virtual {v2}, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->getUsedTrafficB()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->setUsedTrafficB(J)V

    invoke-virtual {v2}, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->getRemainTrafficB()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->setRemainTrafficB(J)V

    invoke-virtual {v2}, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->isStable()Z

    move-result v3

    invoke-virtual {v1, v3}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->setNormalStable(Z)V

    invoke-virtual {v2}, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->isJustOver()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->setJustOver(Z)V

    :cond_0
    invoke-virtual {v0}, Lcom/miui/sdk/tc/DataUsage;->getLeisurePkgDetail()Lcom/miui/sdk/tc/DataUsage$PackageDetail;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->getTotalTrafficB()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->setLeisureTotalB(J)V

    invoke-virtual {v2}, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->getUsedTrafficB()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->setLeisureUsedB(J)V

    invoke-virtual {v2}, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->getRemainTrafficB()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->setLeisureRemainB(J)V

    invoke-virtual {v1, v8}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->setLeisureEnable(Z)V

    invoke-virtual {v2}, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->isStable()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->setLeisureStable(Z)V

    :cond_1
    invoke-virtual {v0}, Lcom/miui/sdk/tc/DataUsage;->getExtraPkgDetail()Lcom/miui/sdk/tc/DataUsage$PackageDetail;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->getTotalTrafficB()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->setExtraTotalB(J)V

    invoke-virtual {v2}, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->getUsedTrafficB()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->setExtraUsedB(J)V

    invoke-virtual {v2}, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->getRemainTrafficB()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->setExtraRemainB(J)V

    invoke-virtual {v1, v8}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->setExtraEnable(Z)V

    invoke-virtual {v2}, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->isStable()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->setExtraStable(Z)V

    :cond_2
    invoke-virtual {v0}, Lcom/miui/sdk/tc/DataUsage;->getBillPkg()Lcom/miui/sdk/tc/DataUsage$PackageDetail;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v1, v7}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->setReturnCode(I)V

    invoke-virtual {v1, v8}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->setBillEnabled(Z)V

    invoke-virtual {v2}, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->getTotalTrafficB()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->setBillTotal(J)V

    invoke-virtual {v2}, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->getUsedTrafficB()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->setBillUsed(J)V

    invoke-virtual {v2}, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->getRemainTrafficB()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->setBillRemained(J)V

    const-string/jumbo v3, "MiuiTrafficCorrection"

    invoke-virtual {v2}, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-virtual {v0}, Lcom/miui/sdk/tc/DataUsage;->getCallTimePkg()Lcom/miui/sdk/tc/DataUsage$PackageDetail;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v1, v7}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->setReturnCode(I)V

    invoke-virtual {v1, v8}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->setCallTimeEnabled(Z)V

    invoke-virtual {v0}, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->getTotalTrafficB()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->setCallTimeTotal(J)V

    invoke-virtual {v0}, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->getUsedTrafficB()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->setCallTimeUsed(J)V

    invoke-virtual {v0}, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->getRemainTrafficB()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->setCallTimeRemained(J)V

    const-string/jumbo v2, "MiuiTrafficCorrection"

    invoke-virtual {v0}, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v0, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection$SmsReceiver$1;->this$1:Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection$SmsReceiver;

    invoke-static {v0}, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection$SmsReceiver;->-get0(Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection$SmsReceiver;)Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection$TrafficCorrectionListener;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection$TrafficCorrectionListener;->onTrafficCorrected(Lcom/miui/networkassistant/model/TrafficUsedStatus;)V

    :goto_0
    return-object v6

    :cond_5
    iget-boolean v0, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection$SmsReceiver$1;->val$hasMoreSmsComing:Z

    if-eqz v0, :cond_6

    return-object v6

    :cond_6
    new-instance v0, Lcom/miui/networkassistant/model/TrafficUsedStatus;

    invoke-direct {v0, v5}, Lcom/miui/networkassistant/model/TrafficUsedStatus;-><init>(I)V

    iget-object v1, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection$SmsReceiver$1;->val$returnedSms:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->setFailureSms(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection$SmsReceiver$1;->this$1:Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection$SmsReceiver;

    invoke-static {v1}, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection$SmsReceiver;->-get0(Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection$SmsReceiver;)Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection$TrafficCorrectionListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection$TrafficCorrectionListener;->onTrafficCorrected(Lcom/miui/networkassistant/model/TrafficUsedStatus;)V

    goto :goto_0
.end method
