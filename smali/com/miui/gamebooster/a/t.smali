.class public Lcom/miui/gamebooster/a/t;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static gA(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string/jumbo v1, "gamebooster_module_click"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "com.miui.gamebooster"

    const-string/jumbo v2, "gb_result_action_game"

    invoke-static {v1, v2, v0}, Lcom/miui/analytics/AnalyticsUtil;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static gB(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string/jumbo v1, "gamebooster_module_show"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "com.miui.gamebooster"

    const-string/jumbo v2, "gb_result_action_comment"

    invoke-static {v1, v2, v0}, Lcom/miui/analytics/AnalyticsUtil;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const-string/jumbo v0, "comment"

    invoke-static {v0}, Lcom/miui/gamebooster/a/t;->hv(Ljava/lang/String;)V

    return-void
.end method

.method public static gC(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "com.miui.gamebooster"

    const-string/jumbo v2, "game_noti_show_click"

    invoke-static {v1, v2, v0}, Lcom/miui/analytics/AnalyticsUtil;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static gD(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string/jumbo v1, "gamebooster_module_show"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "com.miui.gamebooster"

    const-string/jumbo v2, "gb_result_action_pic"

    invoke-static {v1, v2, v0}, Lcom/miui/analytics/AnalyticsUtil;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const-string/jumbo v0, "pic"

    invoke-static {v0}, Lcom/miui/gamebooster/a/t;->hv(Ljava/lang/String;)V

    return-void
.end method

.method public static gE(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "com.miui.gamebooster"

    const-string/jumbo v2, "game_sign_in_page"

    invoke-static {v1, v2, v0}, Lcom/miui/analytics/AnalyticsUtil;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static gF(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "com.miui.gamebooster"

    const-string/jumbo v2, "game_ad_click"

    invoke-static {v1, v2, v0}, Lcom/miui/analytics/AnalyticsUtil;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static gG(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "com.miui.gamebooster"

    const-string/jumbo v2, "game_homepage_action"

    invoke-static {v1, v2, v0}, Lcom/miui/analytics/AnalyticsUtil;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static gH(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string/jumbo v1, "gamebooster_module_show"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "com.miui.gamebooster"

    const-string/jumbo v2, "gb_result_action_video"

    invoke-static {v1, v2, v0}, Lcom/miui/analytics/AnalyticsUtil;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const-string/jumbo v0, "video"

    invoke-static {v0}, Lcom/miui/gamebooster/a/t;->hv(Ljava/lang/String;)V

    return-void
.end method

.method public static gI(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "com.miui.gamebooster"

    const-string/jumbo v2, "game_user_current_state"

    invoke-static {v1, v2, v0}, Lcom/miui/analytics/AnalyticsUtil;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static gJ(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "com.miui.gamebooster"

    const-string/jumbo v2, "game_network_activity_document"

    invoke-static {v1, v2, v0}, Lcom/miui/analytics/AnalyticsUtil;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static gK(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    const/4 v1, 0x0

    const-string/jumbo v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "android_id"

    invoke-static {v0, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x8

    if-le v3, v4, :cond_0

    sget-object v1, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/gamebooster/a/t;->hi(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    const-string/jumbo v3, "GameBooster.Analy"

    const-string/jumbo v4, "getDeviceId error "

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    goto :goto_0
.end method

.method public static gL(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "com.miui.gamebooster"

    const-string/jumbo v2, "game_online_games_click"

    invoke-static {v1, v2, v0}, Lcom/miui/analytics/AnalyticsUtil;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static gM(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "com.miui.gamebooster"

    invoke-static {v0, p0}, Lcom/miui/analytics/AnalyticsUtil;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static gN(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "com.miui.gamebooster"

    const-string/jumbo v2, "game_homepage_sign_in_click"

    invoke-static {v1, v2, v0}, Lcom/miui/analytics/AnalyticsUtil;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static gO(J)V
    .locals 2

    const-string/jumbo v0, "com.miui.gamebooster"

    const-string/jumbo v1, "game_toggle_antispam_1_fix"

    invoke-static {v0, v1, p0, p1}, Lcom/miui/analytics/AnalyticsUtil;->recordNumericEvent(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public static gP(J)V
    .locals 2

    const-string/jumbo v0, "com.miui.gamebooster"

    const-string/jumbo v1, "game_toggle_anti_false_touch_1_fix"

    invoke-static {v0, v1, p0, p1}, Lcom/miui/analytics/AnalyticsUtil;->recordNumericEvent(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public static gQ(J)V
    .locals 2

    const-string/jumbo v0, "com.miui.gamebooster"

    const-string/jumbo v1, "game_toggle_call_auto_handsfree"

    invoke-static {v0, v1, p0, p1}, Lcom/miui/analytics/AnalyticsUtil;->recordNumericEvent(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public static gR(J)V
    .locals 2

    const-string/jumbo v0, "com.miui.gamebooster"

    const-string/jumbo v1, "game_toggle_cpubooster_1_fix"

    invoke-static {v0, v1, p0, p1}, Lcom/miui/analytics/AnalyticsUtil;->recordNumericEvent(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public static gS(J)V
    .locals 2

    const-string/jumbo v0, "com.miui.gamebooster"

    const-string/jumbo v1, "game_toggle_disable_sync_1_fix"

    invoke-static {v0, v1, p0, p1}, Lcom/miui/analytics/AnalyticsUtil;->recordNumericEvent(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public static gT(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "com.miui.gamebooster"

    const-string/jumbo v2, "game_homepage_view"

    invoke-static {v1, v2, v0}, Lcom/miui/analytics/AnalyticsUtil;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static gU(J)V
    .locals 2

    const-string/jumbo v0, "com.miui.gamebooster"

    const-string/jumbo v1, "game_box_toggle"

    invoke-static {v0, v1, p0, p1}, Lcom/miui/analytics/AnalyticsUtil;->recordNumericEvent(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public static gV(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "com.miui.gamebooster"

    const-string/jumbo v2, "game_first_guide_window"

    invoke-static {v1, v2, v0}, Lcom/miui/analytics/AnalyticsUtil;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static gW(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "com.miui.gamebooster"

    const-string/jumbo v2, "game_network_activity_window"

    invoke-static {v1, v2, v0}, Lcom/miui/analytics/AnalyticsUtil;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static gX(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "com.miui.gamebooster"

    const-string/jumbo v2, "home_game_network_activity_window"

    invoke-static {v1, v2, v0}, Lcom/miui/analytics/AnalyticsUtil;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static gY(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "com.miui.gamebooster"

    const-string/jumbo v2, "game_network_speed_due"

    invoke-static {v1, v2, v0}, Lcom/miui/analytics/AnalyticsUtil;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static gZ(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "com.miui.gamebooster"

    const-string/jumbo v2, "home_game_network_speed_due"

    invoke-static {v1, v2, v0}, Lcom/miui/analytics/AnalyticsUtil;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static gx(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string/jumbo v1, "gamebooster_module_click"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "com.miui.gamebooster"

    const-string/jumbo v2, "gb_result_action_pic"

    invoke-static {v1, v2, v0}, Lcom/miui/analytics/AnalyticsUtil;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const-string/jumbo v0, "pic"

    invoke-static {v0}, Lcom/miui/gamebooster/a/t;->ht(Ljava/lang/String;)V

    return-void
.end method

.method public static gy(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string/jumbo v1, "gamebooster_module_click"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "com.miui.gamebooster"

    const-string/jumbo v2, "gb_result_action_comment"

    invoke-static {v1, v2, v0}, Lcom/miui/analytics/AnalyticsUtil;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const-string/jumbo v0, "comment"

    invoke-static {v0}, Lcom/miui/gamebooster/a/t;->ht(Ljava/lang/String;)V

    return-void
.end method

.method public static gz(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string/jumbo v1, "gamebooster_module_click"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "com.miui.gamebooster"

    const-string/jumbo v2, "gb_result_action_video"

    invoke-static {v1, v2, v0}, Lcom/miui/analytics/AnalyticsUtil;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const-string/jumbo v0, "video"

    invoke-static {v0}, Lcom/miui/gamebooster/a/t;->ht(Ljava/lang/String;)V

    return-void
.end method

.method public static ha(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "com.miui.gamebooster"

    const-string/jumbo v2, "game_network_speed_free"

    invoke-static {v1, v2, v0}, Lcom/miui/analytics/AnalyticsUtil;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static hb(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "com.miui.gamebooster"

    const-string/jumbo v2, "home_game_network_speed_free"

    invoke-static {v1, v2, v0}, Lcom/miui/analytics/AnalyticsUtil;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static hc(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "com.miui.gamebooster"

    const-string/jumbo v2, "game_network_speed_open"

    invoke-static {v1, v2, v0}, Lcom/miui/analytics/AnalyticsUtil;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static hd(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "com.miui.gamebooster"

    const-string/jumbo v2, "game_network_speed_overdue"

    invoke-static {v1, v2, v0}, Lcom/miui/analytics/AnalyticsUtil;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static he(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "com.miui.gamebooster"

    const-string/jumbo v2, "home_game_network_speed_overdue"

    invoke-static {v1, v2, v0}, Lcom/miui/analytics/AnalyticsUtil;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static hf(J)V
    .locals 2

    const-string/jumbo v0, "com.miui.gamebooster"

    const-string/jumbo v1, "game_toggle_sign_in"

    invoke-static {v0, v1, p0, p1}, Lcom/miui/analytics/AnalyticsUtil;->recordNumericEvent(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public static hg(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "com.miui.gamebooster"

    const-string/jumbo v2, "game_wlan_open_remind"

    invoke-static {v1, v2, v0}, Lcom/miui/analytics/AnalyticsUtil;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static hh(J)V
    .locals 4

    const-string/jumbo v0, "com.miui.gamebooster"

    const-string/jumbo v1, "game_games_num_1"

    const/4 v2, 0x0

    invoke-static {v0, v1, p0, p1, v2}, Lcom/miui/analytics/AnalyticsUtil;->recordCalculateEvent(Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)V

    return-void
.end method

.method private static hi(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    :try_start_0
    const-string/jumbo v0, "SHA1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    const-string/jumbo v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    new-instance v1, Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    const/4 v2, 0x1

    invoke-direct {v1, v2, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    const-string/jumbo v0, "%1$032X"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    return-object p0

    :cond_0
    return-object v0
.end method

.method public static hj(J)V
    .locals 2

    const-string/jumbo v0, "com.miui.gamebooster"

    const-string/jumbo v1, "game_has_open_gamebooster"

    invoke-static {v0, v1, p0, p1}, Lcom/miui/analytics/AnalyticsUtil;->recordNumericEvent(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public static hk(J)V
    .locals 2

    const-string/jumbo v0, "com.miui.gamebooster"

    const-string/jumbo v1, "game_toggle_net_protect_1_fix"

    invoke-static {v0, v1, p0, p1}, Lcom/miui/analytics/AnalyticsUtil;->recordNumericEvent(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public static hl(J)V
    .locals 2

    const-string/jumbo v0, "com.miui.gamebooster"

    const-string/jumbo v1, "game_toggle_network_change_protect"

    invoke-static {v0, v1, p0, p1}, Lcom/miui/analytics/AnalyticsUtil;->recordNumericEvent(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public static hm(J)V
    .locals 2

    const-string/jumbo v0, "com.miui.gamebooster"

    const-string/jumbo v1, "game_toggle_network_speed"

    invoke-static {v0, v1, p0, p1}, Lcom/miui/analytics/AnalyticsUtil;->recordNumericEvent(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public static hn(J)V
    .locals 2

    const-string/jumbo v0, "com.miui.gamebooster"

    const-string/jumbo v1, "game_toggle_total_1"

    invoke-static {v0, v1, p0, p1}, Lcom/miui/analytics/AnalyticsUtil;->recordNumericEvent(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public static ho(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "com.miui.gamebooster"

    const-string/jumbo v2, "game_toggle_total_history_1"

    invoke-static {v1, v2, v0}, Lcom/miui/analytics/AnalyticsUtil;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static hp(J)V
    .locals 2

    const-string/jumbo v0, "com.miui.gamebooster"

    const-string/jumbo v1, "game_toggle_ram_clean"

    invoke-static {v0, v1, p0, p1}, Lcom/miui/analytics/AnalyticsUtil;->recordNumericEvent(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public static hq(J)V
    .locals 2

    const-string/jumbo v0, "com.miui.gamebooster"

    const-string/jumbo v1, "game_toggle_silent_mode"

    invoke-static {v0, v1, p0, p1}, Lcom/miui/analytics/AnalyticsUtil;->recordNumericEvent(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public static hr()V
    .locals 2

    const-string/jumbo v0, "com.miui.gamebooster"

    const-string/jumbo v1, "gb_gamebooster_result_slide_down"

    invoke-static {v0, v1}, Lcom/miui/analytics/AnalyticsUtil;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static hs(J)V
    .locals 2

    const-string/jumbo v0, "com.miui.gamebooster"

    const-string/jumbo v1, "game_toggle_wlan"

    invoke-static {v0, v1, p0, p1}, Lcom/miui/analytics/AnalyticsUtil;->recordNumericEvent(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public static ht(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string/jumbo v1, "gamebooster_module_click"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "com.miui.gamebooster"

    const-string/jumbo v2, "gb_result_action"

    invoke-static {v1, v2, v0}, Lcom/miui/analytics/AnalyticsUtil;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static hu(J)V
    .locals 2

    const-string/jumbo v0, "com.miui.gamebooster"

    const-string/jumbo v1, "gb_main_stay_time"

    invoke-static {v0, v1, p0, p1}, Lcom/miui/analytics/AnalyticsUtil;->recordNumericEvent(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public static hv(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string/jumbo v1, "gamebooster_module_show"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "com.miui.gamebooster"

    const-string/jumbo v2, "gb_result_action"

    invoke-static {v1, v2, v0}, Lcom/miui/analytics/AnalyticsUtil;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static hw(Landroid/content/Context;)V
    .locals 11

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v6, 0x0

    invoke-static {p0}, Lcom/miui/gamebooster/a/x;->hD(Landroid/content/Context;)Z

    move-result v9

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "content://com.miui.securitycenter.gamebooster/gamebooster_analytics"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    if-nez v2, :cond_0

    invoke-static {v2}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-void

    :cond_0
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_17

    const-string/jumbo v0, "game_toggle_total_history_1"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v1

    :try_start_2
    const-string/jumbo v0, "game_games_num_1"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v0

    :goto_0
    invoke-static {v2}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    :goto_1
    invoke-static {p0}, Lcom/miui/gamebooster/c/b;->getInstance(Landroid/content/Context;)Lcom/miui/gamebooster/c/b;

    if-eqz v9, :cond_5

    move v2, v8

    :goto_2
    int-to-long v2, v2

    invoke-static {v2, v3}, Lcom/miui/gamebooster/a/t;->hn(J)V

    invoke-static {}, Lcom/miui/gamebooster/c/b;->tx()Z

    move-result v2

    if-eqz v2, :cond_6

    move v2, v6

    :goto_3
    int-to-long v2, v2

    invoke-static {v2, v3}, Lcom/miui/gamebooster/a/t;->hj(J)V

    if-eqz v9, :cond_4

    const-string/jumbo v3, "0_usertype"

    if-eqz v1, :cond_7

    const-string/jumbo v2, "old_user"

    :goto_4
    invoke-static {v3, v2}, Lcom/miui/gamebooster/a/t;->ho(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v6}, Lcom/miui/gamebooster/c/b;->tB(Z)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v8}, Lcom/miui/gamebooster/c/b;->tF(Z)Z

    move-result v2

    if-eqz v2, :cond_8

    move v2, v8

    :goto_5
    int-to-long v2, v2

    invoke-static {v2, v3}, Lcom/miui/gamebooster/a/t;->hm(J)V

    invoke-static {v8}, Lcom/miui/gamebooster/c/b;->tF(Z)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v6}, Lcom/miui/gamebooster/c/b;->tN(Z)Z

    move-result v2

    if-eqz v2, :cond_9

    move v2, v8

    :goto_6
    int-to-long v2, v2

    invoke-static {v2, v3}, Lcom/miui/gamebooster/a/t;->hs(J)V

    :cond_1
    invoke-static {v8}, Lcom/miui/gamebooster/c/b;->tG(Z)Z

    move-result v2

    if-eqz v2, :cond_a

    move v2, v8

    :goto_7
    int-to-long v2, v2

    invoke-static {v2, v3}, Lcom/miui/gamebooster/a/t;->gQ(J)V

    invoke-static {v8}, Lcom/miui/gamebooster/c/b;->tG(Z)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v8}, Lcom/miui/gamebooster/c/b;->tH(Z)Z

    move-result v2

    if-eqz v2, :cond_b

    move v2, v8

    :goto_8
    int-to-long v2, v2

    invoke-static {v2, v3}, Lcom/miui/gamebooster/a/t;->hq(J)V

    :cond_2
    invoke-static {v8}, Lcom/miui/gamebooster/c/b;->tO(Z)Z

    move-result v2

    if-eqz v2, :cond_c

    move v2, v8

    :goto_9
    int-to-long v2, v2

    invoke-static {v2, v3}, Lcom/miui/gamebooster/a/t;->hp(J)V

    invoke-static {v8}, Lcom/miui/gamebooster/c/b;->tP(Z)Z

    move-result v2

    if-eqz v2, :cond_d

    move v2, v8

    :goto_a
    int-to-long v2, v2

    invoke-static {v2, v3}, Lcom/miui/gamebooster/a/t;->gS(J)V

    invoke-static {v8}, Lcom/miui/gamebooster/c/b;->tQ(Z)Z

    move-result v2

    if-eqz v2, :cond_e

    move v2, v8

    :goto_b
    int-to-long v2, v2

    invoke-static {v2, v3}, Lcom/miui/gamebooster/a/t;->hl(J)V

    invoke-static {v6}, Lcom/miui/gamebooster/c/b;->tR(Z)Z

    move-result v2

    if-eqz v2, :cond_f

    move v2, v8

    :goto_c
    int-to-long v2, v2

    invoke-static {v2, v3}, Lcom/miui/gamebooster/a/t;->hk(J)V

    invoke-static {v6}, Lcom/miui/gamebooster/c/b;->tI(Z)Z

    move-result v2

    if-eqz v2, :cond_10

    move v2, v8

    :goto_d
    int-to-long v2, v2

    invoke-static {v2, v3}, Lcom/miui/gamebooster/a/t;->gR(J)V

    invoke-static {v8}, Lcom/miui/gamebooster/c/b;->tS(Z)Z

    move-result v2

    if-eqz v2, :cond_11

    move v2, v8

    :goto_e
    int-to-long v2, v2

    invoke-static {v2, v3}, Lcom/miui/gamebooster/a/t;->gP(J)V

    invoke-static {}, Lcom/miui/gamebooster/a/a;->eQ()Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-static {v6}, Lcom/miui/gamebooster/c/b;->tJ(Z)Z

    move-result v2

    if-eqz v2, :cond_12

    :goto_f
    move v2, v8

    :goto_10
    int-to-long v2, v2

    invoke-static {v2, v3}, Lcom/miui/gamebooster/a/t;->gO(J)V

    invoke-static {v6}, Lcom/miui/gamebooster/c/b;->tA(Z)Z

    move-result v2

    if-eqz v2, :cond_14

    :goto_11
    int-to-long v2, v8

    invoke-static {v2, v3}, Lcom/miui/gamebooster/a/t;->hf(J)V

    invoke-static {}, Lcom/miui/gamebooster/c/b;->tT()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "float"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    const-wide/16 v2, 0x1

    invoke-static {v2, v3}, Lcom/miui/gamebooster/a/t;->gU(J)V

    :cond_3
    :goto_12
    int-to-long v2, v0

    invoke-static {v2, v3}, Lcom/miui/gamebooster/a/t;->hh(J)V

    :cond_4
    const-string/jumbo v2, "GameBooster.Analy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "t:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " th:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " p:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " num:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception v0

    move-object v1, v7

    move v2, v6

    :goto_13
    :try_start_3
    const-string/jumbo v3, "GameBooster.Analy"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    invoke-static {v1}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    move v0, v6

    move v1, v2

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    move-object v2, v7

    :goto_14
    invoke-static {v2}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v0

    :cond_5
    move v2, v6

    goto/16 :goto_2

    :cond_6
    move v2, v8

    goto/16 :goto_3

    :cond_7
    const-string/jumbo v2, "new_user"

    goto/16 :goto_4

    :cond_8
    move v2, v6

    goto/16 :goto_5

    :cond_9
    move v2, v6

    goto/16 :goto_6

    :cond_a
    move v2, v6

    goto/16 :goto_7

    :cond_b
    move v2, v6

    goto/16 :goto_8

    :cond_c
    move v2, v6

    goto/16 :goto_9

    :cond_d
    move v2, v6

    goto/16 :goto_a

    :cond_e
    move v2, v6

    goto/16 :goto_b

    :cond_f
    move v2, v6

    goto/16 :goto_c

    :cond_10
    move v2, v6

    goto/16 :goto_d

    :cond_11
    move v2, v6

    goto/16 :goto_e

    :cond_12
    move v2, v6

    goto/16 :goto_10

    :cond_13
    invoke-static {v6}, Lcom/miui/gamebooster/c/b;->tK(Z)Z

    move-result v2

    if-eqz v2, :cond_12

    goto/16 :goto_f

    :cond_14
    move v8, v6

    goto/16 :goto_11

    :cond_15
    const-string/jumbo v3, "close"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Lcom/miui/gamebooster/a/t;->gU(J)V

    goto/16 :goto_12

    :cond_16
    const-string/jumbo v3, "gesture"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-wide/16 v2, 0x2

    invoke-static {v2, v3}, Lcom/miui/gamebooster/a/t;->gU(J)V

    goto/16 :goto_12

    :catchall_1
    move-exception v0

    goto :goto_14

    :catchall_2
    move-exception v0

    move-object v2, v1

    goto :goto_14

    :catch_1
    move-exception v0

    move-object v1, v2

    move v2, v6

    goto :goto_13

    :catch_2
    move-exception v0

    move-object v10, v2

    move v2, v1

    move-object v1, v10

    goto :goto_13

    :cond_17
    move v0, v6

    move v1, v6

    goto/16 :goto_0
.end method
