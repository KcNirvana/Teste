.class Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment$GetVirtualOperatorTask;
.super Landroid/os/AsyncTask;
.source ""


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPhoneNumber:Ljava/lang/String;

.field private mSimUserInfo:Lcom/miui/networkassistant/config/SimUserInfo;

.field final synthetic this$0:Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;


# direct methods
.method public constructor <init>(Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;Landroid/content/Context;Lcom/miui/networkassistant/config/SimUserInfo;)V
    .locals 1

    iput-object p1, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment$GetVirtualOperatorTask;->this$0:Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment$GetVirtualOperatorTask;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment$GetVirtualOperatorTask;->mSimUserInfo:Lcom/miui/networkassistant/config/SimUserInfo;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/miui/networkassistant/webapi/DataUsageResult;
    .locals 7

    const-wide/16 v0, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment$GetVirtualOperatorTask;->this$0:Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;

    invoke-static {v2}, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->-get6(Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;)Lcom/miui/networkassistant/service/ITrafficManageBinder;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment$GetVirtualOperatorTask;->this$0:Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;

    invoke-static {v2}, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->-get6(Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;)Lcom/miui/networkassistant/service/ITrafficManageBinder;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment$GetVirtualOperatorTask;->this$0:Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;

    invoke-static {v3}, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->-get5(Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;)I

    move-result v3

    invoke-interface {v2, v3}, Lcom/miui/networkassistant/service/ITrafficManageBinder;->getCorrectedNormalMonthDataUsageUsed(I)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    :cond_0
    move-wide v4, v0

    :goto_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment$GetVirtualOperatorTask;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment$GetVirtualOperatorTask;->mSimUserInfo:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v1}, Lcom/miui/networkassistant/config/SimUserInfo;->getSlotNum()I

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/networkassistant/utils/TelephonyUtil;->getPhoneNumber(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment$GetVirtualOperatorTask;->mPhoneNumber:Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment$GetVirtualOperatorTask;->mSimUserInfo:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getImsi()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment$GetVirtualOperatorTask;->mSimUserInfo:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v1}, Lcom/miui/networkassistant/config/SimUserInfo;->getCity()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment$GetVirtualOperatorTask;->mPhoneNumber:Ljava/lang/String;

    iget-object v3, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment$GetVirtualOperatorTask;->mSimUserInfo:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v3}, Lcom/miui/networkassistant/config/SimUserInfo;->getOperator()Ljava/lang/String;

    move-result-object v3

    iget-object v6, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment$GetVirtualOperatorTask;->mSimUserInfo:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v6}, Lcom/miui/networkassistant/config/SimUserInfo;->getIccid()Ljava/lang/String;

    move-result-object v6

    invoke-static/range {v0 .. v6}, Lcom/miui/networkassistant/webapi/WebApiAccessHelper;->queryDataUsage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)Lcom/miui/networkassistant/webapi/DataUsageResult;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v2

    const-string/jumbo v3, "OperatorSettingFragment"

    const-string/jumbo v4, "get month used exception"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-wide v4, v0

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment$GetVirtualOperatorTask;->doInBackground([Ljava/lang/Void;)Lcom/miui/networkassistant/webapi/DataUsageResult;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/miui/networkassistant/webapi/DataUsageResult;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/miui/networkassistant/webapi/DataUsageResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "OperatorSettingFragment"

    invoke-virtual {p1}, Lcom/miui/networkassistant/webapi/DataUsageResult;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment$GetVirtualOperatorTask;->this$0:Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;

    invoke-virtual {p1}, Lcom/miui/networkassistant/webapi/DataUsageResult;->getOperator()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->-set1(Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;Ljava/lang/String;)Ljava/lang/String;

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment$GetVirtualOperatorTask;->this$0:Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment$GetVirtualOperatorTask;->mPhoneNumber:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->-wrap1(Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;Ljava/lang/String;)V

    return-void

    :cond_1
    if-eqz p1, :cond_0

    const-string/jumbo v0, "OperatorSettingFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "failed result : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/miui/networkassistant/webapi/DataUsageResult;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/miui/networkassistant/webapi/DataUsageResult;

    invoke-virtual {p0, p1}, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment$GetVirtualOperatorTask;->onPostExecute(Lcom/miui/networkassistant/webapi/DataUsageResult;)V

    return-void
.end method
