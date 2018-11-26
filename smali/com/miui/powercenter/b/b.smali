.class public Lcom/miui/powercenter/b/b;
.super Ljava/lang/Object;
.source ""


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bdA(I)V
    .locals 4

    const-string/jumbo v0, "energy_when_save_mode_on_1"

    int-to-long v2, p0

    invoke-static {v0, v2, v3}, Lcom/miui/powercenter/b/b;->recordCalculateEvent(Ljava/lang/String;J)V

    return-void
.end method

.method public static bdB()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string/jumbo v1, "9_percent"

    const-string/jumbo v2, "save_mode_on"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "low_energy_popup"

    invoke-static {v1, v0}, Lcom/miui/powercenter/b/b;->recordCountEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static bdC()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string/jumbo v1, "19_percent"

    const-string/jumbo v2, "show"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "low_energy_popup"

    invoke-static {v1, v0}, Lcom/miui/powercenter/b/b;->recordCountEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static bdD()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string/jumbo v1, "9_percent"

    const-string/jumbo v2, "show"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "low_energy_popup"

    invoke-static {v1, v0}, Lcom/miui/powercenter/b/b;->recordCountEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static bdE()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string/jumbo v1, "5_percent"

    const-string/jumbo v2, "show"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "low_energy_popup"

    invoke-static {v1, v0}, Lcom/miui/powercenter/b/b;->recordCountEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static bdF(Landroid/content/Context;)V
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string/jumbo v0, "toggle_energy_status_style"

    invoke-static {p0}, Lcom/miui/powercenter/b/b;->bdL(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/miui/powercenter/b/b;->recordStringPropertyEvent(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "toggle_lockscreen_cut_off_data"

    invoke-static {}, Lcom/miui/powercenter/b/b;->bdO()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/miui/powercenter/b/b;->recordStringPropertyEvent(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "toggle_lockscreen_clean_ram"

    invoke-static {}, Lcom/miui/powercenter/b/b;->bdN()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/miui/powercenter/b/b;->recordStringPropertyEvent(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "toggle_unusual_expend_noti"

    invoke-static {}, Lcom/miui/powercenter/a;->bff()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    int-to-long v4, v0

    invoke-static {v3, v4, v5}, Lcom/miui/powercenter/b/b;->recordNumericEvent(Ljava/lang/String;J)V

    const-string/jumbo v0, "toggle_high_temperature_noti"

    invoke-static {}, Lcom/miui/powercenter/b/b;->bdM()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/miui/powercenter/b/b;->recordStringPropertyEvent(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "toggle_timing_power_on_off"

    invoke-static {}, Lcom/miui/powercenter/b/b;->bdP()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/miui/powercenter/b/b;->recordStringPropertyEvent(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "toggle_timing_saving_mode"

    invoke-static {}, Lcom/miui/powercenter/a;->bfj()Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_1
    int-to-long v2, v1

    invoke-static {v0, v2, v3}, Lcom/miui/powercenter/b/b;->recordNumericEvent(Ljava/lang/String;J)V

    invoke-static {p0}, Lcom/miui/powercenter/b/a;->bdr(Landroid/content/Context;)V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method public static bdG()V
    .locals 1

    const-string/jumbo v0, "auto_task"

    invoke-static {v0}, Lcom/miui/powercenter/b/b;->bdT(Ljava/lang/String;)V

    return-void
.end method

.method public static bdH(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string/jumbo v1, "module_select_optimize"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "scan_result_action"

    invoke-static {v1, v0}, Lcom/miui/powercenter/b/b;->recordCountEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static bdI(I)V
    .locals 4

    const-string/jumbo v0, "solve_problem_quantity"

    int-to-long v2, p0

    invoke-static {v0, v2, v3}, Lcom/miui/powercenter/b/b;->recordCalculateEvent(Ljava/lang/String;J)V

    return-void
.end method

.method public static bdJ(J)V
    .locals 2

    const-string/jumbo v0, "optimize_save_time"

    invoke-static {v0, p0, p1}, Lcom/miui/powercenter/b/b;->recordCalculateEvent(Ljava/lang/String;J)V

    return-void
.end method

.method public static bdK(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string/jumbo v1, "module_show"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "scan_result_action"

    invoke-static {v1, v0}, Lcom/miui/powercenter/b/b;->recordCountEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private static bdL(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "battery_indicator_style"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const-string/jumbo v0, ""

    return-object v0

    :pswitch_0
    const-string/jumbo v0, "pattern"

    return-object v0

    :pswitch_1
    const-string/jumbo v0, "number"

    return-object v0

    :pswitch_2
    const-string/jumbo v0, "top"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static bdM()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/miui/powercenter/a;->bfd()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    if-nez v1, :cond_0

    const-string/jumbo v0, "off"

    :cond_0
    return-object v0
.end method

.method private static bdN()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/miui/powercenter/a;->beZ()I

    move-result v0

    div-int/lit8 v0, v0, 0x3c

    sparse-switch v0, :sswitch_data_0

    const-string/jumbo v0, ""

    return-object v0

    :sswitch_0
    const-string/jumbo v0, "1_min"

    return-object v0

    :sswitch_1
    const-string/jumbo v0, "5_min"

    return-object v0

    :sswitch_2
    const-string/jumbo v0, "10_min"

    return-object v0

    :sswitch_3
    const-string/jumbo v0, "30_min"

    return-object v0

    :sswitch_4
    const-string/jumbo v0, "none"

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_4
        0x1 -> :sswitch_0
        0x5 -> :sswitch_1
        0xa -> :sswitch_2
        0x1e -> :sswitch_3
    .end sparse-switch
.end method

.method private static bdO()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/miui/powercenter/a;->bfg()I

    move-result v0

    div-int/lit8 v0, v0, 0x3c

    sparse-switch v0, :sswitch_data_0

    const-string/jumbo v0, ""

    return-object v0

    :sswitch_0
    const-string/jumbo v0, "1_min"

    return-object v0

    :sswitch_1
    const-string/jumbo v0, "5_min"

    return-object v0

    :sswitch_2
    const-string/jumbo v0, "10_min"

    return-object v0

    :sswitch_3
    const-string/jumbo v0, "30_min"

    return-object v0

    :sswitch_4
    const-string/jumbo v0, "none"

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_4
        0x1 -> :sswitch_0
        0x5 -> :sswitch_1
        0xa -> :sswitch_2
        0x1e -> :sswitch_3
    .end sparse-switch
.end method

.method private static bdP()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/miui/powercenter/a;->beR()Z

    move-result v0

    invoke-static {}, Lcom/miui/powercenter/a;->beS()Z

    move-result v1

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    const-string/jumbo v0, "both"

    return-object v0

    :cond_0
    if-eqz v0, :cond_1

    const-string/jumbo v0, "power_on_only"

    return-object v0

    :cond_1
    if-eqz v1, :cond_2

    const-string/jumbo v0, "power_off_only"

    return-object v0

    :cond_2
    const-string/jumbo v0, "neither"

    return-object v0
.end method

.method public static bdQ(I)V
    .locals 4

    const-string/jumbo v0, "charge_quantity"

    int-to-long v2, p0

    invoke-static {v0, v2, v3}, Lcom/miui/powercenter/b/b;->recordCalculateEvent(Ljava/lang/String;J)V

    return-void
.end method

.method public static bdR(I)V
    .locals 4

    const-string/jumbo v0, "energy_when_save_mode_on"

    int-to-long v2, p0

    invoke-static {v0, v2, v3}, Lcom/miui/powercenter/b/b;->recordCalculateEvent(Ljava/lang/String;J)V

    return-void
.end method

.method public static bdS()V
    .locals 1

    const-string/jumbo v0, "extreme_save_mode"

    invoke-static {v0}, Lcom/miui/powercenter/b/b;->bdT(Ljava/lang/String;)V

    return-void
.end method

.method private static bdT(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string/jumbo v1, "module_click"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "homepage_button_click"

    invoke-static {v1, v0}, Lcom/miui/powercenter/b/b;->recordCountEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static bdU(Z)V
    .locals 3

    new-instance v1, Ljava/util/HashMap;

    const/4 v0, 0x1

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(I)V

    const-string/jumbo v2, "module_click"

    if-eqz p0, :cond_0

    const-string/jumbo v0, "save_mode_on"

    :goto_0
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "save_mode_page_on_off"

    invoke-static {v0, v1}, Lcom/miui/powercenter/b/b;->recordCountEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void

    :cond_0
    const-string/jumbo v0, "save_mode_off"

    goto :goto_0
.end method

.method public static bds(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string/jumbo v1, "module_click"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "optimize_result_action"

    invoke-static {v1, v0}, Lcom/miui/powercenter/b/b;->recordCountEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static bdt(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string/jumbo v1, "module_show"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "optimize_result_action"

    invoke-static {v1, v0}, Lcom/miui/powercenter/b/b;->recordCountEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static bdu()V
    .locals 1

    const-string/jumbo v0, "app_save"

    invoke-static {v0}, Lcom/miui/powercenter/b/b;->bdT(Ljava/lang/String;)V

    return-void
.end method

.method public static bdv()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string/jumbo v1, "module"

    const-string/jumbo v2, "show"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "unusual_expend_noti"

    invoke-static {v1, v0}, Lcom/miui/powercenter/b/b;->recordCountEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static bdw(I)V
    .locals 4

    const-string/jumbo v0, "scan_problem_quantity"

    int-to-long v2, p0

    invoke-static {v0, v2, v3}, Lcom/miui/powercenter/b/b;->recordCalculateEvent(Ljava/lang/String;J)V

    return-void
.end method

.method public static bdx(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string/jumbo v1, "package_name"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "scan_problem_app"

    invoke-static {v1, v0}, Lcom/miui/powercenter/b/b;->recordCountEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static bdy(J)V
    .locals 2

    const-string/jumbo v0, "scan_time"

    invoke-static {v0, p0, p1}, Lcom/miui/powercenter/b/b;->recordCalculateEvent(Ljava/lang/String;J)V

    return-void
.end method

.method public static bdz()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string/jumbo v1, "19_percent"

    const-string/jumbo v2, "save_mode_on"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "low_energy_popup"

    invoke-static {v1, v0}, Lcom/miui/powercenter/b/b;->recordCountEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private static recordCalculateEvent(Ljava/lang/String;J)V
    .locals 3

    const-string/jumbo v0, "com.miui.powercenter"

    const/4 v1, 0x0

    invoke-static {v0, p0, p1, p2, v1}, Lcom/miui/analytics/AnalyticsUtil;->recordCalculateEvent(Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)V

    return-void
.end method

.method private static recordCountEvent(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1

    const-string/jumbo v0, "com.miui.powercenter"

    invoke-static {v0, p0, p1}, Lcom/miui/analytics/AnalyticsUtil;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private static recordNumericEvent(Ljava/lang/String;J)V
    .locals 1

    const-string/jumbo v0, "com.miui.powercenter"

    invoke-static {v0, p0, p1, p2}, Lcom/miui/analytics/AnalyticsUtil;->recordNumericEvent(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method private static recordStringPropertyEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "com.miui.powercenter"

    invoke-static {v0, p0, p1}, Lcom/miui/analytics/AnalyticsUtil;->recordStringPropertyEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
