.class public Lcom/miui/networkassistant/utils/AnalyticsHelper;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final CATEGORY_NAME:Ljava/lang/String; = "com.miui.networkassistant"

.field private static final CATEGORY_NAME_NETWORK_DIAGNOSTICS:Ljava/lang/String; = "NetworkDiagnostics"

.field private static final NETWORK_ASSISTANT_ACTIVE:Ljava/lang/String; = "networkassistant_active"

.field private static final TRACK_ID_SMS_REPORT:Ljava/lang/String; = "sms_report"

.field public static final TRACK_ITEM_FIREWALL:Ljava/lang/String; = "net_control"

.field public static final TRACK_ITEM_LONG_CORRECTION_SETTING:Ljava/lang/String; = "flow_correction_hold"

.field public static final TRACK_ITEM_PACKAGE_SETTING:Ljava/lang/String; = "flow_set"

.field public static final TRACK_ITEM_SETTING:Ljava/lang/String; = "settings"

.field public static final TRACK_ITEM_TRAFFIC_CORRECTION:Ljava/lang/String; = "flow_correction"

.field public static final TRACK_ITEM_TRAFFIC_PURCHASE:Ljava/lang/String; = "flow_buy"

.field public static final TRACK_ITEM_TRAFFIC_SORTED:Ljava/lang/String; = "flow_list"

.field private static final TRACK_KEY_ADDR_FAMILY_CN:Ljava/lang/String; = "addrFamily_CN"

.field private static final TRACK_KEY_ADDR_FAMILY_GLOBAL:Ljava/lang/String; = "addrFamily_CN"

.field private static final TRACK_KEY_ALLOW:Ljava/lang/String; = "allow"

.field public static final TRACK_KEY_AUTO_CORRECTION:Ljava/lang/String; = "toggle_auto_correction"

.field public static final TRACK_KEY_AUTO_MODIFY_PACKAGE:Ljava/lang/String; = "toggle_autochange_flow"

.field private static final TRACK_KEY_CHANGE_MOBILE_FIREWALL:Ljava/lang/String; = "change_mobile_firewall"

.field private static final TRACK_KEY_CHANGE_WLAN_FIREWALL:Ljava/lang/String; = "change_wlan_firewall"

.field private static final TRACK_KEY_CMCC_WEB_CORRECT:Ljava/lang/String; = "cmcc_web_correct"

.field private static final TRACK_KEY_CMCC_WEB_CORRECT_STATS:Ljava/lang/String; = "cmcc_web_correct_stats"

.field private static final TRACK_KEY_CORRECTION_SMS:Ljava/lang/String; = "flow_correction_sms"

.field private static final TRACK_KEY_CORRECTION_SMS_BILL:Ljava/lang/String; = "flow_correction_sms_bill"

.field private static final TRACK_KEY_CORRECTION_SMS_CALLTIME:Ljava/lang/String; = "flow_correction_sms_calltime"

.field private static final TRACK_KEY_CORRECTION_WEB:Ljava/lang/String; = "flow_correction_net"

.field private static final TRACK_KEY_CUSTOMIZED_SMS:Ljava/lang/String; = "change_correction_order"

.field public static final TRACK_KEY_DAILY_CARD:Ljava/lang/String; = "daily_card"

.field public static final TRACK_KEY_DAILY_FLOW_USE:Ljava/lang/String; = "daily_flow_use"

.field public static final TRACK_KEY_DAILY_LIMIT:Ljava/lang/String; = "toggle_dailyflow_limit"

.field public static final TRACK_KEY_DATA_ROAMING_DAILY_LIMIT_SETTING:Ljava/lang/String; = "toggle_overseas_daily_limit"

.field public static final TRACK_KEY_DATA_ROAMING_SETTING:Ljava/lang/String; = "toggle_overseas_control"

.field public static final TRACK_KEY_DATA_USAGE_APP_IGNORE:Ljava/lang/String; = "flow_except_app"

.field private static final TRACK_KEY_DNSASSIGMENT:Ljava/lang/String; = "dnsAssignment"

.field public static final TRACK_KEY_DOUBLE_SIM:Ljava/lang/String; = "toggle_double_sim"

.field public static final TRACK_KEY_DOUBLE_SIM1_ENABLE:Ljava/lang/String; = "toggle_dailyflow_sim1"

.field public static final TRACK_KEY_DOUBLE_SIM1_VALUE:Ljava/lang/String; = "daily_flow_double_sim1"

.field public static final TRACK_KEY_DOUBLE_SIM2_ENABLE:Ljava/lang/String; = "toggle_dailyflow_sim2"

.field public static final TRACK_KEY_DOUBLE_SIM2_VALUE:Ljava/lang/String; = "daily_flow_double_sim2"

.field public static final TRACK_KEY_DOUBLE_SIM_TOTAL:Ljava/lang/String; = "daily_flow_double_sim1+2"

