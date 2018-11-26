.class public Lcom/miui/networkassistant/service/tm/TrackAnalyticsManager;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final MEGA:I = 0x100000


# instance fields
.field private mCommonConfig:Lcom/miui/networkassistant/config/CommonConfig;

.field private mContext:Landroid/content/Context;

.field private mDailyLastTrackTime:J

.field private mSimManager:[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

.field private mWeeklyLastTrackTime:J


# direct methods
.method public constructor <init>(Landroid/content/Context;[Lcom/miui/networkassistant/service/tm/TrafficSimManager;)V
    .locals 2

    const-wide/16 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v0, p0, Lcom/miui/networkassistant/service/tm/TrackAnalyticsManager;->mWeeklyLastTrackTime:J

    iput-wide v0, p0, Lcom/miui/networkassistant/service/tm/TrackAnalyticsManager;->mDailyLastTrackTime:J

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/service/tm/TrackAnalyticsManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/miui/networkassistant/service/tm/TrackAnalyticsManager;->mSimManager:[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrackAnalyticsManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/networkassistant/config/CommonConfig;->getInstance(Landroid/content/Context;)Lcom/miui/networkassistant/config/CommonConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/service/tm/TrackAnalyticsManager;->mCommonConfig:Lcom/miui/networkassistant/config/CommonConfig;

    return-void
.end method

.method private getDataUsageIgnoreEnable(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrackAnalyticsManager;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/miui/networkassistant/config/DataUsageIgnoreAppListConfig;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/miui/networkassistant/config/DataUsageIgnoreAppListConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/DataUsageIgnoreAppListConfig;->getIgnoreList()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getRoamingSettingState()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrackAnalyticsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "data_roaming"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrackAnalyticsManager;->mCommonConfig:Lcom/miui/networkassistant/config/CommonConfig;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/CommonConfig;->getDataRoamingWhiteListEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "white_list_allow"

    :goto_0
    return-object v0

    :cond_1
    const-string/jumbo v0, "all_allow"

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "all_ban"

    goto :goto_0
.end method

.method private isPackageEffective(J)Z
    .locals 5

    const/4 v0, 0x0

    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-lez v1, :cond_0

    const-wide v2, 0x1900000000L

    cmp-long v1, p1, v2

    if-gez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private trackActiveCardPackageState(I)V
    .locals 12

    const-wide/32 v10, 0x100000

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-wide/16 v8, 0x0

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrackAnalyticsManager;->mSimManager:[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getDataUsageTotal()J

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lcom/miui/networkassistant/service/tm/TrackAnalyticsManager;->isPackageEffective(J)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v3, "daily_warning_value"

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getDataUsageWarning()F

    move-result v4

    const/high16 v5, 0x42c80000    # 100.0f

    mul-float/2addr v4, v5

    float-to-long v4, v4

    invoke-static {v3, v4, v5}, Lcom/miui/networkassistant/utils/AnalyticsHelper;->recordCalculateEvent(Ljava/lang/String;J)V

    const-string/jumbo v3, "daily_flow_startdate"

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getMonthStart()I

    move-result v4

    int-to-long v4, v4

    invoke-static {v3, v4, v5}, Lcom/miui/networkassistant/utils/AnalyticsHelper;->recordCalculateEvent(Ljava/lang/String;J)V

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->isLeisureDataUsageEffective()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getLeisureDataUsageTotal()J

    move-result-wide v4

    const-string/jumbo v3, "toggle_idler_flow"

    cmp-long v0, v4, v8

    if-lez v0, :cond_2

    move v0, v1

    :goto_0
    int-to-long v6, v0

    invoke-static {v3, v6, v7}, Lcom/miui/networkassistant/utils/AnalyticsHelper;->recordNumericEvent(Ljava/lang/String;J)V

    const-string/jumbo v0, "idler_flow_size1"

    div-long/2addr v4, v10

    invoke-static {v0, v4, v5}, Lcom/miui/networkassistant/utils/AnalyticsHelper;->recordCalculateEvent(Ljava/lang/String;J)V

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrackAnalyticsManager;->mSimManager:[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->getCurrentMonthExtraPackage()J

    move-result-wide v4

    const-string/jumbo v0, "toggle_add_flow"

    cmp-long v3, v4, v8

    if-lez v3, :cond_3

    :goto_1
    int-to-long v2, v1

    invoke-static {v0, v2, v3}, Lcom/miui/networkassistant/utils/AnalyticsHelper;->recordNumericEvent(Ljava/lang/String;J)V

    cmp-long v0, v4, v8

    if-lez v0, :cond_1

    const-string/jumbo v0, "add_flow_size1"

    div-long v2, v4, v10

    invoke-static {v0, v2, v3}, Lcom/miui/networkassistant/utils/AnalyticsHelper;->recordCalculateEvent(Ljava/lang/String;J)V

    :cond_1
    return-void

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1
.end method

.method private trackDataUsageState(I)V
    .locals 6

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrackAnalyticsManager;->mSimManager:[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->getCurrentMonthTotalPackage()J

    move-result-wide v0

    iget-object v2, p0, Lcom/miui/networkassistant/service/tm/TrackAnalyticsManager;->mSimManager:[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    aget-object v2, v2, p1

    iget-object v2, v2, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-direct {p0, v0, v1}, Lcom/miui/networkassistant/service/tm/TrackAnalyticsManager;->isPackageEffective(J)Z

    move-result v3

    if-eqz v3, :cond_0

    long-to-float v3, v0

    invoke-virtual {v2}, Lcom/miui/networkassistant/config/SimUserInfo;->getDataUsageWarning()F

    move-result v2

    mul-float/2addr v2, v3

    float-to-long v2, v2

    iget-object v4, p0, Lcom/miui/networkassistant/service/tm/TrackAnalyticsManager;->mSimManager:[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    aget-object v4, v4, p1

    invoke-virtual {v4}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->getCorrectedNormalAndLeisureMonthTotalUsed()[J

    move-result-object v4

    const/4 v5, 0x0

    aget-wide v4, v4, v5

    cmp-long v0, v4, v0

    if-ltz v0, :cond_1

    const-string/jumbo v0, "exceed"

    :goto_0
    const-string/jumbo v1, "daily_flow_use"

    invoke-static {v1, v0}, Lcom/miui/networkassistant/utils/AnalyticsHelper;->recordStringPropertyEvent(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    cmp-long v0, v4, v2

    if-ltz v0, :cond_2

    const-string/jumbo v0, "reach"

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "enough"

    goto :goto_0
.end method

.method private trackDualCardPackageState()V
    .locals 12

    const-wide/16 v6, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    sget-boolean v0, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_DUAL_CARD:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrackAnalyticsManager;->mSimManager:[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->isSimInserted()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getDataUsageTotal()J

    move-result-wide v8

    add-long v4, v6, v8

    const-string/jumbo v3, "toggle_dailyflow_sim1"

    cmp-long v0, v8, v6

    if-lez v0, :cond_3

    move v0, v1

    :goto_0
    int-to-long v10, v0

    invoke-static {v3, v10, v11}, Lcom/miui/networkassistant/utils/AnalyticsHelper;->recordNumericEvent(Ljava/lang/String;J)V

    const-string/jumbo v0, "daily_flow_double_sim1"

    invoke-direct {p0, v0, v8, v9}, Lcom/miui/networkassistant/service/tm/TrackAnalyticsManager;->trackPackageSize(Ljava/lang/String;J)V

    move v0, v1

    :goto_1
    iget-object v3, p0, Lcom/miui/networkassistant/service/tm/TrackAnalyticsManager;->mSimManager:[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    aget-object v3, v3, v1

    iget-object v3, v3, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/miui/networkassistant/config/SimUserInfo;->isSimInserted()Z

    move-result v8

    if-eqz v8, :cond_0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v3}, Lcom/miui/networkassistant/config/SimUserInfo;->getDataUsageTotal()J

    move-result-wide v8

    add-long/2addr v4, v8

    const-string/jumbo v3, "toggle_dailyflow_sim2"

    cmp-long v6, v8, v6

    if-lez v6, :cond_4

    :goto_2
    int-to-long v6, v1

    invoke-static {v3, v6, v7}, Lcom/miui/networkassistant/utils/AnalyticsHelper;->recordNumericEvent(Ljava/lang/String;J)V

    const-string/jumbo v1, "daily_flow_double_sim2"

    invoke-direct {p0, v1, v8, v9}, Lcom/miui/networkassistant/service/tm/TrackAnalyticsManager;->trackPackageSize(Ljava/lang/String;J)V

    :cond_0
    const-string/jumbo v1, "toggle_double_sim"

    int-to-long v2, v0

    invoke-static {v1, v2, v3}, Lcom/miui/networkassistant/utils/AnalyticsHelper;->recordNumericEvent(Ljava/lang/String;J)V

    const-string/jumbo v0, "daily_flow_double_sim1+2"

    invoke-direct {p0, v0, v4, v5}, Lcom/miui/networkassistant/service/tm/TrackAnalyticsManager;->trackPackageSize(Ljava/lang/String;J)V

    :cond_1
    :goto_3
    return-void

    :cond_2
    move-wide v4, v6

    move v0, v2

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_0

    :cond_4
    move v1, v2

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrackAnalyticsManager;->mSimManager:[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    aget-object v0, v0, v2

    iget-object v3, v0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    const-string/jumbo v4, "toggle_single_sim"

    invoke-virtual {v3}, Lcom/miui/networkassistant/config/SimUserInfo;->isSimInserted()Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v1

    :goto_4
    int-to-long v8, v0

    invoke-static {v4, v8, v9}, Lcom/miui/networkassistant/utils/AnalyticsHelper;->recordNumericEvent(Ljava/lang/String;J)V

    invoke-virtual {v3}, Lcom/miui/networkassistant/config/SimUserInfo;->isSimInserted()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v3}, Lcom/miui/networkassistant/config/SimUserInfo;->getDataUsageTotal()J

    move-result-wide v4

    const-string/jumbo v0, "toggle_dailyflow_sim"

    cmp-long v3, v4, v6

    if-lez v3, :cond_7

    :goto_5
    int-to-long v2, v1

    invoke-static {v0, v2, v3}, Lcom/miui/networkassistant/utils/AnalyticsHelper;->recordNumericEvent(Ljava/lang/String;J)V

    const-string/jumbo v0, "daily_flow_single"

    invoke-direct {p0, v0, v4, v5}, Lcom/miui/networkassistant/service/tm/TrackAnalyticsManager;->trackPackageSize(Ljava/lang/String;J)V

    goto :goto_3

    :cond_6
    move v0, v2

    goto :goto_4

    :cond_7
    move v1, v2

    goto :goto_5

    :cond_8
    move-wide v4, v6

    move v0, v2

    goto :goto_1
.end method

.method private trackPackageSize(Ljava/lang/String;J)V
    .locals 2

    invoke-direct {p0, p2, p3}, Lcom/miui/networkassistant/service/tm/TrackAnalyticsManager;->isPackageEffective(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/32 v0, 0x100000

    div-long v0, p2, v0

    invoke-static {p1, v0, v1}, Lcom/miui/networkassistant/utils/AnalyticsHelper;->recordCalculateEvent(Ljava/lang/String;J)V

    :cond_0
    return-void
.end method

.method private trackSettingButtonState(I)V
    .locals 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrackAnalyticsManager;->mSimManager:[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    aget-object v0, v0, p1

    iget-object v3, v0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v3}, Lcom/miui/networkassistant/config/SimUserInfo;->isSimInserted()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v3}, Lcom/miui/networkassistant/config/SimUserInfo;->getImsi()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/networkassistant/service/tm/TrackAnalyticsManager;->getDataUsageIgnoreEnable(Ljava/lang/String;)Z

    move-result v0

    const-string/jumbo v4, "flow_except_app"

    if-eqz v0, :cond_3

    move v0, v1

    :goto_0
    int-to-long v6, v0

    invoke-static {v4, v6, v7}, Lcom/miui/networkassistant/utils/AnalyticsHelper;->recordNumericEvent(Ljava/lang/String;J)V

    const-string/jumbo v0, "toggle_overseas_control"

    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/TrackAnalyticsManager;->getRoamingSettingState()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/miui/networkassistant/utils/AnalyticsHelper;->recordStringPropertyEvent(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "toggle_overseas_daily_limit"

    invoke-virtual {v3}, Lcom/miui/networkassistant/config/SimUserInfo;->getRoamingDailyLimitEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    :goto_1
    int-to-long v6, v0

    invoke-static {v4, v6, v7}, Lcom/miui/networkassistant/utils/AnalyticsHelper;->recordNumericEvent(Ljava/lang/String;J)V

    :cond_0
    invoke-virtual {v3}, Lcom/miui/networkassistant/config/SimUserInfo;->isCorrectionEffective()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v4, "toggle_auto_correction"

    invoke-virtual {v3}, Lcom/miui/networkassistant/config/SimUserInfo;->isDataUsageAutoCorrectionEffective()Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    :goto_2
    int-to-long v6, v0

    invoke-static {v4, v6, v7}, Lcom/miui/networkassistant/utils/AnalyticsHelper;->recordNumericEvent(Ljava/lang/String;J)V

    const-string/jumbo v4, "toggle_autochange_flow"

    invoke-virtual {v3}, Lcom/miui/networkassistant/config/SimUserInfo;->isTrafficCorrectionAutoModify()Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v1

    :goto_3
    int-to-long v6, v0

    invoke-static {v4, v6, v7}, Lcom/miui/networkassistant/utils/AnalyticsHelper;->recordNumericEvent(Ljava/lang/String;J)V

    :cond_1
    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrackAnalyticsManager;->mSimManager:[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->getCurrentMonthTotalPackage()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-lez v0, :cond_2

    const-string/jumbo v4, "toggle_dailyflow_limit"

    invoke-virtual {v3}, Lcom/miui/networkassistant/config/SimUserInfo;->getDailyLimitEnabled()Z

    move-result v0

    if-eqz v0, :cond_7

    move v0, v1

    :goto_4
    int-to-long v6, v0

    invoke-static {v4, v6, v7}, Lcom/miui/networkassistant/utils/AnalyticsHelper;->recordNumericEvent(Ljava/lang/String;J)V

    const-string/jumbo v4, "toggle_lockscreen_flow"

    invoke-virtual {v3}, Lcom/miui/networkassistant/config/SimUserInfo;->isLockScreenTrafficEnable()Z

    move-result v0

    if-eqz v0, :cond_8

    move v0, v1

    :goto_5
    int-to-long v6, v0

    invoke-static {v4, v6, v7}, Lcom/miui/networkassistant/utils/AnalyticsHelper;->recordNumericEvent(Ljava/lang/String;J)V

    const-string/jumbo v4, "toggle_daily_exceed_cutoff"

    invoke-virtual {v3}, Lcom/miui/networkassistant/config/SimUserInfo;->isDataUsageOverLimitStopNetwork()Z

    move-result v0

    if-eqz v0, :cond_9

    move v0, v1

    :goto_6
    int-to-long v6, v0

    invoke-static {v4, v6, v7}, Lcom/miui/networkassistant/utils/AnalyticsHelper;->recordNumericEvent(Ljava/lang/String;J)V

    :cond_2
    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrackAnalyticsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v4, "status_bar_show_network_assistant"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const-string/jumbo v4, "toggle_notification_bar"

    int-to-long v6, v0

    invoke-static {v4, v6, v7}, Lcom/miui/networkassistant/utils/AnalyticsHelper;->recordNumericEvent(Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrackAnalyticsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v4, "status_bar_show_network_speed"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const-string/jumbo v4, "toggle_statusbar_netspeed"

    int-to-long v6, v0

    invoke-static {v4, v6, v7}, Lcom/miui/networkassistant/utils/AnalyticsHelper;->recordNumericEvent(Ljava/lang/String;J)V

    const-string/jumbo v4, "toggle_newapp_data_allow"

    sget-object v0, Lcom/miui/networkassistant/model/FirewallRule;->Allow:Lcom/miui/networkassistant/model/FirewallRule;

    invoke-virtual {v0}, Lcom/miui/networkassistant/model/FirewallRule;->value()I

    move-result v0

    iget-object v5, p0, Lcom/miui/networkassistant/service/tm/TrackAnalyticsManager;->mCommonConfig:Lcom/miui/networkassistant/config/CommonConfig;

    invoke-virtual {v5}, Lcom/miui/networkassistant/config/CommonConfig;->getFirewallMobilePreConfig()I

    move-result v5

    if-ne v0, v5, :cond_a

    move v0, v1

    :goto_7
    int-to-long v6, v0

    invoke-static {v4, v6, v7}, Lcom/miui/networkassistant/utils/AnalyticsHelper;->recordNumericEvent(Ljava/lang/String;J)V

    const-string/jumbo v4, "toggle_newapp_wlan_allow"

    sget-object v0, Lcom/miui/networkassistant/model/FirewallRule;->Allow:Lcom/miui/networkassistant/model/FirewallRule;

    invoke-virtual {v0}, Lcom/miui/networkassistant/model/FirewallRule;->value()I

    move-result v0

    iget-object v5, p0, Lcom/miui/networkassistant/service/tm/TrackAnalyticsManager;->mCommonConfig:Lcom/miui/networkassistant/config/CommonConfig;

    invoke-virtual {v5}, Lcom/miui/networkassistant/config/CommonConfig;->getFirewallWifiPreConfig()I

    move-result v5

    if-ne v0, v5, :cond_b

    move v0, v1

    :goto_8
    int-to-long v6, v0

    invoke-static {v4, v6, v7}, Lcom/miui/networkassistant/utils/AnalyticsHelper;->recordNumericEvent(Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrackAnalyticsManager;->mContext:Landroid/content/Context;

    invoke-static {v0, v3, v2}, Lcom/miui/networkassistant/traffic/purchase/CooperationManager;->isTrafficPurchaseAvailable(Landroid/content/Context;Lcom/miui/networkassistant/config/SimUserInfo;Z)Z

    move-result v0

    const-string/jumbo v4, "toggle_flowbuy_display"

    if-eqz v0, :cond_c

    move v0, v1

    :goto_9
    int-to-long v6, v0

    invoke-static {v4, v6, v7}, Lcom/miui/networkassistant/utils/AnalyticsHelper;->recordNumericEvent(Ljava/lang/String;J)V

    invoke-virtual {v3}, Lcom/miui/networkassistant/config/SimUserInfo;->isDailyUsedCardEffective()Z

    move-result v0

    const-string/jumbo v3, "daily_card"

    if-eqz v0, :cond_d

    :goto_a
    int-to-long v0, v1

    invoke-static {v3, v0, v1}, Lcom/miui/networkassistant/utils/AnalyticsHelper;->recordNumericEvent(Ljava/lang/String;J)V

    return-void

    :cond_3
    move v0, v2

    goto/16 :goto_0

    :cond_4
    move v0, v2

    goto/16 :goto_1

    :cond_5
    move v0, v2

    goto/16 :goto_2

    :cond_6
    move v0, v2

    goto/16 :goto_3

    :cond_7
    move v0, v2

    goto/16 :goto_4

    :cond_8
    move v0, v2

    goto/16 :goto_5

    :cond_9
    move v0, v2

    goto/16 :goto_6

    :cond_a
    move v0, v2

    goto :goto_7

    :cond_b
    move v0, v2

    goto :goto_8

    :cond_c
    move v0, v2

    goto :goto_9

    :cond_d
    move v1, v2

    goto :goto_a
.end method


# virtual methods
.method trackAnalyticDaily(I)V
    .locals 6

    iget-wide v0, p0, Lcom/miui/networkassistant/service/tm/TrackAnalyticsManager;->mDailyLastTrackTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrackAnalyticsManager;->mCommonConfig:Lcom/miui/networkassistant/config/CommonConfig;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/CommonConfig;->getDataUsageDailyAnalyticsUpdateTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/networkassistant/service/tm/TrackAnalyticsManager;->mDailyLastTrackTime:J

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/miui/networkassistant/service/tm/TrackAnalyticsManager;->mDailyLastTrackTime:J

    const-wide/32 v4, 0x5265c00

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    iput-wide v0, p0, Lcom/miui/networkassistant/service/tm/TrackAnalyticsManager;->mDailyLastTrackTime:J

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/service/tm/TrackAnalyticsManager;->trackDataUsageState(I)V

    iget-object v2, p0, Lcom/miui/networkassistant/service/tm/TrackAnalyticsManager;->mCommonConfig:Lcom/miui/networkassistant/config/CommonConfig;

    invoke-virtual {v2, v0, v1}, Lcom/miui/networkassistant/config/CommonConfig;->setDataUsageDailyAnalyticUpdateTime(J)Z

    :cond_1
    return-void
.end method

.method trackAnalyticsWeekly(I)V
    .locals 6

    iget-wide v0, p0, Lcom/miui/networkassistant/service/tm/TrackAnalyticsManager;->mWeeklyLastTrackTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrackAnalyticsManager;->mCommonConfig:Lcom/miui/networkassistant/config/CommonConfig;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/CommonConfig;->getCommonAnalyticsUpdateTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/networkassistant/service/tm/TrackAnalyticsManager;->mWeeklyLastTrackTime:J

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/miui/networkassistant/service/tm/TrackAnalyticsManager;->mWeeklyLastTrackTime:J

    const-wide/32 v4, 0x240c8400

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/miui/networkassistant/service/tm/TrackAnalyticsManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/miui/common/network/f;->aLT(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    iput-wide v0, p0, Lcom/miui/networkassistant/service/tm/TrackAnalyticsManager;->mWeeklyLastTrackTime:J

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/service/tm/TrackAnalyticsManager;->trackActiveCardPackageState(I)V

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/service/tm/TrackAnalyticsManager;->trackSettingButtonState(I)V

    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/TrackAnalyticsManager;->trackDualCardPackageState()V

    invoke-static {}, Lcom/miui/analytics/AnalyticsUtil;->triggerUpload()V

    iget-object v2, p0, Lcom/miui/networkassistant/service/tm/TrackAnalyticsManager;->mCommonConfig:Lcom/miui/networkassistant/config/CommonConfig;

    invoke-virtual {v2, v0, v1}, Lcom/miui/networkassistant/config/CommonConfig;->setCommonAnalyticUpdateTime(J)Z

    :cond_1
    return-void
.end method
