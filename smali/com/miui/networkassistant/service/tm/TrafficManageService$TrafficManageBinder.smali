.class Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficManageBinder;
.super Lcom/miui/networkassistant/service/ITrafficManageBinder$Stub;
.source ""


# instance fields
.field private mSharedPreBinderMap:Ljava/util/HashMap;

.field final synthetic this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;


# direct methods
.method private constructor <init>(Lcom/miui/networkassistant/service/tm/TrafficManageService;)V
    .locals 1

    iput-object p1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficManageBinder;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-direct {p0}, Lcom/miui/networkassistant/service/ITrafficManageBinder$Stub;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficManageBinder;->mSharedPreBinderMap:Ljava/util/HashMap;

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/networkassistant/service/tm/TrafficManageService;Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficManageBinder;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficManageBinder;-><init>(Lcom/miui/networkassistant/service/tm/TrafficManageService;)V

    return-void
.end method


# virtual methods
.method public applyCorrectedPkgsAndUsageValues(Lcom/miui/networkassistant/model/TrafficUsedStatus;ZI)V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficManageBinder;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {v0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->-get14(Lcom/miui/networkassistant/service/tm/TrafficManageService;)[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    move-result-object v0

    aget-object v0, v0, p3

    invoke-virtual {v0, p1, p2}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->saveCorrectedPkgsAndUsageValues(Lcom/miui/networkassistant/model/TrafficUsedStatus;Z)V

    return-void
.end method

.method public forceCheckDailyLimitStatus(I)V
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficManageBinder;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {v0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->-get3(Lcom/miui/networkassistant/service/tm/TrafficManageService;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficManageBinder;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {v1}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->-get3(Lcom/miui/networkassistant/service/tm/TrafficManageService;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public forceCheckLockScreenStatus(I)V
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficManageBinder;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    iget-object v0, v0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x42

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficManageBinder;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    iget-object v1, v1, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public forceCheckRoamingDailyLimitStatus(I)V
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficManageBinder;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {v0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->-get3(Lcom/miui/networkassistant/service/tm/TrafficManageService;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x41

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficManageBinder;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {v1}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->-get3(Lcom/miui/networkassistant/service/tm/TrafficManageService;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public forceCheckTethingSettingStatus()V
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficManageBinder;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {v0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->-get3(Lcom/miui/networkassistant/service/tm/TrafficManageService;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x42

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficManageBinder;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {v1}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->-get3(Lcom/miui/networkassistant/service/tm/TrafficManageService;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public forceCheckTrafficStatus(I)V
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficManageBinder;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {v0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->-get3(Lcom/miui/networkassistant/service/tm/TrafficManageService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficManageBinder;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {v1}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->-get3(Lcom/miui/networkassistant/service/tm/TrafficManageService;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public getActiveSlotNum()I
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficManageBinder;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {v0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->-wrap15(Lcom/miui/networkassistant/service/tm/TrafficManageService;)V

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficManageBinder;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {v0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->-get0(Lcom/miui/networkassistant/service/tm/TrafficManageService;)I

    move-result v0

    return v0
.end method

.method public getAppMonitorBinder()Lcom/miui/networkassistant/service/IAppMonitorBinder;
    .locals 2

    invoke-static {}, Lcom/miui/common/b/f;->aIc()I

    move-result v0

    invoke-static {v0}, Lcom/miui/common/b/f;->aIe(I)I

    move-result v0

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficManageBinder;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {v1}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->-get2(Lcom/miui/networkassistant/service/tm/TrafficManageService;)[Lcom/miui/networkassistant/service/tm/AppMonitor;

    move-result-object v1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Lcom/miui/networkassistant/service/tm/AppMonitor;->getBinder()Lcom/miui/networkassistant/service/IAppMonitorBinder;

    move-result-object v0

    return-object v0
.end method

.method public getCorrectedNormalAndLeisureMonthTotalUsed(I)[J
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficManageBinder;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {v1}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->-get14(Lcom/miui/networkassistant/service/tm/TrafficManageService;)[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    move-result-object v1

    aget-object v1, v1, p1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficManageBinder;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {v0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->-get14(Lcom/miui/networkassistant/service/tm/TrafficManageService;)[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    move-result-object v0

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->getCorrectedNormalAndLeisureMonthTotalUsed()[J

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getCorrectedNormalMonthDataUsageUsed(I)J
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficManageBinder;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {v0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->-get14(Lcom/miui/networkassistant/service/tm/TrafficManageService;)[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    move-result-object v0

    aget-object v0, v0, p1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficManageBinder;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {v0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->-get14(Lcom/miui/networkassistant/service/tm/TrafficManageService;)[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    move-result-object v0

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->isLeisureDataUsageEffective()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficManageBinder;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {v0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->-get14(Lcom/miui/networkassistant/service/tm/TrafficManageService;)[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    move-result-object v0

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->getCorrectedNormalAndLeisureMonthTotalUsed()[J

    move-result-object v0

    const/4 v1, 0x0

    aget-wide v0, v0, v1

    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficManageBinder;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {v0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->-get14(Lcom/miui/networkassistant/service/tm/TrafficManageService;)[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    move-result-object v0

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->getCorrectedNormalMonthTotalUsed()J

    move-result-wide v0

    return-wide v0

    :cond_1
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getCurrentMonthTotalPackage(I)J
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficManageBinder;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {v0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->-get14(Lcom/miui/networkassistant/service/tm/TrafficManageService;)[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    move-result-object v0

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficManageBinder;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {v0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->-get14(Lcom/miui/networkassistant/service/tm/TrafficManageService;)[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    move-result-object v0

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->getCurrentMonthTotalPackage()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getIgnoreAppCount(I)I
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficManageBinder;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {v0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->-get14(Lcom/miui/networkassistant/service/tm/TrafficManageService;)[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    move-result-object v0

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mIgnoreAppListConfig:Lcom/miui/networkassistant/config/DataUsageIgnoreAppListConfig;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/DataUsageIgnoreAppListConfig;->getIgnoreList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getNormalTodayDataUsageUsed(I)J
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficManageBinder;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {v0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->-get14(Lcom/miui/networkassistant/service/tm/TrafficManageService;)[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    move-result-object v0

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficManageBinder;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {v0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->-get14(Lcom/miui/networkassistant/service/tm/TrafficManageService;)[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    move-result-object v0

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->getNormalTodayDataUsageUsed()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getSharedPreBinder(Ljava/lang/String;Lcom/miui/networkassistant/service/ISharedPreBinderListener;)Lcom/miui/networkassistant/service/ISharedPreBinder;
    .locals 3

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficManageBinder;->mSharedPreBinderMap:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficManageBinder;->mSharedPreBinderMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/networkassistant/service/tm/TrafficManageService$SharedPreBinder;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/networkassistant/service/tm/TrafficManageService$SharedPreBinder;

    iget-object v2, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficManageBinder;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-direct {v0, v2, p1}, Lcom/miui/networkassistant/service/tm/TrafficManageService$SharedPreBinder;-><init>(Lcom/miui/networkassistant/service/tm/TrafficManageService;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficManageBinder;->mSharedPreBinderMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {v0, p2}, Lcom/miui/networkassistant/service/tm/TrafficManageService$SharedPreBinder;->attachBinderListener(Lcom/miui/networkassistant/service/ISharedPreBinderListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getTodayDataUsageUsed(I)J
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficManageBinder;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {v0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->-get14(Lcom/miui/networkassistant/service/tm/TrafficManageService;)[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    move-result-object v0

    aget-object v0, v0, p1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficManageBinder;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {v0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->-get14(Lcom/miui/networkassistant/service/tm/TrafficManageService;)[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    move-result-object v0

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-static {v0}, Lcom/miui/networkassistant/traffic/statistic/LeisureTrafficHelper;->isLeisureTime(Lcom/miui/networkassistant/config/SimUserInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->isLeisureDataUsageEffective()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficManageBinder;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {v0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->-get14(Lcom/miui/networkassistant/service/tm/TrafficManageService;)[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    move-result-object v0

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->getTodayLeisureDataUsage()J

    move-result-wide v0

    return-wide v0

    :cond_0
    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->isLeisureDataUsageEffective()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficManageBinder;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {v0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->-get14(Lcom/miui/networkassistant/service/tm/TrafficManageService;)[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    move-result-object v0

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->getNormalTodayDataUsageNoLeisureUsed()J

    move-result-wide v0

    return-wide v0

    :cond_1
    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficManageBinder;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {v0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->-get14(Lcom/miui/networkassistant/service/tm/TrafficManageService;)[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    move-result-object v0

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->getNormalTodayDataUsageUsed()J

    move-result-wide v0

    return-wide v0

    :cond_2
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getTrafficCornBinder(I)Lcom/miui/networkassistant/service/ITrafficCornBinder;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficManageBinder;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {v0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->-get13(Lcom/miui/networkassistant/service/tm/TrafficManageService;)[Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficCornBinder;

    move-result-object v0

    aget-object v0, v0, p1

    return-object v0
.end method

.method public isDataUsageIgnore(Ljava/lang/String;I)Z
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficManageBinder;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {v0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->-get14(Lcom/miui/networkassistant/service/tm/TrafficManageService;)[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    move-result-object v0

    aget-object v0, v0, p2

    iget-object v0, v0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mIgnoreAppListConfig:Lcom/miui/networkassistant/config/DataUsageIgnoreAppListConfig;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/miui/networkassistant/config/DataUsageIgnoreAppListConfig;->isDataUsageIgnore(Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isNeededPurchasePkg(I)Z
    .locals 12

    invoke-virtual {p0, p1}, Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficManageBinder;->getCurrentMonthTotalPackage(I)J

    move-result-wide v2

    invoke-virtual {p0, p1}, Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficManageBinder;->getCorrectedNormalMonthDataUsageUsed(I)J

    move-result-wide v0

    sub-long v4, v2, v0

    invoke-static {}, Lcom/miui/networkassistant/utils/DateUtil;->getDayOfMonth()I

    move-result v6

    invoke-static {}, Lcom/miui/networkassistant/utils/DateUtil;->getActualMaxDayOfMonth()I

    move-result v7

    sub-int/2addr v7, v6

    long-to-double v0, v0

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v0, v8

    int-to-double v8, v6

    div-double/2addr v0, v8

    int-to-double v8, v7

    mul-double/2addr v0, v8

    long-to-double v8, v4

    cmpl-double v0, v0, v8

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficManageBinder;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {v1}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->-get14(Lcom/miui/networkassistant/service/tm/TrafficManageService;)[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    move-result-object v1

    aget-object v1, v1, p1

    iget-object v7, v1, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    long-to-double v4, v4

    const-wide v8, 0x41b2c00000000000L    # 3.145728E8

    long-to-double v2, v2

    const-wide v10, 0x3fc999999999999aL    # 0.2

    mul-double/2addr v2, v10

    invoke-static {v8, v9, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    cmpg-double v1, v4, v2

    if-gez v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v7}, Lcom/miui/networkassistant/config/SimUserInfo;->isNotLimitCardEnable()Z

    move-result v2

    if-nez v2, :cond_2

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    if-le v6, v0, :cond_2

    const/4 v0, 0x1

    :goto_2
    invoke-virtual {v7}, Lcom/miui/networkassistant/config/SimUserInfo;->isTotalDataUsageSetted()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v7}, Lcom/miui/networkassistant/config/SimUserInfo;->hasImsi()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v7}, Lcom/miui/networkassistant/config/SimUserInfo;->isNATrafficPurchaseAvailable()Z

    move-result v1

    if-eqz v1, :cond_3

    :goto_3
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public manualCorrectLeisureDataUsage(JI)V
    .locals 5

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficManageBinder;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {v0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->-get14(Lcom/miui/networkassistant/service/tm/TrafficManageService;)[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    move-result-object v0

    aget-object v0, v0, p3

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficManageBinder;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {v0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->-get14(Lcom/miui/networkassistant/service/tm/TrafficManageService;)[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    move-result-object v0

    aget-object v0, v0, p3

    invoke-virtual {v0, p1, p2}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->saveLatestCorrectedLeisureDataUsage(J)V

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficManageBinder;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {v0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->-get14(Lcom/miui/networkassistant/service/tm/TrafficManageService;)[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    move-result-object v0

    aget-object v0, v0, p3

    iget-object v0, v0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/miui/networkassistant/config/SimUserInfo;->saveLeisureDataUsageOverLimitWarningTime(J)Z

    :cond_0
    return-void
.end method

.method public manualCorrectNormalDataUsage(JI)V
    .locals 5

    const-wide/16 v2, 0x0

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficManageBinder;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {v0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->-get14(Lcom/miui/networkassistant/service/tm/TrafficManageService;)[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    move-result-object v0

    aget-object v0, v0, p3

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficManageBinder;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {v0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->-get14(Lcom/miui/networkassistant/service/tm/TrafficManageService;)[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    move-result-object v0

    aget-object v0, v0, p3

    invoke-virtual {v0, p1, p2}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->saveLatestCorrectedNormalDataUsage(J)V

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficManageBinder;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {v0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->-get14(Lcom/miui/networkassistant/service/tm/TrafficManageService;)[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    move-result-object v0

    aget-object v0, v0, p3

    iget-object v0, v0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0, v2, v3}, Lcom/miui/networkassistant/config/SimUserInfo;->saveDataUsageOverLimitStopNetworkWarningTime(J)Z

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficManageBinder;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {v0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->-get14(Lcom/miui/networkassistant/service/tm/TrafficManageService;)[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    move-result-object v0

    aget-object v0, v0, p3

    iget-object v0, v0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0, v2, v3}, Lcom/miui/networkassistant/config/SimUserInfo;->saveDataUsageOverLimitStopNetworkTime(J)Z

    :cond_0
    return-void
.end method

.method public reloadIgnoreAppList(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficManageBinder;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {v0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->-get14(Lcom/miui/networkassistant/service/tm/TrafficManageService;)[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    move-result-object v0

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->initDataUsageIgnoreAppList()V

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficManageBinder;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {v0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->-get14(Lcom/miui/networkassistant/service/tm/TrafficManageService;)[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    move-result-object v0

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mIgnoreAppListConfig:Lcom/miui/networkassistant/config/DataUsageIgnoreAppListConfig;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/DataUsageIgnoreAppListConfig;->saveNow()V

    :cond_0
    return-void
.end method

.method public setDataUsageIgnore(Ljava/lang/String;ZI)V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficManageBinder;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {v0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->-get14(Lcom/miui/networkassistant/service/tm/TrafficManageService;)[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    move-result-object v0

    aget-object v0, v0, p3

    iget-object v0, v0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mIgnoreAppListConfig:Lcom/miui/networkassistant/config/DataUsageIgnoreAppListConfig;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/miui/networkassistant/config/DataUsageIgnoreAppListConfig;->setDataUsageIgnore(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public startCorrection(ZIZI)Z
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficManageBinder;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {v0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->-get14(Lcom/miui/networkassistant/service/tm/TrafficManageService;)[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    move-result-object v0

    aget-object v0, v0, p2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficManageBinder;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {v0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->-get14(Lcom/miui/networkassistant/service/tm/TrafficManageService;)[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    move-result-object v0

    aget-object v0, v0, p2

    invoke-virtual {v0, p1, p3, p4}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->startCorrection(ZZI)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public startCorrectionDiagnostic(I)Z
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficManageBinder;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {v0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->-get14(Lcom/miui/networkassistant/service/tm/TrafficManageService;)[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    move-result-object v0

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficManageBinder;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {v0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->-get14(Lcom/miui/networkassistant/service/tm/TrafficManageService;)[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    move-result-object v0

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->startCorrectionDiagnostic()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toggleDataUsageAutoCorrection(ZI)V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficManageBinder;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {v0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->-get14(Lcom/miui/networkassistant/service/tm/TrafficManageService;)[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    move-result-object v0

    aget-object v0, v0, p2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficManageBinder;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {v0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->-get14(Lcom/miui/networkassistant/service/tm/TrafficManageService;)[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    move-result-object v0

    aget-object v0, v0, p2

    iget-object v0, v0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0, p1}, Lcom/miui/networkassistant/config/SimUserInfo;->toggleDataUsageAutoCorrection(Z)Z

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficManageBinder;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-virtual {v0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->initDataUsageAutoCorrection()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficManageBinder;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-virtual {v0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->cancelDataUsageAutoCorrection()V

    goto :goto_0
.end method

.method public toggleDataUsageOverLimitStopNetwork(ZI)V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficManageBinder;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {v0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->-get14(Lcom/miui/networkassistant/service/tm/TrafficManageService;)[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    move-result-object v0

    aget-object v0, v0, p2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficManageBinder;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {v0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->-get14(Lcom/miui/networkassistant/service/tm/TrafficManageService;)[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    move-result-object v0

    aget-object v0, v0, p2

    iget-object v0, v0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0, p1}, Lcom/miui/networkassistant/config/SimUserInfo;->toggleDataUsageOverLimitStopNetwork(Z)Z

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficManageBinder;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {v0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->-get14(Lcom/miui/networkassistant/service/tm/TrafficManageService;)[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    move-result-object v0

    aget-object v0, v0, p2

    invoke-virtual {v0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->initTrafficStatusMonitorVariable()V

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficManageBinder;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {v0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->-get14(Lcom/miui/networkassistant/service/tm/TrafficManageService;)[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    move-result-object v0

    aget-object v0, v0, p2

    invoke-virtual {v0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->clearAllLimitTime()V

    :cond_0
    return-void
.end method

.method public toggleLeisureDataUsageOverLimitWarning(ZI)V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficManageBinder;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {v0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->-get14(Lcom/miui/networkassistant/service/tm/TrafficManageService;)[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    move-result-object v0

    aget-object v0, v0, p2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficManageBinder;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {v0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->-get14(Lcom/miui/networkassistant/service/tm/TrafficManageService;)[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    move-result-object v0

    aget-object v0, v0, p2

    iget-object v0, v0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0, p1}, Lcom/miui/networkassistant/config/SimUserInfo;->toggleLeisureDataUsageOverLimitWarning(Z)Z

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficManageBinder;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {v0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->-get14(Lcom/miui/networkassistant/service/tm/TrafficManageService;)[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    move-result-object v0

    aget-object v0, v0, p2

    invoke-virtual {v0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->initTrafficStatusMonitorVariable()V

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficManageBinder;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {v0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->-get14(Lcom/miui/networkassistant/service/tm/TrafficManageService;)[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    move-result-object v0

    aget-object v0, v0, p2

    invoke-virtual {v0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->clearAllLimitTime()V

    :cond_0
    return-void
.end method

.method public updateGlobleDataUsage(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficManageBinder;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {v0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->-get14(Lcom/miui/networkassistant/service/tm/TrafficManageService;)[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    move-result-object v0

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficManageBinder;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {v0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->-get14(Lcom/miui/networkassistant/service/tm/TrafficManageService;)[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    move-result-object v0

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->updateTrafficCorrectionTotalLimit()V

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficManageBinder;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-virtual {v0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->broadCastDataUsageUpdated()V

    return-void
.end method

.method public updateTrafficCorrectonEngine(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficManageBinder;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {v0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->-get14(Lcom/miui/networkassistant/service/tm/TrafficManageService;)[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    move-result-object v0

    aget-object v0, v0, p1

    invoke-virtual {v0, p2, p3, p4}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->updateTrafficCorrectionEngine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public updateTrafficStatusMonitor(I)V
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficManageBinder;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {v0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->-get3(Lcom/miui/networkassistant/service/tm/TrafficManageService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficManageBinder;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {v1}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->-get3(Lcom/miui/networkassistant/service/tm/TrafficManageService;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
