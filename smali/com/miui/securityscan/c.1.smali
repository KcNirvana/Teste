.class public Lcom/miui/securityscan/c;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static OA()I
    .locals 2

    const-string/jumbo v0, "need_update_app_count"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/common/persistence/a;->aMM(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static OB(Z)V
    .locals 1

    const-string/jumbo v0, "key_sc_setting_news_only_wlan"

    invoke-static {v0, p0}, Lcom/miui/common/persistence/a;->aMP(Ljava/lang/String;Z)V

    return-void
.end method

.method public static OC(Z)V
    .locals 1

    const-string/jumbo v0, "key_sc_setting_news_recommend"

    invoke-static {v0, p0}, Lcom/miui/common/persistence/a;->aMP(Ljava/lang/String;Z)V

    return-void
.end method

.method public static OD()J
    .locals 4

    const-string/jumbo v0, "key_last_update_scan_item_time"

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcom/miui/common/persistence/a;->aML(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static OE()Z
    .locals 2

    const-string/jumbo v0, "key_scan_item_use_flag"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/common/persistence/a;->aMN(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static OF(Z)V
    .locals 1

    const-string/jumbo v0, "key_scan_item_use_flag"

    invoke-static {v0, p0}, Lcom/miui/common/persistence/a;->aMP(Ljava/lang/String;Z)V

    return-void
.end method

.method public static OG(J)V
    .locals 2

    const-string/jumbo v0, "key_last_update_scan_item_time"

    invoke-static {v0, p0, p1}, Lcom/miui/common/persistence/a;->aMQ(Ljava/lang/String;J)V

    return-void
.end method

.method public static OH(J)J
    .locals 2

    const-string/jumbo v0, "latest_optimize_date"

    invoke-static {v0, p0, p1}, Lcom/miui/common/persistence/a;->aML(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static OI()Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, "key_mifi_insurance_url"

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Lcom/miui/common/persistence/a;->aMJ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static OJ()Ljava/util/ArrayList;
    .locals 2

    const-string/jumbo v0, "need_update_app_pkgName"

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/miui/common/persistence/a;->aMO(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static OK()Z
    .locals 2

    const-string/jumbo v0, "realname_verify_status"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/common/persistence/a;->aMN(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static OL(J)V
    .locals 2

    const-string/jumbo v0, "latest_optimize_date"

    invoke-static {v0, p0, p1}, Lcom/miui/common/persistence/a;->aMQ(Ljava/lang/String;J)V

    return-void
.end method

.method public static OM(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "key_mifi_insurance_url"

    invoke-static {v0, p0}, Lcom/miui/common/persistence/a;->aMK(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static ON(I)V
    .locals 1

    const-string/jumbo v0, "need_update_app_count"

    invoke-static {v0, p0}, Lcom/miui/common/persistence/a;->aMR(Ljava/lang/String;I)V

    return-void
.end method

.method public static OO(Ljava/util/ArrayList;)V
    .locals 1

    const-string/jumbo v0, "need_update_app_pkgName"

    invoke-static {v0, p0}, Lcom/miui/common/persistence/a;->aMI(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method

.method public static OP(J)V
    .locals 2

    const-string/jumbo v0, "key_no_kill_pkg_version"

    invoke-static {v0, p0, p1}, Lcom/miui/common/persistence/a;->aMQ(Ljava/lang/String;J)V

    return-void
.end method

.method public static Op()Z
    .locals 3

    invoke-static {}, Lcom/miui/securitycenter/Application;->getInstance()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const/4 v0, 0x0

    const-string/jumbo v1, "key_sc_setting_news_recommend"

    invoke-static {v1, v0}, Lcom/miui/common/persistence/a;->aMN(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static Oq(Z)V
    .locals 1

    const-string/jumbo v0, "realname_verify_status"

    invoke-static {v0, p0}, Lcom/miui/common/persistence/a;->aMP(Ljava/lang/String;Z)V

    return-void
.end method

.method public static Or()Z
    .locals 2

    const-string/jumbo v0, "need_refresh_rcs_switch"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/common/persistence/a;->aMN(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static Os(Z)V
    .locals 1

    const-string/jumbo v0, "need_refresh_rcs_switch"

    invoke-static {v0, p0}, Lcom/miui/common/persistence/a;->aMP(Ljava/lang/String;Z)V

    return-void
.end method

.method public static Ot()Z
    .locals 2

    const-string/jumbo v0, "manual_optimize_item_jumped"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/common/persistence/a;->aMN(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static Ou(Z)V
    .locals 1

    const-string/jumbo v0, "manual_optimize_item_jumped"

    invoke-static {v0, p0}, Lcom/miui/common/persistence/a;->aMP(Ljava/lang/String;Z)V

    return-void
.end method

.method public static Ov()Z
    .locals 3

    invoke-static {}, Lcom/miui/securitycenter/Application;->getInstance()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const v2, 0x7f0705c6

    invoke-virtual {v0, v2}, Lcom/miui/securitycenter/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const-string/jumbo v1, "key_sc_setting_news_only_wlan"

    invoke-static {v1, v0}, Lcom/miui/common/persistence/a;->aMN(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static Ow(J)J
    .locals 2

    const-string/jumbo v0, "latest_consume_power_optimize_date"

    invoke-static {v0, p0, p1}, Lcom/miui/common/persistence/a;->aML(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static Ox()J
    .locals 4

    const-string/jumbo v0, "key_no_kill_pkg_version"

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcom/miui/common/persistence/a;->aML(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static Oy()Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, "key_set_newest_miui_version"

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Lcom/miui/common/persistence/a;->aMJ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static Oz(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "key_set_newest_miui_version"

    invoke-static {v0, p0}, Lcom/miui/common/persistence/a;->aMK(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
