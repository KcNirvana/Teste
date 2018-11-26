.class public Lcom/miui/networkassistant/config/CommonConfig;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final COMMON_CONFIG_FILE_NAME:Ljava/lang/String; = "common"

.field private static sInstance:Lcom/miui/networkassistant/config/CommonConfig;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/config/CommonConfig;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/miui/networkassistant/config/CommonConfig;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "common"

    invoke-static {v0, v1}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/config/CommonConfig;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/miui/networkassistant/config/CommonConfig;
    .locals 2

    const-class v1, Lcom/miui/networkassistant/config/CommonConfig;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/miui/networkassistant/config/CommonConfig;->sInstance:Lcom/miui/networkassistant/config/CommonConfig;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/networkassistant/config/CommonConfig;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/config/CommonConfig;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/miui/networkassistant/config/CommonConfig;->sInstance:Lcom/miui/networkassistant/config/CommonConfig;

    :cond_0
    sget-object v0, Lcom/miui/networkassistant/config/CommonConfig;->sInstance:Lcom/miui/networkassistant/config/CommonConfig;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public getCommonAnalyticsUpdateTime()J
    .locals 4

    iget-object v0, p0, Lcom/miui/networkassistant/config/CommonConfig;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v1, "common_analytics_update_time"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->load(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getDataRoamingWhiteListEnable()Z
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/config/CommonConfig;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v1, "firewall_roaming_whitelist_preconfig"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->load(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getDataUsageDailyAnalyticsUpdateTime()J
    .locals 4

    iget-object v0, p0, Lcom/miui/networkassistant/config/CommonConfig;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v1, "data_usage_daily_analytics_update_time"

    const-wide v2, 0x7fffffffffffffffL

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->load(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getFirewallMobilePreConfig()I
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/config/CommonConfig;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v1, "firewall_mobile_preconfig"

    sget v2, Lcom/miui/networkassistant/config/CommonPerConstants$DEFAULT;->FIREWALL_MOBILE_PRECONFIG_DEFAULT:I

    invoke-virtual {v0, v1, v2}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->load(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getFirewallWifiPreConfig()I
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/config/CommonConfig;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v1, "firewall_wifi_preconfig"

    sget v2, Lcom/miui/networkassistant/config/CommonPerConstants$DEFAULT;->FIREWALL_WIFI_PRECONFIG_DEFAULT:I

    invoke-virtual {v0, v1, v2}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->load(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getFirstEnterTrafficPurchaseDeclare()Z
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/config/CommonConfig;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v1, "first_enter_traffic_purchase_declare"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->load(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getLockScreenTrafficGuideNotifyCount()I
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/config/CommonConfig;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v1, "lock_screen_traffic_guide_notify_count"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->load(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getMiSimCloudData()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/config/CommonConfig;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v1, "mi_sim_cloud_data"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->load(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMiuiVpnInfos()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/config/CommonConfig;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v1, "miui_vpn_infos"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->load(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMobileDailyConnectedTime()J
    .locals 4

    iget-object v0, p0, Lcom/miui/networkassistant/config/CommonConfig;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v1, "mobile_daily_turn_on_time"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->load(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getNetworkExceptionUpdateTime()J
    .locals 4

    iget-object v0, p0, Lcom/miui/networkassistant/config/CommonConfig;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v1, "network_exception_update_time"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->load(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getPurchaseSmsNumber()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/config/CommonConfig;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v1, "purchase_sms_number"

    const-string/jumbo v2, "{\"maxVersion\":1,\"total\":14,\"items\":[{\"data\":\"106555062\"},{\"data\":\"10086\"},{\"data\":\"106581784\"},{\"data\":\"106903780000\"},{\"data\":\"106555604\"},{\"data\":\"10655123\"},{\"data\":\"10659800\"},{\"data\":\"106555064\"},{\"data\":\"10690529\"},{\"data\":\"10690570\"},{\"data\":\"10690233\"},{\"data\":\"10690030\"},{\"data\":\"10690689390721\"},{\"data\":\"10690094613533\"}],\"code\":0}"

    invoke-virtual {v0, v1, v2}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->load(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPurchaseSmsNumberUpdateTime()J
    .locals 4

    iget-object v0, p0, Lcom/miui/networkassistant/config/CommonConfig;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v1, "purchase_sms_number_update_time"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->load(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getSmsNumberReceiverUpdateTime()J
    .locals 4

    iget-object v0, p0, Lcom/miui/networkassistant/config/CommonConfig;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v1, "sms_number_receiver_update_time"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->load(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getTetheringDataUsageOverLimit()Z
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/config/CommonConfig;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v1, "tethering_data_usage_over_limit"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->load(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getTetheringLimitEnabled()Z
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/config/CommonConfig;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v1, "tethering_limit_enabled"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->load(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getTetheringLimitTraffic()J
    .locals 4

    iget-object v0, p0, Lcom/miui/networkassistant/config/CommonConfig;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v1, "tethering_limit_traffic"

    const-wide/32 v2, 0x3200000

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->load(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getTetheringOverLimitOptType()I
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/config/CommonConfig;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v1, "tethering_over_limit_opt_type"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->load(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getUploadMonthReportUpdateTime()J
    .locals 4

    iget-object v0, p0, Lcom/miui/networkassistant/config/CommonConfig;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v1, "upload_month_report_update_time"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->load(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getVpnState(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0, p1}, Lcom/miui/networkassistant/config/CommonConfig;->getVpnUserId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/miui/networkassistant/config/CommonConfig;->setVpnUserId(Ljava/lang/String;Ljava/lang/String;)Z

    invoke-virtual {p0, p1, p2, v3}, Lcom/miui/networkassistant/config/CommonConfig;->setVpnState(Ljava/lang/String;Ljava/lang/String;I)Z

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/config/CommonConfig;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "miui_vpn_state_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->load(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getVpnUserId(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/config/CommonConfig;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "miui_vpn_userid_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->load(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWifiDailyConnectedTime()J
    .locals 4

    iget-object v0, p0, Lcom/miui/networkassistant/config/CommonConfig;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v1, "wifi_daily_turn_on_time"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->load(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public isCmccWebCorrectAvailable()Z
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/config/CommonConfig;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v1, "cmcc_web_correct_available"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->load(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isFloatNotificationEnabled()Z
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/config/CommonConfig;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v1, "float_notification_enabled"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->load(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isLockScreenTrafficMonitorEnable()Z
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/config/CommonConfig;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v1, "lock_screen_traffic_monitor"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->load(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isLockScreenTrafficOpened()Z
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/config/CommonConfig;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v1, "lock_screen_traffic_opened"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->load(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isNetworkDiagnosticsFloatNotificationEnabled()Z
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/config/CommonConfig;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v1, "netowrk_diagnostics_float_notification_enabled"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->load(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isNoMoreAskRoaming()Z
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/config/CommonConfig;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v1, "no_more_ask_roaming"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->load(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isRoamingAppWhiteListDefault()Z
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/config/CommonConfig;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v1, "roaming_app_white_list_init"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->load(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isRoamingWhiteListNotifyEnable()Z
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/config/CommonConfig;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v1, "roaming_white_list_notify_enable"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->load(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isStatusBarShowTrafficUpdate()Z
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/config/CommonConfig;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v1, "status_bar_show_traffic"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->load(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public setCmccWebCorrectAvailable(Z)Z
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/config/CommonConfig;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v1, "cmcc_web_correct_available"

    invoke-virtual {v0, v1, p1}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->save(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public setCommonAnalyticUpdateTime(J)Z
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/config/CommonConfig;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v1, "common_analytics_update_time"

    invoke-virtual {v0, v1, p1, p2}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->save(Ljava/lang/String;J)Z

    move-result v0

    return v0
.end method

.method public setDataRoamingWhiteListEnable(Z)Z
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/config/CommonConfig;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v1, "firewall_roaming_whitelist_preconfig"

    invoke-virtual {v0, v1, p1}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->save(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public setDataUsageDailyAnalyticUpdateTime(J)Z
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/config/CommonConfig;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v1, "data_usage_daily_analytics_update_time"

    invoke-virtual {v0, v1, p1, p2}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->save(Ljava/lang/String;J)Z

    move-result v0

    return v0
.end method

.method public setFirewallWifiPreConfig(I)Z
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/config/CommonConfig;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v1, "firewall_wifi_preconfig"

    invoke-virtual {v0, v1, p1}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->save(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public setFirstEnterTrafficPurchaseDeclare(Z)Z
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/config/CommonConfig;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v1, "first_enter_traffic_purchase_declare"

    invoke-virtual {v0, v1, p1}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->save(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public setFloatNotificationEnabled(Z)Z
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/config/CommonConfig;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v1, "float_notification_enabled"

    invoke-virtual {v0, v1, p1}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->save(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public setLockScreenTrafficGuideNotifyCount(I)Z
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/config/CommonConfig;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v1, "lock_screen_traffic_guide_notify_count"

    invoke-virtual {v0, v1, p1}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->save(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public setLockScreenTrafficMonitorEnable(Z)Z
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/config/CommonConfig;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v1, "lock_screen_traffic_monitor"

    invoke-virtual {v0, v1, p1}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->save(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public setLockScreenTrafficOpened(Z)Z
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/config/CommonConfig;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v1, "lock_screen_traffic_opened"

    invoke-virtual {v0, v1, p1}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->save(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public setMiSimCloudData(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/config/CommonConfig;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v1, "mi_sim_cloud_data"

    invoke-virtual {v0, v1, p1}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->save(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setMiuiVpnInfos(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/config/CommonConfig;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v1, "miui_vpn_infos"

    invoke-virtual {v0, v1, p1}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->save(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setMobileDailyConnectedTime(J)Z
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/config/CommonConfig;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v1, "mobile_daily_turn_on_time"

    invoke-virtual {v0, v1, p1, p2}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->save(Ljava/lang/String;J)Z

    move-result v0

    return v0
.end method

.method public setNetworkDiagnosticsFloatNotificationEnabled(Z)Z
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/config/CommonConfig;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v1, "netowrk_diagnostics_float_notification_enabled"

    invoke-virtual {v0, v1, p1}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->save(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public setNetworkExceptionUpdateTime(J)Z
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/config/CommonConfig;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v1, "network_exception_update_time"

    invoke-virtual {v0, v1, p1, p2}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->save(Ljava/lang/String;J)Z

    move-result v0

    return v0
.end method

.method public setNoMoreAskRoaming(Z)Z
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/config/CommonConfig;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v1, "no_more_ask_roaming"

    invoke-virtual {v0, v1, p1}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->save(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public setPurchaseSmsNumber(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/config/CommonConfig;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v1, "purchase_sms_number"

    invoke-virtual {v0, v1, p1}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->save(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setPurchaseSmsNumberUpdateTime(J)Z
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/config/CommonConfig;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v1, "purchase_sms_number_update_time"

    invoke-virtual {v0, v1, p1, p2}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->save(Ljava/lang/String;J)Z

    move-result v0

    return v0
.end method

.method public setRoamingAppWhiteListDefault(Z)Z
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/config/CommonConfig;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v1, "roaming_app_white_list_init"

    invoke-virtual {v0, v1, p1}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->save(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public setRoamingWhiteListNotifyEnable(Z)Z
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/config/CommonConfig;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v1, "roaming_white_list_notify_enable"

    invoke-virtual {v0, v1, p1}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->save(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public setSmsNumberReceiverUpdateTime(J)Z
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/config/CommonConfig;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v1, "sms_number_receiver_update_time"

    invoke-virtual {v0, v1, p1, p2}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->save(Ljava/lang/String;J)Z

    move-result v0

    return v0
.end method

.method public setStatusBarShowTrafficUpdate(Z)Z
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/config/CommonConfig;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v1, "status_bar_show_traffic"

    invoke-virtual {v0, v1, p1}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->save(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public setTetheringDataUsageOverLimit(Z)Z
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/config/CommonConfig;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v1, "tethering_data_usage_over_limit"

    invoke-virtual {v0, v1, p1}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->save(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public setTetheringLimitEnabled(Z)Z
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/config/CommonConfig;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v1, "tethering_limit_enabled"

    invoke-virtual {v0, v1, p1}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->save(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public setTetheringLimitTraffic(J)Z
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/config/CommonConfig;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v1, "tethering_limit_traffic"

    invoke-virtual {v0, v1, p1, p2}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->save(Ljava/lang/String;J)Z

    move-result v0

    return v0
.end method

.method public setTetheringOverLimitOptType(I)Z
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/config/CommonConfig;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v1, "tethering_over_limit_opt_type"

    invoke-virtual {v0, v1, p1}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->save(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public setUploadMonthReportUpdateTime(J)Z
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/config/CommonConfig;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v1, "upload_month_report_update_time"

    invoke-virtual {v0, v1, p1, p2}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->save(Ljava/lang/String;J)Z

    move-result v0

    return v0
.end method

.method public setVpnState(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 3

    invoke-virtual {p0, p1}, Lcom/miui/networkassistant/config/CommonConfig;->getVpnUserId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/miui/networkassistant/config/CommonConfig;->setVpnUserId(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/config/CommonConfig;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "miui_vpn_state_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->save(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public setVpnUserId(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/config/CommonConfig;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "miui_vpn_userid_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->save(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setWifiDailyConnectedTime(J)Z
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/config/CommonConfig;->mSpHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    const-string/jumbo v1, "wifi_daily_turn_on_time"

    invoke-virtual {v0, v1, p1, p2}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->save(Ljava/lang/String;J)Z

    move-result v0

    return v0
.end method