.field public static final TRACK_KEY_EXTRA_PACKAGE_SETTING:Ljava/lang/String; = "toggle_add_flow"

.field public static final TRACK_KEY_EXTRA_PACKAGE_SIZE:Ljava/lang/String; = "add_flow_size1"

.field public static final TRACK_KEY_LEISURE_PACKAGE_SETTING:Ljava/lang/String; = "toggle_idler_flow"

.field public static final TRACK_KEY_LEISURE_PACKAGE_SIZE:Ljava/lang/String; = "idler_flow_size1"

.field public static final TRACK_KEY_LOCK_SCREEN_SETTING:Ljava/lang/String; = "toggle_lockscreen_flow"

.field private static final TRACK_KEY_MAIN_BUTTON_CLICK:Ljava/lang/String; = "net_homepage_click"

.field public static final TRACK_KEY_NEW_INSTALL_APP_FIREWALL_MOBILE:Ljava/lang/String; = "toggle_newapp_data_allow"

.field public static final TRACK_KEY_NEW_INSTALL_APP_FIREWALL_WIFI:Ljava/lang/String; = "toggle_newapp_wlan_allow"

.field private static final TRACK_KEY_NOTIFICATION_SHOW:Ljava/lang/String; = "notification_show"

.field public static final TRACK_KEY_PACKAGE_START_DATE:Ljava/lang/String; = "daily_flow_startdate"

.field public static final TRACK_KEY_PACKAGE_STATUS_ENOUGH:Ljava/lang/String; = "enough"

.field public static final TRACK_KEY_PACKAGE_STATUS_EXCEED:Ljava/lang/String; = "exceed"

.field public static final TRACK_KEY_PACKAGE_STATUS_REACH:Ljava/lang/String; = "reach"

.field public static final TRACK_KEY_PACKAGE_WARNING_VALUE:Ljava/lang/String; = "daily_warning_value"

.field private static final TRACK_KEY_PARAM_CORRECTION:Ljava/lang/String; = "correction"

.field private static final TRACK_KEY_PARAM_CORRECTION_SMS:Ljava/lang/String; = "change"

.field private static final TRACK_KEY_PARAM_MODULE_NAME:Ljava/lang/String; = "module_click"

.field private static final TRACK_KEY_PING_RES_DIFF_SOCKET:Ljava/lang/String; = "pingResDiffSocket"

.field private static final TRACK_KEY_RESTRICT:Ljava/lang/String; = "restrict"

.field private static final TRACK_KEY_SHOW_CMCC_WEBSITE:Ljava/lang/String; = "show_cmcc_website"

.field public static final TRACK_KEY_SHOW_SPEED_STATUS_BAR:Ljava/lang/String; = "toggle_statusbar_netspeed"

.field public static final TRACK_KEY_SHOW_TRAFFIC_STATUS_BAR:Ljava/lang/String; = "toggle_notification_bar"

.field public static final TRACK_KEY_SINGLE_SIM:Ljava/lang/String; = "toggle_single_sim"

.field public static final TRACK_KEY_SINGLE_SIM_ENABLE:Ljava/lang/String; = "toggle_dailyflow_sim"

.field public static final TRACK_KEY_SINGLE_SIM_VALUE:Ljava/lang/String; = "daily_flow_single"

.field private static final TRACK_KEY_START:Ljava/lang/String; = "start"

.field private static final TRACK_KEY_STEP:Ljava/lang/String; = "step"

.field private static final TRACK_KEY_TRAFFIC_CORRECTION_RESULT:Ljava/lang/String; = "flow_correction"

.field public static final TRACK_KEY_TRAFFIC_OVER_LIMIT:Ljava/lang/String; = "toggle_daily_exceed_cutoff"

.field public static final TRACK_KEY_TRAFFIC_PURCHASE_SHOW:Ljava/lang/String; = "toggle_flowbuy_display"

.field private static final TRACK_KEY_TYPE:Ljava/lang/String; = "type"

.field public static final TRACK_PARAM_ALL_APP_ALLOW:Ljava/lang/String; = "all_allow"

.field public static final TRACK_PARAM_ALL_APP_BAN:Ljava/lang/String; = "all_ban"

.field private static final TRACK_PARAM_CORRECTION_CODE_ERROR:Ljava/lang/String; = "code_error"

.field private static final TRACK_PARAM_CORRECTION_GET_SMS_INSTRUCTION_FAILURE:Ljava/lang/String; = "get_sms_instruction_failure"

.field private static final TRACK_PARAM_CORRECTION_INVALID_SMS:Ljava/lang/String; = "invalid_sms"

.field private static final TRACK_PARAM_CORRECTION_PARSE_FAILURE:Ljava/lang/String; = "parse_failure"

