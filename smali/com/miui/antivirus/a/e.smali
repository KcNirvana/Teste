.class public Lcom/miui/antivirus/a/e;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static aAa(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string/jumbo v1, "module_show"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "ns_result_action_news"

    invoke-static {v1, v0}, Lcom/miui/antivirus/a/c;->azp(Ljava/lang/String;Ljava/util/Map;)V

    const-string/jumbo v0, "news"

    invoke-static {v0}, Lcom/miui/antivirus/a/e;->aAb(Ljava/lang/String;)V

    return-void
.end method

.method public static aAb(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string/jumbo v1, "module_show"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "ns_result_action"

    invoke-static {v1, v0}, Lcom/miui/antivirus/a/c;->azp(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static aAc(Landroid/content/Context;)V
    .locals 5

    invoke-static {p0}, Lcom/miui/antivirus/a;->getInstance(Landroid/content/Context;)Lcom/miui/antivirus/a;

    move-result-object v1

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v3, "network_security"

    invoke-virtual {v1}, Lcom/miui/antivirus/a;->aCs()Lcom/miui/antivirus/utils/SecurityStatus;

    move-result-object v0

    sget-object v4, Lcom/miui/antivirus/utils/SecurityStatus;->anY:Lcom/miui/antivirus/utils/SecurityStatus;

    if-ne v0, v4, :cond_0

    const-string/jumbo v0, "safe"

    :goto_0
    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "root_status"

    invoke-virtual {v1}, Lcom/miui/antivirus/a;->aCv()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "root_got"

    :goto_1
    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "update"

    invoke-virtual {v1}, Lcom/miui/antivirus/a;->aCw()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "update_available"

    :goto_2
    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "pay_environment_check"

    invoke-static {}, Lcom/miui/antivirus/i;->aDs()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string/jumbo v0, "on"

    :goto_3
    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "system_sms_default"

    invoke-virtual {v1}, Lcom/miui/antivirus/a;->aCe()Lcom/miui/antivirus/model/b;

    move-result-object v0

    if-nez v0, :cond_5

    const-string/jumbo v0, "system_sms"

    :goto_4
    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "toggle_antispam"

    invoke-static {p0}, Landroid/provider/MiuiSettings$AntiSpam;->isAntiSpam(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string/jumbo v0, "on"

    :goto_5
    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "noti_sms_perm"

    invoke-virtual {v1}, Lcom/miui/antivirus/a;->aCf()Z

    move-result v0

    if-eqz v0, :cond_7

    const-string/jumbo v0, "allowed"

    :goto_6
    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "virus_app"

    invoke-virtual {v1}, Lcom/miui/antivirus/a;->aCo()I

    move-result v0

    if-lez v0, :cond_8

    const-string/jumbo v0, "not_found"

    :goto_7
    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "unofficial_app"

    invoke-virtual {v1}, Lcom/miui/antivirus/a;->aCm()I

    move-result v0

    if-lez v0, :cond_9

    const-string/jumbo v0, "found"

    :goto_8
    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "ns_result_foreground"

    invoke-static {v0, v2}, Lcom/miui/antivirus/a/c;->azp(Ljava/lang/String;Ljava/util/Map;)V

    return-void

    :cond_0
    invoke-virtual {v1}, Lcom/miui/antivirus/a;->aCs()Lcom/miui/antivirus/utils/SecurityStatus;

    move-result-object v0

    sget-object v4, Lcom/miui/antivirus/utils/SecurityStatus;->anX:Lcom/miui/antivirus/utils/SecurityStatus;

    if-ne v0, v4, :cond_1

    const-string/jumbo v0, "risk"

    goto/16 :goto_0

    :cond_1
    const-string/jumbo v0, "dangerous"

    goto/16 :goto_0

    :cond_2
    const-string/jumbo v0, "root_not_yet"

    goto/16 :goto_1

    :cond_3
    const-string/jumbo v0, "update_not_found"

    goto :goto_2

    :cond_4
    const-string/jumbo v0, "off"

    goto :goto_3

    :cond_5
    const-string/jumbo v0, "third_party_sms"

    goto :goto_4

    :cond_6
    const-string/jumbo v0, "off"

    goto :goto_5

    :cond_7
    const-string/jumbo v0, "no_allow"

    goto :goto_6

    :cond_8
    const-string/jumbo v0, "found"

    goto :goto_7

    :cond_9
    const-string/jumbo v0, "not_found"

    goto :goto_8
.end method

.method public static aAd()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "unofficial_app"

    const-string/jumbo v2, "click_fix"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "ns_result_foreground"

    invoke-static {v1, v0}, Lcom/miui/antivirus/a/c;->azp(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static aAe()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "update"

    const-string/jumbo v2, "finish_update"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "ns_result_foreground"

    invoke-static {v1, v0}, Lcom/miui/antivirus/a/c;->azp(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static aAf()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "update"

    const-string/jumbo v2, "click_update"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "ns_result_foreground"

    invoke-static {v1, v0}, Lcom/miui/antivirus/a/c;->azp(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static aAg()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "virus_app"

    const-string/jumbo v2, "click_fix"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "ns_result_foreground"

    invoke-static {v1, v0}, Lcom/miui/antivirus/a/c;->azp(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static aAh()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "network_security"

    const-string/jumbo v2, "wifi_cut_off"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "ns_result_foreground"

    invoke-static {v1, v0}, Lcom/miui/antivirus/a/c;->azp(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static azF(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string/jumbo v1, "module_show"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "ns_result_action_ad"

    invoke-static {v1, v0}, Lcom/miui/antivirus/a/c;->azp(Ljava/lang/String;Ljava/util/Map;)V

    const-string/jumbo v0, "ad"

    invoke-static {v0}, Lcom/miui/antivirus/a/e;->aAb(Ljava/lang/String;)V

    return-void
.end method

.method public static azG(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string/jumbo v1, "module_click"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "ns_result_action_ad"

    invoke-static {v1, v0}, Lcom/miui/antivirus/a/c;->azp(Ljava/lang/String;Ljava/util/Map;)V

    const-string/jumbo v0, "ad"

    invoke-static {v0}, Lcom/miui/antivirus/a/e;->azW(Ljava/lang/String;)V

    return-void
.end method

.method public static azH()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "pay_environment_check"

    const-string/jumbo v2, "click_add"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "ns_result_foreground"

    invoke-static {v1, v0}, Lcom/miui/antivirus/a/c;->azp(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static azI(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "source_package"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "pay_package"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "pay_event"

    invoke-static {v1, v0}, Lcom/miui/antivirus/a/c;->azp(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static azJ(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const-string/jumbo v0, "safe"

    return-object v0

    :pswitch_0
    const-string/jumbo v0, "risky_wifi"

    return-object v0

    :pswitch_1
    const-string/jumbo v0, "risky_messaging"

    return-object v0

    :pswitch_2
    const-string/jumbo v0, "risky_virus"

    return-object v0

    :pswitch_3
    const-string/jumbo v0, "risky_sign"

    return-object v0

    :pswitch_4
    const-string/jumbo v0, "risky_root"

    return-object v0

    :pswitch_5
    const-string/jumbo v0, "risky_wifi_approve"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static azK(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "result"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "ns_result_background"

    invoke-static {v1, v0}, Lcom/miui/antivirus/a/c;->azp(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static azL()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "toggle_antispam"

    const-string/jumbo v2, "click_fix"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "ns_result_foreground"

    invoke-static {v1, v0}, Lcom/miui/antivirus/a/c;->azp(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static azM()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "system_sms_default"

    const-string/jumbo v2, "click_fix"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "ns_result_foreground"

    invoke-static {v1, v0}, Lcom/miui/antivirus/a/c;->azp(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static azN(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string/jumbo v1, "click_ok"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "ns_result_guidance"

    invoke-static {v1, v0}, Lcom/miui/antivirus/a/c;->azp(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static azO(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string/jumbo v1, "show"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "ns_result_guidance"

    invoke-static {v1, v0}, Lcom/miui/antivirus/a/c;->azp(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static azP()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "pay_environment_check"

    const-string/jumbo v2, "click_fix"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "ns_result_foreground"

    invoke-static {v1, v0}, Lcom/miui/antivirus/a/c;->azp(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static azQ()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "noti_sms_perm"

    const-string/jumbo v2, "click_fix"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "ns_result_foreground"

    invoke-static {v1, v0}, Lcom/miui/antivirus/a/c;->azp(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static azR(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "action"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "ns_result_background_popup_click"

    invoke-static {v1, v0}, Lcom/miui/antivirus/a/c;->azp(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static azS()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "root_status"

    const-string/jumbo v2, "click_fix"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "ns_result_foreground"

    invoke-static {v1, v0}, Lcom/miui/antivirus/a/c;->azp(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static azT()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "root_status"

    const-string/jumbo v2, "finish_fix"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "ns_result_foreground"

    invoke-static {v1, v0}, Lcom/miui/antivirus/a/c;->azp(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static azU(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string/jumbo v1, "module_click"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "ns_result_action_activity"

    invoke-static {v1, v0}, Lcom/miui/antivirus/a/c;->azp(Ljava/lang/String;Ljava/util/Map;)V

    const-string/jumbo v0, "activity"

    invoke-static {v0}, Lcom/miui/antivirus/a/e;->azW(Ljava/lang/String;)V

    return-void
.end method

.method public static azV(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string/jumbo v1, "module_show"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "ns_result_action_activity"

    invoke-static {v1, v0}, Lcom/miui/antivirus/a/c;->azp(Ljava/lang/String;Ljava/util/Map;)V

    const-string/jumbo v0, "activity"

    invoke-static {v0}, Lcom/miui/antivirus/a/e;->aAb(Ljava/lang/String;)V

    return-void
.end method

.method public static azW(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string/jumbo v1, "module_click"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "ns_result_action"

    invoke-static {v1, v0}, Lcom/miui/antivirus/a/c;->azp(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static azX(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string/jumbo v1, "module_click"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "ns_result_action_f"

    invoke-static {v1, v0}, Lcom/miui/antivirus/a/c;->azp(Ljava/lang/String;Ljava/util/Map;)V

    const-string/jumbo v0, "function"

    invoke-static {v0}, Lcom/miui/antivirus/a/e;->azW(Ljava/lang/String;)V

    return-void
.end method

.method public static azY(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string/jumbo v1, "module_show"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "ns_result_action_f"

    invoke-static {v1, v0}, Lcom/miui/antivirus/a/c;->azp(Ljava/lang/String;Ljava/util/Map;)V

    const-string/jumbo v0, "function"

    invoke-static {v0}, Lcom/miui/antivirus/a/e;->aAb(Ljava/lang/String;)V

    return-void
.end method

.method public static azZ(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string/jumbo v1, "module_click"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "ns_result_action_news"

    invoke-static {v1, v0}, Lcom/miui/antivirus/a/c;->azp(Ljava/lang/String;Ljava/util/Map;)V

    const-string/jumbo v0, "news"

    invoke-static {v0}, Lcom/miui/antivirus/a/e;->azW(Ljava/lang/String;)V

    return-void
.end method
