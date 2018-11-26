.class final Lcom/miui/networkassistant/traffic/correction/webcorrection/MiCorrection$1;
.super Landroid/os/AsyncTask;
.source ""


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/traffic/correction/webcorrection/MiCorrection;

.field final synthetic val$imsi:Ljava/lang/String;

.field final synthetic val$isBackground:Z

.field final synthetic val$listener:Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection$TrafficCorrectionListener;

.field final synthetic val$used:J


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/traffic/correction/webcorrection/MiCorrection;Ljava/lang/String;JLcom/miui/networkassistant/traffic/correction/ITrafficCorrection$TrafficCorrectionListener;Z)V
    .locals 1

    iput-object p1, p0, Lcom/miui/networkassistant/traffic/correction/webcorrection/MiCorrection$1;->this$0:Lcom/miui/networkassistant/traffic/correction/webcorrection/MiCorrection;

    iput-object p2, p0, Lcom/miui/networkassistant/traffic/correction/webcorrection/MiCorrection$1;->val$imsi:Ljava/lang/String;

    iput-wide p3, p0, Lcom/miui/networkassistant/traffic/correction/webcorrection/MiCorrection$1;->val$used:J

    iput-object p5, p0, Lcom/miui/networkassistant/traffic/correction/webcorrection/MiCorrection$1;->val$listener:Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection$TrafficCorrectionListener;

    iput-boolean p6, p0, Lcom/miui/networkassistant/traffic/correction/webcorrection/MiCorrection$1;->val$isBackground:Z

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/miui/networkassistant/webapi/DataUsageResult;
    .locals 4

    iget-object v0, p0, Lcom/miui/networkassistant/traffic/correction/webcorrection/MiCorrection$1;->this$0:Lcom/miui/networkassistant/traffic/correction/webcorrection/MiCorrection;

    iget-object v1, p0, Lcom/miui/networkassistant/traffic/correction/webcorrection/MiCorrection$1;->val$imsi:Ljava/lang/String;

    iget-wide v2, p0, Lcom/miui/networkassistant/traffic/correction/webcorrection/MiCorrection$1;->val$used:J

    invoke-static {v0, v1, v2, v3}, Lcom/miui/networkassistant/traffic/correction/webcorrection/MiCorrection;->-wrap0(Lcom/miui/networkassistant/traffic/correction/webcorrection/MiCorrection;Ljava/lang/String;J)Lcom/miui/networkassistant/webapi/DataUsageResult;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/networkassistant/traffic/correction/webcorrection/MiCorrection$1;->doInBackground([Ljava/lang/Void;)Lcom/miui/networkassistant/webapi/DataUsageResult;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/miui/networkassistant/webapi/DataUsageResult;)V
    .locals 7

    const/4 v6, 0x1

    iget-object v0, p0, Lcom/miui/networkassistant/traffic/correction/webcorrection/MiCorrection$1;->val$listener:Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection$TrafficCorrectionListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/miui/networkassistant/webapi/DataUsageResult;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/miui/networkassistant/traffic/correction/webcorrection/MiCorrection$1;->this$0:Lcom/miui/networkassistant/traffic/correction/webcorrection/MiCorrection;

    invoke-static {v0}, Lcom/miui/networkassistant/traffic/correction/webcorrection/MiCorrection;->-get0(Lcom/miui/networkassistant/traffic/correction/webcorrection/MiCorrection;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/networkassistant/traffic/correction/WebCorrectionManager;->getInstance(Landroid/content/Context;)Lcom/miui/networkassistant/traffic/correction/WebCorrectionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/traffic/correction/webcorrection/MiCorrection$1;->val$imsi:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/traffic/correction/WebCorrectionManager;->isCmccWebCorrectSupported(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/networkassistant/traffic/correction/webcorrection/MiCorrection$1;->this$0:Lcom/miui/networkassistant/traffic/correction/webcorrection/MiCorrection;

    invoke-static {v0}, Lcom/miui/networkassistant/traffic/correction/webcorrection/MiCorrection;->-get0(Lcom/miui/networkassistant/traffic/correction/webcorrection/MiCorrection;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/networkassistant/traffic/correction/webcorrection/CmccCorrection;->getInstance(Landroid/content/Context;)Lcom/miui/networkassistant/traffic/correction/webcorrection/CmccCorrection;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/traffic/correction/webcorrection/MiCorrection$1;->val$imsi:Ljava/lang/String;

    iget-wide v2, p0, Lcom/miui/networkassistant/traffic/correction/webcorrection/MiCorrection$1;->val$used:J

    iget-boolean v4, p0, Lcom/miui/networkassistant/traffic/correction/webcorrection/MiCorrection$1;->val$isBackground:Z

    iget-object v5, p0, Lcom/miui/networkassistant/traffic/correction/webcorrection/MiCorrection$1;->val$listener:Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection$TrafficCorrectionListener;

    invoke-virtual/range {v0 .. v5}, Lcom/miui/networkassistant/traffic/correction/webcorrection/CmccCorrection;->queryDataUsage(Ljava/lang/String;JZLcom/miui/networkassistant/traffic/correction/ITrafficCorrection$TrafficCorrectionListener;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/miui/networkassistant/traffic/correction/webcorrection/MiCorrection$1;->val$listener:Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection$TrafficCorrectionListener;

    new-instance v1, Lcom/miui/networkassistant/model/TrafficUsedStatus;

    const/4 v2, 0x6

    invoke-direct {v1, v2}, Lcom/miui/networkassistant/model/TrafficUsedStatus;-><init>(I)V

    invoke-interface {v0, v1}, Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection$TrafficCorrectionListener;->onTrafficCorrected(Lcom/miui/networkassistant/model/TrafficUsedStatus;)V

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/miui/networkassistant/model/TrafficUsedStatus;

    invoke-virtual {p1}, Lcom/miui/networkassistant/webapi/DataUsageResult;->getUsedFlow()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/miui/networkassistant/webapi/DataUsageResult;->getLeftFlow()J

    move-result-wide v4

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/miui/networkassistant/model/TrafficUsedStatus;-><init>(JJ)V

    invoke-virtual {p1}, Lcom/miui/networkassistant/webapi/DataUsageResult;->getTotal()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->setTotalTrafficB(J)V

    invoke-virtual {v0, v6}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->setNormalStable(Z)V

    invoke-virtual {v0, v6}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->setFromWeb(Z)V

    invoke-virtual {p1}, Lcom/miui/networkassistant/webapi/DataUsageResult;->isIdleOn()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0, v6}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->setLeisureEnable(Z)V

    invoke-virtual {v0, v6}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->setLeisureStable(Z)V

    invoke-virtual {p1}, Lcom/miui/networkassistant/webapi/DataUsageResult;->getIdleTotal()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->setLeisureTotalB(J)V

    invoke-virtual {p1}, Lcom/miui/networkassistant/webapi/DataUsageResult;->getIdleUsed()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->setLeisureUsedB(J)V

    invoke-virtual {p1}, Lcom/miui/networkassistant/webapi/DataUsageResult;->getIdleLeft()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->setLeisureRemainB(J)V

    :cond_3
    invoke-virtual {p1}, Lcom/miui/networkassistant/webapi/DataUsageResult;->isBillOn()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0, v6}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->setBillEnabled(Z)V

    invoke-virtual {p1}, Lcom/miui/networkassistant/webapi/DataUsageResult;->getBillLeft()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->setBillRemained(J)V

    :cond_4
    invoke-virtual {p1}, Lcom/miui/networkassistant/webapi/DataUsageResult;->isCallTimeOn()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v0, v6}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->setCallTimeEnabled(Z)V

    invoke-virtual {p1}, Lcom/miui/networkassistant/webapi/DataUsageResult;->getCallTimeTotal()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->setCallTimeTotal(J)V

    invoke-virtual {p1}, Lcom/miui/networkassistant/webapi/DataUsageResult;->getCallTimeLeft()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->setCallTimeRemained(J)V

    invoke-virtual {p1}, Lcom/miui/networkassistant/webapi/DataUsageResult;->getCallTimeUsed()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->setCallTimeUsed(J)V

    :cond_5
    iget-object v1, p0, Lcom/miui/networkassistant/traffic/correction/webcorrection/MiCorrection$1;->val$listener:Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection$TrafficCorrectionListener;

    invoke-interface {v1, v0}, Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection$TrafficCorrectionListener;->onTrafficCorrected(Lcom/miui/networkassistant/model/TrafficUsedStatus;)V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/miui/networkassistant/webapi/DataUsageResult;

    invoke-virtual {p0, p1}, Lcom/miui/networkassistant/traffic/correction/webcorrection/MiCorrection$1;->onPostExecute(Lcom/miui/networkassistant/webapi/DataUsageResult;)V

    return-void
.end method