.field private static final TRACK_PARAM_CORRECTION_SEND_FAILURE:Ljava/lang/String; = "send_failure"

.field private static final TRACK_PARAM_CORRECTION_SUCCESS:Ljava/lang/String; = "success"

.field private static final TRACK_PARAM_CORRECTION_TIMEOUT:Ljava/lang/String; = "timeout"

.field private static final TRACK_PARAM_CORRECTION_WEB_FAILED:Ljava/lang/String; = "web_failure"

.field public static final TRACK_PARAM_WHITE_LIST_ALLOW:Ljava/lang/String; = "white_list_allow"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getCorrectionParamValue(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const-string/jumbo v0, ""

    :goto_0
    return-object v0

    :pswitch_1
    const-string/jumbo v0, "success"

    goto :goto_0

    :pswitch_2
    const-string/jumbo v0, "code_error"

    goto :goto_0

    :pswitch_3
    const-string/jumbo v0, "send_failure"

    goto :goto_0

    :pswitch_4
    const-string/jumbo v0, "invalid_sms"

    goto :goto_0

    :pswitch_5
    const-string/jumbo v0, "parse_failure"

    goto :goto_0

    :pswitch_6
    const-string/jumbo v0, "get_sms_instruction_failure"

    goto :goto_0

    :pswitch_7
    const-string/jumbo v0, "timeout"

    goto :goto_0

    :pswitch_8
    const-string/jumbo v0, "web_failure"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_7
        :pswitch_5
        :pswitch_6
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static recordCalculateEvent(Ljava/lang/String;J)V
    .locals 3

    const-string/jumbo v0, "com.miui.networkassistant"

    const/4 v1, 0x0

    invoke-static {v0, p0, p1, p2, v1}, Lcom/miui/analytics/AnalyticsUtil;->recordCalculateEvent(Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)V

    return-void
.end method

.method public static recordCalculateEvent(Ljava/lang/String;JLjava/util/Map;)V
    .locals 1

    const-string/jumbo v0, "com.miui.networkassistant"

    invoke-static {v0, p0, p1, p2, p3}, Lcom/miui/analytics/AnalyticsUtil;->recordCalculateEvent(Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)V

    return-void
.end method

.method public static recordCountEvent(Ljava/lang/String;)V
    .locals 2

    const-string/jumbo v0, "com.miui.networkassistant"

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/miui/analytics/AnalyticsUtil;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static recordCountEvent(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1

    const-string/jumbo v0, "com.miui.networkassistant"

    invoke-static {v0, p0, p1}, Lcom/miui/analytics/AnalyticsUtil;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static recordNumericEvent(Ljava/lang/String;J)V
    .locals 1

    const-string/jumbo v0, "com.miui.networkassistant"

    invoke-static {v0, p0, p1, p2}, Lcom/miui/analytics/AnalyticsUtil;->recordNumericEvent(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public static recordStringPropertyEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "com.miui.networkassistant"

    invoke-static {v0, p0, p1}, Lcom/miui/analytics/AnalyticsUtil;->recordStringPropertyEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static trackActiveNetworkAssistant(Landroid/content/Context;)V
    .locals 1

    const-string/jumbo v0, "networkassistant_active"

    invoke-static {v0}, Lcom/miui/networkassistant/utils/AnalyticsHelper;->recordCountEvent(Ljava/lang/String;)V

    return-void
.end method

.method public static trackCmccWebCorrect(I)V
    .locals 4

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string/jumbo v1, "cmcc_web_correct_stats"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "cmcc_web_correct"

    invoke-static {v1, v0}, Lcom/miui/networkassistant/utils/AnalyticsHelper;->recordCountEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackCustomizedSms(Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection$TrafficConfig;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection$TrafficConfig;->getBrandId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection$TrafficConfig;->getProvinceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection$TrafficConfig;->getCityId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "change"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "change_correction_order"

    invoke-static {v1, v0}, Lcom/miui/networkassistant/utils/AnalyticsHelper;->recordCountEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackMainButtonClickCountEvent(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string/jumbo v1, "module_click"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "net_homepage_click"

    invoke-static {v1, v0}, Lcom/miui/networkassistant/utils/AnalyticsHelper;->recordCountEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackNetworkDiagnosticsCnAddrFamily(Ljava/util/Map;)V
    .locals 2

    const-string/jumbo v0, "NetworkDiagnostics"

    const-string/jumbo v1, "addrFamily_CN"

    invoke-static {v0, v1, p0}, Lcom/miui/analytics/AnalyticsUtil;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackNetworkDiagnosticsDnsAssigment(Ljava/util/Map;)V
    .locals 2

    const-string/jumbo v0, "NetworkDiagnostics"

    const-string/jumbo v1, "dnsAssignment"

    invoke-static {v0, v1, p0}, Lcom/miui/analytics/AnalyticsUtil;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackNetworkDiagnosticsGlobalAddrFamily(Ljava/util/Map;)V
    .locals 2

    const-string/jumbo v0, "NetworkDiagnostics"

    const-string/jumbo v1, "addrFamily_CN"

    invoke-static {v0, v1, p0}, Lcom/miui/analytics/AnalyticsUtil;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackNetworkDiagnosticsNotificationShow(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string/jumbo v1, "type"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "NetworkDiagnostics"

    const-string/jumbo v2, "notification_show"

    invoke-static {v1, v2, v0}, Lcom/miui/analytics/AnalyticsUtil;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackNetworkDiagnosticsPingResultDiffSocket(Ljava/util/Map;)V
    .locals 2

    const-string/jumbo v0, "NetworkDiagnostics"

    const-string/jumbo v1, "pingResDiffSocket"

    invoke-static {v0, v1, p0}, Lcom/miui/analytics/AnalyticsUtil;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackNetworkDiagnosticsStart()V
    .locals 3

    const-string/jumbo v0, "NetworkDiagnostics"

    const-string/jumbo v1, "start"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/miui/analytics/AnalyticsUtil;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackNetworkDiagnosticsStep(Ljava/util/Map;)V
    .locals 2

    const-string/jumbo v0, "NetworkDiagnostics"

    const-string/jumbo v1, "step"

    invoke-static {v0, v1, p0}, Lcom/miui/analytics/AnalyticsUtil;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackSetMobileFirewallRule(Ljava/lang/String;Z)V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p1, :cond_0

    const-string/jumbo v1, "restrict"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    const-string/jumbo v1, "com.miui.networkassistant"

    const-string/jumbo v2, "change_mobile_firewall"

    invoke-static {v1, v2, v0}, Lcom/miui/analytics/AnalyticsUtil;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void

    :cond_0
    const-string/jumbo v1, "allow"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static trackSetWlanFirewallRule(Ljava/lang/String;Z)V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p1, :cond_0

    const-string/jumbo v1, "restrict"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    const-string/jumbo v1, "com.miui.networkassistant"

    const-string/jumbo v2, "change_wlan_firewall"

    invoke-static {v1, v2, v0}, Lcom/miui/analytics/AnalyticsUtil;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void

    :cond_0
    const-string/jumbo v1, "allow"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static trackShowCmccWebsite()V
    .locals 1

    const-string/jumbo v0, "show_cmcc_website"

    invoke-static {v0}, Lcom/miui/networkassistant/utils/AnalyticsHelper;->recordCountEvent(Ljava/lang/String;)V

    return-void
.end method

.method public static trackSmsReport()V
    .locals 1

    const-string/jumbo v0, "sms_report"

    invoke-static {v0}, Lcom/miui/networkassistant/utils/AnalyticsHelper;->recordCountEvent(Ljava/lang/String;)V

    return-void
.end method

.method public static trackTrafficCorrectionResult(Lcom/miui/networkassistant/model/TrafficUsedStatus;)V
    .locals 3

    invoke-virtual {p0}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->getReturnCode()I

    move-result v0

    invoke-static {v0}, Lcom/miui/networkassistant/utils/AnalyticsHelper;->getCorrectionParamValue(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    const-string/jumbo v2, "correction"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "flow_correction"

    invoke-static {v0, v1}, Lcom/miui/networkassistant/utils/AnalyticsHelper;->recordCountEvent(Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public static trackTrafficSmsCorrection(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 4

    invoke-static {p2}, Lcom/miui/networkassistant/utils/AnalyticsHelper;->getCorrectionParamValue(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_0

    const-string/jumbo v0, "flow_correction_sms"

    invoke-static {v0, v1}, Lcom/miui/networkassistant/utils/AnalyticsHelper;->recordCountEvent(Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_1

    const-string/jumbo v0, "flow_correction_sms_bill"

    invoke-static {v0, v1}, Lcom/miui/networkassistant/utils/AnalyticsHelper;->recordCountEvent(Ljava/lang/String;Ljava/util/Map;)V

    :cond_1
    and-int/lit8 v0, p3, 0x4

    if-eqz v0, :cond_2

    const-string/jumbo v0, "flow_correction_sms_calltime"

    invoke-static {v0, v1}, Lcom/miui/networkassistant/utils/AnalyticsHelper;->recordCountEvent(Ljava/lang/String;Ljava/util/Map;)V

    :cond_2
    return-void
.end method

.method public static trackTrafficWebCorrection(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3

    new-instance v1, Ljava/util/HashMap;

    const/4 v0, 0x1

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(I)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "_"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    const-string/jumbo v0, "success"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "flow_correction_net"

    invoke-static {v0, v1}, Lcom/miui/networkassistant/utils/AnalyticsHelper;->recordCountEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void

    :cond_0
    const-string/jumbo v0, "failure"

    goto :goto_0
.end method
