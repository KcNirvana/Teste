.class public Lcom/miui/antivirus/a/c;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static azm(Landroid/content/Context;)V
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string/jumbo v3, "toggle_ns_antivirus_whitelist"

    invoke-static {}, Lcom/miui/antivirus/i;->aDE()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    int-to-long v4, v0

    invoke-static {v3, v4, v5}, Lcom/miui/antivirus/a/c;->recordNumericEvent(Ljava/lang/String;J)V

    invoke-static {}, Lcom/miui/antivirus/i;->aDF()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "toggle_ns_engine_one"

    invoke-static {v3, v0}, Lcom/miui/antivirus/a/c;->recordStringPropertyEvent(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "TENCENT"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string/jumbo v3, "toggle_ns_tencent_update"

    const-string/jumbo v0, "key_database_auto_update_enabled_TENCENT"

    invoke-static {v0}, Lcom/miui/antivirus/i;->aDv(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    int-to-long v4, v0

    invoke-static {v3, v4, v5}, Lcom/miui/antivirus/a/c;->recordNumericEvent(Ljava/lang/String;J)V

    const-string/jumbo v3, "toggle_ns_cloud_scan"

    invoke-static {}, Lcom/miui/antivirus/i;->aDq()Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_2
    int-to-long v4, v0

    invoke-static {v3, v4, v5}, Lcom/miui/antivirus/a/c;->recordNumericEvent(Ljava/lang/String;J)V

    :goto_3
    const-string/jumbo v3, "toggle_ns_installing_monitor"

    invoke-static {p0}, Landroid/provider/MiuiSettings$AntiVirus;->isInstallMonitorEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_8

    move v0, v1

    :goto_4
    int-to-long v4, v0

    invoke-static {v3, v4, v5}, Lcom/miui/antivirus/a/c;->recordNumericEvent(Ljava/lang/String;J)V

    const-string/jumbo v3, "toggle_ns_pay_environment_check"

    invoke-static {}, Lcom/miui/antivirus/i;->aDs()Z

    move-result v0

    if-eqz v0, :cond_9

    move v0, v1

    :goto_5
    int-to-long v4, v0

    invoke-static {v3, v4, v5}, Lcom/miui/antivirus/a/c;->recordNumericEvent(Ljava/lang/String;J)V

    invoke-static {}, Lcom/miui/antivirus/i;->aDs()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v3, "toggle_ns_safe_input"

    invoke-static {}, Lcom/miui/antivirus/i;->aDw()Z

    move-result v0

    if-eqz v0, :cond_a

    move v0, v1

    :goto_6
    int-to-long v4, v0

    invoke-static {v3, v4, v5}, Lcom/miui/antivirus/a/c;->recordNumericEvent(Ljava/lang/String;J)V

    :cond_0
    const-string/jumbo v3, "toggle_ns_wlan_scan"

    invoke-static {}, Lcom/miui/antivirus/i;->aDn()Z

    move-result v0

    if-eqz v0, :cond_b

    move v0, v1

    :goto_7
    int-to-long v4, v0

    invoke-static {v3, v4, v5}, Lcom/miui/antivirus/a/c;->recordNumericEvent(Ljava/lang/String;J)V

    const-string/jumbo v3, "toggle_ns_root_scan"

    invoke-static {}, Lcom/miui/antivirus/i;->aDo()Z

    move-result v0

    if-eqz v0, :cond_c

    move v0, v1

    :goto_8
    int-to-long v4, v0

    invoke-static {v3, v4, v5}, Lcom/miui/antivirus/a/c;->recordNumericEvent(Ljava/lang/String;J)V

    const-string/jumbo v3, "toggle_ns_update_scan"

    invoke-static {}, Lcom/miui/antivirus/i;->aDp()Z

    move-result v0

    if-eqz v0, :cond_d

    move v0, v1

    :goto_9
    int-to-long v4, v0

    invoke-static {v3, v4, v5}, Lcom/miui/antivirus/a/c;->recordNumericEvent(Ljava/lang/String;J)V

    const-string/jumbo v0, "toggle_ns_genuine_whitelist"

    invoke-static {p0}, Lcom/miui/antivirus/utils/a;->aup(Landroid/content/Context;)I

    move-result v3

    if-lez v3, :cond_e

    :goto_a
    int-to-long v2, v1

    invoke-static {v0, v2, v3}, Lcom/miui/antivirus/a/c;->recordNumericEvent(Ljava/lang/String;J)V

    return-void

    :cond_1
    move v0, v2

    goto/16 :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_2

    :cond_4
    const-string/jumbo v3, "AVL"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string/jumbo v3, "toggle_ns_antiy_update"

    const-string/jumbo v0, "key_database_auto_update_enabled_AVL"

    invoke-static {v0}, Lcom/miui/antivirus/i;->aDv(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    :goto_b
    int-to-long v4, v0

    invoke-static {v3, v4, v5}, Lcom/miui/antivirus/a/c;->recordNumericEvent(Ljava/lang/String;J)V

    goto/16 :goto_3

    :cond_5
    move v0, v2

    goto :goto_b

    :cond_6
    const-string/jumbo v3, "toggle_ns_avast_update"

    const-string/jumbo v0, "key_database_auto_update_enabled_Avast"

    invoke-static {v0}, Lcom/miui/antivirus/i;->aDv(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    move v0, v1

    :goto_c
    int-to-long v4, v0

    invoke-static {v3, v4, v5}, Lcom/miui/antivirus/a/c;->recordNumericEvent(Ljava/lang/String;J)V

    goto/16 :goto_3

    :cond_7
    move v0, v2

    goto :goto_c

    :cond_8
    move v0, v2

    goto/16 :goto_4

    :cond_9
    move v0, v2

    goto/16 :goto_5

    :cond_a
    move v0, v2

    goto :goto_6

    :cond_b
    move v0, v2

    goto :goto_7

    :cond_c
    move v0, v2

    goto :goto_8

    :cond_d
    move v0, v2

    goto :goto_9

    :cond_e
    move v1, v2

    goto :goto_a
.end method

.method static synthetic azn(Ljava/lang/String;J)V
    .locals 1

    invoke-static {p0, p1, p2}, Lcom/miui/antivirus/a/c;->recordCalculateEvent(Ljava/lang/String;J)V

    return-void
.end method

.method static synthetic azo(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/miui/antivirus/a/c;->recordCountEvent(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic azp(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/antivirus/a/c;->recordCountEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private static recordCalculateEvent(Ljava/lang/String;J)V
    .locals 1

    const-string/jumbo v0, "com.miui.antivirus"

    invoke-static {v0, p0, p1, p2}, Lcom/miui/analytics/AnalyticsUtil;->recordCalculateEvent(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method private static recordCountEvent(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "com.miui.antivirus"

    invoke-static {v0, p0}, Lcom/miui/analytics/AnalyticsUtil;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static recordCountEvent(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1

    const-string/jumbo v0, "com.miui.antivirus"

    invoke-static {v0, p0, p1}, Lcom/miui/analytics/AnalyticsUtil;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private static recordNumericEvent(Ljava/lang/String;J)V
    .locals 1

    const-string/jumbo v0, "com.miui.antivirus"

    invoke-static {v0, p0, p1, p2}, Lcom/miui/analytics/AnalyticsUtil;->recordNumericEvent(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method private static recordStringPropertyEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "com.miui.antivirus"

    invoke-static {v0, p0, p1}, Lcom/miui/analytics/AnalyticsUtil;->recordStringPropertyEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
