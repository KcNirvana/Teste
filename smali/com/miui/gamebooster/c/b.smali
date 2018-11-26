.class public Lcom/miui/gamebooster/c/b;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static rX:Lcom/miui/securityscan/b/c;

.field private static rY:Lcom/miui/gamebooster/c/b;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/c/b;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/miui/gamebooster/c/b;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "common"

    invoke-static {v0, v1}, Lcom/miui/securityscan/b/c;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/miui/securityscan/b/c;

    move-result-object v0

    sput-object v0, Lcom/miui/gamebooster/c/b;->rX:Lcom/miui/securityscan/b/c;

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/miui/gamebooster/c/b;
    .locals 2

    const-class v1, Lcom/miui/gamebooster/c/b;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/miui/gamebooster/c/b;->rY:Lcom/miui/gamebooster/c/b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/gamebooster/c/b;

    invoke-direct {v0, p0}, Lcom/miui/gamebooster/c/b;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/miui/gamebooster/c/b;->rY:Lcom/miui/gamebooster/c/b;

    :cond_0
    sget-object v0, Lcom/miui/gamebooster/c/b;->rY:Lcom/miui/gamebooster/c/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static tA(Z)Z
    .locals 1

    const-string/jumbo v0, "pref_sign_notification_status"

    invoke-static {v0, p0}, Lcom/miui/common/persistence/a;->aMN(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static tB(Z)Z
    .locals 1

    const-string/jumbo v0, "pref_xunyou_user"

    invoke-static {v0, p0}, Lcom/miui/common/persistence/a;->aMN(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static tC(Z)V
    .locals 1

    const-string/jumbo v0, "pref_sign_notification_status"

    invoke-static {v0, p0}, Lcom/miui/common/persistence/a;->aMP(Ljava/lang/String;Z)V

    return-void
.end method

.method public static tD(Z)Z
    .locals 1

    const-string/jumbo v0, "flag_gamebooster_signed_first_click"

    invoke-static {v0, p0}, Lcom/miui/common/persistence/a;->aMN(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static tE(Z)V
    .locals 1

    const-string/jumbo v0, "flag_gamebooster_signed_first_click"

    invoke-static {v0, p0}, Lcom/miui/common/persistence/a;->aMP(Ljava/lang/String;Z)V

    return-void
.end method

.method public static tF(Z)Z
    .locals 1

    const-string/jumbo v0, "pref_net_booster_status"

    invoke-static {v0, p0}, Lcom/miui/common/persistence/a;->aMN(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static tG(Z)Z
    .locals 1

    const-string/jumbo v0, "pref_handsfree_status"

    invoke-static {v0, p0}, Lcom/miui/common/persistence/a;->aMN(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static tH(Z)Z
    .locals 1

    const-string/jumbo v0, "pref_handsfree_mute_status"

    invoke-static {v0, p0}, Lcom/miui/common/persistence/a;->aMN(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static tI(Z)Z
    .locals 3

    const-string/jumbo v0, "pref_game_performance_model_state"

    sget-object v1, Lcom/miui/gamebooster/c/b;->rX:Lcom/miui/securityscan/b/c;

    const-string/jumbo v2, "pref_game_performance_model_state"

    invoke-virtual {v1, v2, p0}, Lcom/miui/securityscan/b/c;->load(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/common/persistence/a;->aMN(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static tJ(Z)Z
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/miui/gamebooster/c/b;->uh(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "pref_video_anti_disturb_msg_mode"

    invoke-static {v0, p0}, Lcom/miui/common/persistence/a;->aMN(Ljava/lang/String;Z)Z

    move-result v0

    return v0

    :cond_0
    const-string/jumbo v0, "pref_anti_disturb_msg_quick_answer_mode"

    invoke-static {v0, p0}, Lcom/miui/common/persistence/a;->aMN(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static tK(Z)Z
    .locals 3

    const-string/jumbo v0, "pref_anti_disturb_msg_mode"

    sget-object v1, Lcom/miui/gamebooster/c/b;->rX:Lcom/miui/securityscan/b/c;

    const-string/jumbo v2, "pref_anti_disturb_msg_mode"

    invoke-virtual {v1, v2, p0}, Lcom/miui/securityscan/b/c;->load(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/common/persistence/a;->aMN(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static tL(Z)V
    .locals 1

    const-string/jumbo v0, "pref_net_booster_wifi_status"

    invoke-static {v0, p0}, Lcom/miui/common/persistence/a;->aMP(Ljava/lang/String;Z)V

    return-void
.end method

.method public static tM(Z)V
    .locals 1

    const-string/jumbo v0, "pref_handsfree_mute_status"

    invoke-static {v0, p0}, Lcom/miui/common/persistence/a;->aMP(Ljava/lang/String;Z)V

    return-void
.end method

.method public static tN(Z)Z
    .locals 1

    const-string/jumbo v0, "pref_net_booster_wifi_status"

    invoke-static {v0, p0}, Lcom/miui/common/persistence/a;->aMN(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static tO(Z)Z
    .locals 3

    const-string/jumbo v0, "pref_app_self_start_state"

    sget-object v1, Lcom/miui/gamebooster/c/b;->rX:Lcom/miui/securityscan/b/c;

    const-string/jumbo v2, "pref_app_self_start_state"

    invoke-virtual {v1, v2, p0}, Lcom/miui/securityscan/b/c;->load(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/common/persistence/a;->aMN(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static tP(Z)Z
    .locals 1

    const-string/jumbo v0, "pref_forbid_autosync_status"

    invoke-static {v0, p0}, Lcom/miui/common/persistence/a;->aMN(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static tQ(Z)Z
    .locals 3

    const-string/jumbo v0, "pref_wlan_change_protection"

    sget-object v1, Lcom/miui/gamebooster/c/b;->rX:Lcom/miui/securityscan/b/c;

    const-string/jumbo v2, "pref_wlan_change_protection"

    invoke-virtual {v1, v2, p0}, Lcom/miui/securityscan/b/c;->load(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/common/persistence/a;->aMN(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static tR(Z)Z
    .locals 3

    const-string/jumbo v0, "pref_game_net_priority_state"

    sget-object v1, Lcom/miui/gamebooster/c/b;->rX:Lcom/miui/securityscan/b/c;

    const-string/jumbo v2, "pref_game_net_priority_state"

    invoke-virtual {v1, v2, p0}, Lcom/miui/securityscan/b/c;->load(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/common/persistence/a;->aMN(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static tS(Z)Z
    .locals 3

    const-string/jumbo v0, "pref_anti_keyboard"

    sget-object v1, Lcom/miui/gamebooster/c/b;->rX:Lcom/miui/securityscan/b/c;

    const-string/jumbo v2, "pref_anti_keyboard"

    invoke-virtual {v1, v2, p0}, Lcom/miui/securityscan/b/c;->load(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/common/persistence/a;->aMN(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static tT()Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, "pref_game_box"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/common/persistence/a;->aMN(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "float"

    :goto_0
    const-string/jumbo v1, "pref_gamebox"

    invoke-static {v1, v0}, Lcom/miui/common/persistence/a;->aMJ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string/jumbo v0, "close"

    goto :goto_0
.end method

.method public static tU(Z)V
    .locals 2

    const/4 v1, 0x0

    const-string/jumbo v0, "pref_xunyou_user"

    invoke-static {v0, p0}, Lcom/miui/common/persistence/a;->aMP(Ljava/lang/String;Z)V

    if-eqz p0, :cond_0

    const-string/jumbo v0, "xunyou_alert_dialog_first_count"

    invoke-static {v0, v1}, Lcom/miui/common/persistence/a;->aMR(Ljava/lang/String;I)V

    const-string/jumbo v0, "xunyou_alert_dialog_overdue_gift_count"

    invoke-static {v0, v1}, Lcom/miui/common/persistence/a;->aMR(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public static tV()Z
    .locals 2

    const-string/jumbo v0, "gb_first_window_has_create_icon"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/common/persistence/a;->aMN(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static tW(Z)V
    .locals 1

    const-string/jumbo v0, "pref_first_open_game_booster"

    invoke-static {v0, p0}, Lcom/miui/common/persistence/a;->aMP(Ljava/lang/String;Z)V

    return-void
.end method

.method public static tX(Z)V
    .locals 1

    const-string/jumbo v0, "pref_net_booster_status"

    invoke-static {v0, p0}, Lcom/miui/common/persistence/a;->aMP(Ljava/lang/String;Z)V

    return-void
.end method

.method public static tY(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/miui/gamebooster/c/b;->uh(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "pref_video_anti_disturb_msg_mode"

    invoke-static {v0, p0}, Lcom/miui/common/persistence/a;->aMP(Ljava/lang/String;Z)V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "pref_anti_disturb_msg_quick_answer_mode"

    invoke-static {v0, p0}, Lcom/miui/common/persistence/a;->aMP(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public static tZ(Z)V
    .locals 1

    const-string/jumbo v0, "pref_anti_disturb_msg_mode"

    invoke-static {v0, p0}, Lcom/miui/common/persistence/a;->aMP(Ljava/lang/String;Z)V

    return-void
.end method

.method public static tw(Z)Z
    .locals 3

    const-string/jumbo v0, "pref_open_game_booster"

    sget-object v1, Lcom/miui/gamebooster/c/b;->rX:Lcom/miui/securityscan/b/c;

    const-string/jumbo v2, "pref_open_game_booster"

    invoke-virtual {v1, v2, p0}, Lcom/miui/securityscan/b/c;->load(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/common/persistence/a;->aMN(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static tx()Z
    .locals 4

    const-string/jumbo v0, "pref_first_open_game_booster"

    sget-object v1, Lcom/miui/gamebooster/c/b;->rX:Lcom/miui/securityscan/b/c;

    const-string/jumbo v2, "pref_first_open_game_booster"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/miui/securityscan/b/c;->load(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/common/persistence/a;->aMN(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static ty()Z
    .locals 2

    const-string/jumbo v0, "has_open_first_window"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/common/persistence/a;->aMN(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static tz(Z)V
    .locals 1

    const-string/jumbo v0, "has_open_first_window"

    invoke-static {v0, p0}, Lcom/miui/common/persistence/a;->aMP(Ljava/lang/String;Z)V

    return-void
.end method

.method public static ua(Z)V
    .locals 1

    const-string/jumbo v0, "pref_video_booster_status"

    invoke-static {v0, p0}, Lcom/miui/common/persistence/a;->aMP(Ljava/lang/String;Z)V

    return-void
.end method

.method public static ub(Z)Z
    .locals 1

    const-string/jumbo v0, "pref_gamebooster_slip_status"

    invoke-static {v0, p0}, Lcom/miui/common/persistence/a;->aMN(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static uc()I
    .locals 2

    const-string/jumbo v0, "gamebox_location"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/common/persistence/a;->aMM(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static ud()Z
    .locals 2

    const-string/jumbo v0, "gb_video_sound_status"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/common/persistence/a;->aMN(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static ue(Z)Z
    .locals 1

    const-string/jumbo v0, "pref_data_booster_status"

    invoke-static {v0, p0}, Lcom/miui/common/persistence/a;->aMN(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static uf(Z)Z
    .locals 1

    const-string/jumbo v0, "pref_gamebooster_forbid_auto_bright"

    invoke-static {v0, p0}, Lcom/miui/common/persistence/a;->aMN(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static ug()Z
    .locals 2

    const-string/jumbo v0, "pref_first_jobservice_load_game"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/common/persistence/a;->aMN(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static uh(Z)Z
    .locals 1

    const-string/jumbo v0, "pref_video_booster_status"

    invoke-static {v0, p0}, Lcom/miui/common/persistence/a;->aMN(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static ui(Z)V
    .locals 1

    const-string/jumbo v0, "pref_anti_keyboard"

    invoke-static {v0, p0}, Lcom/miui/common/persistence/a;->aMP(Ljava/lang/String;Z)V

    return-void
.end method

.method public static uj(Z)V
    .locals 1

    const-string/jumbo v0, "pref_app_self_start_state"

    invoke-static {v0, p0}, Lcom/miui/common/persistence/a;->aMP(Ljava/lang/String;Z)V

    return-void
.end method

.method public static uk(Z)V
    .locals 1

    const-string/jumbo v0, "pref_data_booster_status"

    invoke-static {v0, p0}, Lcom/miui/common/persistence/a;->aMP(Ljava/lang/String;Z)V

    return-void
.end method

.method public static ul(Z)V
    .locals 1

    const-string/jumbo v0, "gb_first_window_has_create_icon"

    invoke-static {v0, p0}, Lcom/miui/common/persistence/a;->aMP(Ljava/lang/String;Z)V

    return-void
.end method

.method public static um(Z)V
    .locals 1

    const-string/jumbo v0, "pref_gamebooster_forbid_auto_bright"

    invoke-static {v0, p0}, Lcom/miui/common/persistence/a;->aMP(Ljava/lang/String;Z)V

    return-void
.end method

.method public static un(Z)V
    .locals 1

    const-string/jumbo v0, "pref_forbid_autosync_status"

    invoke-static {v0, p0}, Lcom/miui/common/persistence/a;->aMP(Ljava/lang/String;Z)V

    return-void
.end method

.method public static uo(Z)V
    .locals 1

    const-string/jumbo v0, "pref_open_game_booster"

    invoke-static {v0, p0}, Lcom/miui/common/persistence/a;->aMP(Ljava/lang/String;Z)V

    return-void
.end method

.method public static up(I)V
    .locals 1

    const-string/jumbo v0, "gamebox_location"

    invoke-static {v0, p0}, Lcom/miui/common/persistence/a;->aMR(Ljava/lang/String;I)V

    return-void
.end method

.method public static uq(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "pref_gamebox"

    invoke-static {v0, p0}, Lcom/miui/common/persistence/a;->aMK(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static ur(Z)V
    .locals 1

    const-string/jumbo v0, "pref_handsfree_status"

    invoke-static {v0, p0}, Lcom/miui/common/persistence/a;->aMP(Ljava/lang/String;Z)V

    return-void
.end method

.method public static us(Z)V
    .locals 1

    const-string/jumbo v0, "pref_first_jobservice_load_game"

    invoke-static {v0, p0}, Lcom/miui/common/persistence/a;->aMP(Ljava/lang/String;Z)V

    return-void
.end method

.method public static ut(Z)V
    .locals 1

    const-string/jumbo v0, "gb_video_sound_status"

    invoke-static {v0, p0}, Lcom/miui/common/persistence/a;->aMP(Ljava/lang/String;Z)V

    return-void
.end method

.method public static uu(Z)V
    .locals 1

    const-string/jumbo v0, "pref_game_net_priority_state"

    invoke-static {v0, p0}, Lcom/miui/common/persistence/a;->aMP(Ljava/lang/String;Z)V

    return-void
.end method

.method public static uv(Z)V
    .locals 1

    const-string/jumbo v0, "pref_game_performance_model_state"

    invoke-static {v0, p0}, Lcom/miui/common/persistence/a;->aMP(Ljava/lang/String;Z)V

    return-void
.end method

.method public static uw(Z)V
    .locals 1

    const-string/jumbo v0, "pref_gamebooster_slip_status"

    invoke-static {v0, p0}, Lcom/miui/common/persistence/a;->aMP(Ljava/lang/String;Z)V

    return-void
.end method

.method public static ux(Z)V
    .locals 1

    const-string/jumbo v0, "pref_wlan_change_protection"

    invoke-static {v0, p0}, Lcom/miui/common/persistence/a;->aMP(Ljava/lang/String;Z)V

    return-void
.end method
