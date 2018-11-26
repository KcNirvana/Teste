.class final Lcom/miui/networkassistant/service/tm/TrafficManageService$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/service/tm/TrafficManageService;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$1;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 7

    const/4 v2, 0x0

    const/4 v6, 0x1

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    return v6

    :sswitch_0
    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$1;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {v0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->-get1(Lcom/miui/networkassistant/service/tm/TrafficManageService;)Lcom/miui/networkassistant/service/tm/TrackAnalyticsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$1;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {v1}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->-get0(Lcom/miui/networkassistant/service/tm/TrafficManageService;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/service/tm/TrackAnalyticsManager;->trackAnalyticsWeekly(I)V

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$1;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {v0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->-get7(Lcom/miui/networkassistant/service/tm/TrafficManageService;)Lcom/miui/networkassistant/service/tm/DataUsageReportManager;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$1;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {v1}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->-get14(Lcom/miui/networkassistant/service/tm/TrafficManageService;)[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/service/tm/DataUsageReportManager;->uploadTrafficDataDaily([Lcom/miui/networkassistant/service/tm/TrafficSimManager;)V

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$1;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {v0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->-get14(Lcom/miui/networkassistant/service/tm/TrafficManageService;)[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->initTrafficStatusMonitorVariable()V

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$1;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {v0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->-get14(Lcom/miui/networkassistant/service/tm/TrafficManageService;)[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->forceUpdateTraffic()V

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$1;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-virtual {v0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->broadCastDataUsageUpdated()V

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$1;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {v0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->-get7(Lcom/miui/networkassistant/service/tm/TrafficManageService;)Lcom/miui/networkassistant/service/tm/DataUsageReportManager;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$1;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {v1}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->-get14(Lcom/miui/networkassistant/service/tm/TrafficManageService;)[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/service/tm/DataUsageReportManager;->uploadTrafficDataDaily([Lcom/miui/networkassistant/service/tm/TrafficSimManager;)V

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$1;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {v0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->-get14(Lcom/miui/networkassistant/service/tm/TrafficManageService;)[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->clearTrafficCorrectionFailureTimes()V

    sget-boolean v0, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_DUAL_CARD:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$1;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {v0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->-get14(Lcom/miui/networkassistant/service/tm/TrafficManageService;)[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    move-result-object v0

    aget-object v0, v0, v6

    invoke-virtual {v0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->clearTrafficCorrectionFailureTimes()V

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$1;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {v0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->-get14(Lcom/miui/networkassistant/service/tm/TrafficManageService;)[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    move-result-object v0

    aget-object v0, v0, v6

    invoke-virtual {v0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->initTrafficStatusMonitorVariable()V

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$1;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {v0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->-get14(Lcom/miui/networkassistant/service/tm/TrafficManageService;)[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    move-result-object v0

    aget-object v0, v0, v6

    invoke-virtual {v0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->forceUpdateTraffic()V

    goto :goto_0

    :sswitch_3
    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$1;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {v1}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->-get14(Lcom/miui/networkassistant/service/tm/TrafficManageService;)[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    move-result-object v1

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->initTrafficStatusMonitorVariable()V

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$1;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {v1}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->-get14(Lcom/miui/networkassistant/service/tm/TrafficManageService;)[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    move-result-object v1

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->clearAllLimitTime()V

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$1;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {v1}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->-get14(Lcom/miui/networkassistant/service/tm/TrafficManageService;)[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    move-result-object v1

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->checkTrafficStatus()V

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$1;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {v1}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->-get0(Lcom/miui/networkassistant/service/tm/TrafficManageService;)I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$1;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {v0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->-get6(Lcom/miui/networkassistant/service/tm/TrafficManageService;)Lcom/miui/networkassistant/service/tm/LockScreenManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/networkassistant/service/tm/LockScreenManager;->initLockScreenMonitor()V

    :cond_1
    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$1;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-virtual {v0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->broadCastDataUsageUpdated()V

    goto/16 :goto_0

    :sswitch_4
    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$1;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {v1}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->-get14(Lcom/miui/networkassistant/service/tm/TrafficManageService;)[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    move-result-object v1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->checkTrafficStatus()V

    goto/16 :goto_0

    :sswitch_5
    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$1;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {v1}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->-get14(Lcom/miui/networkassistant/service/tm/TrafficManageService;)[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    move-result-object v1

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->initTrafficStatusMonitorVariable()V

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$1;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {v1}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->-get14(Lcom/miui/networkassistant/service/tm/TrafficManageService;)[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    move-result-object v1

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->clearDailyLimitTime()V

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$1;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {v1}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->-get14(Lcom/miui/networkassistant/service/tm/TrafficManageService;)[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    move-result-object v1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->checkTrafficStatus()V

    goto/16 :goto_0

    :sswitch_6
    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$1;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {v1}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->-get14(Lcom/miui/networkassistant/service/tm/TrafficManageService;)[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    move-result-object v1

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->initTrafficStatusMonitorVariable()V

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$1;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {v1}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->-get14(Lcom/miui/networkassistant/service/tm/TrafficManageService;)[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    move-result-object v1

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->clearRoamingDailyLimitTime()V

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$1;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {v1}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->-get14(Lcom/miui/networkassistant/service/tm/TrafficManageService;)[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    move-result-object v1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->checkTrafficStatus()V

    goto/16 :goto_0

    :sswitch_7
    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$1;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {v0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->-wrap2(Lcom/miui/networkassistant/service/tm/TrafficManageService;)V

    goto/16 :goto_0

    :sswitch_8
    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$1;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {v0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->-get12(Lcom/miui/networkassistant/service/tm/TrafficManageService;)Lcom/miui/networkassistant/service/tm/TetherStatsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/networkassistant/service/tm/TetherStatsManager;->initTetheringStatus()V

    goto/16 :goto_0

    :sswitch_9
    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$1;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {}, Lcom/miui/networkassistant/traffic/statistic/NaTrafficStats;->getTotalTxBytes()J

    move-result-wide v2

    invoke-static {}, Lcom/miui/networkassistant/traffic/statistic/NaTrafficStats;->getTotalRxBytes()J

    move-result-wide v4

    add-long/2addr v2, v4

    invoke-static {v0, v2, v3}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->-set3(Lcom/miui/networkassistant/service/tm/TrafficManageService;J)J

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$1;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {v0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->-get3(Lcom/miui/networkassistant/service/tm/TrafficManageService;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0xfa0

    const/16 v1, 0x61

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    :sswitch_a
    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$1;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {v0}, Lcom/miui/common/network/f;->aMh(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "TrafficManageService"

    const-string/jumbo v1, "wifi2mobile: Mobile network does not connected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_2
    invoke-static {}, Lcom/miui/networkassistant/traffic/statistic/NaTrafficStats;->getTotalTxBytes()J

    move-result-wide v0

    invoke-static {}, Lcom/miui/networkassistant/traffic/statistic/NaTrafficStats;->getTotalRxBytes()J

    move-result-wide v2

    add-long/2addr v0, v2

    iget-object v2, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$1;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {v2}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->-get9(Lcom/miui/networkassistant/service/tm/TrafficManageService;)J

    move-result-wide v2

    sub-long v2, v0, v2

    const-wide/32 v4, 0x1e8480

    cmp-long v2, v2, v4

    if-lez v2, :cond_3

    iget-object v2, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$1;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {v2}, Lcom/miui/networkassistant/utils/NotificationUtil;->showNetworkChangedNotify(Landroid/content/Context;)V

    :cond_3
    const-string/jumbo v2, "TrafficManageService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "wifi2mobile: deltaByte:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$1;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {v4}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->-get9(Lcom/miui/networkassistant/service/tm/TrafficManageService;)J

    move-result-wide v4

    sub-long/2addr v0, v4

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x2 -> :sswitch_4
        0x15 -> :sswitch_2
        0x16 -> :sswitch_1
        0x30 -> :sswitch_0
        0x31 -> :sswitch_7
        0x40 -> :sswitch_5
        0x41 -> :sswitch_6
        0x42 -> :sswitch_8
        0x60 -> :sswitch_9
        0x61 -> :sswitch_a
    .end sparse-switch
.end method
